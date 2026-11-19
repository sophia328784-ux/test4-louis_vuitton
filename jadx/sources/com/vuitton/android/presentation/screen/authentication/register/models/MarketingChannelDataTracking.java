package com.vuitton.android.presentation.screen.authentication.register.models;

import defpackage.a;
import defpackage.cj;
import defpackage.o60;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/MarketingChannelDataTracking;", "", "", "marketingEmail", "marketingSms", "gcm", "<init>", "(ZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class MarketingChannelDataTracking {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f53918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f53919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f53920c;

    public MarketingChannelDataTracking(boolean z, boolean z2, boolean z3) {
        this.f53918a = z;
        this.f53919b = z2;
        this.f53920c = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MarketingChannelDataTracking)) {
            return false;
        }
        MarketingChannelDataTracking marketingChannelDataTracking = (MarketingChannelDataTracking) obj;
        return this.f53918a == marketingChannelDataTracking.f53918a && this.f53919b == marketingChannelDataTracking.f53919b && this.f53920c == marketingChannelDataTracking.f53920c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f53920c) + o60.b(Boolean.hashCode(this.f53918a) * 31, 31, this.f53919b);
    }

    public final String toString() {
        return a.p(cj.m("MarketingChannelDataTracking(marketingEmail=", ", marketingSms=", ", gcm=", this.f53918a, this.f53919b), this.f53920c, ")");
    }
}
