package cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.repositories;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.model.domain.BranchEntity;
import jakarta.transaction.Transactional;

@Repository("BranchRepository")
@Transactional
public interface BranchRepository extends JpaRepository<BranchEntity, Integer>{

	 
}
