package com.vuitton.android.data.dto.travel;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B7\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\nBC\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/travel/Station;", "", "Ljava/util/Date;", "dateTime", "", "city", "stationName", "Lcom/vuitton/android/data/dto/travel/CoordinatesDto;", "coordinates", "<init>", "(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/travel/CoordinatesDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/travel/CoordinatesDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class Station {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Date f46918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46920c;
    public final CoordinatesDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/travel/Station$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/travel/Station;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<Station> serializer() {
            return Station$$serializer.f46921a;
        }
    }

    public /* synthetic */ Station(int i2, Date date, String str, String str2, CoordinatesDto coordinatesDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f46918a = null;
        } else {
            this.f46918a = date;
        }
        if ((i2 & 2) == 0) {
            this.f46919b = null;
        } else {
            this.f46919b = str;
        }
        if ((i2 & 4) == 0) {
            this.f46920c = null;
        } else {
            this.f46920c = str2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = coordinatesDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Station)) {
            return false;
        }
        Station station = (Station) obj;
        return Intrinsics.c(this.f46918a, station.f46918a) && Intrinsics.c(this.f46919b, station.f46919b) && Intrinsics.c(this.f46920c, station.f46920c) && Intrinsics.c(this.d, station.d);
    }

    public final int hashCode() {
        Date date = this.f46918a;
        int iHashCode = (date == null ? 0 : date.hashCode()) * 31;
        String str = this.f46919b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f46920c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        CoordinatesDto coordinatesDto = this.d;
        return iHashCode3 + (coordinatesDto != null ? coordinatesDto.hashCode() : 0);
    }

    public final String toString() {
        return "Station(dateTime=" + this.f46918a + ", city=" + this.f46919b + ", stationName=" + this.f46920c + ", coordinates=" + this.d + ")";
    }

    public Station() {
        this((Date) null, (String) null, (String) null, (CoordinatesDto) null, 15, (DefaultConstructorMarker) null);
    }

    public Station(Date date, String str, String str2, CoordinatesDto coordinatesDto) {
        this.f46918a = date;
        this.f46919b = str;
        this.f46920c = str2;
        this.d = coordinatesDto;
    }

    public /* synthetic */ Station(Date date, String str, String str2, CoordinatesDto coordinatesDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : date, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : coordinatesDto);
    }
}
