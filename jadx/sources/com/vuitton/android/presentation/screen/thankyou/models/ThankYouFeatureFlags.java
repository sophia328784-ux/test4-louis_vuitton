package com.vuitton.android.presentation.screen.thankyou.models;

import defpackage.a;
import defpackage.cj;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;", "", "", "isVatIncluded", "isFeedbackEnabled", "isNativeAccountActivationEnabled", "<init>", "(ZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ThankYouFeatureFlags {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f65282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f65283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f65284c;

    public /* synthetic */ ThankYouFeatureFlags(boolean z, boolean z2, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ThankYouFeatureFlags)) {
            return false;
        }
        ThankYouFeatureFlags thankYouFeatureFlags = (ThankYouFeatureFlags) obj;
        return this.f65282a == thankYouFeatureFlags.f65282a && this.f65283b == thankYouFeatureFlags.f65283b && this.f65284c == thankYouFeatureFlags.f65284c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f65284c) + o60.b(Boolean.hashCode(this.f65282a) * 31, 31, this.f65283b);
    }

    public final String toString() {
        return a.p(cj.m("ThankYouFeatureFlags(isVatIncluded=", ", isFeedbackEnabled=", ", isNativeAccountActivationEnabled=", this.f65282a, this.f65283b), this.f65284c, ")");
    }

    public ThankYouFeatureFlags(boolean z, boolean z2, boolean z3) {
        this.f65282a = z;
        this.f65283b = z2;
        this.f65284c = z3;
    }

    public ThankYouFeatureFlags() {
        this(false, false, false, 7, null);
    }
}
