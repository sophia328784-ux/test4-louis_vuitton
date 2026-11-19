package com.vuitton.android.presentation.screen.authentication.register.models;

import defpackage.cj;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/register/models/ConsentDataTracking;", "", "", "email", "sms", "onlinePlatforms", "emailTracking", "<init>", "(ZZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ConsentDataTracking {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f53915a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f53916b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f53917c;
    public final boolean d;

    public ConsentDataTracking(boolean z, boolean z2, boolean z3, boolean z4) {
        this.f53915a = z;
        this.f53916b = z2;
        this.f53917c = z3;
        this.d = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConsentDataTracking)) {
            return false;
        }
        ConsentDataTracking consentDataTracking = (ConsentDataTracking) obj;
        return this.f53915a == consentDataTracking.f53915a && this.f53916b == consentDataTracking.f53916b && this.f53917c == consentDataTracking.f53917c && this.d == consentDataTracking.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + o60.b(o60.b(Boolean.hashCode(this.f53915a) * 31, 31, this.f53916b), 31, this.f53917c);
    }

    public final String toString() {
        return pq0.p(cj.m("ConsentDataTracking(email=", ", sms=", ", onlinePlatforms=", this.f53915a, this.f53916b), this.f53917c, ", emailTracking=", this.d, ")");
    }
}
