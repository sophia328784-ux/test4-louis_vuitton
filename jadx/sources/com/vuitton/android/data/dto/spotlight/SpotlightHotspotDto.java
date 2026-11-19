package com.vuitton.android.data.dto.spotlight;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bBC\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;", "", "", b.a.f24015b, "Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;", "position", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;", "content", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class SpotlightHotspotDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46810a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SpotlightPositionDto f46811b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetDto f46812c;
    public final SpotlightHotspotContentDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<SpotlightHotspotDto> serializer() {
            return SpotlightHotspotDto$$serializer.f46813a;
        }
    }

    public /* synthetic */ SpotlightHotspotDto(int i2, String str, SpotlightPositionDto spotlightPositionDto, AssetDto assetDto, SpotlightHotspotContentDto spotlightHotspotContentDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i2 & 15)) {
            PluginExceptionsKt.b(i2, 15, SpotlightHotspotDto$$serializer.f46813a.getF19850b());
            throw null;
        }
        this.f46810a = str;
        this.f46811b = spotlightPositionDto;
        this.f46812c = assetDto;
        this.d = spotlightHotspotContentDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpotlightHotspotDto)) {
            return false;
        }
        SpotlightHotspotDto spotlightHotspotDto = (SpotlightHotspotDto) obj;
        return Intrinsics.c(this.f46810a, spotlightHotspotDto.f46810a) && Intrinsics.c(this.f46811b, spotlightHotspotDto.f46811b) && Intrinsics.c(this.f46812c, spotlightHotspotDto.f46812c) && Intrinsics.c(this.d, spotlightHotspotDto.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f46812c.hashCode() + ((this.f46811b.hashCode() + (this.f46810a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "SpotlightHotspotDto(id=" + this.f46810a + ", position=" + this.f46811b + ", asset=" + this.f46812c + ", content=" + this.d + ")";
    }

    public SpotlightHotspotDto(String str, SpotlightPositionDto spotlightPositionDto, AssetDto assetDto, SpotlightHotspotContentDto spotlightHotspotContentDto) {
        str.getClass();
        spotlightPositionDto.getClass();
        assetDto.getClass();
        spotlightHotspotContentDto.getClass();
        this.f46810a = str;
        this.f46811b = spotlightPositionDto;
        this.f46812c = assetDto;
        this.d = spotlightHotspotContentDto;
    }
}
