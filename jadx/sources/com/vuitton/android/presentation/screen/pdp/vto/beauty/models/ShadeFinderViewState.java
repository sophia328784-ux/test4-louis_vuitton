package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import defpackage.cj;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BE\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;", "", "", "isLoading", "isAddToCartLoading", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;", "shadeFinderScanState", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;", "shadeFinderResponse", "isNavigationSimplified", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;", "featureFlags", "<init>", "(ZZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ShadeFinderViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f62178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f62179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShadeFinderScanState f62180c;
    public final ShadeFinderResponseUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f62181e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BeautyFeatureFlags f62182f;

    public /* synthetic */ ShadeFinderViewState(boolean z, boolean z2, ShadeFinderScanState shadeFinderScanState, ShadeFinderResponseUiModel shadeFinderResponseUiModel, boolean z3, BeautyFeatureFlags beautyFeatureFlags, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? new ShadeFinderScanState(false, false, false, 7, null) : shadeFinderScanState, (i2 & 8) != 0 ? null : shadeFinderResponseUiModel, (i2 & 16) == 0 ? z3 : false, (i2 & 32) != 0 ? new BeautyFeatureFlags(false, false, false, false, false, 31, null) : beautyFeatureFlags);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShadeFinderViewState)) {
            return false;
        }
        ShadeFinderViewState shadeFinderViewState = (ShadeFinderViewState) obj;
        return this.f62178a == shadeFinderViewState.f62178a && this.f62179b == shadeFinderViewState.f62179b && Intrinsics.c(this.f62180c, shadeFinderViewState.f62180c) && Intrinsics.c(this.d, shadeFinderViewState.d) && this.f62181e == shadeFinderViewState.f62181e && Intrinsics.c(this.f62182f, shadeFinderViewState.f62182f);
    }

    public final int hashCode() {
        int iHashCode = (this.f62180c.hashCode() + o60.b(Boolean.hashCode(this.f62178a) * 31, 31, this.f62179b)) * 31;
        ShadeFinderResponseUiModel shadeFinderResponseUiModel = this.d;
        return this.f62182f.hashCode() + o60.b((iHashCode + (shadeFinderResponseUiModel == null ? 0 : shadeFinderResponseUiModel.hashCode())) * 31, 31, this.f62181e);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("ShadeFinderViewState(isLoading=", ", isAddToCartLoading=", ", shadeFinderScanState=", this.f62178a, this.f62179b);
        sbM.append(this.f62180c);
        sbM.append(", shadeFinderResponse=");
        sbM.append(this.d);
        sbM.append(", isNavigationSimplified=");
        sbM.append(this.f62181e);
        sbM.append(", featureFlags=");
        sbM.append(this.f62182f);
        sbM.append(")");
        return sbM.toString();
    }

    public ShadeFinderViewState(boolean z, boolean z2, ShadeFinderScanState shadeFinderScanState, ShadeFinderResponseUiModel shadeFinderResponseUiModel, boolean z3, BeautyFeatureFlags beautyFeatureFlags) {
        shadeFinderScanState.getClass();
        beautyFeatureFlags.getClass();
        this.f62178a = z;
        this.f62179b = z2;
        this.f62180c = shadeFinderScanState;
        this.d = shadeFinderResponseUiModel;
        this.f62181e = z3;
        this.f62182f = beautyFeatureFlags;
    }

    public ShadeFinderViewState() {
        this(false, false, null, null, false, null, 63, null);
    }
}
