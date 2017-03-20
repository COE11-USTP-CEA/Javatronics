package com.sample.sparkdemo;

import java.util.HashMap;
import java.util.Map;

import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;
import static spark.Spark.*;

/**
 *
 * @author jaypax
 */
public class DemoMain {

    public static void main(String[] args) {
        staticFiles.location("/css"); // Static files
        
        get("/", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
         //   model.put("title","SparkJava Demo");
           // model.put("message", "Hello Freemarker!");
            return new ModelAndView(model, "hello.ftl"); // located in src/test/resources/spark/template/freemarker
        }, new FreeMarkerEngine());

         get("/about", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            
            model.put("title","About Us");
            
            return render(model, "about.ftl");
        });
        
        get("/assets", (req, res) -> {
            Map<String, Object> model = new HashMap<>();
            
            model.put("title","About Us");
            
            return render(model, "assets.ftl");
        });
    

        get("/add", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title", "Add New Item to Inventory");
            return render(model, "add.ftl");
        });


        post("/add", (request,response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.queryParams("code");
            String name = request.queryParams("name");

            Item item = new Item();
            item.setCode(code);
            item.setName(name);

            inventory.add(item);

            model.put("title", "Show Item");
            model.put("item", item);
            // response.redirect("/show/"+code);
            // return "";
            return render(model, "show.ftl");
        });


        // get("/delete/:code", (request, response) -> {
        //     Map<String, Object> model = new HashMap<>();
        //     String code = request.params(":code");
        //     Item item = inventory.deleteItemByCode(code);
            
        //     model.put("title", "Delete Item");
        //     model.put("item_code", item.code());
        //     model.put("item_name", item.name());
        //     return render(model, "delete.ftl");
        // });

        get("/delete/:code", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.params(":code");
            Item item = inventory.findItemByCode(code);
            
            model.put("title", "Delete Item");
            model.put("item", item);
            // model.put("searchcode", code);
            // model.put("founditem", item);
            return render(model, "delete.ftl");
        });

        post("/delete", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.queryParams("code");
            Item item = inventory.findItemByCode(code);
            inventory.deleteItemByCode(code);
            
            model.put("title", "Deleted Item");
            model.put("item", item);
            return render(model, "deleted.ftl");
        });




        get("/edit/:code", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.params(":code");
            Item item = inventory.findItemByCode(code);
            
            model.put("title", "Edit Item");
            model.put("item_code", item.code);
            model.put("item_name", item.name);
            return render(model, "edit.ftl");
        });


        get("/show/:code", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            String code = request.params(":code");
            Item item = inventory.findItemByCode(code);
            
            model.put("title", "Show Item");
            model.put("item", item);
            // model.put("searchcode", code);
            // model.put("founditem", item);
            return render(model, "show.ftl");
        });


        get("/list", (request, response) -> {
            Map<String, Object> model = new HashMap<>();
            model.put("title", "List Inventory");
            model.put("inventory", inventory.all());
            return render(model, "list.ftl");
        });


    }

}
