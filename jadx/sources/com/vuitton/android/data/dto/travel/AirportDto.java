package com.vuitton.android.data.dto.travel;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\f\u0010\rBg\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/travel/AirportDto;", "", "", "iata", "name", "city", "stateCode", "regionCodeIso31661Alpha2", "timeZone", "", "latitude", "longitude", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FF)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AirportDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46892a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46893b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46894c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f46895e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f46896f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f46897h;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/travel/AirportDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/travel/AirportDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AirportDto> serializer() {
            return AirportDto$$serializer.f46898a;
        }
    }

    public /* synthetic */ AirportDto(int i2, String str, String str2, String str3, String str4, String str5, String str6, float f2, float f3, SerializationConstructorMarker serializationConstructorMarker) {
        if (247 != (i2 & 247)) {
            PluginExceptionsKt.b(i2, 247, AirportDto$$serializer.f46898a.getF19838b());
            throw null;
        }
        this.f46892a = str;
        this.f46893b = str2;
        this.f46894c = str3;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        this.f46895e = str5;
        this.f46896f = str6;
        this.g = f2;
        this.f46897h = f3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AirportDto)) {
            return false;
        }
        AirportDto airportDto = (AirportDto) obj;
        return Intrinsics.c(this.f46892a, airportDto.f46892a) && Intrinsics.c(this.f46893b, airportDto.f46893b) && Intrinsics.c(this.f46894c, airportDto.f46894c) && Intrinsics.c(this.d, airportDto.d) && Intrinsics.c(this.f46895e, airportDto.f46895e) && Intrinsics.c(this.f46896f, airportDto.f46896f) && Float.compare(this.g, airportDto.g) == 0 && Float.compare(this.f46897h, airportDto.f46897h) == 0;
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f46892a.hashCode() * 31, 31, this.f46893b), 31, this.f46894c);
        String str = this.d;
        return Float.hashCode(this.f46897h) + pq0.b(fc.b(fc.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.f46895e), 31, this.f46896f), 31, this.g);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("AirportDto(iata=", this.f46892a, ", name=", this.f46893b, ", city=");
        cj.C(sbS, this.f46894c, ", stateCode=", this.d, ", regionCodeIso31661Alpha2=");
        cj.C(sbS, this.f46895e, ", timeZone=", this.f46896f, ", latitude=");
        sbS.append(this.g);
        sbS.append(", longitude=");
        sbS.append(this.f46897h);
        sbS.append(")");
        return sbS.toString();
    }

    public AirportDto(String str, String str2, String str3, String str4, String str5, String str6, float f2, float f3) {
        pq0.z(str, str2, str3, str5, str6);
        this.f46892a = str;
        this.f46893b = str2;
        this.f46894c = str3;
        this.d = str4;
        this.f46895e = str5;
        this.f46896f = str6;
        this.g = f2;
        this.f46897h = f3;
    }

    public /* synthetic */ AirportDto(String str, String str2, String str3, String str4, String str5, String str6, float f2, float f3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i2 & 8) != 0 ? null : str4, str5, str6, f2, f3);
    }
}
