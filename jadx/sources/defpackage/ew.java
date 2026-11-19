package defpackage;

import com.dynamicyield.sdk.wrapper.core.enums.EngagementPNType;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.DYEventSerializer;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.EngagementSerializer;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.EngagementsPayload;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.EventsPayload;
import com.dynamicyield.sdk.wrapper.core.models.engagment.EngagementPN;
import com.vuitton.android.data.applink.ExcludedAppLinksDto;
import com.vuitton.android.data.dto.account.orders.ExchangeErrorCodeDto;
import com.vuitton.android.data.dto.account.orders.ExchangeErrorDetailsDto;
import com.vuitton.android.data.dto.account.orders.ExchangeErrorDetailsDto$$serializer;
import com.vuitton.android.data.dto.account.orders.ExchangeErrorResponseDto;
import com.vuitton.android.data.dto.cart.bff.ExchangeShippingMethodDto;
import com.vuitton.android.data.dto.cart.bff.ExchangeShippingTypeDto;
import com.vuitton.android.data.dto.common.FeatureThemeDto;
import com.vuitton.android.data.dto.common.IconDto;
import com.vuitton.android.data.dto.common.editorial.AlgorithmTypeDto;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleDto;
import com.vuitton.android.data.dto.common.editorial.EditorialModuleSlideDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.EditorialSectionDtoSerializer;
import com.vuitton.android.data.dto.common.editorial.LiveFormatDto;
import com.vuitton.android.data.dto.common.editorial.RatioDto;
import com.vuitton.android.data.dto.config.FeedConfigDto;
import com.vuitton.android.data.dto.config.cache.FeatureThemeCache;
import com.vuitton.android.data.dto.config.cache.FeedConfigCache;
import com.vuitton.android.data.dto.connectivity.common.FaqCategoryDto;
import com.vuitton.android.data.dto.connectivity.common.FaqItemDto$$serializer;
import com.vuitton.android.data.dto.connectivity.lightup.LightUpFaqPdfDto$$serializer;
import com.vuitton.android.data.dto.error.ErrorDetailsDto$$serializer;
import com.vuitton.android.data.dto.error.ErrorDto;
import com.vuitton.android.data.dto.exclusivesales.ExclusiveSalesAvailableDto;
import com.vuitton.android.data.dto.exclusivesales.ExclusiveSalesCategoryLinksDto$$serializer;
import com.vuitton.android.data.dto.feed.FeedDto;
import com.vuitton.android.data.dto.osa.legacy.ErrorOnlineStoreAppointmentDto;
import com.vuitton.android.data.dto.osa.legacy.ErrorOnlineStoreAppointmentErrorsDto$$serializer;
import com.vuitton.foundation.model.domain.model.product.SkuId$$serializer;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import java.lang.annotation.Annotation;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ew implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68959b;

    public /* synthetic */ ew(int i2) {
        this.f68959b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f68959b) {
            case 0:
                EditorialModuleDto.GridSmallSectionDto.Companion companion = EditorialModuleDto.GridSmallSectionDto.INSTANCE;
                return AlgorithmTypeDto.INSTANCE.serializer();
            case 1:
                EditorialModuleDto.GridSmallSectionDto.Companion companion2 = EditorialModuleDto.GridSmallSectionDto.INSTANCE;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 2:
                EditorialModuleDto.LiveSectionDto.Companion companion3 = EditorialModuleDto.LiveSectionDto.INSTANCE;
                return RatioDto.INSTANCE.serializer();
            case 3:
                EditorialModuleDto.LiveSectionDto.Companion companion4 = EditorialModuleDto.LiveSectionDto.INSTANCE;
                return LiveFormatDto.INSTANCE.serializer();
            case 4:
                EditorialModuleDto.ProductCarouselSectionDto.Companion companion5 = EditorialModuleDto.ProductCarouselSectionDto.INSTANCE;
                return new ArrayListSerializer(SkuId$$serializer.f67934a);
            case 5:
                EditorialModuleDto.PushCardSectionDto.Companion companion6 = EditorialModuleDto.PushCardSectionDto.INSTANCE;
                return IconDto.INSTANCE.serializer();
            case 6:
                EditorialModuleDto.SlideShowSectionDto.Companion companion7 = EditorialModuleDto.SlideShowSectionDto.INSTANCE;
                return new ArrayListSerializer(EditorialModuleSlideDto$$serializer.f45336a);
            case 7:
                EngagementPN.Companion companion8 = EngagementPN.INSTANCE;
                EngagementPNType[] engagementPNTypeArrValues = EngagementPNType.values();
                engagementPNTypeArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.EngagementPNType", engagementPNTypeArrValues);
            case 8:
                EngagementsPayload.Companion companion9 = EngagementsPayload.Companion;
                return new ArrayListSerializer(EngagementSerializer.f25965a);
            case 9:
                ErrorDto.Companion companion10 = ErrorDto.Companion;
                return new ArrayListSerializer(ErrorDetailsDto$$serializer.f45741a);
            case 10:
                ErrorOnlineStoreAppointmentDto.Companion companion11 = ErrorOnlineStoreAppointmentDto.Companion;
                return new ArrayListSerializer(ErrorOnlineStoreAppointmentErrorsDto$$serializer.f46123a);
            case 11:
                EventsPayload.Companion companion12 = EventsPayload.Companion;
                return new ArrayListSerializer(DYEventSerializer.f25953a);
            case 12:
                return EnumsKt.a("com.vuitton.android.data.dto.account.orders.ExchangeErrorCodeDto", ExchangeErrorCodeDto.values(), new String[]{"notSellableError", "skipToReviewError", "outOfStockError"}, new Annotation[][]{null, null, null});
            case 13:
                ExchangeErrorDetailsDto.Companion companion13 = ExchangeErrorDetailsDto.Companion;
                return ExchangeErrorCodeDto.Companion.serializer();
            case 14:
                ExchangeErrorResponseDto.Companion companion14 = ExchangeErrorResponseDto.Companion;
                return new ArrayListSerializer(ExchangeErrorDetailsDto$$serializer.f44358a);
            case 15:
                ExchangeShippingMethodDto.Companion companion15 = ExchangeShippingMethodDto.INSTANCE;
                return ExchangeShippingTypeDto.INSTANCE.serializer();
            case 16:
                return EnumsKt.a("com.vuitton.android.data.dto.cart.bff.ExchangeShippingTypeDto", ExchangeShippingTypeDto.values(), new String[]{"standard", "clickAndCollect"}, new Annotation[][]{null, null});
            case 17:
                ExcludedAppLinksDto.Companion companion16 = ExcludedAppLinksDto.INSTANCE;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 18:
                ExclusiveSalesAvailableDto.Companion companion17 = ExclusiveSalesAvailableDto.INSTANCE;
                return new ArrayListSerializer(ExclusiveSalesCategoryLinksDto$$serializer.f45758a);
            case 19:
                return Boolean.TRUE;
            case 20:
                FaqCategoryDto.Companion companion18 = FaqCategoryDto.INSTANCE;
                return new ArrayListSerializer(FaqItemDto$$serializer.f45567a);
            case 21:
                FaqCategoryDto.Companion companion19 = FaqCategoryDto.INSTANCE;
                return new ArrayListSerializer(LightUpFaqPdfDto$$serializer.f45589a);
            case 22:
                Feature[] featureArrValues = Feature.values();
                featureArrValues.getClass();
                return new EnumSerializer("com.vuitton.foundation.model.domain.model.sync.Feature", featureArrValues);
            case 23:
                FeatureThemeCache[] featureThemeCacheArrValues = FeatureThemeCache.values();
                featureThemeCacheArrValues.getClass();
                return new EnumSerializer("com.vuitton.android.data.dto.config.cache.FeatureThemeCache", featureThemeCacheArrValues);
            case 24:
                return Unit.f71739a;
            case 25:
                FeedConfigCache.Companion companion20 = FeedConfigCache.Companion;
                return FeatureThemeCache.INSTANCE.serializer();
            case 26:
                FeedConfigDto.Companion companion21 = FeedConfigDto.Companion;
                return EnumsKt.a("com.vuitton.android.data.dto.common.FeatureThemeDto", FeatureThemeDto.values(), new String[]{"light", "dark"}, new Annotation[][]{null, null});
            case 27:
                return Unit.f71739a;
            case 28:
                FeedDto.Companion companion22 = FeedDto.INSTANCE;
                return new ArrayListSerializer(EditorialSectionDtoSerializer.f45347a);
            default:
                return Unit.f71739a;
        }
    }
}
