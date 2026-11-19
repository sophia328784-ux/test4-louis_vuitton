package com.vuitton.android.presentation.screen.filter.quickaccess.models;

import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductListOptionUiModel;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\u0018\b\u0002\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FilterOverlayViewState;", "", "", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;", "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;", "options", "", "isLoading", "<init>", "(Ljava/util/Map;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FilterOverlayViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f58147a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f58148b;

    public /* synthetic */ FilterOverlayViewState(Map map, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : map, (i2 & 2) != 0 ? false : z);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FilterOverlayViewState)) {
            return false;
        }
        FilterOverlayViewState filterOverlayViewState = (FilterOverlayViewState) obj;
        return Intrinsics.c(this.f58147a, filterOverlayViewState.f58147a) && this.f58148b == filterOverlayViewState.f58148b;
    }

    public final int hashCode() {
        Map map = this.f58147a;
        return Boolean.hashCode(this.f58148b) + ((map == null ? 0 : map.hashCode()) * 31);
    }

    public final String toString() {
        return "FilterOverlayViewState(options=" + this.f58147a + ", isLoading=" + this.f58148b + ")";
    }

    public FilterOverlayViewState(Map<QafSource, ProductListOptionUiModel> map, boolean z) {
        this.f58147a = map;
        this.f58148b = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FilterOverlayViewState() {
        this(null, false, 3, 0 == true ? 1 : 0);
    }
}
