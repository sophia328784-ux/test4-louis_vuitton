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
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eBW\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\r\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;", "", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;", "titlesDuringCountdown", "titlesAfterCountdown", "Lcom/vuitton/android/data/dto/common/AssetDto;", "asset", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;", "ratio", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;", "content", "", "deadline", "<init>", "(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventContentDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleEventDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new m10(21)), null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmersiveArticleTitlesDto f45828a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmersiveArticleTitlesDto f45829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetDto f45830c;
    public final ImmersiveArticleSizeCardDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ImmersiveArticleEventContentDto f45831e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f45832f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleEventDataDto> serializer() {
            return ImmersiveArticleEventDataDto$$serializer.f45833a;
        }
    }

    public /* synthetic */ ImmersiveArticleEventDataDto(int i2, ImmersiveArticleTitlesDto immersiveArticleTitlesDto, ImmersiveArticleTitlesDto immersiveArticleTitlesDto2, AssetDto assetDto, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, ImmersiveArticleEventContentDto immersiveArticleEventContentDto, String str, SerializationConstructorMarker serializationConstructorMarker) {
        if (47 != (i2 & 47)) {
            PluginExceptionsKt.b(i2, 47, ImmersiveArticleEventDataDto$$serializer.f45833a.getF19850b());
            throw null;
        }
        this.f45828a = immersiveArticleTitlesDto;
        this.f45829b = immersiveArticleTitlesDto2;
        this.f45830c = assetDto;
        this.d = immersiveArticleSizeCardDto;
        if ((i2 & 16) == 0) {
            this.f45831e = null;
        } else {
            this.f45831e = immersiveArticleEventContentDto;
        }
        this.f45832f = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleEventDataDto)) {
            return false;
        }
        ImmersiveArticleEventDataDto immersiveArticleEventDataDto = (ImmersiveArticleEventDataDto) obj;
        return Intrinsics.c(this.f45828a, immersiveArticleEventDataDto.f45828a) && Intrinsics.c(this.f45829b, immersiveArticleEventDataDto.f45829b) && Intrinsics.c(this.f45830c, immersiveArticleEventDataDto.f45830c) && this.d == immersiveArticleEventDataDto.d && Intrinsics.c(this.f45831e, immersiveArticleEventDataDto.f45831e) && Intrinsics.c(this.f45832f, immersiveArticleEventDataDto.f45832f);
    }

    public final int hashCode() {
        int iHashCode = (this.d.hashCode() + ((this.f45830c.hashCode() + ((this.f45829b.hashCode() + (this.f45828a.hashCode() * 31)) * 31)) * 31)) * 31;
        ImmersiveArticleEventContentDto immersiveArticleEventContentDto = this.f45831e;
        return this.f45832f.hashCode() + ((iHashCode + (immersiveArticleEventContentDto == null ? 0 : immersiveArticleEventContentDto.hashCode())) * 31);
    }

    public final String toString() {
        return "ImmersiveArticleEventDataDto(titlesDuringCountdown=" + this.f45828a + ", titlesAfterCountdown=" + this.f45829b + ", asset=" + this.f45830c + ", ratio=" + this.d + ", content=" + this.f45831e + ", deadline=" + this.f45832f + ")";
    }

    public ImmersiveArticleEventDataDto(ImmersiveArticleTitlesDto immersiveArticleTitlesDto, ImmersiveArticleTitlesDto immersiveArticleTitlesDto2, AssetDto assetDto, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, ImmersiveArticleEventContentDto immersiveArticleEventContentDto, String str) {
        immersiveArticleTitlesDto.getClass();
        immersiveArticleTitlesDto2.getClass();
        assetDto.getClass();
        immersiveArticleSizeCardDto.getClass();
        str.getClass();
        this.f45828a = immersiveArticleTitlesDto;
        this.f45829b = immersiveArticleTitlesDto2;
        this.f45830c = assetDto;
        this.d = immersiveArticleSizeCardDto;
        this.f45831e = immersiveArticleEventContentDto;
        this.f45832f = str;
    }

    public /* synthetic */ ImmersiveArticleEventDataDto(ImmersiveArticleTitlesDto immersiveArticleTitlesDto, ImmersiveArticleTitlesDto immersiveArticleTitlesDto2, AssetDto assetDto, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, ImmersiveArticleEventContentDto immersiveArticleEventContentDto, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(immersiveArticleTitlesDto, immersiveArticleTitlesDto2, assetDto, immersiveArticleSizeCardDto, (i2 & 16) != 0 ? null : immersiveArticleEventContentDto, str);
    }
}
