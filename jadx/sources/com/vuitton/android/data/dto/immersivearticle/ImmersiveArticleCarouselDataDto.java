package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.m10;
import java.util.List;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB!\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bB5\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselDataDto;", "", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;", "ratio", "", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetDto;", "assets", "<init>", "(Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleCarouselDataDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f45794c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmersiveArticleSizeCardDto f45795a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f45796b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselDataDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselDataDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleCarouselDataDto> serializer() {
            return ImmersiveArticleCarouselDataDto$$serializer.f45797a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f45794c = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new m10(11)), LazyKt.a(lazyThreadSafetyMode, new m10(12))};
    }

    public /* synthetic */ ImmersiveArticleCarouselDataDto(int i2, ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (2 != (i2 & 2)) {
            PluginExceptionsKt.b(i2, 2, ImmersiveArticleCarouselDataDto$$serializer.f45797a.getF19850b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f45795a = null;
        } else {
            this.f45795a = immersiveArticleSizeCardDto;
        }
        this.f45796b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleCarouselDataDto)) {
            return false;
        }
        ImmersiveArticleCarouselDataDto immersiveArticleCarouselDataDto = (ImmersiveArticleCarouselDataDto) obj;
        return this.f45795a == immersiveArticleCarouselDataDto.f45795a && Intrinsics.c(this.f45796b, immersiveArticleCarouselDataDto.f45796b);
    }

    public final int hashCode() {
        ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto = this.f45795a;
        return this.f45796b.hashCode() + ((immersiveArticleSizeCardDto == null ? 0 : immersiveArticleSizeCardDto.hashCode()) * 31);
    }

    public final String toString() {
        return "ImmersiveArticleCarouselDataDto(ratio=" + this.f45795a + ", assets=" + this.f45796b + ")";
    }

    public ImmersiveArticleCarouselDataDto(ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, List<ImmersiveArticleAssetDto> list) {
        list.getClass();
        this.f45795a = immersiveArticleSizeCardDto;
        this.f45796b = list;
    }

    public /* synthetic */ ImmersiveArticleCarouselDataDto(ImmersiveArticleSizeCardDto immersiveArticleSizeCardDto, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : immersiveArticleSizeCardDto, list);
    }
}
