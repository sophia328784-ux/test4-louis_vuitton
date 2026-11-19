package com.powerfront.insidewebsdkandroid.models;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;

/* JADX INFO: loaded from: classes4.dex */
public enum InsideViewType {
    Product("product", 1),
    Chat("chat", 14),
    ProductCategory("productcategory", 2),
    Article("article", 3),
    Search("search", 4),
    Home("homepage", 5),
    Checkout("checkout", 6),
    Other("other", 7),
    NotFound("pagenotfound", 8),
    Login("login", 9),
    OrderConfirmed("orderconfirmed", 10),
    Lead("lead", 11),
    LeadConfirmed("leadconfirmed", 12),
    Data(DbParams.KEY_DATA, 400),
    Alert("alert", 401);

    private final String text;
    private final int value;

    InsideViewType(String str, int i2) {
        this.text = str;
        this.value = i2;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.text;
    }
}
