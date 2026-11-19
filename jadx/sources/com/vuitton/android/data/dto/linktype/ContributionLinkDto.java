package com.vuitton.android.data.dto.linktype;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b7\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u0082\u0001\u0017\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019¨\u0006\u001a"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;", "", "Companion", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkAICompanionDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkAudioGuideDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkBookingFormDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkCareServiceCreateDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkCategoryDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkExclusiveOfferDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkImmersiveArticleDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkMonogramDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkMyLvDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkNativeStoryDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkPortalDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductListDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkPushNotificationDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkSeoLandingPageDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkShadeFinderDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkSpotlightDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkUnknownDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkWebViewDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistDto;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable(with = ContributionLinkDtoSerializer.class)
public abstract class ContributionLinkDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ContributionLinkDto> serializer() {
            return ContributionLinkDtoSerializer.f46019c;
        }
    }

    public ContributionLinkDto(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
