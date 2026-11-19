package com.vuitton.android.presentation.screen.wishlist.model;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;", "", "Landroidx/compose/runtime/snapshots/SnapshotStateList;", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;", "items", "", "shareUrl", "<init>", "(Landroidx/compose/runtime/snapshots/SnapshotStateList;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WishlistUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SnapshotStateList f65755a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65756b;

    public WishlistUiModel(SnapshotStateList<WishlistItemUiModel> snapshotStateList, String str) {
        snapshotStateList.getClass();
        this.f65755a = snapshotStateList;
        this.f65756b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WishlistUiModel)) {
            return false;
        }
        WishlistUiModel wishlistUiModel = (WishlistUiModel) obj;
        return Intrinsics.c(this.f65755a, wishlistUiModel.f65755a) && Intrinsics.c(this.f65756b, wishlistUiModel.f65756b);
    }

    public final int hashCode() {
        int iHashCode = this.f65755a.hashCode() * 31;
        String str = this.f65756b;
        return iHashCode + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "WishlistUiModel(items=" + this.f65755a + ", shareUrl=" + this.f65756b + ")";
    }
}
