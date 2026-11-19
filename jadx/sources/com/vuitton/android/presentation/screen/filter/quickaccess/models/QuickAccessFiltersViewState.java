package com.vuitton.android.presentation.screen.filter.quickaccess.models;

import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersDropDownType;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductBooleanFilterUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductSortUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b\u0087\b\u0018\u00002\u00020\u0001Bï\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\u000e\b\u0002\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000f\u0012\u000e\b\u0002\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u000e\u0012\u000e\b\u0002\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00140\u000e\u0012\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u000e\u0012\u000e\b\u0002\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00120\u000e\u0012\u000e\b\u0002\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00140\u000e\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0004¢\u0006\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;", "", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;", "quickAccessFiltersButtonState", "", "isFiltersBottomBarVisible", "shouldHandleNavBar", "hasActiveFilters", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;", "overlayScreenType", "areActiveFiltersVisible", "", "currentFiltersId", "currentSortId", "", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;", "categoryList", "currentCategory", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;", "currentBooleanFilterList", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;", "currentSortFilterList", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;", "activeFiltersSimpleValueList", "activeFiltersBooleanList", "activeFiltersSortList", "isActionable", "hasOnlySortFilters", "hasOnlyBooleanFilters", "isDataReady", "<init>", "(Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;ZZZLcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersDropDownType;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class QuickAccessFiltersViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FiltersButtonState f58169a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f58170b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f58171c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FiltersDropDownType f58172e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f58173f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f58174h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f58175i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ProductFiltersCategoryUiModel f58176j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final List f58177k;
    public final List l;
    public final List m;
    public final List n;
    public final List o;
    public final boolean p;
    public final boolean q;
    public final boolean r;
    public final boolean s;

    public QuickAccessFiltersViewState(FiltersButtonState filtersButtonState, boolean z, boolean z2, boolean z3, FiltersDropDownType filtersDropDownType, boolean z4, String str, String str2, List list, ProductFiltersCategoryUiModel productFiltersCategoryUiModel, List list2, List list3, List list4, List list5, List list6, boolean z5, boolean z6, boolean z7, boolean z8, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? FiltersButtonState.Hidden : filtersButtonState, (i2 & 2) != 0 ? false : z, z2, (i2 & 8) != 0 ? false : z3, (i2 & 16) != 0 ? null : filtersDropDownType, (i2 & 32) != 0 ? false : z4, (i2 & 64) != 0 ? null : str, (i2 & 128) != 0 ? null : str2, (i2 & 256) != 0 ? EmptyList.f71768b : list, (i2 & 512) != 0 ? null : productFiltersCategoryUiModel, (i2 & 1024) != 0 ? EmptyList.f71768b : list2, (i2 & 2048) != 0 ? EmptyList.f71768b : list3, (i2 & 4096) != 0 ? EmptyList.f71768b : list4, (i2 & 8192) != 0 ? EmptyList.f71768b : list5, (i2 & 16384) != 0 ? EmptyList.f71768b : list6, (32768 & i2) != 0 ? true : z5, (65536 & i2) != 0 ? false : z6, (131072 & i2) != 0 ? false : z7, (i2 & 262144) != 0 ? false : z8);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof QuickAccessFiltersViewState)) {
            return false;
        }
        QuickAccessFiltersViewState quickAccessFiltersViewState = (QuickAccessFiltersViewState) obj;
        return this.f58169a == quickAccessFiltersViewState.f58169a && this.f58170b == quickAccessFiltersViewState.f58170b && this.f58171c == quickAccessFiltersViewState.f58171c && this.d == quickAccessFiltersViewState.d && this.f58172e == quickAccessFiltersViewState.f58172e && this.f58173f == quickAccessFiltersViewState.f58173f && Intrinsics.c(this.g, quickAccessFiltersViewState.g) && Intrinsics.c(this.f58174h, quickAccessFiltersViewState.f58174h) && Intrinsics.c(this.f58175i, quickAccessFiltersViewState.f58175i) && Intrinsics.c(this.f58176j, quickAccessFiltersViewState.f58176j) && Intrinsics.c(this.f58177k, quickAccessFiltersViewState.f58177k) && Intrinsics.c(this.l, quickAccessFiltersViewState.l) && Intrinsics.c(this.m, quickAccessFiltersViewState.m) && Intrinsics.c(this.n, quickAccessFiltersViewState.n) && Intrinsics.c(this.o, quickAccessFiltersViewState.o) && this.p == quickAccessFiltersViewState.p && this.q == quickAccessFiltersViewState.q && this.r == quickAccessFiltersViewState.r && this.s == quickAccessFiltersViewState.s;
    }

    public final int hashCode() {
        int iB = o60.b(o60.b(o60.b(this.f58169a.hashCode() * 31, 31, this.f58170b), 31, this.f58171c), 31, this.d);
        FiltersDropDownType filtersDropDownType = this.f58172e;
        int iB2 = o60.b((iB + (filtersDropDownType == null ? 0 : filtersDropDownType.hashCode())) * 31, 31, this.f58173f);
        String str = this.g;
        int iHashCode = (iB2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f58174h;
        int iA = n00.a((iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f58175i);
        ProductFiltersCategoryUiModel productFiltersCategoryUiModel = this.f58176j;
        return Boolean.hashCode(this.s) + o60.b(o60.b(o60.b(n00.a(n00.a(n00.a(n00.a(n00.a((iA + (productFiltersCategoryUiModel != null ? productFiltersCategoryUiModel.hashCode() : 0)) * 31, 31, this.f58177k), 31, this.l), 31, this.m), 31, this.n), 31, this.o), 31, this.p), 31, this.q), 31, this.r);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("QuickAccessFiltersViewState(quickAccessFiltersButtonState=");
        sb.append(this.f58169a);
        sb.append(", isFiltersBottomBarVisible=");
        sb.append(this.f58170b);
        sb.append(", shouldHandleNavBar=");
        fc.y(sb, this.f58171c, ", hasActiveFilters=", this.d, ", overlayScreenType=");
        sb.append(this.f58172e);
        sb.append(", areActiveFiltersVisible=");
        sb.append(this.f58173f);
        sb.append(", currentFiltersId=");
        cj.C(sb, this.g, ", currentSortId=", this.f58174h, ", categoryList=");
        sb.append(this.f58175i);
        sb.append(", currentCategory=");
        sb.append(this.f58176j);
        sb.append(", currentBooleanFilterList=");
        a.C(sb, this.f58177k, ", currentSortFilterList=", this.l, ", activeFiltersSimpleValueList=");
        a.C(sb, this.m, ", activeFiltersBooleanList=", this.n, ", activeFiltersSortList=");
        sb.append(this.o);
        sb.append(", isActionable=");
        sb.append(this.p);
        sb.append(", hasOnlySortFilters=");
        fc.y(sb, this.q, ", hasOnlyBooleanFilters=", this.r, ", isDataReady=");
        return a.p(sb, this.s, ")");
    }

    public QuickAccessFiltersViewState(FiltersButtonState filtersButtonState, boolean z, boolean z2, boolean z3, FiltersDropDownType filtersDropDownType, boolean z4, String str, String str2, List<ProductFiltersCategoryUiModel> list, ProductFiltersCategoryUiModel productFiltersCategoryUiModel, List<ProductBooleanFilterUiModel> list2, List<ProductSortUiModel> list3, List<ProductFilterValueUiModel> list4, List<ProductBooleanFilterUiModel> list5, List<ProductSortUiModel> list6, boolean z5, boolean z6, boolean z7, boolean z8) {
        filtersButtonState.getClass();
        list.getClass();
        list2.getClass();
        list3.getClass();
        list4.getClass();
        list5.getClass();
        list6.getClass();
        this.f58169a = filtersButtonState;
        this.f58170b = z;
        this.f58171c = z2;
        this.d = z3;
        this.f58172e = filtersDropDownType;
        this.f58173f = z4;
        this.g = str;
        this.f58174h = str2;
        this.f58175i = list;
        this.f58176j = productFiltersCategoryUiModel;
        this.f58177k = list2;
        this.l = list3;
        this.m = list4;
        this.n = list5;
        this.o = list6;
        this.p = z5;
        this.q = z6;
        this.r = z7;
        this.s = z8;
    }
}
