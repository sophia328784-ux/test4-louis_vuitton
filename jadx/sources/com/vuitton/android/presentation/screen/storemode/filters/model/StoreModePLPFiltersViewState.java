package com.vuitton.android.presentation.screen.storemode.filters.model;

import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductListOptionUiModel;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BK\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;", "", "", "initialFilterKey", "currentFilterKey", "sortId", "", "showFilters", "hasActiveFilters", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;", "productListOptions", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreModePLPFiltersViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f65032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65033b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f65034c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f65035e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProductListOptionUiModel f65036f;

    public /* synthetic */ StoreModePLPFiltersViewState(String str, String str2, String str3, boolean z, boolean z2, ProductListOptionUiModel productListOptionUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? false : z, (i2 & 16) != 0 ? false : z2, (i2 & 32) != 0 ? null : productListOptionUiModel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreModePLPFiltersViewState)) {
            return false;
        }
        StoreModePLPFiltersViewState storeModePLPFiltersViewState = (StoreModePLPFiltersViewState) obj;
        return Intrinsics.c(this.f65032a, storeModePLPFiltersViewState.f65032a) && Intrinsics.c(this.f65033b, storeModePLPFiltersViewState.f65033b) && Intrinsics.c(this.f65034c, storeModePLPFiltersViewState.f65034c) && this.d == storeModePLPFiltersViewState.d && this.f65035e == storeModePLPFiltersViewState.f65035e && Intrinsics.c(this.f65036f, storeModePLPFiltersViewState.f65036f);
    }

    public final int hashCode() {
        String str = this.f65032a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f65033b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f65034c;
        int iB = o60.b(o60.b((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.d), 31, this.f65035e);
        ProductListOptionUiModel productListOptionUiModel = this.f65036f;
        return iB + (productListOptionUiModel != null ? productListOptionUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("StoreModePLPFiltersViewState(initialFilterKey=", this.f65032a, ", currentFilterKey=", this.f65033b, ", sortId=");
        pq0.A(this.f65034c, ", showFilters=", ", hasActiveFilters=", sbS, this.d);
        sbS.append(this.f65035e);
        sbS.append(", productListOptions=");
        sbS.append(this.f65036f);
        sbS.append(")");
        return sbS.toString();
    }

    public StoreModePLPFiltersViewState(String str, String str2, String str3, boolean z, boolean z2, ProductListOptionUiModel productListOptionUiModel) {
        this.f65032a = str;
        this.f65033b = str2;
        this.f65034c = str3;
        this.d = z;
        this.f65035e = z2;
        this.f65036f = productListOptionUiModel;
    }

    public StoreModePLPFiltersViewState() {
        this(null, null, null, false, false, null, 63, null);
    }
}
