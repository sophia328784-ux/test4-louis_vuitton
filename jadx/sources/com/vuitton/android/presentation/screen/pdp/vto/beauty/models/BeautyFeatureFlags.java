package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;", "", "", "isVatIncludedEnabled", "isAddToCartEnabled", "isNativeCartAvailable", "isBackInStockEnabled", "isBackInStockLegalConsentEnabled", "<init>", "(ZZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class BeautyFeatureFlags {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f62136a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f62137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f62138c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f62139e;

    public /* synthetic */ BeautyFeatureFlags(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3, (i2 & 8) != 0 ? false : z4, (i2 & 16) != 0 ? false : z5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BeautyFeatureFlags)) {
            return false;
        }
        BeautyFeatureFlags beautyFeatureFlags = (BeautyFeatureFlags) obj;
        return this.f62136a == beautyFeatureFlags.f62136a && this.f62137b == beautyFeatureFlags.f62137b && this.f62138c == beautyFeatureFlags.f62138c && this.d == beautyFeatureFlags.d && this.f62139e == beautyFeatureFlags.f62139e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f62139e) + o60.b(o60.b(o60.b(Boolean.hashCode(this.f62136a) * 31, 31, this.f62137b), 31, this.f62138c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("BeautyFeatureFlags(isVatIncludedEnabled=", ", isAddToCartEnabled=", ", isNativeCartAvailable=", this.f62136a, this.f62137b);
        fc.y(sbM, this.f62138c, ", isBackInStockEnabled=", this.d, ", isBackInStockLegalConsentEnabled=");
        return a.p(sbM, this.f62139e, ")");
    }

    public BeautyFeatureFlags(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.f62136a = z;
        this.f62137b = z2;
        this.f62138c = z3;
        this.d = z4;
        this.f62139e = z5;
    }

    public BeautyFeatureFlags() {
        this(false, false, false, false, false, 31, null);
    }
}
