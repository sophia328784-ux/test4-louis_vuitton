package defpackage;

import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.text.SpanStyleKt;
import com.dynamicyield.sdk.wrapper.core.enums.ChoiceType;
import com.dynamicyield.sdk.wrapper.core.enums.EngagementType;
import com.dynamicyield.sdk.wrapper.core.enums.SortOrderType;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.Slot;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.SortingChoice;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.SortingVariation$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.engagment.SlotClickEngagement;
import com.dynamicyield.sdk.wrapper.core.models.engagment.SlotImpressionEngagement;
import com.dynamicyield.sdk.wrapper.core.models.event.SortItemEventProperties;
import com.vuitton.android.data.dto.account.orders.StateDto;
import com.vuitton.android.data.dto.common.FeatureThemeDto;
import com.vuitton.android.data.dto.product.sizeguide.SizeGuideDropDownDto$$serializer;
import com.vuitton.android.data.dto.product.sizeguide.SizeGuideTableDto;
import com.vuitton.android.data.dto.product.stock.shared.AvailabilityTimeFormatDto;
import com.vuitton.android.data.dto.product.stock.shared.SkuAvailabilityDto;
import com.vuitton.android.data.dto.spotlight.SpotlightDto;
import com.vuitton.android.data.dto.spotlight.SpotlightHotspotDto$$serializer;
import com.vuitton.android.data.dto.spotlight.SpotlightSlideDto;
import com.vuitton.android.data.dto.spotlight.SpotlightSlideDto$$serializer;
import com.vuitton.android.data.dto.storelocator.StoreDto;
import com.vuitton.android.data.dto.storelocator.StoreDto$$serializer;
import com.vuitton.android.data.dto.storelocator.StoreListDto;
import com.vuitton.android.data.dto.storelocator.StoreOpeningHoursDto$$serializer;
import com.vuitton.android.data.dto.storemode.StoreModeDataDto;
import com.vuitton.android.designkit.ui.theme.SpacingKt;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginUiModel;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightHotspotsKt;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightOnboardingKt;
import com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode;
import java.lang.annotation.Annotation;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class nw0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76624b;

    public /* synthetic */ nw0(int i2) {
        this.f76624b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f76624b) {
            case 0:
                SizeGuideTableDto.Companion companion = SizeGuideTableDto.Companion;
                return new ArrayListSerializer(SizeGuideDropDownDto$$serializer.f46465a);
            case 1:
                SkuAvailabilityDto.Companion companion2 = SkuAvailabilityDto.Companion;
                return AvailabilityTimeFormatDto.INSTANCE.serializer();
            case 2:
                Slot.Companion companion3 = Slot.INSTANCE;
                return new PolymorphicSerializer(Reflection.f71922a.b(Slot.class), new Annotation[0]);
            case 3:
                SlotClickEngagement.Companion companion4 = SlotClickEngagement.INSTANCE;
                return new ArrayListSerializer(IntSerializer.f75624a);
            case 4:
                SlotClickEngagement.Companion companion5 = SlotClickEngagement.INSTANCE;
                EngagementType[] engagementTypeArrValues = EngagementType.values();
                engagementTypeArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.EngagementType", engagementTypeArrValues);
            case 5:
                SlotImpressionEngagement.Companion companion6 = SlotImpressionEngagement.INSTANCE;
                return new ArrayListSerializer(IntSerializer.f75624a);
            case 6:
                SlotImpressionEngagement.Companion companion7 = SlotImpressionEngagement.INSTANCE;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 7:
                SlotImpressionEngagement.Companion companion8 = SlotImpressionEngagement.INSTANCE;
                EngagementType[] engagementTypeArrValues2 = EngagementType.values();
                engagementTypeArrValues2.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.EngagementType", engagementTypeArrValues2);
            case 8:
                return Unit.f71739a;
            case 9:
                SocialLoginUiModel.Companion companion9 = SocialLoginUiModel.INSTANCE;
                TrackingAuthOrigin[] trackingAuthOriginArrValues = TrackingAuthOrigin.values();
                trackingAuthOriginArrValues.getClass();
                return new EnumSerializer("com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin", trackingAuthOriginArrValues);
            case 10:
                SocialLoginUiModel.Companion companion10 = SocialLoginUiModel.INSTANCE;
                TrackingAuthEntryPoint[] trackingAuthEntryPointArrValues = TrackingAuthEntryPoint.values();
                trackingAuthEntryPointArrValues.getClass();
                return new EnumSerializer("com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint", trackingAuthEntryPointArrValues);
            case 11:
                SocialLoginUiModel.Companion companion11 = SocialLoginUiModel.INSTANCE;
                SocialAuthMode[] socialAuthModeArrValues = SocialAuthMode.values();
                socialAuthModeArrValues.getClass();
                return new EnumSerializer("com.vuitton.foundation.model.domain.model.authentication.social.SocialAuthMode", socialAuthModeArrValues);
            case 12:
                SortItemEventProperties.Companion companion12 = SortItemEventProperties.Companion;
                SortOrderType[] sortOrderTypeArrValues = SortOrderType.values();
                sortOrderTypeArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.SortOrderType", sortOrderTypeArrValues);
            case 13:
                SortingChoice.Companion companion13 = SortingChoice.Companion;
                ChoiceType[] choiceTypeArrValues = ChoiceType.values();
                choiceTypeArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.ChoiceType", choiceTypeArrValues);
            case 14:
                SortingChoice.Companion companion14 = SortingChoice.Companion;
                return new ArrayListSerializer(SortingVariation$$serializer.f26155a);
            case 15:
                SortingChoice.Companion companion15 = SortingChoice.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 16:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = SpacingKt.f48434a;
                throw new IllegalStateException("no local LV spacings provided");
            case 17:
                return SpanStyleKt.d;
            case 18:
                SpotlightDto.Companion companion16 = SpotlightDto.INSTANCE;
                return new ArrayListSerializer(SpotlightSlideDto$$serializer.f46825a);
            case 19:
                float f2 = SpotlightHotspotsKt.f64588a;
                return Unit.f71739a;
            case 20:
                float f3 = SpotlightOnboardingKt.f64600a;
                return Unit.f71739a;
            case 21:
                SpotlightSlideDto.Companion companion17 = SpotlightSlideDto.INSTANCE;
                return new ArrayListSerializer(SpotlightHotspotDto$$serializer.f46813a);
            case 22:
                SpotlightSlideDto.Companion companion18 = SpotlightSlideDto.INSTANCE;
                return EnumsKt.a("com.vuitton.android.data.dto.common.FeatureThemeDto", FeatureThemeDto.values(), new String[]{"light", "dark"}, new Annotation[][]{null, null});
            case 23:
                return Unit.f71739a;
            case 24:
                return Unit.f71739a;
            case 25:
                return EnumsKt.a("com.vuitton.android.data.dto.account.orders.StateDto", StateDto.values(), new String[]{"past", "current", "future"}, new Annotation[][]{null, null, null});
            case 26:
                StoreDto.Companion companion19 = StoreDto.INSTANCE;
                return new ArrayListSerializer(StoreOpeningHoursDto$$serializer.f46851a);
            case 27:
                StoreListDto.Companion companion20 = StoreListDto.INSTANCE;
                return new ArrayListSerializer(StoreDto$$serializer.f46844a);
            case 28:
                return new ObjectSerializer("com.vuitton.android.data.dto.storemode.StoreModeDataDto.UnknownStoreModeDataDto", StoreModeDataDto.UnknownStoreModeDataDto.INSTANCE, new Annotation[0]);
            default:
                return Unit.f71739a;
        }
    }
}
