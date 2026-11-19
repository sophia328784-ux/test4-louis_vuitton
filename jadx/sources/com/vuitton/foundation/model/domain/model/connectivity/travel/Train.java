package com.vuitton.foundation.model.domain.model.connectivity.travel;

import defpackage.fc;
import defpackage.tr;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;", "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;", "", "booking", "trainNumber", "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;", "departureStation", "Ljava/util/Date;", "departureTime", "arrivalStation", "arrivalTime", "coach", "seat", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;Ljava/util/Date;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Train extends Travel {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67375c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Station f67376e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Date f67377f;
    public final Station g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Date f67378h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f67379i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f67380j;

    public Train(String str, String str2, Station station, Date date, Station station2, Date date2, String str3, String str4) {
        super(str, TravelType.TRAIN, null);
        this.f67375c = str;
        this.d = str2;
        this.f67376e = station;
        this.f67377f = date;
        this.g = station2;
        this.f67378h = date2;
        this.f67379i = str3;
        this.f67380j = str4;
    }

    @Override // com.vuitton.foundation.model.domain.model.connectivity.travel.Travel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF67375c() {
        return this.f67375c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Train)) {
            return false;
        }
        Train train = (Train) obj;
        return Intrinsics.c(this.f67375c, train.f67375c) && Intrinsics.c(this.d, train.d) && Intrinsics.c(this.f67376e, train.f67376e) && Intrinsics.c(this.f67377f, train.f67377f) && Intrinsics.c(this.g, train.g) && Intrinsics.c(this.f67378h, train.f67378h) && Intrinsics.c(this.f67379i, train.f67379i) && Intrinsics.c(this.f67380j, train.f67380j);
    }

    public final int hashCode() {
        String str = this.f67375c;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Station station = this.f67376e;
        int iHashCode3 = (iHashCode2 + (station == null ? 0 : station.hashCode())) * 31;
        Date date = this.f67377f;
        int iHashCode4 = (iHashCode3 + (date == null ? 0 : date.hashCode())) * 31;
        Station station2 = this.g;
        int iHashCode5 = (iHashCode4 + (station2 == null ? 0 : station2.hashCode())) * 31;
        Date date2 = this.f67378h;
        int iHashCode6 = (iHashCode5 + (date2 == null ? 0 : date2.hashCode())) * 31;
        String str3 = this.f67379i;
        int iHashCode7 = (iHashCode6 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f67380j;
        return iHashCode7 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("Train(booking=", this.f67375c, ", trainNumber=", this.d, ", departureStation=");
        sbS.append(this.f67376e);
        sbS.append(", departureTime=");
        sbS.append(this.f67377f);
        sbS.append(", arrivalStation=");
        sbS.append(this.g);
        sbS.append(", arrivalTime=");
        sbS.append(this.f67378h);
        sbS.append(", coach=");
        return tr.l(sbS, this.f67379i, ", seat=", this.f67380j, ")");
    }
}
