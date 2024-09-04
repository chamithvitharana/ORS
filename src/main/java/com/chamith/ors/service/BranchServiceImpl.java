package com.chamith.ors.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import com.chamith.ors.entity.Branch;
import com.chamith.ors.repo.BranchRepository;

public class BranchServiceImpl implements BranchService {
    @Autowired
    private final BranchRepository branchRepository;

    public BranchServiceImpl(BranchRepository branchRepository) {
        this.branchRepository = branchRepository;
    }

    @Override
    public boolean addBranch(String name) {
        Optional<String> branchByName = branchRepository.findByName(name);

        if(branchByName.isPresent()) {
            return false;
        }
        Branch branch = new Branch();
        branch.setName(name);
        branchRepository.save(branch);
        return true;
    }

    @Override
    public List<Branch> findAllBranch() {
        return branchRepository.findAll();
    }
}
