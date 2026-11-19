package com.vuitton.foundation.model.domain.model.connectivity.travel;

import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;", "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;", "", "booking", "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;", "departure", "arrival", "flightCode", "seat", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Flight extends Travel {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67358c;
    public final FlightAirport d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FlightAirport f67359e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f67360f;
    public final String g;

    public Flight(String str, FlightAirport flightAirport, FlightAirport flightAirport2, String str2, String str3) {
        super(str, TravelType.FLIGHT, null);
        this.f67358c = str;
        this.d = flightAirport;
        this.f67359e = flightAirport2;
        this.f67360f = str2;
        this.g = str3;
    }

    @Override // com.vuitton.foundation.model.domain.model.connectivity.travel.Travel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF67358c() {
        return this.f67358c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Flight)) {
            return false;
        }
        Flight flight = (Flight) obj;
        return Intrinsics.c(this.f67358c, flight.f67358c) && Intrinsics.c(this.d, flight.d) && Intrinsics.c(this.f67359e, flight.f67359e) && Intrinsics.c(this.f67360f, flight.f67360f) && Intrinsics.c(this.g, flight.g);
    }

    public final int hashCode() {
        String str = this.f67358c;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        FlightAirport flightAirport = this.d;
        int iHashCode2 = (iHashCode + (flightAirport == null ? 0 : flightAirport.hashCode())) * 31;
        FlightAirport flightAirport2 = this.f67359e;
        int iHashCode3 = (iHashCode2 + (flightAirport2 == null ? 0 : flightAirport2.hashCode())) * 31;
        String str2 = this.f67360f;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        return iHashCode4 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Flight(booking=");
        sb.append(this.f67358c);
        sb.append(", departure=");
        sb.append(this.d);
        sb.append(", arrival=");
        sb.append(this.f67359e);
        sb.append(", flightCode=");
        sb.append(this.f67360f);
        sb.append(", seat=");
        return n00.r(this.g, ")", sb);
    }
}
