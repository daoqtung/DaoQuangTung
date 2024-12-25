package com.example.sd_93.controller.Admin;

import com.example.sd_93.model.LotGiay;
import com.example.sd_93.repository.SanPham.AllGiayTheThao.LotGiayRepository;
import com.example.sd_93.service.admin.LotGiayService;
import jakarta.servlet.ServletContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("LotGiay")
public class LotGiayController {
    @Autowired
    private LotGiayService lotGiayService;

    @Autowired
    private LotGiayRepository lotGiayRepository;

    @Autowired
    ServletContext context;

    @GetMapping("list")
    public String viewCoGiay(Model model,
                             @RequestParam(name = "num", required = false, defaultValue = "1") Integer num) {
        // Lấy danh sách lót giày với phân trang
        Pageable pageable = PageRequest.of(num - 1, 5); // Giảm num đi 1 để phù hợp với chỉ số trang
        Page<LotGiay> lotGiayPage = lotGiayRepository.findAll(pageable);

        // Thêm các thuộc tính vào model
        model.addAttribute("listPage", lotGiayPage.getContent());
        model.addAttribute("next", num);
        model.addAttribute("totalPage", lotGiayPage.getTotalPages());
        model.addAttribute("currentPage", num); // Thêm thuộc tính currentPage để sử dụng trong phân trang

        return "/LotGiay/list";
    }

    @GetMapping("create")
    public String createPage(Model model){
        model.addAttribute("lotGiay", new LotGiay());
        return "/LotGiay/create";
    }

    @PostMapping("create")
    public String create(Model model, @ModelAttribute("lotGiay") LotGiay lotGiay, BindingResult result, RedirectAttributes attributes){
        if (result.hasErrors()){
            return "/LotGiay/create";
        }

        if(lotGiay.getTenLotGiay() == null || lotGiay.getTenLotGiay().isEmpty() || lotGiay.getTenLotGiay().trim().length() == 0){
            model.addAttribute("checkLotGiayNotNull", "Tên lót giày không được để trống");
            return "/LotGiay/create";
        }

        if(lotGiay.getTenLotGiay().matches("^\\d.*") || !lotGiay.getTenLotGiay().matches(".*[a-zA-Z].*")){
            model.addAttribute("checkLotGiayHopLe", "Tên lót giày không hợp lệ");
            return "/LotGiay/create";
        }

        LocalDate ngayTao = LocalDate.now();
        LocalDate ngaySua = LocalDate.now();

        String ngayTaoDate = ngayTao.toString();
        String ngaySuaDate = ngaySua.toString();

        lotGiayRepository.save(lotGiay);
        attributes.addFlashAttribute("message", "Thêm thành công!");
        return "redirect:/LotGiay/list";
    }

    @GetMapping("edit/{id}")
    public String editPage(Model model, @PathVariable UUID id){
        LotGiay lotGiay = lotGiayRepository.findById(id).orElse(null);
        if(lotGiay == null){
            model.addAttribute("messageFind", "Không tìm thấy id có mã: " +id);
            return "/LotGiay/list";
        }

        model.addAttribute("lotGiay", lotGiayRepository.findById(id).orElse(null));
        return "/LotGiay/edit";
    }

//    @GetMapping("/search")
//    public String searchMauSac(@RequestParam(value = "tenMauSac", required = false) String tenMauSac, Model model){
//        List<MauSac> listPage;
//        if(tenMauSac != null){
//            listPage =mauSacRepository.findMauSacByTen(tenMauSac);
//        }else {
//            listPage = mauSacRepository.findAll();
//        }
//
//        if (!listPage.isEmpty()){
//            model.addAttribute("listPage", listPage);
//        }else {
//            model.addAttribute("message", "Không tìm thấy kết quả");
//            listPage = mauSacRepository.findAll();
//        }
//
//        model.addAttribute("listPage", listPage);
//        return "/MauSac/list";
//    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable("id") LotGiay lotGiay){
        lotGiayRepository.delete(lotGiay);
        return "redirect:/LotGiay/list";
    }
}
