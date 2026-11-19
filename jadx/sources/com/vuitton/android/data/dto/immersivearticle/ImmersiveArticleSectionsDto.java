package com.vuitton.android.data.dto.immersivearticle;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u0082\u0001\u0011\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;", "", "Companion", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleArticle3DSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAuthenticationSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaListDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleExpansionListDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoCtaSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperSectionDto;", "Lcom/vuitton/android/data/dto/immersivearticle/UnknownImmersiveArticleSectionDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable(with = ImmersiveArticleSectionsDtoSerializer.class)
public abstract class ImmersiveArticleSectionsDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleSectionsDto> serializer() {
            return ImmersiveArticleSectionsDtoSerializer.f45909c;
        }
    }

    public ImmersiveArticleSectionsDto(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
