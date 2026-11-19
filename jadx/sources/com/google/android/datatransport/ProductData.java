package com.google.android.datatransport;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ProductData {
    public static ProductData b(Integer num) {
        return new AutoValue_ProductData(num);
    }

    public abstract Integer a();
}
