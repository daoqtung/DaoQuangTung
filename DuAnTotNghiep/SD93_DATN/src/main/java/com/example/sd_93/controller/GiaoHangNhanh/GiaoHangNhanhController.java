package com.example.sd_93.controller.GiaoHangNhanh;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.HttpClientErrorException;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping(value = {"/public/", "/shipping"})
@CrossOrigin("*")



public class GiaoHangNhanhController {
    private static final String API_BASE_URL = "https://online-gateway.ghn.vn/shiip/public-api/master-data/";

    @GetMapping("/provinces")
    public String getAllProvinces() {
        try {
            RestTemplate restTemplate = new RestTemplate();
            HttpHeaders headers = new HttpHeaders();
            headers.set("token", "9972e952-a72b-11ef-8c48-52ec3b212102");
            headers.set("Content-Type", "application/json");
            HttpEntity<String> entity = new HttpEntity<>(headers);
            ResponseEntity<String> response = restTemplate.exchange(API_BASE_URL + "province", HttpMethod.GET, entity, String.class);

            if (response.getStatusCode().is2xxSuccessful()) {
                return response.getBody();
            } else {
                return null;
            }
        } catch (HttpClientErrorException e) {
            return "";
        }
    }

    @GetMapping("/districts")
    public String getDistrictsByProvince(@RequestParam("province_id") Integer provinceId) {
        try {
            RestTemplate restTemplate = new RestTemplate();
            HttpHeaders headers = new HttpHeaders();
            headers.set("token", "9972e952-a72b-11ef-8c48-52ec3b212102");
            headers.set("Content-Type", "application/json");
            HttpEntity<String> entity = new HttpEntity<>(headers);
            ResponseEntity<String> response = restTemplate.exchange(API_BASE_URL + "district?province_id=" + provinceId, HttpMethod.GET, entity, String.class);

            if (response.getStatusCode().is2xxSuccessful()) {
                return response.getBody();
            } else {
                return null;
            }
        } catch (HttpClientErrorException e) {
            return "";
        }
    }

    @GetMapping("/wards")
    public String getWardsByDistrict(@RequestParam("district_id") Integer districtId) {
        try {
            RestTemplate restTemplate = new RestTemplate();
            HttpHeaders headers = new HttpHeaders();
            headers.set("token", "9972e952-a72b-11ef-8c48-52ec3b212102");
            headers.set("Content-Type", "application/json");
            HttpEntity<String> entity = new HttpEntity<>(headers);
            ResponseEntity<String> response = restTemplate.exchange(API_BASE_URL + "ward?district_id=" + districtId, HttpMethod.GET, entity, String.class);

            if (response.getStatusCode().is2xxSuccessful()) {
                return response.getBody();
            } else {
                return null;
            }
        } catch (HttpClientErrorException e) {
            return "";
        }
    }

    @PostMapping("/transportationFee")
    public String getFee(@RequestBody TransportationFeeDTO transportationFeeDTO){
        try {
            RestTemplate restTemplate = new RestTemplate();

            // Tạo tiêu đề
            HttpHeaders headers = new HttpHeaders();
            headers.set("token", "9972e952-a72b-11ef-8c48-52ec3b212102");
            headers.set("Content-Type", "application/json"); // Thay thế tên và giá trị của tiêu đề cần thiết

            // Tạo đối tượng HttpEntity chứa tiêu đề
            HttpEntity<String> entity = new HttpEntity<>(headers);

            // Thực hiện yêu cầu HTTP với tiêu đề
//            ResponseEntity<String> response = restTemplate.exchange(
//                    "https://dev-online-gateway.ghn.vn/shiip/public-api/v2/shipping-order/fee?service_type_id=2&from_district_id=3303&to_district_id=" + transportationFeeDTO.getToDistrictId() + "&to_ward_code=" + transportationFeeDTO.getToWardCode() + "&height=" + TransportationFeeDTO.heightProduct * transportationFeeDTO.getQuantity() + "&length=" + TransportationFeeDTO.lengthProduct * transportationFeeDTO.getQuantity() + "&weight=" + TransportationFeeDTO.weightProduct * transportationFeeDTO.getQuantity() + "&width=" + TransportationFeeDTO.widthProduct * transportationFeeDTO.getQuantity() + "&insurance_value=" + transportationFeeDTO.getInsuranceValue(), HttpMethod.GET, entity, String.class);
            ResponseEntity<String> response = restTemplate.exchange(
                    //"https://dev-online-gateway.ghn.vn/shiip/public-api/v2/shipping-order/fee?service_type_id=2&from_district_id=3303&to_district_id=" + transportationFeeDTO.getToDistrictId() + "&to_ward_code=" + transportationFeeDTO.getToWardCode() + "&height=" + TransportationFeeDTO.heightProduct + "&length=" + TransportationFeeDTO.lengthProduct + "&weight=" + TransportationFeeDTO.weightProduct * transportationFeeDTO.getQuantity() + "&width=" + TransportationFeeDTO.widthProduct * transportationFeeDTO.getQuantity() + "&insurance_value=" + transportationFeeDTO.getInsuranceValue(), HttpMethod.GET, entity, String.class);
                    "https://online-gateway.ghn.vn/shiip/public-api/v2/shipping-order/fee?service_type_id=2&from_district_id=3440&to_district_id=" + transportationFeeDTO.getToDistrictId() + "&to_ward_code=" + transportationFeeDTO.getToWardCode() + "&height=" + TransportationFeeDTO.heightProduct + "&length=" + TransportationFeeDTO.lengthProduct + "&weight=" + TransportationFeeDTO.weightProduct * transportationFeeDTO.getQuantity() + "&width=" + TransportationFeeDTO.widthProduct * transportationFeeDTO.getQuantity() + "&insurance_value=" + transportationFeeDTO.getInsuranceValue(), HttpMethod.GET, entity, String.class);
            if (response.getStatusCode().is2xxSuccessful()) {
                return response.getBody();
            } else {
                // Xử lý khi có lỗi
                return null;
            }
        }catch (Exception e){
            return null;
        }
    }

    private static final Logger logger = LoggerFactory.getLogger(GiaoHangNhanhController.class);
}


//package com.example.sd_41.controller.GiaoHangNhanh;
//
//import com.fasterxml.jackson.databind.ObjectMapper;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.http.HttpEntity;
//import org.springframework.http.HttpHeaders;
//import org.springframework.http.HttpMethod;
//import org.springframework.http.ResponseEntity;
//import org.springframework.web.bind.annotation.*;
//import org.springframework.web.client.HttpClientErrorException;
//import org.springframework.web.client.RestTemplate;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//
//@RestController
//@RequestMapping(value = {"/public/", "/shipping"})
//@CrossOrigin("*")
//public class GiaoHangNhanhController {
//
//    private static final Logger logger = LoggerFactory.getLogger(GiaoHangNhanhController.class);
//
//    @Value("${ghn.api.token}")
//    private String ghnToken;
//
//    private static final String API_BASE_URL = "https://dev-online-gateway.ghn.vn/shiip/public-api/master-data/";
//
//    @GetMapping("/provinces")
//    public String getAllProvinces() {
//        try {
//            RestTemplate restTemplate = new RestTemplate();
//            HttpHeaders headers = new HttpHeaders();
//            headers.set("token", ghnToken);
//            headers.set("Content-Type", "application/json");
//            HttpEntity<String> entity = new HttpEntity<>(headers);
//            ResponseEntity<String> response = restTemplate.exchange(API_BASE_URL + "province", HttpMethod.GET, entity, String.class);
//
//            return response.getBody();
//        } catch (HttpClientErrorException e) {
//            logger.error("HTTP Client Error: {}", e.getMessage(), e);
//            return "Error: " + e.getMessage();
//        } catch (Exception e) {
//            logger.error("Unexpected Error: {}", e.getMessage(), e);
//            return "Unexpected error occurred";
//        }
//    }
//
//        @GetMapping("/districts")
//    public String getDistrictsByProvince(@RequestParam("province_id") Integer provinceId) {
//        try {
//            RestTemplate restTemplate = new RestTemplate();
//            HttpHeaders headers = new HttpHeaders();
//            headers.set("token", "79bb4b5a-7c7d-11ee-a6e6-e60958111f48");
//            headers.set("Content-Type", "application/json");
//            HttpEntity<String> entity = new HttpEntity<>(headers);
//            ResponseEntity<String> response = restTemplate.exchange(API_BASE_URL + "district?province_id=" + provinceId, HttpMethod.GET, entity, String.class);
//
//            if (response.getStatusCode().is2xxSuccessful()) {
//                return response.getBody();
//            } else {
//                return null;
//            }
//        } catch (HttpClientErrorException e) {
//            return "";
//        }
//    }
//
//    @GetMapping("/wards")
//    public String getWardsByDistrict(@RequestParam("district_id") Integer districtId) {
//        try {
//            RestTemplate restTemplate = new RestTemplate();
//            HttpHeaders headers = new HttpHeaders();
//            headers.set("token", "79bb4b5a-7c7d-11ee-a6e6-e60958111f48");
//            headers.set("Content-Type", "application/json");
//            HttpEntity<String> entity = new HttpEntity<>(headers);
//            ResponseEntity<String> response = restTemplate.exchange(API_BASE_URL + "ward?district_id=" + districtId, HttpMethod.GET, entity, String.class);
//
//            if (response.getStatusCode().is2xxSuccessful()) {
//                return response.getBody();
//            } else {
//                return null;
//            }
//        } catch (HttpClientErrorException e) {
//            return "";
//        }
//    }
//
//    @PostMapping("/transportationFee")
//    public String getFee(@RequestBody TransportationFeeDTO transportationFeeDTO) {
//        try {
//            RestTemplate restTemplate = new RestTemplate();
//            HttpHeaders headers = new HttpHeaders();
//            headers.set("token", ghnToken);
//            headers.set("Content-Type", "application/json");
//
//            HttpEntity<String> entity = new HttpEntity<>(headers);
//            String url = String.format(
//                    "https://dev-online-gateway.ghn.vn/shiip/public-api/v2/shipping-order/fee" +
//                            "?service_type_id=2&from_district_id=3303&to_district_id=%d&to_ward_code=%s" +
//                            "&height=%d&length=%d&weight=%d&width=%d&insurance_value=%d",
//                    transportationFeeDTO.getToDistrictId(),
//                    transportationFeeDTO.getToWardCode(),
//                    TransportationFeeDTO.heightProduct,
//                    TransportationFeeDTO.lengthProduct,
//                    TransportationFeeDTO.weightProduct * transportationFeeDTO.getQuantity(),
//                    TransportationFeeDTO.widthProduct * transportationFeeDTO.getQuantity(),
//                    transportationFeeDTO.getInsuranceValue()
//            );
//
//            ResponseEntity<String> response = restTemplate.exchange(url, HttpMethod.GET, entity, String.class);
//            return response.getBody();
//        } catch (HttpClientErrorException e) {
//            logger.error("HTTP Client Error: {}", e.getMessage(), e);
//            return "Error: " + e.getMessage();
//        } catch (Exception e) {
//            logger.error("Unexpected Error: {}", e.getMessage(), e);
//            return "Unexpected error occurred";
//        }
//    }
//}
