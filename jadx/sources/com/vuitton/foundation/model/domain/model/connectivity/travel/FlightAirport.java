package com.vuitton.foundation.model.domain.model.connectivity.travel;

import defpackage.fc;
import defpackage.n00;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;", "", "", "iata", "city", "Ljava/util/Date;", "time", "terminal", "gate", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class FlightAirport {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67361a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67362b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Date f67363c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67364e;

    public FlightAirport(String str, String str2, Date date, String str3, String str4) {
        this.f67361a = str;
        this.f67362b = str2;
        this.f67363c = date;
        this.d = str3;
        this.f67364e = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlightAirport)) {
            return false;
        }
        FlightAirport flightAirport = (FlightAirport) obj;
        return Intrinsics.c(this.f67361a, flightAirport.f67361a) && Intrinsics.c(this.f67362b, flightAirport.f67362b) && Intrinsics.c(this.f67363c, flightAirport.f67363c) && Intrinsics.c(this.d, flightAirport.d) && Intrinsics.c(this.f67364e, flightAirport.f67364e);
    }

    public final int hashCode() {
        String str = this.f67361a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67362b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Date date = this.f67363c;
        int iHashCode3 = (iHashCode2 + (date == null ? 0 : date.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f67364e;
        return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("FlightAirport(iata=", this.f67361a, ", city=", this.f67362b, ", time=");
        sbS.append(this.f67363c);
        sbS.append(", terminal=");
        sbS.append(this.d);
        sbS.append(", gate=");
        return n00.r(this.f67364e, ")", sbS);
    }
}
