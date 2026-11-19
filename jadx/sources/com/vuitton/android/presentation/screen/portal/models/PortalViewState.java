package com.vuitton.android.presentation.screen.portal.models;

import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087\b\u0018\u00002\u00020\u0001BY\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/portal/models/PortalViewState;", "", "Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;", "portal", "", "isLoading", "isError", "isSoundOn", "soundManuallySet", "isNavigationSimplified", "isAutoPlayDisabled", "isContrastEnhanced", "<init>", "(Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;ZZZZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PortalViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PortalUiModel f63332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f63333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f63334c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f63335e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f63336f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f63337h;

    public /* synthetic */ PortalViewState(PortalUiModel portalUiModel, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : portalUiModel, (i2 & 2) != 0 ? false : z, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? true : z3, (i2 & 16) != 0 ? false : z4, (i2 & 32) != 0 ? false : z5, (i2 & 64) != 0 ? false : z6, (i2 & 128) != 0 ? false : z7);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PortalViewState)) {
            return false;
        }
        PortalViewState portalViewState = (PortalViewState) obj;
        return Intrinsics.c(this.f63332a, portalViewState.f63332a) && this.f63333b == portalViewState.f63333b && this.f63334c == portalViewState.f63334c && this.d == portalViewState.d && this.f63335e == portalViewState.f63335e && this.f63336f == portalViewState.f63336f && this.g == portalViewState.g && this.f63337h == portalViewState.f63337h;
    }

    public final int hashCode() {
        PortalUiModel portalUiModel = this.f63332a;
        return Boolean.hashCode(this.f63337h) + o60.b(o60.b(o60.b(o60.b(o60.b(o60.b((portalUiModel == null ? 0 : portalUiModel.hashCode()) * 31, 31, this.f63333b), 31, this.f63334c), 31, this.d), 31, this.f63335e), 31, this.f63336f), 31, this.g);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PortalViewState(portal=");
        sb.append(this.f63332a);
        sb.append(", isLoading=");
        sb.append(this.f63333b);
        sb.append(", isError=");
        fc.y(sb, this.f63334c, ", isSoundOn=", this.d, ", soundManuallySet=");
        fc.y(sb, this.f63335e, ", isNavigationSimplified=", this.f63336f, ", isAutoPlayDisabled=");
        return pq0.p(sb, this.g, ", isContrastEnhanced=", this.f63337h, ")");
    }

    public PortalViewState(PortalUiModel portalUiModel, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.f63332a = portalUiModel;
        this.f63333b = z;
        this.f63334c = z2;
        this.d = z3;
        this.f63335e = z4;
        this.f63336f = z5;
        this.g = z6;
        this.f63337h = z7;
    }

    public PortalViewState() {
        this(null, false, false, false, false, false, false, false, 255, null);
    }
}
