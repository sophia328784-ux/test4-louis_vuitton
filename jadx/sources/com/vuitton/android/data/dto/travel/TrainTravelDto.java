package com.vuitton.android.data.dto.travel;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.l31;
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
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BS\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\rB]\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/travel/TrainTravelDto;", "Lcom/vuitton/android/data/dto/travel/TravelDto;", "", "booking", "trainNumber", "Lcom/vuitton/android/data/dto/travel/Station;", "departure", "arrival", "", "Lcom/vuitton/android/data/dto/travel/Traveler;", "travelers", "type", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/travel/Station;Lcom/vuitton/android/data/dto/travel/Station;Ljava/util/List;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/travel/Station;Lcom/vuitton/android/data/dto/travel/Station;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class TrainTravelDto extends TravelDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g = {null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new l31(18)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46922a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46923b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Station f46924c;
    public final Station d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f46925e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f46926f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/travel/TrainTravelDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/travel/TrainTravelDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<TrainTravelDto> serializer() {
            return TrainTravelDto$$serializer.f46927a;
        }
    }

    public /* synthetic */ TrainTravelDto(int i2, String str, String str2, Station station, Station station2, List list, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        super(null);
        if ((i2 & 1) == 0) {
            this.f46922a = null;
        } else {
            this.f46922a = str;
        }
        if ((i2 & 2) == 0) {
            this.f46923b = null;
        } else {
            this.f46923b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f46924c = null;
        } else {
            this.f46924c = station;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = station2;
        }
        if ((i2 & 16) == 0) {
            this.f46925e = null;
        } else {
            this.f46925e = list;
        }
        if ((i2 & 32) == 0) {
            this.f46926f = "train";
        } else {
            this.f46926f = str3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TrainTravelDto)) {
            return false;
        }
        TrainTravelDto trainTravelDto = (TrainTravelDto) obj;
        return Intrinsics.c(this.f46922a, trainTravelDto.f46922a) && Intrinsics.c(this.f46923b, trainTravelDto.f46923b) && Intrinsics.c(this.f46924c, trainTravelDto.f46924c) && Intrinsics.c(this.d, trainTravelDto.d) && Intrinsics.c(this.f46925e, trainTravelDto.f46925e) && Intrinsics.c(this.f46926f, trainTravelDto.f46926f);
    }

    public final int hashCode() {
        String str = this.f46922a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f46923b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        Station station = this.f46924c;
        int iHashCode3 = (iHashCode2 + (station == null ? 0 : station.hashCode())) * 31;
        Station station2 = this.d;
        int iHashCode4 = (iHashCode3 + (station2 == null ? 0 : station2.hashCode())) * 31;
        List list = this.f46925e;
        return this.f46926f.hashCode() + ((iHashCode4 + (list != null ? list.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("TrainTravelDto(booking=", this.f46922a, ", trainNumber=", this.f46923b, ", departure=");
        sbS.append(this.f46924c);
        sbS.append(", arrival=");
        sbS.append(this.d);
        sbS.append(", travelers=");
        sbS.append(this.f46925e);
        sbS.append(", type=");
        sbS.append(this.f46926f);
        sbS.append(")");
        return sbS.toString();
    }

    public TrainTravelDto() {
        this((String) null, (String) null, (Station) null, (Station) null, (List) null, (String) null, 63, (DefaultConstructorMarker) null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrainTravelDto(String str, String str2, Station station, Station station2, List<Traveler> list, String str3) {
        super(null);
        str3.getClass();
        this.f46922a = str;
        this.f46923b = str2;
        this.f46924c = station;
        this.d = station2;
        this.f46925e = list;
        this.f46926f = str3;
    }

    public /* synthetic */ TrainTravelDto(String str, String str2, Station station, Station station2, List list, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : station, (i2 & 8) != 0 ? null : station2, (i2 & 16) != 0 ? null : list, (i2 & 32) != 0 ? "train" : str3);
    }
}
