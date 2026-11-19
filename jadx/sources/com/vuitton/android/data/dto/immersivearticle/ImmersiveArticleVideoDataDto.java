package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import defpackage.l30;
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
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001f\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B/\b\u0010\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0006\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoDataDto;", "", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;", "ratio", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "<init>", "(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/common/AssetDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleVideoDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f45951c = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new l30(21)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmersiveArticleSizeCardDto f45952a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetDto f45953b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleVideoDataDto> serializer() {
            return ImmersiveArticleVideoDataDto$$serializer.f45954a;
        }
    }

    public /* synthetic */ ImmersiveArticleVideoDataDto(int i2, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, AssetDto assetDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45952a = null;
        } else {
            this.f45952a = immersiveArticleSizeCardDto;
        }
        if ((i2 & 2) == 0) {
            this.f45953b = null;
        } else {
            this.f45953b = assetDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleVideoDataDto)) {
            return false;
        }
        ImmersiveArticleVideoDataDto immersiveArticleVideoDataDto = (ImmersiveArticleVideoDataDto) obj;
        return this.f45952a == immersiveArticleVideoDataDto.f45952a && Intrinsics.c(this.f45953b, immersiveArticleVideoDataDto.f45953b);
    }

    public final int hashCode() {
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = this.f45952a;
        int iHashCode = (immersiveArticleSizeCardDto == null ? 0 : immersiveArticleSizeCardDto.hashCode()) * 31;
        AssetDto assetDto = this.f45953b;
        return iHashCode + (assetDto != null ? assetDto.hashCode() : 0);
    }

    public final String toString() {
        return "ImmersiveArticleVideoDataDto(ratio=" + this.f45952a + ", asset=" + this.f45953b + ")";
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ImmersiveArticleVideoDataDto() {
        this((ImmersiveArticleSizeCardDto) null, (AssetDto) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    public ImmersiveArticleVideoDataDto(ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, AssetDto assetDto) {
        this.f45952a = immersiveArticleSizeCardDto;
        this.f45953b = assetDto;
    }

    public /* synthetic */ ImmersiveArticleVideoDataDto(ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, AssetDto assetDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : immersiveArticleSizeCardDto, (i2 & 2) != 0 ? null : assetDto);
    }
}
