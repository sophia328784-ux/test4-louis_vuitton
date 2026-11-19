package com.vuitton.android.presentation.screen.pdp.models;

import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0011\b\u0087\b\u0018\u00002\u00020\u0001B\u0093\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/PdpFeatureFlags;", "", "", "isTwistEnabled", "isEcommerceEnabled", "isVirtualArAvailable", "isArAvailable", "isDiamondEnabled", "isGeolocationButtonEnabled", "isVatIncludedEnabled", "isNativeCartAvailable", "isBackOrderDisclaimerEnabled", "isBackOrderDisclaimerEnhancementEnabled", "isBackInStockEnabled", "isBackInStockLegalConsentEnabled", "isAddToCartCrossSellEnabled", "isAICompanionEnabled", "<init>", "(ZZZZZZZZZZZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PdpFeatureFlags {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f61554a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f61555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f61556c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f61557e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f61558f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f61559h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f61560i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f61561j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f61562k;
    public final boolean l;
    public final boolean m;
    public final boolean n;

    public /* synthetic */ PdpFeatureFlags(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3, (i2 & 8) != 0 ? false : z4, (i2 & 16) != 0 ? false : z5, (i2 & 32) != 0 ? false : z6, (i2 & 64) != 0 ? false : z7, (i2 & 128) != 0 ? false : z8, (i2 & 256) != 0 ? false : z9, (i2 & 512) != 0 ? false : z10, (i2 & 1024) != 0 ? false : z11, (i2 & 2048) != 0 ? false : z12, (i2 & 4096) != 0 ? false : z13, (i2 & 8192) != 0 ? false : z14);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PdpFeatureFlags)) {
            return false;
        }
        PdpFeatureFlags pdpFeatureFlags = (PdpFeatureFlags) obj;
        return this.f61554a == pdpFeatureFlags.f61554a && this.f61555b == pdpFeatureFlags.f61555b && this.f61556c == pdpFeatureFlags.f61556c && this.d == pdpFeatureFlags.d && this.f61557e == pdpFeatureFlags.f61557e && this.f61558f == pdpFeatureFlags.f61558f && this.g == pdpFeatureFlags.g && this.f61559h == pdpFeatureFlags.f61559h && this.f61560i == pdpFeatureFlags.f61560i && this.f61561j == pdpFeatureFlags.f61561j && this.f61562k == pdpFeatureFlags.f61562k && this.l == pdpFeatureFlags.l && this.m == pdpFeatureFlags.m && this.n == pdpFeatureFlags.n;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.n) + o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(Boolean.hashCode(this.f61554a) * 31, 31, this.f61555b), 31, this.f61556c), 31, this.d), 31, this.f61557e), 31, this.f61558f), 31, this.g), 31, this.f61559h), 31, this.f61560i), 31, this.f61561j), 31, this.f61562k), 31, this.l), 31, this.m);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("PdpFeatureFlags(isTwistEnabled=", ", isEcommerceEnabled=", ", isVirtualArAvailable=", this.f61554a, this.f61555b);
        fc.y(sbM, this.f61556c, ", isArAvailable=", this.d, ", isDiamondEnabled=");
        fc.y(sbM, this.f61557e, ", isGeolocationButtonEnabled=", this.f61558f, ", isVatIncludedEnabled=");
        fc.y(sbM, this.g, ", isNativeCartAvailable=", this.f61559h, ", isBackOrderDisclaimerEnabled=");
        fc.y(sbM, this.f61560i, ", isBackOrderDisclaimerEnhancementEnabled=", this.f61561j, ", isBackInStockEnabled=");
        fc.y(sbM, this.f61562k, ", isBackInStockLegalConsentEnabled=", this.l, ", isAddToCartCrossSellEnabled=");
        return pq0.p(sbM, this.m, ", isAICompanionEnabled=", this.n, ")");
    }

    public PdpFeatureFlags(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        this.f61554a = z;
        this.f61555b = z2;
        this.f61556c = z3;
        this.d = z4;
        this.f61557e = z5;
        this.f61558f = z6;
        this.g = z7;
        this.f61559h = z8;
        this.f61560i = z9;
        this.f61561j = z10;
        this.f61562k = z11;
        this.l = z12;
        this.m = z13;
        this.n = z14;
    }

    public PdpFeatureFlags() {
        this(false, false, false, false, false, false, false, false, false, false, false, false, false, false, 16383, null);
    }
}
