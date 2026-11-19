package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.AssetVideoDto;
import defpackage.m10;
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
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B7\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bBC\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDto;", "", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "Lcom/vuitton/android/data/dto/common/AssetVideoDto;", "video", "", "caption", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;", "ratio", "<init>", "(Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleAssetDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f45774e = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new m10(10))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetImageDto f45775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetVideoDto f45776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45777c;
    public final ImmersiveArticleSizeCardDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleAssetDto> serializer() {
            return ImmersiveArticleAssetDto$$serializer.f45778a;
        }
    }

    public /* synthetic */ ImmersiveArticleAssetDto(int i2, AssetImageDto assetImageDto, AssetVideoDto assetVideoDto, String str, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45775a = null;
        } else {
            this.f45775a = assetImageDto;
        }
        if ((i2 & 2) == 0) {
            this.f45776b = null;
        } else {
            this.f45776b = assetVideoDto;
        }
        if ((i2 & 4) == 0) {
            this.f45777c = null;
        } else {
            this.f45777c = str;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = immersiveArticleSizeCardDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleAssetDto)) {
            return false;
        }
        ImmersiveArticleAssetDto immersiveArticleAssetDto = (ImmersiveArticleAssetDto) obj;
        return Intrinsics.c(this.f45775a, immersiveArticleAssetDto.f45775a) && Intrinsics.c(this.f45776b, immersiveArticleAssetDto.f45776b) && Intrinsics.c(this.f45777c, immersiveArticleAssetDto.f45777c) && this.d == immersiveArticleAssetDto.d;
    }

    public final int hashCode() {
        AssetImageDto assetImageDto = this.f45775a;
        int iHashCode = (assetImageDto == null ? 0 : assetImageDto.hashCode()) * 31;
        AssetVideoDto assetVideoDto = this.f45776b;
        int iHashCode2 = (iHashCode + (assetVideoDto == null ? 0 : assetVideoDto.hashCode())) * 31;
        String str = this.f45777c;
        int iHashCode3 = (iHashCode2 + (str == null ? 0 : str.hashCode())) * 31;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = this.d;
        return iHashCode3 + (immersiveArticleSizeCardDto != null ? immersiveArticleSizeCardDto.hashCode() : 0);
    }

    public final String toString() {
        return "ImmersiveArticleAssetDto(image=" + this.f45775a + ", video=" + this.f45776b + ", caption=" + this.f45777c + ", ratio=" + this.d + ")";
    }

    public ImmersiveArticleAssetDto() {
        this((AssetImageDto) null, (AssetVideoDto) null, (String) null, (ImmersiveArticleSizeCardDto) null, 15, (DefaultConstructorMarker) null);
    }

    public ImmersiveArticleAssetDto(AssetImageDto assetImageDto, AssetVideoDto assetVideoDto, String str, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto) {
        this.f45775a = assetImageDto;
        this.f45776b = assetVideoDto;
        this.f45777c = str;
        this.d = immersiveArticleSizeCardDto;
    }

    public /* synthetic */ ImmersiveArticleAssetDto(AssetImageDto assetImageDto, AssetVideoDto assetVideoDto, String str, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : assetImageDto, (i2 & 2) != 0 ? null : assetVideoDto, (i2 & 4) != 0 ? null : str, (i2 & 8) != 0 ? null : immersiveArticleSizeCardDto);
    }
}
