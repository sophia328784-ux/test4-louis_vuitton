package defpackage;

import android.content.Context;
import android.content.Intent;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.gestures.NestedScrollScope;
import androidx.compose.foundation.gestures.ScrollingLogic;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavBackStackEntryKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.ShadowKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.common.editorial.components.AuthenticationSectionKt;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.compose.components.ListPickerItem;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginUiModel;
import com.vuitton.android.presentation.screen.authentication.welcome.components.bottomsheet.SocialSignInDebugBottomSheetContentKt;
import com.vuitton.android.presentation.screen.cart.components.samples.PerfumeSamplesScreenKt;
import com.vuitton.android.presentation.screen.cart.models.PerfumeSampleUiModel;
import com.vuitton.android.presentation.screen.catalog.models.PLPEntryUiModel;
import com.vuitton.android.presentation.screen.feed.components.bottomsheets.PermissionBottomSheetContentKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import com.vuitton.android.presentation.screen.orders.components.detail.OrderDetailScreenKt;
import com.vuitton.android.presentation.screen.orders.components.returns.OrderReturnSummaryComposableKt;
import com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$OrderHeaderType;
import com.vuitton.android.presentation.screen.orders.models.DeliveryUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSetupResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderFeatureFlags;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderStatusUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionUiModel;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import com.vuitton.android.presentation.screen.osa.OsaRoutesName;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormCardKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.models.OsaContactFormViewState;
import com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen;
import com.vuitton.android.presentation.screen.pdp.components.PdpEditorialContentKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpCustomizationContainerKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpDescriptionKt;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.EditorialContentUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductCustomizationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderScanScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderViewState;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsRoute;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.models.PersonalSelectionsCurationAdvisorViewState;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.models.PersonalSelectionsInStoreViewState;
import com.vuitton.android.presentation.screen.plp.activities.PLPDestinations;
import com.vuitton.android.presentation.screen.plp.activities.PLPDestinationsKt;
import com.vuitton.android.presentation.screen.plp.components.composables.brandcontent.PLPHalfEditoComposableKt;
import com.vuitton.android.presentation.screen.plp.models.CatalogMode;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPCategoryViewModel;
import com.vuitton.android.presentation.screen.privacy.components.PiplCbdtComposableKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairPaymentFailedComposableKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairShippingConfirmationComposableKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.BottomSheetScreen;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBottomSheetLayoutKt;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.android.presentation.screen.services.ServicesDestinations;
import com.vuitton.android.presentation.screen.services.ServicesDestinationsKt;
import com.vuitton.android.presentation.screen.services.ServicesViewModel;
import com.vuitton.android.presentation.screen.services.components.ServicesComposableKt;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.StoreModePLPScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeWelcomeComposableKt;
import com.vuitton.android.presentation.screen.storemode.models.PLPStoreModeViewState;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistItemUiModel;
import com.vuitton.android.presentation.screen.wishlist.share.components.SharedWishlistProductItemKt;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Reflection;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class gi0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69422c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69423e;

    public /* synthetic */ gi0(int i2, int i3, Object obj, Object obj2, Object obj3) {
        this.f69421b = i3;
        this.f69422c = obj;
        this.d = obj2;
        this.f69423e = obj3;
    }

    /* JADX WARN: Code duplicated, block: B:183:0x0765  */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        DeliveryUiModel deliveryUiModel;
        CatalogMode catalogMode;
        int i2 = this.f69421b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        int i3 = 2;
        String str = null;
        Object obj3 = this.f69423e;
        Object obj4 = this.d;
        Object obj5 = this.f69422c;
        switch (i2) {
            case 0:
                OrderStatusUiModel orderStatusUiModel = (OrderStatusUiModel) obj5;
                TransactionItemUiModel transactionItemUiModel = (TransactionItemUiModel) obj4;
                OrderViewState orderViewState = (OrderViewState) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if ((orderStatusUiModel != null ? orderStatusUiModel.f60324a : null) == null || orderStatusUiModel.d != null) {
                        OrderFeatureFlags orderFeatureFlags = orderViewState.f60382k;
                        TransactionUiModel transactionUiModel = orderViewState.f60376c;
                        if (orderFeatureFlags.f60279e) {
                            if (transactionUiModel != null && (deliveryUiModel = transactionUiModel.g) != null) {
                                str = deliveryUiModel.f60244b;
                            }
                            if (str != null) {
                                composer.L(1003610731);
                                OrderDetailScreenKt.k(StringResources_androidKt.c(composer, R.string.my_order_delivery_date), transactionUiModel.g.f60244b, AutomationTagsOrders$OrderHeaderType.DELIVERY_DATE, composer, KyberEngine.KyberPolyBytes, 0);
                                composer.F();
                            } else {
                                composer.L(1003917879);
                                String str2 = transactionItemUiModel.g;
                                SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                                OrderDetailScreenKt.k(str2, transactionItemUiModel.f60416f, null, composer, 0, 4);
                                composer.F();
                            }
                        } else {
                            composer.L(1003917879);
                            String str3 = transactionItemUiModel.g;
                            SkuIdUiModel.Companion companion2 = SkuIdUiModel.f61763c;
                            OrderDetailScreenKt.k(str3, transactionItemUiModel.f60416f, null, composer, 0, 4);
                            composer.F();
                        }
                    } else {
                        composer.L(1003296980);
                        OrderDetailScreenKt.l(transactionItemUiModel.f60416f, orderStatusUiModel.f60324a, orderStatusUiModel.f60325b, composer, 0);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                OrderReturnOrExchangeViewState orderReturnOrExchangeViewState = (OrderReturnOrExchangeViewState) obj5;
                OrderReturnOrExchangeItemUiModel orderReturnOrExchangeItemUiModel = (OrderReturnOrExchangeItemUiModel) obj4;
                Function0 function0 = (Function0) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierD = SizeKt.d(WindowInsetsPadding_androidKt.b(BackgroundKt.b(ShadowKt.c(new DTFunctionNameModifier("OrderExchangeReviewScreen$lambda$2"), composer2, 6, 3), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, rectangleShapeKt$RectangleShape$1)), 1.0f);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                    int iHashCode = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierD);
                    ComposeUiNode.b0.getClass();
                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function1);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                    LVButtonKt.b(0, 376, composer2, PaddingKt.j(tr.d("OrderExchangeReviewScreen$lambda$2", 1.0f), LVAppDesignKitTheme.l(composer2).f48417f, LVAppDesignKitTheme.l(composer2).f48416e), LVAppDesignKitTheme.b(composer2).f48446a, null, null, StringResources_androidKt.c(composer2, R.string.confirm), function0, false, (orderReturnOrExchangeViewState.m instanceof ExchangeSetupResponseUiModel.Result) && orderReturnOrExchangeItemUiModel != null, false);
                    composer2.r();
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                List list = (List) obj3;
                int iIntValue3 = ((Integer) obj).intValue();
                ((ListPickerItem) obj2).getClass();
                list.getClass();
                ((Function2) obj5).invoke((OrderReturnOrExchangeItemUiModel) obj4, list.get(iIntValue3));
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                OrderReturnSummaryComposableKt.a((OrderReturnOrExchangeViewModel) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                OsaContactFormCardKt.a((OsaContactFormViewState) obj5, (Function2) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 5:
                QuickAccessFiltersViewModel quickAccessFiltersViewModel = (QuickAccessFiltersViewModel) obj4;
                PLPEntryUiModel pLPEntryUiModel = (PLPEntryUiModel) obj;
                Boolean bool = (Boolean) obj2;
                bool.getClass();
                pLPEntryUiModel.getClass();
                ((PLPCategoryViewModel) obj5).h9(pLPEntryUiModel.f55373b);
                quickAccessFiltersViewModel.M4(false);
                quickAccessFiltersViewModel.Q1(FiltersButtonState.Hidden);
                ((Function2) obj3).invoke(pLPEntryUiModel, bool);
                return Unit.f71739a;
            case 6:
                ((Integer) obj2).getClass();
                PLPHalfEditoComposableKt.b((Modifier) obj5, (PlpSectionUiModel.HalfEdito) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 7:
                PSPStoreModeViewModel pSPStoreModeViewModel = (PSPStoreModeViewModel) obj5;
                Context context = (Context) obj4;
                MutableState mutableState = (MutableState) obj3;
                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                plpProductUiModel.getClass();
                if (pSPStoreModeViewModel.q0()) {
                    String strD0 = pSPStoreModeViewModel.d0();
                    StoreModeContentUiModel storeModeContentUiModel = ((PLPStoreModeViewState) mutableState.getF10755b()).f65037a;
                    storeModeContentUiModel.getClass();
                    int i4 = StoreModeContentUiModel.WhenMappings.f65051a[storeModeContentUiModel.ordinal()];
                    if (i4 == 1) {
                        catalogMode = CatalogMode.IN_STORE;
                    } else {
                        if (i4 != 2) {
                            v40.g();
                            return null;
                        }
                        catalogMode = CatalogMode.ONLINE;
                    }
                    context.startActivity(PLPDestinationsKt.a(new PLPDestinations.PageFromStoreMode(plpProductUiModel, strD0, catalogMode), context));
                    PlpProductUiModel.SkuDataUiModel skuDataUiModel = (PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b();
                    String str4 = skuDataUiModel.d;
                    String str5 = skuDataUiModel.f62943a;
                    ProductShortPriceUiModel productShortPriceUiModel = plpProductUiModel.d;
                    pSPStoreModeViewModel.j(new GA4TrackingUiModel.SelectItemClicked("search", productShortPriceUiModel != null ? productShortPriceUiModel.d : null, "search_results", "Search results", str5, str4, productShortPriceUiModel != null ? productShortPriceUiModel.f62983c : null, iIntValue4, null, null, 768, null));
                }
                return Unit.f71739a;
            case 8:
                ((Integer) obj2).getClass();
                PdpCustomizationContainerKt.c((Modifier) obj5, (ProductCustomizationUiModel) obj4, (Function3) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 9:
                ((Integer) obj2).getClass();
                PdpDescriptionKt.a((Modifier) obj5, (String) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 10:
                ((Integer) obj2).getClass();
                PdpEditorialContentKt.b((Modifier) obj5, (EditorialContentUiModel) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 11:
                PdpTracker pdpTracker = (PdpTracker) obj5;
                CarouselSItemUiModel carouselSItemUiModel = (CarouselSItemUiModel) obj;
                ((Integer) obj2).getClass();
                carouselSItemUiModel.getClass();
                String str6 = carouselSItemUiModel.f50796a;
                pdpTracker.getClass();
                str6.getClass();
                pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(new PdpTrackingUiModel.OnCrossSellProductClickedEvent(str6, null), pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                ((Function0) obj4).mo47invoke();
                ((Function1) obj3).invoke(new SkuIdUiModel(str6));
                return Unit.f71739a;
            case 12:
                ((Integer) obj2).getClass();
                PerfumeSamplesScreenKt.b((Modifier) obj5, (List) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 13:
                ((Integer) obj2).getClass();
                PerfumeSamplesScreenKt.a((Modifier) obj5, (PerfumeSampleUiModel) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 14:
                ((Integer) obj2).getClass();
                PermissionBottomSheetContentKt.a((PermissionsUiModel) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 15:
                PersonalSelectionsCurationAdvisorViewState.Success success = (PersonalSelectionsCurationAdvisorViewState.Success) obj5;
                Function0 function2 = (Function0) obj4;
                Function0 function3 = (Function0) obj3;
                Composer composer3 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Modifier modifierM = PaddingKt.m(tr.d("PersonalSelectionsCurationAdvisorScreen$lambda$3$1$1$0", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, 5);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer3, 0);
                    int iHashCode2 = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierM);
                    ComposeUiNode.b0.getClass();
                    Function0 function4 = ComposeUiNode.Companion.f9641b;
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function4);
                    } else {
                        composer3.o();
                    }
                    Updater.c(composer3, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer3, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer3, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer3, modifierC2, ComposeUiNode.Companion.d);
                    composer3.L(769261895);
                    for (EditorialModuleUiModel editorialModuleUiModel : success.f62507a.f62575j) {
                        if (editorialModuleUiModel instanceof EditorialModuleUiModel.AuthenticationUiModel) {
                            composer3.L(-1654055255);
                            if (success.d) {
                                composer3.L(-1653312619);
                                composer3.F();
                            } else {
                                EditorialModuleUiModel.AuthenticationUiModel authenticationUiModel = (EditorialModuleUiModel.AuthenticationUiModel) editorialModuleUiModel;
                                AuthenticationSectionKt.a(pq0.h(1.0f, -1653985319, composer3, "PersonalSelectionsCurationAdvisorScreen$lambda$3$1$1$0"), authenticationUiModel.f50811b, authenticationUiModel.f50812c, authenticationUiModel.d, LVColorScheme.DEFAULT, function2, function3, composer3, 24582);
                                composer3.F();
                            }
                            composer3.F();
                        } else {
                            composer3.L(-1653229229);
                            composer3.F();
                        }
                    }
                    composer3.F();
                    composer3.r();
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 16:
                Function2 function5 = (Function2) obj5;
                String str7 = (String) obj4;
                String str8 = (String) obj3;
                Composer composer4 = (Composer) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                if (composer4.p(iIntValue6 & 1, (iIntValue6 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    Modifier modifierB = WindowInsetsPadding_androidKt.b(BackgroundKt.b(tr.d("PersonalSelectionsInStoreScreen$lambda$0", 1.0f), LVAppDesignKitTheme.c(composer4).f48361b.f48374a, rectangleShapeKt$RectangleShape$1));
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode3 = Long.hashCode(composer4.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer4.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer4, modifierB);
                    ComposeUiNode.b0.getClass();
                    Function0 function6 = ComposeUiNode.Companion.f9641b;
                    if (composer4.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer4.B();
                    if (composer4.getS()) {
                        composer4.C(function6);
                    } else {
                        composer4.o();
                    }
                    Updater.c(composer4, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer4, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer4, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                    Updater.b(composer4, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer4, modifierC3, ComposeUiNode.Companion.d);
                    ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer4).f48446a;
                    String strC = StringResources_androidKt.c(composer4, R.string.services_osa_cta);
                    Modifier modifierE = ModifierExtKt.e(PaddingKt.l(tr.d("PersonalSelectionsInStoreScreen$lambda$0", 1.0f), LVAppDesignKitTheme.l(composer4).f48416e, LVAppDesignKitTheme.l(composer4).f48415c, LVAppDesignKitTheme.l(composer4).f48416e, LVAppDesignKitTheme.l(composer4).f48417f), "personalSelectionsDetail_bookAppointment_button");
                    boolean zK = composer4.K(function5) | composer4.K(str7) | composer4.K(str8);
                    Object objX = composer4.x();
                    if (zK || objX == Composer.Companion.f7939a) {
                        objX = new sm0(function5, str7, str8, i3);
                        composer4.q(objX);
                    }
                    LVButtonKt.b(0, 504, composer4, modifierE, configurationButton, null, null, strC, (Function0) objX, false, false, false);
                    composer4.r();
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 17:
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj5;
                Context context2 = (Context) obj4;
                String str9 = (String) obj;
                String str10 = (String) obj2;
                str9.getClass();
                str10.getClass();
                PersonalSelectionsInStoreViewState personalSelectionsInStoreViewState = (PersonalSelectionsInStoreViewState) ((MutableState) obj3).getF10755b();
                PersonalSelectionsInStoreViewState.Success success2 = personalSelectionsInStoreViewState instanceof PersonalSelectionsInStoreViewState.Success ? (PersonalSelectionsInStoreViewState.Success) personalSelectionsInStoreViewState : null;
                Intent intentA = ServicesDestinationsKt.a(new ServicesDestinations.ToOsaPage(OsaRoutesName.LOCATION_FORM, success2 != null ? success2.f62562h : null, CollectionsKt.O(str9), str10, true, OsaOriginScreen.PERSONAL_SELECTION, ((PersonalSelectionsRoute.InStoreDetail) NavBackStackEntryKt.a(navBackStackEntry, Reflection.f71922a.b(PersonalSelectionsRoute.InStoreDetail.class))).f62396a, false, 128, null), context2);
                if (intentA != null) {
                    context2.startActivity(intentA);
                }
                return Unit.f71739a;
            case 18:
                ((Integer) obj2).getClass();
                PiplCbdtComposableKt.a((Function0) obj5, (Function0) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 19:
                ((Integer) obj2).getClass();
                RepairDetailBottomSheetLayoutKt.c((BottomSheetScreen) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 20:
                ContactUsUiModel contactUsUiModel = (ContactUsUiModel) obj5;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj4;
                Function1 function7 = (Function1) obj3;
                Composer composer5 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                if (composer5.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(composer5, R.string.dr_screen_title), null, null, null, ComposableLambdaKt.b(237062294, new y8(contactUsUiModel, lVModalBottomSheetState, function7, 7), composer5), null, null, null, composer5, 12582912, 0, 3959);
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 21:
                ((Integer) obj2).getClass();
                RepairPaymentFailedComposableKt.a((Function0) obj5, (String) obj4, (String) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 22:
                ((Integer) obj2).getClass();
                RepairShippingConfirmationComposableKt.b((Modifier) obj5, (InAppDispatch) obj4, (CareServiceDetailUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 23:
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj5;
                ScrollingLogic scrollingLogic = (ScrollingLogic) obj4;
                float fFloatValue = ((Float) obj).floatValue();
                ((Float) obj2).getClass();
                long j2 = scrollingLogic.j(scrollingLogic.f(fFloatValue - ref$FloatRef.f71918b));
                NestedScrollSource.f9260a.getClass();
                ref$FloatRef.f71918b += scrollingLogic.f(scrollingLogic.i(((NestedScrollScope) obj3).b(NestedScrollSource.f9261b, j2)));
                return Unit.f71739a;
            case 24:
                ((Integer) obj2).getClass();
                ServicesComposableKt.a((ServicesViewModel) obj5, (Function1) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 25:
                ((Integer) obj2).getClass();
                ShadeFinderScanScreenKt.b((ShadeFinderViewState) obj5, (SnackbarHostState) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(49));
                return Unit.f71739a;
            case 26:
                ((Integer) obj2).getClass();
                SharedWishlistProductItemKt.a((Modifier) obj5, (WishlistItemUiModel) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 27:
                ((Integer) obj2).getClass();
                SocialSignInDebugBottomSheetContentKt.a((SocialLoginUiModel) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 28:
                ((Integer) obj2).getClass();
                StoreModePLPScreenKt.a((StoreModeViewModel) obj5, (String) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                StoreModeWelcomeComposableKt.a((StoreModeViewModel) obj5, (Function0) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ gi0(Object obj, Object obj2, Object obj3, int i2) {
        this.f69421b = i2;
        this.f69422c = obj;
        this.d = obj2;
        this.f69423e = obj3;
    }
}
