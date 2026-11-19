package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
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
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BO\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\rBW\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDataDto;", "", "", "title", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;", "titleFont", "surtitle", "surtitleFont", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;", "ratio", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/common/AssetDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFontDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleAssetDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45768a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmersiveArticleFontDto f45769b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45770c;
    public final ImmersiveArticleFontDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ImmersiveArticleSizeCardDto f45771e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AssetDto f45772f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleAssetDataDto> serializer() {
            return ImmersiveArticleAssetDataDto$$serializer.f45773a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        g = new Lazy[]{null, LazyKt.a(lazyThreadSafetyMode, new m10(7)), null, LazyKt.a(lazyThreadSafetyMode, new m10(8)), LazyKt.a(lazyThreadSafetyMode, new m10(9)), null};
    }

    public /* synthetic */ ImmersiveArticleAssetDataDto(int i2, String str, ImmersiveArticleFontDto immersiveArticleFontDto, String str2, ImmersiveArticleFontDto immersiveArticleFontDto2, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, AssetDto assetDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45768a = null;
        } else {
            this.f45768a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45769b = null;
        } else {
            this.f45769b = immersiveArticleFontDto;
        }
        if ((i2 & 4) == 0) {
            this.f45770c = null;
        } else {
            this.f45770c = str2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = immersiveArticleFontDto2;
        }
        if ((i2 & 16) == 0) {
            this.f45771e = null;
        } else {
            this.f45771e = immersiveArticleSizeCardDto;
        }
        if ((i2 & 32) == 0) {
            this.f45772f = null;
        } else {
            this.f45772f = assetDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleAssetDataDto)) {
            return false;
        }
        ImmersiveArticleAssetDataDto immersiveArticleAssetDataDto = (ImmersiveArticleAssetDataDto) obj;
        return Intrinsics.c(this.f45768a, immersiveArticleAssetDataDto.f45768a) && this.f45769b == immersiveArticleAssetDataDto.f45769b && Intrinsics.c(this.f45770c, immersiveArticleAssetDataDto.f45770c) && this.d == immersiveArticleAssetDataDto.d && this.f45771e == immersiveArticleAssetDataDto.f45771e && Intrinsics.c(this.f45772f, immersiveArticleAssetDataDto.f45772f);
    }

    public final int hashCode() {
        String str = this.f45768a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        ImmersiveArticleFontDto immersiveArticleFontDto = this.f45769b;
        int iHashCode2 = (iHashCode + (immersiveArticleFontDto == null ? 0 : immersiveArticleFontDto.hashCode())) * 31;
        String str2 = this.f45770c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        ImmersiveArticleFontDto immersiveArticleFontDto2 = this.d;
        int iHashCode4 = (iHashCode3 + (immersiveArticleFontDto2 == null ? 0 : immersiveArticleFontDto2.hashCode())) * 31;
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = this.f45771e;
        int iHashCode5 = (iHashCode4 + (immersiveArticleSizeCardDto == null ? 0 : immersiveArticleSizeCardDto.hashCode())) * 31;
        AssetDto assetDto = this.f45772f;
        return iHashCode5 + (assetDto != null ? assetDto.hashCode() : 0);
    }

    public final String toString() {
        return "ImmersiveArticleAssetDataDto(title=" + this.f45768a + ", titleFont=" + this.f45769b + ", surtitle=" + this.f45770c + ", surtitleFont=" + this.d + ", ratio=" + this.f45771e + ", asset=" + this.f45772f + ")";
    }

    public ImmersiveArticleAssetDataDto() {
        this((String) null, (ImmersiveArticleFontDto) null, (String) null, (ImmersiveArticleFontDto) null, (ImmersiveArticleSizeCardDto) null, (AssetDto) null, 63, (DefaultConstructorMarker) null);
    }

    public ImmersiveArticleAssetDataDto(String str, ImmersiveArticleFontDto immersiveArticleFontDto, String str2, ImmersiveArticleFontDto immersiveArticleFontDto2, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, AssetDto assetDto) {
        this.f45768a = str;
        this.f45769b = immersiveArticleFontDto;
        this.f45770c = str2;
        this.d = immersiveArticleFontDto2;
        this.f45771e = immersiveArticleSizeCardDto;
        this.f45772f = assetDto;
    }

    public /* synthetic */ ImmersiveArticleAssetDataDto(String str, ImmersiveArticleFontDto immersiveArticleFontDto, String str2, ImmersiveArticleFontDto immersiveArticleFontDto2, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, AssetDto assetDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : immersiveArticleFontDto, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : immersiveArticleFontDto2, (i2 & 16) != 0 ? null : immersiveArticleSizeCardDto, (i2 & 32) != 0 ? null : assetDto);
    }
}
