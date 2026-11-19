package com.vuitton.android.presentation.screen.services.models;

import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001B9\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;", "", "", "isOsaAvailable", "isBookingAvailable", "isRepairsAvailable", "isDistantRepairsAvailable", "isUserWorldwideIdEnabled", "<init>", "(ZZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ServicesFeatureFlags {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f64374a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f64375b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f64376c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f64377e;

    public /* synthetic */ ServicesFeatureFlags(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3, (i2 & 8) != 0 ? false : z4, (i2 & 16) != 0 ? false : z5);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServicesFeatureFlags)) {
            return false;
        }
        ServicesFeatureFlags servicesFeatureFlags = (ServicesFeatureFlags) obj;
        return this.f64374a == servicesFeatureFlags.f64374a && this.f64375b == servicesFeatureFlags.f64375b && this.f64376c == servicesFeatureFlags.f64376c && this.d == servicesFeatureFlags.d && this.f64377e == servicesFeatureFlags.f64377e;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f64377e) + o60.b(o60.b(o60.b(Boolean.hashCode(this.f64374a) * 31, 31, this.f64375b), 31, this.f64376c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("ServicesFeatureFlags(isOsaAvailable=", ", isBookingAvailable=", ", isRepairsAvailable=", this.f64374a, this.f64375b);
        fc.y(sbM, this.f64376c, ", isDistantRepairsAvailable=", this.d, ", isUserWorldwideIdEnabled=");
        return a.p(sbM, this.f64377e, ")");
    }

    public ServicesFeatureFlags(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        this.f64374a = z;
        this.f64375b = z2;
        this.f64376c = z3;
        this.d = z4;
        this.f64377e = z5;
    }

    public ServicesFeatureFlags() {
        this(false, false, false, false, false, 31, null);
    }
}
