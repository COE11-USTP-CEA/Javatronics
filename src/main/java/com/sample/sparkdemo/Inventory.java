package com.sample.sparkdemo.model;
import com.sample.sparkdemo.model.Item;

import java.util.ArrayList;

public class Inventory {

	ArrayList<Item> inventory = new ArrayList<Item>();


	public ArrayList<Item> all(){
		return inventory;
	}


	public void add(Item item){
		inventory.add(item);
	}


	public Item deleteItemByCode(String code){
		for (Item item : inventory ) {
			if ( code.equals(item.code) ) {
				inventory.remove(item);
				return null;
			}
		};
		return null;
	}

	public Item findItemByCode(String code){
		for (Item item : inventory ) {
			if ( code.equals(item.code) ) {
				return item;
			}
		};
		return null;
	}

}
