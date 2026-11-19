package com.google.android.datatransport;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_ProductData extends ProductData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f27791a;

    public AutoValue_ProductData(Integer num) {
        this.f27791a = num;
    }

    @Override // com.google.android.datatransport.ProductData
    public final Integer a() {
        return this.f27791a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ProductData)) {
            return false;
        }
        ProductData productData = (ProductData) obj;
        Integer num = this.f27791a;
        if (num == null) {
            return productData.a() == null;
        }
        return num.equals(productData.a());
    }

    public final int hashCode() {
        Integer num = this.f27791a;
        return (num == null ? 0 : num.hashCode()) ^ 1000003;
    }

    public final String toString() {
        return "ProductData{productId=" + this.f27791a + "}";
    }
}
