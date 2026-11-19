package com.vuitton.android.data.dto.travel;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015Bq\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u000e\u0010\u000fBu\b\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012¢\u0006\u0004\b\u000e\u0010\u0014¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/data/dto/travel/HotelTravelDto;", "Lcom/vuitton/android/data/dto/travel/TravelDto;", "", "booking", "address", "hotelName", "city", "Ljava/util/Date;", "checkIn", "checkOut", "Lcom/vuitton/android/data/dto/travel/CoordinatesDto;", "coordinates", "phone", "type", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/vuitton/android/data/dto/travel/CoordinatesDto;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/vuitton/android/data/dto/travel/CoordinatesDto;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class HotelTravelDto extends TravelDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46910c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Date f46911e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Date f46912f;
    public final CoordinatesDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f46913h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f46914i;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/travel/HotelTravelDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/travel/HotelTravelDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<HotelTravelDto> serializer() {
            return HotelTravelDto$$serializer.f46915a;
        }
    }

    public /* synthetic */ HotelTravelDto(int i2, String str, String str2, String str3, String str4, Date date, Date date2, CoordinatesDto coordinatesDto, String str5, String str6, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if ((i2 & 1) == 0) {
            this.f46908a = null;
        } else {
            this.f46908a = str;
        }
        if ((i2 & 2) == 0) {
            this.f46909b = null;
        } else {
            this.f46909b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f46910c = null;
        } else {
            this.f46910c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f46911e = null;
        } else {
            this.f46911e = date;
        }
        if ((i2 & 32) == 0) {
            this.f46912f = null;
        } else {
            this.f46912f = date2;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = coordinatesDto;
        }
        if ((i2 & 128) == 0) {
            this.f46913h = null;
        } else {
            this.f46913h = str5;
        }
        if ((i2 & 256) == 0) {
            this.f46914i = "hotel";
        } else {
            this.f46914i = str6;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HotelTravelDto)) {
            return false;
        }
        HotelTravelDto hotelTravelDto = (HotelTravelDto) obj;
        return Intrinsics.c(this.f46908a, hotelTravelDto.f46908a) && Intrinsics.c(this.f46909b, hotelTravelDto.f46909b) && Intrinsics.c(this.f46910c, hotelTravelDto.f46910c) && Intrinsics.c(this.d, hotelTravelDto.d) && Intrinsics.c(this.f46911e, hotelTravelDto.f46911e) && Intrinsics.c(this.f46912f, hotelTravelDto.f46912f) && Intrinsics.c(this.g, hotelTravelDto.g) && Intrinsics.c(this.f46913h, hotelTravelDto.f46913h) && Intrinsics.c(this.f46914i, hotelTravelDto.f46914i);
    }

    public final int hashCode() {
        String str = this.f46908a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f46909b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f46910c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Date date = this.f46911e;
        int iHashCode5 = (iHashCode4 + (date == null ? 0 : date.hashCode())) * 31;
        Date date2 = this.f46912f;
        int iHashCode6 = (iHashCode5 + (date2 == null ? 0 : date2.hashCode())) * 31;
        CoordinatesDto coordinatesDto = this.g;
        int iHashCode7 = (iHashCode6 + (coordinatesDto == null ? 0 : coordinatesDto.hashCode())) * 31;
        String str5 = this.f46913h;
        return this.f46914i.hashCode() + ((iHashCode7 + (str5 != null ? str5.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("HotelTravelDto(booking=", this.f46908a, ", address=", this.f46909b, ", hotelName=");
        cj.C(sbS, this.f46910c, ", city=", this.d, ", checkIn=");
        sbS.append(this.f46911e);
        sbS.append(", checkOut=");
        sbS.append(this.f46912f);
        sbS.append(", coordinates=");
        sbS.append(this.g);
        sbS.append(", phone=");
        sbS.append(this.f46913h);
        sbS.append(", type=");
        return n00.r(this.f46914i, ")", sbS);
    }

    public HotelTravelDto() {
        this((String) null, (String) null, (String) null, (String) null, (Date) null, (Date) null, (CoordinatesDto) null, (String) null, (String) null, 511, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HotelTravelDto(String str, String str2, String str3, String str4, Date date, Date date2, CoordinatesDto coordinatesDto, String str5, String str6) {
        super(null);
        str6.getClass();
        this.f46908a = str;
        this.f46909b = str2;
        this.f46910c = str3;
        this.d = str4;
        this.f46911e = date;
        this.f46912f = date2;
        this.g = coordinatesDto;
        this.f46913h = str5;
        this.f46914i = str6;
    }

    public /* synthetic */ HotelTravelDto(String str, String str2, String str3, String str4, Date date, Date date2, CoordinatesDto coordinatesDto, String str5, String str6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : date, (i2 & 32) != 0 ? null : date2, (i2 & 64) != 0 ? null : coordinatesDto, (i2 & 128) != 0 ? null : str5, (i2 & 256) != 0 ? "hotel" : str6);
    }
}
