package org.lhr.mapper;

import java.util.ArrayList;

import org.lhr.DTO.BoardAttachDTO;

public interface BoardAttachMapper {
public void insert(BoardAttachDTO battachdto);

public ArrayList<BoardAttachDTO> showImg(int no);
}
