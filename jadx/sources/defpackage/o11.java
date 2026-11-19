package defpackage;

import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.compose.foundation.text.selection.DefaultTextSelectionColors_androidKt;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.SurfaceKt;
import androidx.compose.material3.TextKt;
import androidx.compose.material3.tokens.TypographyTokensKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import com.dynamicyield.sdk.wrapper.core.enums.CurrencyType;
import com.dynamicyield.sdk.wrapper.core.models.common.StringWarnings;
import com.dynamicyield.sdk.wrapper.core.models.event.CartInnerItem$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.event.SubmissionEventProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.SyncCartEventProperties;
import com.vuitton.android.R;
import com.vuitton.android.data.dto.catalog.PLPEntryDto$$serializer;
import com.vuitton.android.data.dto.catalog.SubcategoryDto$$serializer;
import com.vuitton.android.data.dto.catalog.SubcategoryGroupsDto;
import com.vuitton.android.data.dto.catalog.SubcategoryRedirectionDto;
import com.vuitton.android.data.dto.common.AssetDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.GeolocationDto$$serializer;
import com.vuitton.android.data.dto.common.editorial.TargetingDto;
import com.vuitton.android.data.dto.distantrepairs.SlotDto$$serializer;
import com.vuitton.android.data.dto.distantrepairs.StoreSlotInfoDto;
import com.vuitton.android.data.dto.storemode.StoreModeInfoDto;
import com.vuitton.android.data.dto.storemode.StoreModeSectionDto;
import com.vuitton.android.data.dto.storemode.StoreModeSectionDto$$serializer;
import com.vuitton.android.data.dto.storemode.StoreModeTypeDto;
import com.vuitton.android.data.dto.story.StoryDto;
import com.vuitton.android.data.dto.story.StoryDto$StorySlideDto$$serializer;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.search.mocks.SuggestionListMockKt;
import com.vuitton.android.presentation.screen.search.models.SuggestionItemUiModel;
import com.vuitton.android.presentation.screen.storemode.StoreModeRoute;
import java.lang.annotation.Annotation;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class o11 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76668b;

    public /* synthetic */ o11(int i2) {
        this.f76668b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f76668b) {
            case 0:
                StoreModeInfoDto.Companion companion = StoreModeInfoDto.INSTANCE;
                return new ArrayListSerializer(AssetDto$$serializer.f45238a);
            case 1:
                StoreModeInfoDto.Companion companion2 = StoreModeInfoDto.INSTANCE;
                return new ArrayListSerializer(StoreModeSectionDto$$serializer.f46868a);
            case 2:
                return Unit.f71739a;
            case 3:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.storemode.StoreModeRoute.Home", StoreModeRoute.Home.INSTANCE, new Annotation[0]);
            case 4:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.storemode.StoreModeRoute.Level1", StoreModeRoute.Level1.INSTANCE, new Annotation[0]);
            case 5:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.storemode.StoreModeRoute.Psp", StoreModeRoute.Psp.INSTANCE, new Annotation[0]);
            case 6:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.storemode.StoreModeRoute.StoreModeHome", StoreModeRoute.StoreModeHome.INSTANCE, new Annotation[0]);
            case 7:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.storemode.StoreModeRoute.Welcome", StoreModeRoute.Welcome.INSTANCE, new Annotation[0]);
            case 8:
                StoreModeSectionDto.Companion companion3 = StoreModeSectionDto.INSTANCE;
                return StoreModeTypeDto.INSTANCE.serializer();
            case 9:
                return EnumsKt.a("com.vuitton.android.data.dto.storemode.StoreModeTypeDto", StoreModeTypeDto.values(), new String[]{"simple"}, new Annotation[][]{null});
            case 10:
                StoreSlotInfoDto.Companion companion4 = StoreSlotInfoDto.Companion;
                return new ArrayListSerializer(SlotDto$$serializer.f45731a);
            case 11:
                StoreSlotInfoDto.Companion companion5 = StoreSlotInfoDto.Companion;
                return new ArrayListSerializer(SlotDto$$serializer.f45731a);
            case 12:
                StoryDto.Companion companion6 = StoryDto.INSTANCE;
                return new ArrayListSerializer(StoryDto$StorySlideDto$$serializer.f46886a);
            case 13:
                StringWarnings.Companion companion7 = StringWarnings.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 14:
                SubcategoryGroupsDto.Companion companion8 = SubcategoryGroupsDto.Companion;
                return new ArrayListSerializer(SubcategoryDto$$serializer.f45115a);
            case 15:
                SubcategoryRedirectionDto.Companion companion9 = SubcategoryRedirectionDto.Companion;
                return new ArrayListSerializer(PLPEntryDto$$serializer.f45107a);
            case 16:
                SubcategoryRedirectionDto.Companion companion10 = SubcategoryRedirectionDto.Companion;
                return new ArrayListSerializer(PLPEntryDto$$serializer.f45107a);
            case 17:
                SubmissionEventProperties.Companion companion11 = SubmissionEventProperties.Companion;
                CurrencyType[] currencyTypeArrValues = CurrencyType.values();
                currencyTypeArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.CurrencyType", currencyTypeArrValues);
            case 18:
                SubmissionEventProperties.Companion companion12 = SubmissionEventProperties.Companion;
                return new ArrayListSerializer(CartInnerItem$$serializer.f26300a);
            case 19:
                Lazy lazy = SuggestionListMockKt.f64236a;
                SkuIdUiModel.Companion companion13 = SkuIdUiModel.f61763c;
                SuggestionItemUiModel suggestionItemUiModel = new SuggestionItemUiModel("M40995", "Lorem Ipsum", "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--N41358_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}", null, R.drawable.background_product_default, null);
                SuggestionItemUiModel suggestionItemUiModel2 = new SuggestionItemUiModel("skuId", "Lorem Ipsum with a very long name ", "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--M45686_PM2_Front view.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}", null, R.drawable.background_product_default, null);
                Lazy lazy2 = SuggestionListMockKt.f64237b;
                return CollectionsKt.P(suggestionItemUiModel, suggestionItemUiModel2, (SuggestionItemUiModel) lazy2.getF71699b(), (SuggestionItemUiModel) lazy2.getF71699b());
            case 20:
                Lazy lazy3 = SuggestionListMockKt.f64236a;
                SkuIdUiModel.Companion companion14 = SkuIdUiModel.f61763c;
                return new SuggestionItemUiModel("skuId", "Lorem Ipsum", "image url", null, R.drawable.background_product_default, null);
            case 21:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = SurfaceKt.f7319a;
                return new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            case 22:
                SyncCartEventProperties.Companion companion15 = SyncCartEventProperties.Companion;
                CurrencyType[] currencyTypeArrValues2 = CurrencyType.values();
                currencyTypeArrValues2.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.CurrencyType", currencyTypeArrValues2);
            case 23:
                SyncCartEventProperties.Companion companion16 = SyncCartEventProperties.Companion;
                return new ArrayListSerializer(CartInnerItem$$serializer.f26300a);
            case 24:
                TargetingDto.Companion companion17 = TargetingDto.INSTANCE;
                return new ArrayListSerializer(GeolocationDto$$serializer.f45352a);
            case 25:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = TextContextMenuProviderKt.f6153a;
                return null;
            case 26:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal3 = TextKt.f7383a;
                return TypographyTokensKt.f7910a;
            case 27:
                IntOffset.f11012b.getClass();
                return new IntOffset(0L);
            case 28:
                IntOffset.f11012b.getClass();
                return new IntOffset(0L);
            default:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal4 = TextSelectionColorsKt.f6503a;
                return DefaultTextSelectionColors_androidKt.f6344a;
        }
    }
}
