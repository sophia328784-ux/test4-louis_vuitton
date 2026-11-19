package com.vuitton.foundation.model.domain.model.connectivity.travel;

import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;", "", "", "latitude", "longitude", "", "city", "address", "<init>", "(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class HotelPlace {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Double f67369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Double f67370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67371c;
    public final String d;

    public HotelPlace(Double d, Double d2, String str, String str2) {
        this.f67369a = d;
        this.f67370b = d2;
        this.f67371c = str;
        this.d = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HotelPlace)) {
            return false;
        }
        HotelPlace hotelPlace = (HotelPlace) obj;
        return Intrinsics.c(this.f67369a, hotelPlace.f67369a) && Intrinsics.c(this.f67370b, hotelPlace.f67370b) && Intrinsics.c(this.f67371c, hotelPlace.f67371c) && Intrinsics.c(this.d, hotelPlace.d);
    }

    public final int hashCode() {
        Double d = this.f67369a;
        int iHashCode = (d == null ? 0 : d.hashCode()) * 31;
        Double d2 = this.f67370b;
        int iHashCode2 = (iHashCode + (d2 == null ? 0 : d2.hashCode())) * 31;
        String str = this.f67371c;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("HotelPlace(latitude=");
        sb.append(this.f67369a);
        sb.append(", longitude=");
        sb.append(this.f67370b);
        sb.append(", city=");
        return tr.l(sb, this.f67371c, ", address=", this.d, ")");
    }
}
