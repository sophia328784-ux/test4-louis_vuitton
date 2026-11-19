package com.vuitton.foundation.model.domain.model.connectivity.travel;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;", "", "", "iata", "name", "city", "country", "timeZone", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Airport {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67356c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67357e;

    public Airport(String str, String str2, String str3, String str4, String str5) {
        pq0.z(str, str2, str3, str4, str5);
        this.f67354a = str;
        this.f67355b = str2;
        this.f67356c = str3;
        this.d = str4;
        this.f67357e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Airport)) {
            return false;
        }
        Airport airport = (Airport) obj;
        return Intrinsics.c(this.f67354a, airport.f67354a) && Intrinsics.c(this.f67355b, airport.f67355b) && Intrinsics.c(this.f67356c, airport.f67356c) && Intrinsics.c(this.d, airport.d) && Intrinsics.c(this.f67357e, airport.f67357e);
    }

    public final int hashCode() {
        return this.f67357e.hashCode() + fc.b(fc.b(fc.b(this.f67354a.hashCode() * 31, 31, this.f67355b), 31, this.f67356c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("Airport(iata=", this.f67354a, ", name=", this.f67355b, ", city=");
        cj.C(sbS, this.f67356c, ", country=", this.d, ", timeZone=");
        return n00.r(this.f67357e, ")", sbS);
    }
}
