package com.vuitton.android.presentation.screen.wishlist.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001d\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;", "", "", "size", "", "lastItemImage", "<init>", "(ILjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WishlistSummaryUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f65745a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65746b;

    public /* synthetic */ WishlistSummaryUiModel(int i2, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i2, (i3 & 2) != 0 ? new String() : str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WishlistSummaryUiModel)) {
            return false;
        }
        WishlistSummaryUiModel wishlistSummaryUiModel = (WishlistSummaryUiModel) obj;
        return this.f65745a == wishlistSummaryUiModel.f65745a && Intrinsics.c(this.f65746b, wishlistSummaryUiModel.f65746b);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f65745a) * 31;
        String str = this.f65746b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "WishlistSummaryUiModel(size=" + this.f65745a + ", lastItemImage=" + this.f65746b + ")";
    }

    public WishlistSummaryUiModel(int i2, String str) {
        this.f65745a = i2;
        this.f65746b = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WishlistSummaryUiModel() {
        this(0, null, 3, 0 == true ? 1 : 0);
    }
}
