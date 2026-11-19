package defpackage;

import androidx.activity.compose.LocalOnBackPressedDispatcherOwner;
import androidx.compose.material3.MaterialThemeKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.retain.ForgetfulRetainedValuesStore;
import androidx.compose.runtime.retain.LocalRetainedValuesStoreKt;
import androidx.navigation3.ui.LocalNavAnimatedContentScopeKt;
import androidx.savedstate.compose.LocalSavedStateRegistryOwnerKt;
import com.batch.android.s.b;
import com.dynamicyield.sdk.wrapper.core.models.event.LoginProperties;
import com.dynamicyield.sdk.wrapper.core.models.event.SecondaryIdentifier$$serializer;
import com.linkplay.medialib.ContentTree;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sightcall.core.experiences.SdkDiscoverKt;
import com.vuitton.android.data.dto.common.CtaDto$$serializer;
import com.vuitton.android.data.dto.dispatch.LocalizationDto;
import com.vuitton.android.data.dto.model3dasset.Model3dAssetDto;
import com.vuitton.android.data.dto.model3dasset.Model3dAssetTypeDto;
import com.vuitton.android.data.dto.storelocator.MegatrioDto;
import com.vuitton.android.presentation.chat.ChatContactUsUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.contact.ContactUsMode;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartPriceUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CatalogUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CatalogViewState;
import com.vuitton.android.presentation.screen.catalog.models.CategoryRedirectionUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CategoryTagUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CategoryUiModel;
import com.vuitton.android.presentation.screen.catalog.models.SectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerUiModel;
import com.vuitton.android.presentation.screen.onboarding.models.MocksKt;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingAssets;
import com.vuitton.android.presentation.screen.onboarding.models.OnboardingViewState;
import com.vuitton.android.presentation.screen.options.dispatch.models.InAppDispatchMockKt;
import com.vuitton.android.presentation.screen.orders.models.CategoryOptionUiModel;
import com.vuitton.android.presentation.screen.orders.models.CategoryTypeUiModel;
import com.vuitton.android.presentation.screen.orders.models.ChannelUiModel;
import com.vuitton.android.presentation.screen.orders.models.DeliveryStateTitle;
import com.vuitton.android.presentation.screen.orders.models.DeliveryStateUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSetupProductUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSetupResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSetupShippingMethodUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSetupUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderPageUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeFeatureFlags;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnReasonUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import com.vuitton.android.presentation.screen.orders.models.ProductExchangeCategoryUiModel;
import com.vuitton.android.presentation.screen.orders.models.PurchaseUiModel;
import com.vuitton.android.presentation.screen.orders.models.PurchasedOrderUiModel;
import com.vuitton.android.presentation.screen.orders.models.ShippingTypeUiModel;
import com.vuitton.android.presentation.screen.orders.models.StateUiModel;
import com.vuitton.android.presentation.screen.orders.models.TimelineUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionUiModel;
import com.vuitton.android.presentation.screen.orders.models.ValidationUiModel;
import com.vuitton.android.presentation.screen.orders.models.VariationsResponseUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ShippingMethodAdditionalInformationUiModel;
import com.vuitton.android.presentation.screen.thankyou.models.ShippingMethodUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.util.StringKtExtKt;
import java.time.LocalDateTime;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class fa0 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69092b;

    public /* synthetic */ fa0(int i2) {
        this.f69092b = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        Integer num = null;
        int i2 = 1;
        switch (this.f69092b) {
            case 0:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = LocalNavAnimatedContentScopeKt.f18423a;
                throw new IllegalStateException("Unexpected access to LocalNavAnimatedContentScope. You should only access LocalNavAnimatedContentScope inside a NavEntry passed to NavDisplay. AnimatedContentScope in OverlayScenes are no-op.");
            case 1:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = LocalOnBackPressedDispatcherOwner.f710a;
                return null;
            case 2:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LocalRetainedValuesStoreKt.f8413a;
                return ForgetfulRetainedValuesStore.f8412a;
            case 3:
                ProvidableCompositionLocal providableCompositionLocal = LocalSavedStateRegistryOwnerKt.f19789a;
                throw new IllegalStateException("CompositionLocal LocalSavedStateRegistryOwner not present");
            case 4:
                LocalizationDto.Companion companion = LocalizationDto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 5:
                LoginProperties.Companion companion2 = LoginProperties.Companion;
                return new ArrayListSerializer(SecondaryIdentifier$$serializer.f26358a);
            case 6:
                Lv3dCardViewerUiModel lv3dCardViewerUiModel = Lv3dCardViewerComposableKt.f58553a;
                return Unit.f71739a;
            case 7:
                Lv3dCardViewerUiModel lv3dCardViewerUiModel2 = Lv3dCardViewerComposableKt.f58553a;
                return Unit.f71739a;
            case 8:
                return Unit.f71739a;
            case 9:
                return Unit.f71739a;
            case 10:
                return SdkDiscoverKt.initDigitalFlow();
            case 11:
                return SdkDiscoverKt.initVisualAssistanceWrapper();
            case 12:
                return SdkDiscoverKt.initDebugWrapper();
            case 13:
                return SdkDiscoverKt.initFeatureWrapper();
            case 14:
                return SdkDiscoverKt.initLoginWrapper();
            case 15:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = MaterialThemeKt.f7017a;
                return Boolean.FALSE;
            case 16:
                MegatrioDto.Companion companion3 = MegatrioDto.INSTANCE;
                return new ArrayListSerializer(CtaDto$$serializer.f45259a);
            case 17:
                Lazy lazy = MocksKt.f59578a;
                return new OnboardingViewState(false, new OnboardingAssets(new AssetVideoUiModel(null, "https://duckduckgo.com/?q=eloquentiam", "non", "eruditi", null, null, null, 113, null), new AssetVideoUiModel(null, "https://search.yahoo.com/search?p=fusce", "aliquet", "elaboraret", null, null, null, 113, null), new AssetVideoUiModel(null, "https://search.yahoo.com/search?p=fermentum", "utroque", "aperiri", null, null, null, 113, null)), EmptyList.f71768b, false, 8, null);
            case 18:
                Lazy lazy2 = com.vuitton.android.presentation.screen.orders.models.MocksKt.f60268a;
                LocalDateTime localDateTimeD = StringKtExtKt.d("2025-02-04T21:59:13.800Z");
                localDateTimeD.getClass();
                Lazy lazy3 = com.vuitton.android.presentation.screen.orders.models.MocksKt.f60274i;
                List listO = CollectionsKt.O((TransactionUiModel) lazy3.getF71699b());
                ChannelUiModel channelUiModel = ChannelUiModel.WEB;
                PurchaseUiModel purchaseUiModel = new PurchaseUiModel(CollectionsKt.O(new PurchasedOrderUiModel("2025-02-12", localDateTimeD, "expetenda", listO, "A1", channelUiModel, false, false, null, 256, null)), 1);
                LocalDateTime localDateTimeD2 = StringKtExtKt.d("2025-02-04T21:59:13.800Z");
                localDateTimeD2.getClass();
                int i3 = 256;
                DefaultConstructorMarker defaultConstructorMarker = null;
                boolean z = false;
                String str = null;
                PurchasedOrderUiModel purchasedOrderUiModel = new PurchasedOrderUiModel("2025-02-12", localDateTimeD2, "expetenda", CollectionsKt.P((TransactionUiModel) lazy3.getF71699b(), (TransactionUiModel) lazy3.getF71699b()), "A2", channelUiModel, true, z, str, i3, defaultConstructorMarker);
                LocalDateTime localDateTimeD3 = StringKtExtKt.d("2025-02-04T21:59:13.800Z");
                localDateTimeD3.getClass();
                boolean z2 = false;
                OrderPageUiModel orderPageUiModel = new OrderPageUiModel(purchaseUiModel, new PurchaseUiModel(CollectionsKt.P(purchasedOrderUiModel, new PurchasedOrderUiModel("2025-02-12", localDateTimeD3, "expetenda", CollectionsKt.O((TransactionUiModel) lazy3.getF71699b()), "A3", channelUiModel, z2, z, str, i3, defaultConstructorMarker)), 2));
                LocalDateTime localDateTime = LocalDateTime.MAX;
                localDateTime.getClass();
                return new OrderViewState(orderPageUiModel, new PurchasedOrderUiModel("2025-02-12", localDateTime, "expetenda", EmptyList.f71768b, "D19", channelUiModel, z2, z, str, i3, defaultConstructorMarker), null, null, false, false, false, false, false, false, null, null, 4092, null);
            case 19:
                CategoryTagUiModel categoryTagUiModel = com.vuitton.android.presentation.screen.catalog.models.MocksKt.f55368a;
                AssetUiModel assetUiModel = com.vuitton.android.presentation.screen.portal.models.MocksKt.f63304a;
                CategoryRedirectionUiModel categoryRedirectionUiModel = com.vuitton.android.presentation.screen.catalog.models.MocksKt.f55370c;
                CategoryUiModel categoryUiModel = new CategoryUiModel("1", "Women", assetUiModel, null, com.vuitton.android.presentation.screen.catalog.models.MocksKt.d, categoryRedirectionUiModel, 8, null);
                CategoryTagUiModel categoryTagUiModel2 = com.vuitton.android.presentation.screen.catalog.models.MocksKt.f55368a;
                int i4 = 16;
                EditorialModuleUiModel.CarouselMUiModel carouselMUiModel = null;
                String str2 = null;
                String str3 = null;
                String str4 = null;
                ChatContactUsUiModel chatContactUsUiModel = null;
                boolean z3 = false;
                boolean z4 = false;
                boolean z5 = false;
                ContactUsMode contactUsMode = null;
                return new CatalogViewState(new CatalogUiModel(assetUiModel, CollectionsKt.P(new SectionUiModel("1", CollectionsKt.P(categoryUiModel, new CategoryUiModel(ContentTree.AUDIO_ID, "Men", assetUiModel, categoryTagUiModel2, carouselMUiModel, categoryRedirectionUiModel, i4, null == true ? 1 : 0))), new SectionUiModel(ContentTree.AUDIO_ID, CollectionsKt.O(new CategoryUiModel("1", "Autres", assetUiModel, categoryTagUiModel2, carouselMUiModel, categoryRedirectionUiModel, i4, null == true ? 1 : 0))))), null, false, false, false, new ContactUsUiModel(true, null, null, null == true ? 1 : 0, str2, str3, str4, chatContactUsUiModel, z3, z4, z5, contactUsMode, 4094, null), null, 82, null == true ? 1 : 0);
            case 20:
                Lazy lazy4 = com.vuitton.android.presentation.screen.orders.models.MocksKt.f60268a;
                InAppDispatch inAppDispatch = InAppDispatchMockKt.f59833a;
                List listP = CollectionsKt.P(com.vuitton.android.presentation.screen.orders.models.MocksKt.b(), com.vuitton.android.presentation.screen.orders.models.MocksKt.b());
                List listO2 = CollectionsKt.O(new OrderReturnOrExchangeItemUiModel(TransactionItemUiModel.a(com.vuitton.android.presentation.screen.orders.models.MocksKt.a(), EmptyList.f71768b), "locationId", "shippingGroupId", true, new OrderReturnReasonUiModel(m.v, "description"), null, 32, null));
                OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModelB = com.vuitton.android.presentation.screen.orders.models.MocksKt.b();
                OrderReturnOrExchangeFeatureFlags orderReturnOrExchangeFeatureFlags = new OrderReturnOrExchangeFeatureFlags(true, true, true, true);
                VariationsResponseUiModel.Result result = new VariationsResponseUiModel.Result((ProductExchangeCategoryUiModel) com.vuitton.android.presentation.screen.orders.models.MocksKt.f60275j.getF71699b());
                SkuIdUiModel.Companion companion4 = SkuIdUiModel.f61763c;
                return new OrderReturnOrExchangeViewState(inAppDispatch, null, result, null, listP, listO2, null, null, orderReturnOrExchangeFeatureFlags, null, null, orderReturnOrExchangeItemUiModelB, new ExchangeSetupResponseUiModel.Result(new ExchangeSetupUiModel(new ExchangeSetupProductUiModel("M46516", "https://en.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-cabas-onthego-mm-monogram-empreinte-leather-handbags--M46516_PM2_Front%20view.jpg", "Cabas OnTheGo MM", CollectionsKt.P("Brown", "MM", "Leather", "18K"), null), "30 Rue Joannes Carret, 69009, Lyon, France", new ExchangeSetupShippingMethodUiModel.Standard("Saturday Delivery - Estimated on 5/25"))), null, null, false, 59082, null);
            case 21:
                Lazy lazy5 = com.vuitton.android.presentation.screen.orders.models.MocksKt.f60268a;
                return new CartPriceUiModel(199.0d, "199€", "EUR");
            case 22:
                Lazy lazy6 = com.vuitton.android.presentation.screen.orders.models.MocksKt.f60268a;
                return new ShippingMethodUiModel("Standard Delivery - Estimated on 5/25", "Delivered between 9 AM - 6 PM", 10, null, new ShippingMethodAdditionalInformationUiModel("Information livraison", "Livraison premium avec créneau proposé après confirmation."));
            case 23:
                Lazy lazy7 = com.vuitton.android.presentation.screen.orders.models.MocksKt.f60268a;
                return CollectionsKt.P("Jean Dupont", "123 Rue de la Paix", "Appartement 4B", "75001 Paris", "France");
            case 24:
                Lazy lazy8 = com.vuitton.android.presentation.screen.orders.models.MocksKt.f60268a;
                return new TimelineUiModel(ValidationUiModel.VALIDATED, CollectionsKt.P(new DeliveryStateUiModel(b.a.f24015b, 0, 0, new DeliveryStateTitle(num, "current", i2, null == true ? 1 : 0), true, StateUiModel.CURRENT), new DeliveryStateUiModel("id2", 1, 1, new DeliveryStateTitle(null == true ? 1 : 0, "future", i2, null == true ? 1 : 0), false, StateUiModel.FUTURE)));
            case 25:
                Lazy lazy9 = com.vuitton.android.presentation.screen.orders.models.MocksKt.f60268a;
                SkuIdUiModel.Companion companion5 = SkuIdUiModel.f61763c;
                return new OrderReturnItemUiModel("Name", "skuId", "Color", "tristique", "Image", "Amount", "shippingGroupId", true, false, null, new LinkedHashSet(), null);
            case 26:
                Lazy lazy10 = com.vuitton.android.presentation.screen.orders.models.MocksKt.f60268a;
                return new TransactionUiModel("reprimique", "shippingGroupId", ShippingTypeUiModel.CLICK_COLLECT, null, CollectionsKt.O(com.vuitton.android.presentation.screen.orders.models.MocksKt.a()), "graeci", null, null, false);
            case 27:
                Lazy lazy11 = com.vuitton.android.presentation.screen.orders.models.MocksKt.f60268a;
                CategoryTypeUiModel categoryTypeUiModel = CategoryTypeUiModel.TEXT;
                CategoryTypeUiModel categoryTypeUiModel2 = CategoryTypeUiModel.IMAGE;
                return new ProductExchangeCategoryUiModel("size", "Select a size", categoryTypeUiModel, true, "nvprod3950161v", CollectionsKt.P(new CategoryOptionUiModel("80 CM", "M0696W", null, true, new ProductExchangeCategoryUiModel("color", "Select a color", categoryTypeUiModel2, true, null, CollectionsKt.P(new CategoryOptionUiModel("Beige", "M0696W", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0696W_PM2_Front view.jpg", true, null), new CategoryOptionUiModel("Rose Poudre", "M0321W", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0321W_PM2_Front view.jpg", false, null), new CategoryOptionUiModel("Red", "M0322W", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0322W_PM2_Front view.jpg", true, null), new CategoryOptionUiModel("Brown", "M0363W", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0363W_PM2_Front view.jpg", true, null), new CategoryOptionUiModel("Black", "M0565W", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0565W_PM2_Front view.jpg", true, null), new CategoryOptionUiModel("Khaki Marine", "M8380W", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M8380W_PM2_Front view.jpg", false, null)))), new CategoryOptionUiModel("85 CM", "M0696V", null, true, new ProductExchangeCategoryUiModel("color", "Select a color", categoryTypeUiModel2, true, null, CollectionsKt.P(new CategoryOptionUiModel("Beige", "M0696V", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0696V_PM2_Front view.jpg", true, null), new CategoryOptionUiModel("Rose Poudre", "M0321V", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0321V_PM2_Front view.jpg", true, null), new CategoryOptionUiModel("Red", "M0322V", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0322V_PM2_Front view.jpg", true, null), new CategoryOptionUiModel("Brown", "M0363V", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0363V_PM2_Front view.jpg", true, null), new CategoryOptionUiModel("Black", "M0565V", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0565V_PM2_Front view.jpg", true, null), new CategoryOptionUiModel("Khaki Marine", "M8380V", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M8380V_PM2_Front view.jpg", false, null)))), new CategoryOptionUiModel("90 CM", "M0696U", null, false, new ProductExchangeCategoryUiModel("color", "Select a color", categoryTypeUiModel2, false, null, EmptyList.f71768b)), new CategoryOptionUiModel("110 CM", "M0565Q", null, true, new ProductExchangeCategoryUiModel("color", "Select a color", categoryTypeUiModel2, true, null, CollectionsKt.O(new CategoryOptionUiModel("Black", "M0565Q", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0565Q_PM2_Front view.jpg", true, null)))), new CategoryOptionUiModel("100 CM", "M0565S", null, true, new ProductExchangeCategoryUiModel("color", "Select a color", categoryTypeUiModel2, true, null, CollectionsKt.O(new CategoryOptionUiModel("Black", "M0565S", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0565S_PM2_Front view.jpg", true, null)))), new CategoryOptionUiModel("95 CM", "M0322T", null, true, new ProductExchangeCategoryUiModel("color", "Select a color", categoryTypeUiModel2, true, null, CollectionsKt.P(new CategoryOptionUiModel("Red", "M0322T", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0322T_PM2_Front view.jpg", true, null), new CategoryOptionUiModel("Black", "M0565T", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0565T_PM2_Front view.jpg", true, null)))), new CategoryOptionUiModel("75 CM", "M0322X", null, true, new ProductExchangeCategoryUiModel("thickness", "Select thickness", categoryTypeUiModel, true, null, CollectionsKt.O(new CategoryOptionUiModel("35 CM", "M0322X", null, true, new ProductExchangeCategoryUiModel("color", "Select a color", categoryTypeUiModel2, true, null, CollectionsKt.P(new CategoryOptionUiModel("Red", "M0322T", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0322T_PM2_Front view.jpg", true, null), new CategoryOptionUiModel("Black", "M0565T", "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0565T_PM2_Front view.jpg", true, null)))))))));
            case 28:
                return UUID.randomUUID();
            default:
                Model3dAssetDto.Companion companion6 = Model3dAssetDto.INSTANCE;
                return Model3dAssetTypeDto.INSTANCE.serializer();
        }
    }
}
