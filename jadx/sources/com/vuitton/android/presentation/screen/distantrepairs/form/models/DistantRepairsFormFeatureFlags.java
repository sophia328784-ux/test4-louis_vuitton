package com.vuitton.android.presentation.screen.distantrepairs.form.models;

import defpackage.cj;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;", "", "", "isVideoCallEnabled", "isPhoneCallEnabled", "isEmailEnabled", "isZipPostalCodeEnabled", "<init>", "(ZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DistantRepairsFormFeatureFlags {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f57338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f57339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f57340c;
    public final boolean d;

    public /* synthetic */ DistantRepairsFormFeatureFlags(boolean z, boolean z2, boolean z3, boolean z4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3, (i2 & 8) != 0 ? false : z4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DistantRepairsFormFeatureFlags)) {
            return false;
        }
        DistantRepairsFormFeatureFlags distantRepairsFormFeatureFlags = (DistantRepairsFormFeatureFlags) obj;
        return this.f57338a == distantRepairsFormFeatureFlags.f57338a && this.f57339b == distantRepairsFormFeatureFlags.f57339b && this.f57340c == distantRepairsFormFeatureFlags.f57340c && this.d == distantRepairsFormFeatureFlags.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + o60.b(o60.b(Boolean.hashCode(this.f57338a) * 31, 31, this.f57339b), 31, this.f57340c);
    }

    public final String toString() {
        return pq0.p(cj.m("DistantRepairsFormFeatureFlags(isVideoCallEnabled=", ", isPhoneCallEnabled=", ", isEmailEnabled=", this.f57338a, this.f57339b), this.f57340c, ", isZipPostalCodeEnabled=", this.d, ")");
    }

    public DistantRepairsFormFeatureFlags(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f57338a = z;
        this.f57339b = z2;
        this.f57340c = z3;
        this.d = z4;
    }

    public DistantRepairsFormFeatureFlags() {
        this(false, false, false, false, 15, null);
    }
}
