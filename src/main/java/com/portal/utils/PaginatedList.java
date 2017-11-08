package com.portal.utils;
import java.util.ArrayList;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class PaginatedList<T>
{
  Integer draw;
  Integer recordsTotal;
  Integer recordsFiltered;

  ArrayList<T> data;
  

  public PaginatedList()
  {
    recordsTotal = 0;
    recordsFiltered = 0;
    draw = 1;
  }


  public Integer getDraw()
  {
    return draw;
  }


  public void setDraw(Integer draw)
  {
    this.draw = draw;
  }


  public Integer getRecordsTotal()
  {
    return recordsTotal;
  }


  public void setRecordsTotal(Integer recordsTotal)
  {
    this.recordsTotal = recordsTotal;
  }


  public Integer getRecordsFiltered()
  {
    return recordsFiltered;
  }


  public void setRecordsFiltered(Integer recordsFiltered)
  {
    this.recordsFiltered = recordsFiltered;
  }


  public ArrayList<T> getData()
  {
    return data;
  }


  public void setData(ArrayList<T> data)
  {
    this.data = data;
  }
  
  
  
}
