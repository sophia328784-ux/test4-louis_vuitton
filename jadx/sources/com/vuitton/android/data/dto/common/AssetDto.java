package com.vuitton.android.data.dto.common;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/common/AssetDto;", "", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "Lcom/vuitton/android/data/dto/common/AssetVideoDto;", "video", "<init>", "(Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AssetDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetImageDto f45236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetVideoDto f45237b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/AssetDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/AssetDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AssetDto> serializer() {
            return AssetDto$$serializer.f45238a;
        }
    }

    public /* synthetic */ AssetDto(int i2, AssetImageDto assetImageDto, AssetVideoDto assetVideoDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45236a = null;
        } else {
            this.f45236a = assetImageDto;
        }
        if ((i2 & 2) == 0) {
            this.f45237b = null;
        } else {
            this.f45237b = assetVideoDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AssetDto)) {
            return false;
        }
        AssetDto assetDto = (AssetDto) obj;
        return Intrinsics.c(this.f45236a, assetDto.f45236a) && Intrinsics.c(this.f45237b, assetDto.f45237b);
    }

    public final int hashCode() {
        AssetImageDto assetImageDto = this.f45236a;
        int iHashCode = (assetImageDto == null ? 0 : assetImageDto.hashCode()) * 31;
        AssetVideoDto assetVideoDto = this.f45237b;
        return iHashCode + (assetVideoDto != null ? assetVideoDto.hashCode() : 0);
    }

    public final String toString() {
        return "AssetDto(image=" + this.f45236a + ", video=" + this.f45237b + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AssetDto() {
        this((AssetImageDto) null, (AssetVideoDto) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    public AssetDto(AssetImageDto assetImageDto, AssetVideoDto assetVideoDto) {
        this.f45236a = assetImageDto;
        this.f45237b = assetVideoDto;
    }

    public /* synthetic */ AssetDto(AssetImageDto assetImageDto, AssetVideoDto assetVideoDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : assetImageDto, (i2 & 2) != 0 ? null : assetVideoDto);
    }
}
