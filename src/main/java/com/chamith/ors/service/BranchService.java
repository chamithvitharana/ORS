package com.chamith.ors.service;

import java.util.List;

import com.chamith.ors.dto.BranchDTO;

public interface BranchService {
    boolean addBranch(String name);
    List<BranchDTO> findAllBranch();
}
