package com.example.sd_93.service.GiayTheThao;

import com.example.sd_93.model.GiayTheThao;

import java.util.List;
import java.util.UUID;

public interface GiayTheThaoImpl {

    public List<GiayTheThao> getAll();

    public List<GiayTheThao> getAllWithoutInCTGGCTSP(UUID id);

    public GiayTheThao getOne(UUID id);

}
