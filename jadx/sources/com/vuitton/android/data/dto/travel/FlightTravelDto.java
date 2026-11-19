package com.vuitton.android.data.dto.travel;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.tx;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BS\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rB]\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/travel/FlightTravelDto;", "Lcom/vuitton/android/data/dto/travel/TravelDto;", "", "booking", "flightCode", "Lcom/vuitton/android/data/dto/travel/Airport;", "departure", "arrival", "", "Lcom/vuitton/android/data/dto/travel/Passenger;", "passengers", "type", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/travel/Airport;Lcom/vuitton/android/data/dto/travel/Airport;Ljava/util/List;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/travel/Airport;Lcom/vuitton/android/data/dto/travel/Airport;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class FlightTravelDto extends TravelDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g = {null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new tx(12)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Airport f46904c;
    public final Airport d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f46905e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f46906f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/travel/FlightTravelDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/travel/FlightTravelDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<FlightTravelDto> serializer() {
            return FlightTravelDto$$serializer.f46907a;
        }
    }

    public /* synthetic */ FlightTravelDto(int i2, String str, String str2, Airport airport, Airport airport2, List list, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if ((i2 & 1) == 0) {
            this.f46902a = null;
        } else {
            this.f46902a = str;
        }
        if ((i2 & 2) == 0) {
            this.f46903b = null;
        } else {
            this.f46903b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f46904c = null;
        } else {
            this.f46904c = airport;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = airport2;
        }
        if ((i2 & 16) == 0) {
            this.f46905e = null;
        } else {
            this.f46905e = list;
        }
        if ((i2 & 32) == 0) {
            this.f46906f = "flight";
        } else {
            this.f46906f = str3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FlightTravelDto)) {
            return false;
        }
        FlightTravelDto flightTravelDto = (FlightTravelDto) obj;
        return Intrinsics.c(this.f46902a, flightTravelDto.f46902a) && Intrinsics.c(this.f46903b, flightTravelDto.f46903b) && Intrinsics.c(this.f46904c, flightTravelDto.f46904c) && Intrinsics.c(this.d, flightTravelDto.d) && Intrinsics.c(this.f46905e, flightTravelDto.f46905e) && Intrinsics.c(this.f46906f, flightTravelDto.f46906f);
    }

    public final int hashCode() {
        String str = this.f46902a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f46903b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Airport airport = this.f46904c;
        int iHashCode3 = (iHashCode2 + (airport == null ? 0 : airport.hashCode())) * 31;
        Airport airport2 = this.d;
        int iHashCode4 = (iHashCode3 + (airport2 == null ? 0 : airport2.hashCode())) * 31;
        List list = this.f46905e;
        return this.f46906f.hashCode() + ((iHashCode4 + (list != null ? list.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("FlightTravelDto(booking=", this.f46902a, ", flightCode=", this.f46903b, ", departure=");
        sbS.append(this.f46904c);
        sbS.append(", arrival=");
        sbS.append(this.d);
        sbS.append(", passengers=");
        sbS.append(this.f46905e);
        sbS.append(", type=");
        sbS.append(this.f46906f);
        sbS.append(")");
        return sbS.toString();
    }

    public FlightTravelDto() {
        this((String) null, (String) null, (Airport) null, (Airport) null, (List) null, (String) null, 63, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlightTravelDto(String str, String str2, Airport airport, Airport airport2, List<Passenger> list, String str3) {
        super(null);
        str3.getClass();
        this.f46902a = str;
        this.f46903b = str2;
        this.f46904c = airport;
        this.d = airport2;
        this.f46905e = list;
        this.f46906f = str3;
    }

    public /* synthetic */ FlightTravelDto(String str, String str2, Airport airport, Airport airport2, List list, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : airport, (i2 & 8) != 0 ? null : airport2, (i2 & 16) != 0 ? null : list, (i2 & 32) != 0 ? "flight" : str3);
    }
}
