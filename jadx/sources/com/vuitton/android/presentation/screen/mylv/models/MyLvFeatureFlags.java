package com.vuitton.android.presentation.screen.mylv.models;

import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0087\b\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;", "", "", "isNativeCartAvailable", "isOsaAvailable", "isECommerceAvailable", "isDistantRepairsAvailable", "isExclusiveOfferAvailable", "isCertificatesAvailable", "isUserWorldwideIdEnabled", "isOnboardingEnabled", "isOrderReturnAvailable", "isInboxAvailable", "isVATIncluded", "isBookingMyExperiencesAvailable", "isHotContentEnabled", "<init>", "(ZZZZZZZZZZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class MyLvFeatureFlags {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f59416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f59417b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f59418c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f59419e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f59420f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f59421h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f59422i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f59423j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f59424k;
    public final boolean l;
    public final boolean m;

    public /* synthetic */ MyLvFeatureFlags(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3, (i2 & 8) != 0 ? false : z4, (i2 & 16) != 0 ? false : z5, (i2 & 32) != 0 ? false : z6, (i2 & 64) != 0 ? false : z7, (i2 & 128) != 0 ? false : z8, (i2 & 256) != 0 ? false : z9, (i2 & 512) != 0 ? false : z10, (i2 & 1024) != 0 ? false : z11, (i2 & 2048) != 0 ? false : z12, (i2 & 4096) != 0 ? false : z13);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MyLvFeatureFlags)) {
            return false;
        }
        MyLvFeatureFlags myLvFeatureFlags = (MyLvFeatureFlags) obj;
        return this.f59416a == myLvFeatureFlags.f59416a && this.f59417b == myLvFeatureFlags.f59417b && this.f59418c == myLvFeatureFlags.f59418c && this.d == myLvFeatureFlags.d && this.f59419e == myLvFeatureFlags.f59419e && this.f59420f == myLvFeatureFlags.f59420f && this.g == myLvFeatureFlags.g && this.f59421h == myLvFeatureFlags.f59421h && this.f59422i == myLvFeatureFlags.f59422i && this.f59423j == myLvFeatureFlags.f59423j && this.f59424k == myLvFeatureFlags.f59424k && this.l == myLvFeatureFlags.l && this.m == myLvFeatureFlags.m;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.m) + o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(o60.b(Boolean.hashCode(this.f59416a) * 31, 31, this.f59417b), 31, this.f59418c), 31, this.d), 31, this.f59419e), 31, this.f59420f), 31, this.g), 31, this.f59421h), 31, this.f59422i), 31, this.f59423j), 31, this.f59424k), 31, this.l);
    }

    public final String toString() {
        StringBuilder sbM = cj.m("MyLvFeatureFlags(isNativeCartAvailable=", ", isOsaAvailable=", ", isECommerceAvailable=", this.f59416a, this.f59417b);
        fc.y(sbM, this.f59418c, ", isDistantRepairsAvailable=", this.d, ", isExclusiveOfferAvailable=");
        fc.y(sbM, this.f59419e, ", isCertificatesAvailable=", this.f59420f, ", isUserWorldwideIdEnabled=");
        fc.y(sbM, this.g, ", isOnboardingEnabled=", this.f59421h, ", isOrderReturnAvailable=");
        fc.y(sbM, this.f59422i, ", isInboxAvailable=", this.f59423j, ", isVATIncluded=");
        fc.y(sbM, this.f59424k, ", isBookingMyExperiencesAvailable=", this.l, ", isHotContentEnabled=");
        return a.p(sbM, this.m, ")");
    }

    public MyLvFeatureFlags(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f59416a = z;
        this.f59417b = z2;
        this.f59418c = z3;
        this.d = z4;
        this.f59419e = z5;
        this.f59420f = z6;
        this.g = z7;
        this.f59421h = z8;
        this.f59422i = z9;
        this.f59423j = z10;
        this.f59424k = z11;
        this.l = z12;
        this.m = z13;
    }

    public MyLvFeatureFlags() {
        this(false, false, false, false, false, false, false, false, false, false, false, false, false, 8191, null);
    }
}
