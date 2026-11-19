package com.vuitton.foundation.model.domain.model.connectivity.travel;

import defpackage.fc;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001BC\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;", "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;", "", "booking", "name", "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;", "place", "Ljava/util/Date;", "checkIn", "checkOut", "phone", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Hotel extends Travel {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67365c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HotelPlace f67366e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Date f67367f;
    public final Date g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f67368h;

    public Hotel(String str, String str2, HotelPlace hotelPlace, Date date, Date date2, String str3) {
        super(str, TravelType.HOTEL, null);
        this.f67365c = str;
        this.d = str2;
        this.f67366e = hotelPlace;
        this.f67367f = date;
        this.g = date2;
        this.f67368h = str3;
    }

    @Override // com.vuitton.foundation.model.domain.model.connectivity.travel.Travel
    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getF67365c() {
        return this.f67365c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Hotel)) {
            return false;
        }
        Hotel hotel = (Hotel) obj;
        return Intrinsics.c(this.f67365c, hotel.f67365c) && Intrinsics.c(this.d, hotel.d) && Intrinsics.c(this.f67366e, hotel.f67366e) && Intrinsics.c(this.f67367f, hotel.f67367f) && Intrinsics.c(this.g, hotel.g) && Intrinsics.c(this.f67368h, hotel.f67368h);
    }

    public final int hashCode() {
        String str = this.f67365c;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        HotelPlace hotelPlace = this.f67366e;
        int iHashCode3 = (iHashCode2 + (hotelPlace == null ? 0 : hotelPlace.hashCode())) * 31;
        Date date = this.f67367f;
        int iHashCode4 = (iHashCode3 + (date == null ? 0 : date.hashCode())) * 31;
        Date date2 = this.g;
        int iHashCode5 = (iHashCode4 + (date2 == null ? 0 : date2.hashCode())) * 31;
        String str3 = this.f67368h;
        return iHashCode5 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("Hotel(booking=", this.f67365c, ", name=", this.d, ", place=");
        sbS.append(this.f67366e);
        sbS.append(", checkIn=");
        sbS.append(this.f67367f);
        sbS.append(", checkOut=");
        sbS.append(this.g);
        sbS.append(", phone=");
        sbS.append(this.f67368h);
        sbS.append(")");
        return sbS.toString();
    }
}
