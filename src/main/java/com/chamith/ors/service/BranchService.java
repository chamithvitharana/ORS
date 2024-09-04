package com.chamith.ors.service;

import java.util.List;

import com.chamith.ors.entity.Branch;

public interface BranchService {
    boolean addBranch(String name);
    List<Branch> findAllBranch();
}
