package com.vuitton.android.data.dto.spotlight;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nBC\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;", "", "", "title", "description", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;", "cta", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/spotlight/SpotlightCtaDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SpotlightHotspotDetailDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46806a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46807b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImageDto f46808c;
    public final SpotlightCtaDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SpotlightHotspotDetailDto> serializer() {
            return SpotlightHotspotDetailDto$$serializer.f46809a;
        }
    }

    public /* synthetic */ SpotlightHotspotDetailDto(int i2, String str, String str2, AssetImageDto assetImageDto, SpotlightCtaDto spotlightCtaDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (13 != (i2 & 13)) {
            PluginExceptionsKt.b(i2, 13, SpotlightHotspotDetailDto$$serializer.f46809a.a());
            throw null;
        }
        this.f46806a = str;
        if ((i2 & 2) == 0) {
            this.f46807b = null;
        } else {
            this.f46807b = str2;
        }
        this.f46808c = assetImageDto;
        this.d = spotlightCtaDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpotlightHotspotDetailDto)) {
            return false;
        }
        SpotlightHotspotDetailDto spotlightHotspotDetailDto = (SpotlightHotspotDetailDto) obj;
        return Intrinsics.c(this.f46806a, spotlightHotspotDetailDto.f46806a) && Intrinsics.c(this.f46807b, spotlightHotspotDetailDto.f46807b) && Intrinsics.c(this.f46808c, spotlightHotspotDetailDto.f46808c) && Intrinsics.c(this.d, spotlightHotspotDetailDto.d);
    }

    public final int hashCode() {
        int iHashCode = this.f46806a.hashCode() * 31;
        String str = this.f46807b;
        return this.d.hashCode() + ((this.f46808c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SpotlightHotspotDetailDto(title=", this.f46806a, ", description=", this.f46807b, ", image=");
        sbS.append(this.f46808c);
        sbS.append(", cta=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public SpotlightHotspotDetailDto(String str, String str2, AssetImageDto assetImageDto, SpotlightCtaDto spotlightCtaDto) {
        str.getClass();
        assetImageDto.getClass();
        spotlightCtaDto.getClass();
        this.f46806a = str;
        this.f46807b = str2;
        this.f46808c = assetImageDto;
        this.d = spotlightCtaDto;
    }

    public /* synthetic */ SpotlightHotspotDetailDto(String str, String str2, AssetImageDto assetImageDto, SpotlightCtaDto spotlightCtaDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, assetImageDto, spotlightCtaDto);
    }
}
