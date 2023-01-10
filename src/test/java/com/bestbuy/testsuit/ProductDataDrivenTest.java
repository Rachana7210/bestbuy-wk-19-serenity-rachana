package com.bestbuy.testsuit;

import com.bestbuy.productandstoreinfo.ProductSteps;
import com.bestbuy.testbase.TestBase;
import net.serenitybdd.junit.runners.SerenityParameterizedRunner;
import net.thucydides.core.annotations.Steps;
import net.thucydides.core.annotations.Title;
import net.thucydides.junit.annotations.UseTestDataFrom;
import org.junit.Test;
import org.junit.runner.RunWith;

@UseTestDataFrom("src/test/java/resources/testdata/productinfo.csv")
@RunWith(SerenityParameterizedRunner.class)
public class ProductDataDrivenTest extends TestBase {
    private String name;
    private String type;
    private int price;
    private String upc;
    private int shipping;
    private String model;
    private String description;
    private String  manufacturer;

    @Steps
    ProductSteps productSteps;

    @Title("Data driven test for adding multiple products to the application")
    @Test
    public void createMultipleProducts(){
        productSteps.createProduct( name,type,upc,description,model,price,shipping,manufacturer).statusCode(201);
    }


}
