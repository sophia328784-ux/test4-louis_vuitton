package com.vuitton.android.data.dto.product.availability;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\b\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\fBU\b\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\u0006\u0010\n\u001a\u00020\u0004\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u000b\u0010\u0011¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;", "", "", "address", "", "centerLatitude", "centerLongitude", "northEastLatitude", "northEastLongitude", "southWestLatitude", "southWestLongitude", "<init>", "(Ljava/lang/String;DDDDDD)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;DDDDDDLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PlaceGeocodingDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46425a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final double f46426b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double f46427c;
    public final double d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double f46428e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final double f46429f;
    public final double g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/product/availability/PlaceGeocodingDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PlaceGeocodingDto> serializer() {
            return PlaceGeocodingDto$$serializer.f46430a;
        }
    }

    public /* synthetic */ PlaceGeocodingDto(int i2, String str, double d, double d2, double d3, double d4, double d5, double d6, SerializationConstructorMarker serializationConstructorMarker) {
        if (127 != (i2 & CertificateBody.profileType)) {
            PluginExceptionsKt.b(i2, CertificateBody.profileType, PlaceGeocodingDto$$serializer.f46430a.a());
            throw null;
        }
        this.f46425a = str;
        this.f46426b = d;
        this.f46427c = d2;
        this.d = d3;
        this.f46428e = d4;
        this.f46429f = d5;
        this.g = d6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PlaceGeocodingDto)) {
            return false;
        }
        PlaceGeocodingDto placeGeocodingDto = (PlaceGeocodingDto) obj;
        return Intrinsics.c(this.f46425a, placeGeocodingDto.f46425a) && Double.compare(this.f46426b, placeGeocodingDto.f46426b) == 0 && Double.compare(this.f46427c, placeGeocodingDto.f46427c) == 0 && Double.compare(this.d, placeGeocodingDto.d) == 0 && Double.compare(this.f46428e, placeGeocodingDto.f46428e) == 0 && Double.compare(this.f46429f, placeGeocodingDto.f46429f) == 0 && Double.compare(this.g, placeGeocodingDto.g) == 0;
    }

    public final int hashCode() {
        return Double.hashCode(this.g) + d21.a(this.f46429f, d21.a(this.f46428e, d21.a(this.d, d21.a(this.f46427c, d21.a(this.f46426b, this.f46425a.hashCode() * 31, 31), 31), 31), 31), 31);
    }

    public final String toString() {
        return "PlaceGeocodingDto(address=" + this.f46425a + ", centerLatitude=" + this.f46426b + ", centerLongitude=" + this.f46427c + ", northEastLatitude=" + this.d + ", northEastLongitude=" + this.f46428e + ", southWestLatitude=" + this.f46429f + ", southWestLongitude=" + this.g + ")";
    }

    public PlaceGeocodingDto(String str, double d, double d2, double d3, double d4, double d5, double d6) {
        str.getClass();
        this.f46425a = str;
        this.f46426b = d;
        this.f46427c = d2;
        this.d = d3;
        this.f46428e = d4;
        this.f46429f = d5;
        this.g = d6;
    }
}
