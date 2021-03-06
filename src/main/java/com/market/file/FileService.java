package com.market.file;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FileService {

/*
	@Autowired
	private FileDAO dao;

	public void deleteFiles(String path) throws Exception{
		// dao 를 통해 files 테이블의 sys_name 목록 가져오기
		List<String> files_db = dao.selectSys_name();
		// 파일 객체로 서버 경로(board)안에 존재하는 모든 파일을 가져올 것
		// -> 파일 객체를 통해 파일의 이름값을 얻어낼 수 있음
		// -> 파일 객체를 통해 해당 파일을 삭제하는 것도 가능
		File[] files_root = new File(path).listFiles();
		
		// DB와 서버 경로에 파일의 목록이 있다라고 한다면
		if(files_db.size() != 0 && files_root.length != 0) {
			for(File f : files_root) { // 서버에 저장된 파일들을 모두 for문 돌리며 db와 비교확인
				// 만약 서버에 저장된 파일의 이름이 DB sys_name 리스트에 포함되어있지 않다면 
				if(!files_db.contains(f.getName())) {
					System.out.println(f.getName() + " : 삭제할 파일");
					f.delete(); // 삭제할 파일을 실제 삭제 
				}
			}
		}
*/

	@Autowired
	private FileDAO dao;
	
	public void deleteFiles(String path) throws Exception{
		
		List<String> files_db =dao.selectSys_name();
		File[] files_root= new File(path).listFiles();
		if(files_db.size() != 0 && files_root.length!=0) {
			for(File f: files_root) {
				if(!files_db.contains(f.getName())) {
					System.out.println(f.getName()+ "삭제할 파일");
					f.delete();
				}
				
			}
		}
		System.out.println("file_root.length: "+ files_root.length);
		for(File f : files_root) {
			System.out.println(f.getName());
		}		
	}
}
