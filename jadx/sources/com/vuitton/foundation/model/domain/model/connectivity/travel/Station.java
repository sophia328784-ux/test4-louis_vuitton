package com.vuitton.foundation.model.domain.model.connectivity.travel;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;", "", "", "name", "city", "", "latitude", "longitude", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Station {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67372a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67373b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Double f67374c;
    public final Double d;

    public Station(String str, String str2, Double d, Double d2) {
        this.f67372a = str;
        this.f67373b = str2;
        this.f67374c = d;
        this.d = d2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Station)) {
            return false;
        }
        Station station = (Station) obj;
        return Intrinsics.c(this.f67372a, station.f67372a) && Intrinsics.c(this.f67373b, station.f67373b) && Intrinsics.c(this.f67374c, station.f67374c) && Intrinsics.c(this.d, station.d);
    }

    public final int hashCode() {
        String str = this.f67372a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67373b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Double d = this.f67374c;
        int iHashCode3 = (iHashCode2 + (d == null ? 0 : d.hashCode())) * 31;
        Double d2 = this.d;
        return iHashCode3 + (d2 != null ? d2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("Station(name=", this.f67372a, ", city=", this.f67373b, ", latitude=");
        sbS.append(this.f67374c);
        sbS.append(", longitude=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}
