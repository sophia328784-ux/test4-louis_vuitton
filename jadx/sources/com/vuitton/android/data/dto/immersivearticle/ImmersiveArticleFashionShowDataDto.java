package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import com.vuitton.android.data.dto.common.AssetVideoDto;
import defpackage.fc;
import defpackage.m10;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00162\u00020\u0001:\u0002\u0017\u0016BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010Ba\b\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u000f\u0010\u0015¨\u0006\u0018"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;", "", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;", "titlesDuringLive", "titlesDuringReplay", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;", "ratio", "Lcom/vuitton/android/data/dto/common/AssetVideoDto;", "video", "", "format", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowContentDto;", "content", "<init>", "(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowContentDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowContentDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleFashionShowDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Lazy[] f45853h = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new m10(23)), null, null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmersiveArticleTitlesDto f45854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmersiveArticleTitlesDto f45855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetDto f45856c;
    public final ImmersiveArticleSizeCardDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetVideoDto f45857e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f45858f;
    public final ImmersiveArticleFashionShowContentDto g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleFashionShowDataDto> serializer() {
            return ImmersiveArticleFashionShowDataDto$$serializer.f45859a;
        }
    }

    public /* synthetic */ ImmersiveArticleFashionShowDataDto(int i2, ImmersiveArticleTitlesDto immersiveArticleTitlesDto, ImmersiveArticleTitlesDto immersiveArticleTitlesDto2, AssetDto assetDto, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, AssetVideoDto assetVideoDto, String str, ImmersiveArticleFashionShowContentDto immersiveArticleFashionShowContentDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (63 != (i2 & 63)) {
            PluginExceptionsKt.b(i2, 63, ImmersiveArticleFashionShowDataDto$$serializer.f45859a.getF19850b());
            throw null;
        }
        this.f45854a = immersiveArticleTitlesDto;
        this.f45855b = immersiveArticleTitlesDto2;
        this.f45856c = assetDto;
        this.d = immersiveArticleSizeCardDto;
        this.f45857e = assetVideoDto;
        this.f45858f = str;
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = immersiveArticleFashionShowContentDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleFashionShowDataDto)) {
            return false;
        }
        ImmersiveArticleFashionShowDataDto immersiveArticleFashionShowDataDto = (ImmersiveArticleFashionShowDataDto) obj;
        return Intrinsics.c(this.f45854a, immersiveArticleFashionShowDataDto.f45854a) && Intrinsics.c(this.f45855b, immersiveArticleFashionShowDataDto.f45855b) && Intrinsics.c(this.f45856c, immersiveArticleFashionShowDataDto.f45856c) && this.d == immersiveArticleFashionShowDataDto.d && Intrinsics.c(this.f45857e, immersiveArticleFashionShowDataDto.f45857e) && Intrinsics.c(this.f45858f, immersiveArticleFashionShowDataDto.f45858f) && Intrinsics.c(this.g, immersiveArticleFashionShowDataDto.g);
    }

    public final int hashCode() {
        int iB = fc.b((this.f45857e.hashCode() + ((this.d.hashCode() + ((this.f45856c.hashCode() + ((this.f45855b.hashCode() + (this.f45854a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31, 31, this.f45858f);
        ImmersiveArticleFashionShowContentDto immersiveArticleFashionShowContentDto = this.g;
        return iB + (immersiveArticleFashionShowContentDto == null ? 0 : immersiveArticleFashionShowContentDto.hashCode());
    }

    public final String toString() {
        return "ImmersiveArticleFashionShowDataDto(titlesDuringLive=" + this.f45854a + ", titlesDuringReplay=" + this.f45855b + ", asset=" + this.f45856c + ", ratio=" + this.d + ", video=" + this.f45857e + ", format=" + this.f45858f + ", content=" + this.g + ")";
    }

    public ImmersiveArticleFashionShowDataDto(ImmersiveArticleTitlesDto immersiveArticleTitlesDto, ImmersiveArticleTitlesDto immersiveArticleTitlesDto2, AssetDto assetDto, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, AssetVideoDto assetVideoDto, String str, ImmersiveArticleFashionShowContentDto immersiveArticleFashionShowContentDto) {
        immersiveArticleTitlesDto.getClass();
        immersiveArticleTitlesDto2.getClass();
        assetDto.getClass();
        immersiveArticleSizeCardDto.getClass();
        assetVideoDto.getClass();
        str.getClass();
        this.f45854a = immersiveArticleTitlesDto;
        this.f45855b = immersiveArticleTitlesDto2;
        this.f45856c = assetDto;
        this.d = immersiveArticleSizeCardDto;
        this.f45857e = assetVideoDto;
        this.f45858f = str;
        this.g = immersiveArticleFashionShowContentDto;
    }

    public /* synthetic */ ImmersiveArticleFashionShowDataDto(ImmersiveArticleTitlesDto immersiveArticleTitlesDto, ImmersiveArticleTitlesDto immersiveArticleTitlesDto2, AssetDto assetDto, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, AssetVideoDto assetVideoDto, String str, ImmersiveArticleFashionShowContentDto immersiveArticleFashionShowContentDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(immersiveArticleTitlesDto, immersiveArticleTitlesDto2, assetDto, immersiveArticleSizeCardDto, assetVideoDto, str, (i2 & 64) != 0 ? null : immersiveArticleFashionShowContentDto);
    }
}
