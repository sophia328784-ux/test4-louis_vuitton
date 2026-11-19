package com.vuitton.android.presentation.screen.storemode.models;

import com.vuitton.android.presentation.screen.wishlist.model.WishlistSummaryUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001By\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;", "", "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;", "storeModeUiModel", "", "isError", "isFirstLoading", "isLoading", "displayExitConfirm", "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;", "wishlist", "storeModeStillValid", "", "rmsCode", "isTokenStillValid", "isStoreModeV2Enabled", "searchQuery", "<init>", "(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;ZZZZLcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;ZLjava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class StoreModeViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StoreModeUiModel f65081a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f65082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f65083c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f65084e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final WishlistSummaryUiModel f65085f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f65086h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Boolean f65087i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f65088j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f65089k;

    public /* synthetic */ StoreModeViewState(StoreModeUiModel storeModeUiModel, boolean z, boolean z2, boolean z3, boolean z4, WishlistSummaryUiModel wishlistSummaryUiModel, boolean z5, String str, Boolean bool, boolean z6, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new StoreModeUiModel(null, null, null, null, null, 31, null) : storeModeUiModel, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? false : z3, (i2 & 16) != 0 ? false : z4, (i2 & 32) != 0 ? new WishlistSummaryUiModel(0, null, 3, null) : wishlistSummaryUiModel, (i2 & 64) != 0 ? true : z5, (i2 & 128) != 0 ? null : str, (i2 & 256) == 0 ? bool : null, (i2 & 512) == 0 ? z6 : false, (i2 & 1024) != 0 ? "" : str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreModeViewState)) {
            return false;
        }
        StoreModeViewState storeModeViewState = (StoreModeViewState) obj;
        return Intrinsics.c(this.f65081a, storeModeViewState.f65081a) && this.f65082b == storeModeViewState.f65082b && this.f65083c == storeModeViewState.f65083c && this.d == storeModeViewState.d && this.f65084e == storeModeViewState.f65084e && Intrinsics.c(this.f65085f, storeModeViewState.f65085f) && this.g == storeModeViewState.g && Intrinsics.c(this.f65086h, storeModeViewState.f65086h) && Intrinsics.c(this.f65087i, storeModeViewState.f65087i) && this.f65088j == storeModeViewState.f65088j && Intrinsics.c(this.f65089k, storeModeViewState.f65089k);
    }

    public final int hashCode() {
        int iB = o60.b((this.f65085f.hashCode() + o60.b(o60.b(o60.b(o60.b(this.f65081a.hashCode() * 31, 31, this.f65082b), 31, this.f65083c), 31, this.d), 31, this.f65084e)) * 31, 31, this.g);
        String str = this.f65086h;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.f65087i;
        return this.f65089k.hashCode() + o60.b((iHashCode + (bool != null ? bool.hashCode() : 0)) * 31, 31, this.f65088j);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("StoreModeViewState(storeModeUiModel=");
        sb.append(this.f65081a);
        sb.append(", isError=");
        sb.append(this.f65082b);
        sb.append(", isFirstLoading=");
        fc.y(sb, this.f65083c, ", isLoading=", this.d, ", displayExitConfirm=");
        sb.append(this.f65084e);
        sb.append(", wishlist=");
        sb.append(this.f65085f);
        sb.append(", storeModeStillValid=");
        cj.A(", rmsCode=", this.f65086h, ", isTokenStillValid=", sb, this.g);
        sb.append(this.f65087i);
        sb.append(", isStoreModeV2Enabled=");
        sb.append(this.f65088j);
        sb.append(", searchQuery=");
        return n00.r(this.f65089k, ")", sb);
    }

    public StoreModeViewState(StoreModeUiModel storeModeUiModel, boolean z, boolean z2, boolean z3, boolean z4, WishlistSummaryUiModel wishlistSummaryUiModel, boolean z5, String str, Boolean bool, boolean z6, String str2) {
        storeModeUiModel.getClass();
        wishlistSummaryUiModel.getClass();
        str2.getClass();
        this.f65081a = storeModeUiModel;
        this.f65082b = z;
        this.f65083c = z2;
        this.d = z3;
        this.f65084e = z4;
        this.f65085f = wishlistSummaryUiModel;
        this.g = z5;
        this.f65086h = str;
        this.f65087i = bool;
        this.f65088j = z6;
        this.f65089k = str2;
    }

    public StoreModeViewState() {
        this(null, false, false, false, false, null, false, null, null, false, null, 2047, null);
    }
}
