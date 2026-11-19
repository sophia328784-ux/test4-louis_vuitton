package com.vuitton.android.data.dto.linktype;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.json.JsonContentPolymorphicSerializer;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/dto/linktype/ContributionLinkDtoSerializer;", "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;", "Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ContributionLinkDtoSerializer extends JsonContentPolymorphicSerializer<ContributionLinkDto> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ContributionLinkDtoSerializer f46019c = new ContributionLinkDtoSerializer(Reflection.f71922a.b(ContributionLinkDto.class));

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // kotlinx.serialization.json.JsonContentPolymorphicSerializer
    public final DeserializationStrategy f(JsonElement jsonElement) {
        jsonElement.getClass();
        JsonElement jsonElement2 = (JsonElement) JsonElementKt.c(jsonElement).get("type");
        String lowerCase = null;
        String strF = jsonElement2 != null ? JsonElementKt.d(jsonElement2).getD() : null;
        if (strF != null) {
            lowerCase = strF.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
        }
        if (lowerCase != null) {
            switch (lowerCase.hashCode()) {
                case -1842816834:
                    if (lowerCase.equals("push-notification")) {
                        return ContributionLinkPushNotificationDto.INSTANCE.serializer();
                    }
                    break;
                case -1731215449:
                    if (lowerCase.equals("ai-companion")) {
                        return ContributionLinkAICompanionDto.INSTANCE.serializer();
                    }
                    break;
                case -982480788:
                    if (lowerCase.equals("portal")) {
                        return ContributionLinkPortalDto.INSTANCE.serializer();
                    }
                    break;
                case -968641083:
                    if (lowerCase.equals("wishlist")) {
                        return ContributionLinkWishlistDto.INSTANCE.serializer();
                    }
                    break;
                case -919958188:
                    if (lowerCase.equals("spotlight")) {
                        return ContributionLinkSpotlightDto.INSTANCE.serializer();
                    }
                    break;
                case -657509819:
                    if (lowerCase.equals("audio-guide")) {
                        return ContributionLinkAudioGuideDto.INSTANCE.serializer();
                    }
                    break;
                case -657214789:
                    if (lowerCase.equals("my-monogram")) {
                        return ContributionLinkMonogramDto.INSTANCE.serializer();
                    }
                    break;
                case -309474065:
                    if (lowerCase.equals("product")) {
                        return ContributionLinkProductDto.INSTANCE.serializer();
                    }
                    break;
                case -309425751:
                    if (lowerCase.equals("profile")) {
                        return ContributionLinkMyLvDto.INSTANCE.serializer();
                    }
                    break;
                case -78270675:
                    if (lowerCase.equals("my-appointment/create")) {
                        return ContributionLinkAppointmentCreateDto.INSTANCE.serializer();
                    }
                    break;
                case 50511102:
                    if (lowerCase.equals("category")) {
                        return ContributionLinkCategoryDto.INSTANCE.serializer();
                    }
                    break;
                case 106069776:
                    if (lowerCase.equals("other")) {
                        return ContributionLinkOtherDto.INSTANCE.serializer();
                    }
                    break;
                case 898462257:
                    if (lowerCase.equals("my-care-service/create")) {
                        return ContributionLinkCareServiceCreateDto.INSTANCE.serializer();
                    }
                    break;
                case 954738677:
                    if (lowerCase.equals("seo-landing-page")) {
                        return ContributionLinkSeoLandingPageDto.INSTANCE.serializer();
                    }
                    break;
                case 968147644:
                    if (lowerCase.equals("product-list")) {
                        return ContributionLinkProductListDto.INSTANCE.serializer();
                    }
                    break;
                case 1224424441:
                    if (lowerCase.equals("webview")) {
                        return ContributionLinkWebViewDto.INSTANCE.serializer();
                    }
                    break;
                case 1313517503:
                    if (lowerCase.equals("native-story")) {
                        return ContributionLinkNativeStoryDto.INSTANCE.serializer();
                    }
                    break;
                case 1755166662:
                    if (lowerCase.equals("shade-finder")) {
                        return ContributionLinkShadeFinderDto.INSTANCE.serializer();
                    }
                    break;
                case 1819242468:
                    if (lowerCase.equals("immersive-article")) {
                        return ContributionLinkImmersiveArticleDto.INSTANCE.serializer();
                    }
                    break;
                case 1850963384:
                    if (lowerCase.equals("booking-form")) {
                        return ContributionLinkBookingFormDto.INSTANCE.serializer();
                    }
                    break;
                case 1945848173:
                    if (lowerCase.equals("wishlist-shared")) {
                        return ContributionLinkWishlistSharedDto.INSTANCE.serializer();
                    }
                    break;
                case 2087714413:
                    if (lowerCase.equals("exclusive-offer")) {
                        return ContributionLinkExclusiveOfferDto.INSTANCE.serializer();
                    }
                    break;
            }
        }
        return ContributionLinkUnknownDto.INSTANCE.serializer();
    }
}
