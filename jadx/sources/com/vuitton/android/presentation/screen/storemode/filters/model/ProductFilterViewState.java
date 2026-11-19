package com.vuitton.android.presentation.screen.storemode.filters.model;

import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductListOptionUiModel;
import defpackage.cj;
import defpackage.n00;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001Bo\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterViewState;", "", "", "isLoading", "isError", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;", "optionList", "", "productCount", "", "rmsCode", "searchQuery", "categoryFilterId", "lastFilterId", "sortId", "<init>", "(ZZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ProductFilterViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f65022a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f65023b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProductListOptionUiModel f65024c;
    public final Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f65025e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f65026f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f65027h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f65028i;

    public /* synthetic */ ProductFilterViewState(boolean z, boolean z2, ProductListOptionUiModel productListOptionUiModel, Integer num, String str, String str2, String str3, String str4, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? null : productListOptionUiModel, (i2 & 8) != 0 ? null : num, (i2 & 16) != 0 ? null : str, (i2 & 32) != 0 ? null : str2, (i2 & 64) != 0 ? null : str3, (i2 & 128) != 0 ? null : str4, (i2 & 256) != 0 ? null : str5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductFilterViewState)) {
            return false;
        }
        ProductFilterViewState productFilterViewState = (ProductFilterViewState) obj;
        return this.f65022a == productFilterViewState.f65022a && this.f65023b == productFilterViewState.f65023b && Intrinsics.c(this.f65024c, productFilterViewState.f65024c) && Intrinsics.c(this.d, productFilterViewState.d) && Intrinsics.c(this.f65025e, productFilterViewState.f65025e) && Intrinsics.c(this.f65026f, productFilterViewState.f65026f) && Intrinsics.c(this.g, productFilterViewState.g) && Intrinsics.c(this.f65027h, productFilterViewState.f65027h) && Intrinsics.c(this.f65028i, productFilterViewState.f65028i);
    }

    public final int hashCode() {
        int iB = o60.b(Boolean.hashCode(this.f65022a) * 31, 31, this.f65023b);
        ProductListOptionUiModel productListOptionUiModel = this.f65024c;
        int iHashCode = (iB + (productListOptionUiModel == null ? 0 : productListOptionUiModel.hashCode())) * 31;
        Integer num = this.d;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.f65025e;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f65026f;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        int iHashCode5 = (iHashCode4 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f65027h;
        int iHashCode6 = (iHashCode5 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f65028i;
        return iHashCode6 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("ProductFilterViewState(isLoading=", ", isError=", ", optionList=", this.f65022a, this.f65023b);
        sbM.append(this.f65024c);
        sbM.append(", productCount=");
        sbM.append(this.d);
        sbM.append(", rmsCode=");
        cj.C(sbM, this.f65025e, ", searchQuery=", this.f65026f, ", categoryFilterId=");
        cj.C(sbM, this.g, ", lastFilterId=", this.f65027h, ", sortId=");
        return n00.r(this.f65028i, ")", sbM);
    }

    public ProductFilterViewState(boolean z, boolean z2, ProductListOptionUiModel productListOptionUiModel, Integer num, String str, String str2, String str3, String str4, String str5) {
        this.f65022a = z;
        this.f65023b = z2;
        this.f65024c = productListOptionUiModel;
        this.d = num;
        this.f65025e = str;
        this.f65026f = str2;
        this.g = str3;
        this.f65027h = str4;
        this.f65028i = str5;
    }

    public ProductFilterViewState() {
        this(false, false, null, null, null, null, null, null, null, 511, null);
    }
}
