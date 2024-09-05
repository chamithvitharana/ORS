package com.chamith.ors.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chamith.ors.dto.BranchDTO;
import com.chamith.ors.entity.Branch;
import com.chamith.ors.repo.BranchRepository;

@Service
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
    public List<BranchDTO> findAllBranch() {
        List<BranchDTO> branchDTOList = new ArrayList<>();

        for(Branch branch : branchRepository.findAll()) {
            BranchDTO branchDTO = new BranchDTO();
            branchDTO.setId(branch.getId());
            branchDTO.setName(branch.getName());
            branchDTOList.add(branchDTO);
        }
        return branchDTOList;
    }
}
