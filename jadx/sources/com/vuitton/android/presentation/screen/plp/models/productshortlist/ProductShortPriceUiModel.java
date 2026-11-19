package com.vuitton.android.presentation.screen.plp.models.productshortlist;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;", "", "", "isVariable", "", "formattedValue", "", "rawValue", "currency", "<init>", "(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductShortPriceUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f62981a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f62982b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Double f62983c;
    public final String d;

    public ProductShortPriceUiModel(boolean z, String str, Double d, String str2) {
        str.getClass();
        this.f62981a = z;
        this.f62982b = str;
        this.f62983c = d;
        this.d = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductShortPriceUiModel)) {
            return false;
        }
        ProductShortPriceUiModel productShortPriceUiModel = (ProductShortPriceUiModel) obj;
        return this.f62981a == productShortPriceUiModel.f62981a && Intrinsics.c(this.f62982b, productShortPriceUiModel.f62982b) && Intrinsics.c(this.f62983c, productShortPriceUiModel.f62983c) && Intrinsics.c(this.d, productShortPriceUiModel.d);
    }

    public final int hashCode() {
        int iB = fc.b(Boolean.hashCode(this.f62981a) * 31, 31, this.f62982b);
        Double d = this.f62983c;
        int iHashCode = (iB + (d == null ? 0 : d.hashCode())) * 31;
        String str = this.d;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "ProductShortPriceUiModel(isVariable=" + this.f62981a + ", formattedValue=" + this.f62982b + ", rawValue=" + this.f62983c + ", currency=" + this.d + ")";
    }
}
