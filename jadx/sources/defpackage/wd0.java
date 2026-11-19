package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.pager.PagerScrollScopeKt$LazyLayoutScrollScope$1;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.FloatingActionButtonKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusPropertiesKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.tooling.ComposableSingletons$PreviewActivity_androidKt;
import androidx.compose.ui.tooling.PreviewActivity;
import androidx.navigation.compose.NavBackStackEntryProviderKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVNotificationIconKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.ShadowKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.compose.components.LVNotificationData;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$loadDynamicProfileForm$3;
import com.vuitton.android.presentation.screen.booking.pass.components.PassViewKt;
import com.vuitton.android.presentation.screen.booking.pass.models.BookingPassUiModel;
import com.vuitton.android.presentation.screen.cart.components.packaging.PackagingScreenKt;
import com.vuitton.android.presentation.screen.cart.components.sections.NativeCartNotificationKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldPhoneUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.customvalidation.FieldValidationRule;
import com.vuitton.android.presentation.screen.filter.model.FilterType;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.QuickAccessFiltersViewState;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.OptOutPrivacyMenuViewModel;
import com.vuitton.android.presentation.screen.options.optoutprivacymenu.components.OptOutPrivacyMenuComposableKt;
import com.vuitton.android.presentation.screen.orders.components.detail.OrderDetailScreenKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeComponentsKt;
import com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$ProductDetailRowType;
import com.vuitton.android.presentation.screen.orders.models.CategoryOptionUiModel;
import com.vuitton.android.presentation.screen.orders.models.ConfirmReturnResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSubmitResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeBottomSheet;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.models.OrderViewState;
import com.vuitton.android.presentation.screen.orders.models.PurchasedOrderUiModel;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormScreenKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.models.OsaContactFormViewState;
import com.vuitton.android.presentation.screen.osa.list.OsaListViewModel;
import com.vuitton.android.presentation.screen.osa.list.models.OsaListViewState;
import com.vuitton.android.presentation.screen.osa.models.OsaItemUiModel;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetType;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.VariationUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorLookListKt;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.models.PersonalSelectionsInStoreTrackingUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionAssetUiModel;
import com.vuitton.android.presentation.screen.personalselections.list.components.PersonalSelectionsListScreenKt;
import com.vuitton.android.presentation.screen.personalselections.list.models.PersonalSharingUiModel;
import com.vuitton.android.presentation.screen.plp.activities.PLPDestinations;
import com.vuitton.android.presentation.screen.plp.activities.PLPDestinationsKt;
import com.vuitton.android.presentation.screen.plp.components.composables.brandcontent.PLPCuratedTextComposableKt;
import com.vuitton.android.presentation.screen.plp.components.composables.brandcontent.PLPProductFullscreenComposableKt;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPCategoryViewModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.PSPViewModel;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.android.presentation.screen.search.models.HistoryItemUiModel;
import com.vuitton.android.presentation.screen.storemode.components.plp.PLPStoreModeLeaveScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.plp.PLPStoreModeScreenKt;
import com.vuitton.android.presentation.screen.storemode.filters.model.StoreModePLPFiltersViewState;
import com.vuitton.android.presentation.screen.webview.WebViewRouter;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import com.vuitton.android.presentation.utils.UrlFactory;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.product.universal.VariationType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class wd0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80843c;
    public final /* synthetic */ Object d;

    public /* synthetic */ wd0(int i2, SelectionAssetUiModel selectionAssetUiModel, Function1 function1) {
        this.f80842b = 24;
        this.d = selectionAssetUiModel;
        this.f80843c = function1;
    }

    /* JADX WARN: Code duplicated, block: B:150:0x063e  */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        FormFieldPhoneUiModel formFieldPhoneUiModel;
        boolean z;
        long j2;
        int i2 = this.f80842b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj3 = this.d;
        Object obj4 = this.f80843c;
        switch (i2) {
            case 0:
                Function1 function1 = (Function1) obj4;
                MyInformationViewModelImpl myInformationViewModelImpl = (MyInformationViewModelImpl) obj3;
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj2;
                boolean z2 = formFieldGenericUiModel instanceof FormFieldPhoneUiModel;
                Object objC = formFieldGenericUiModel;
                if (z2) {
                    formFieldPhoneUiModel = (FormFieldPhoneUiModel) formFieldGenericUiModel;
                    if (MyInformationViewModelImpl$loadDynamicProfileForm$3.WhenMappings.f52559a[formFieldPhoneUiModel.d.ordinal()] == 2) {
                        objC = formFieldPhoneUiModel;
                        List<FormFieldUiModel> list = formFieldPhoneUiModel.g;
                        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                        for (FormFieldUiModel formFieldUiModelC : list) {
                            if (MyInformationViewModelImpl$loadDynamicProfileForm$3.WhenMappings.f52559a[formFieldUiModelC.d.ordinal()] == 1) {
                                formFieldUiModelC = FormFieldUiModel.c(formFieldUiModelC, true, null, null, null, null, new FieldValidationRule(new vd0(myInformationViewModelImpl, 4), new x60(myInformationViewModelImpl, 7), new ew(19)), null, false, false, 990);
                            }
                            arrayList.add(formFieldUiModelC);
                        }
                        objC = FormFieldPhoneUiModel.c(formFieldPhoneUiModel, arrayList);
                    }
                }
                objC = formFieldPhoneUiModel;
                return (FormFieldGenericUiModel) function1.invoke(objC);
            case 1:
                ((Integer) obj2).getClass();
                NativeCartNotificationKt.a((Modifier) obj4, (LVNotificationData) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                NavBackStackEntryProviderKt.b((SaveableStateHolder) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                OptOutPrivacyMenuComposableKt.a((OptOutPrivacyMenuViewModel) obj4, (WebViewRouter) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                OrderDetailScreenKt.m((String) obj4, (ComposableLambdaImpl) obj3, (Composer) obj, RecomposeScopeImplKt.a(49));
                return Unit.f71739a;
            case 5:
                String str = (String) obj4;
                OrderViewState orderViewState = (OrderViewState) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierE = ModifierExtKt.e(new DTFunctionNameModifier("OrderDetailBottomSheetContent_jIwJxvA$lambda$0$0$3$0$0"), AutomationTagsOrders$ProductDetailRowType.PRICE.getValueTag());
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.p, composer, 48);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierE);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function0);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                    TextKt.c(str, null, LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48427h, composer, 0, 0, 131066);
                    if (orderViewState.f60382k.f60278c) {
                        composer.L(-174265990);
                        TextKt.c(StringResources_androidKt.c(composer, R.string.global_vat_included), null, LVAppDesignKitTheme.c(composer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48427h, composer, 0, 0, 131066);
                        composer.F();
                    } else {
                        composer.L(-173919937);
                        composer.F();
                    }
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 6:
                OrderViewState orderViewState2 = (OrderViewState) obj4;
                Function0 function2 = (Function0) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    String strC = StringResources_androidKt.c(composer2, R.string.mylv_myorders_ordernr);
                    PurchasedOrderUiModel purchasedOrderUiModel = orderViewState2.f60375b;
                    LVStandardTopBarKt.a(null, LVColorScheme.INVERT, false, d21.j(strC, purchasedOrderUiModel != null ? purchasedOrderUiModel.f60396e : null), null, null, function2, null, null, null, null, composer2, 48, 0, 4021);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 7:
                OrderReturnOrExchangeViewState orderReturnOrExchangeViewState = (OrderReturnOrExchangeViewState) obj3;
                Function1 function3 = (Function1) obj4;
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Modifier modifierD = SizeKt.d(WindowInsetsPadding_androidKt.b(BackgroundKt.b(ShadowKt.c(new DTFunctionNameModifier("OrderExchangeVariantSelectionScreen$lambda$1"), composer3, 6, 3), LVAppDesignKitTheme.c(composer3).f48361b.f48374a, rectangleShapeKt$RectangleShape$1)), 1.0f);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                    int iHashCode2 = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierD);
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
                    Updater.c(composer3, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer3, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer3, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer3, modifierC2, ComposeUiNode.Companion.d);
                    ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer3).f48446a;
                    Modifier modifierJ = PaddingKt.j(tr.d("OrderExchangeVariantSelectionScreen$lambda$1", 1.0f), LVAppDesignKitTheme.l(composer3).f48417f, LVAppDesignKitTheme.l(composer3).f48416e);
                    String strC2 = StringResources_androidKt.c(composer3, R.string.confirm);
                    if (orderReturnOrExchangeViewState.f60315k.isEmpty()) {
                        z = false;
                    } else {
                        CategoryOptionUiModel categoryOptionUiModel = (CategoryOptionUiModel) CollectionsKt.N(orderReturnOrExchangeViewState.f60315k);
                        if ((categoryOptionUiModel != null ? categoryOptionUiModel.f60231e : null) == null) {
                            z = true;
                        } else {
                            z = false;
                        }
                    }
                    boolean zK = composer3.K(function3) | composer3.y(orderReturnOrExchangeViewState);
                    Object objX = composer3.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new rh0(function3, orderReturnOrExchangeViewState, 7);
                        composer3.q(objX);
                    }
                    LVButtonKt.b(0, 376, composer3, modifierJ, configurationButton, null, null, strC2, (Function0) objX, false, z, false);
                    composer3.r();
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 8:
                ((Integer) obj2).getClass();
                OrderReturnOrExchangeComponentsKt.c((ExchangeSubmitResponseUiModel) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 9:
                ((Integer) obj2).getClass();
                OrderReturnOrExchangeComponentsKt.k((OrderReturnOrExchangeBottomSheet.SizeGuide.SizeGuideRequest) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 10:
                ((Integer) obj2).getClass();
                OrderReturnOrExchangeComponentsKt.j((ConfirmReturnResponseUiModel) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 11:
                ((Integer) obj2).getClass();
                OsaContactFormScreenKt.a((OsaContactFormViewState) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 12:
                OsaListViewState osaListViewState = (OsaListViewState) obj4;
                Function0 function5 = (Function0) obj3;
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    Modifier modifierB = WindowInsetsPadding_androidKt.b(BackgroundKt.b(tr.d("OsaListScreen$lambda$5", 1.0f), LVAppDesignKitTheme.c(composer4).f48361b.f48374a, rectangleShapeKt$RectangleShape$1));
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
                    LVButtonKt.b(0, 376, composer4, ModifierExtKt.e(PaddingKt.l(tr.d("OsaListScreen$lambda$5", 1.0f), LVAppDesignKitTheme.l(composer4).f48416e, LVAppDesignKitTheme.l(composer4).f48415c, LVAppDesignKitTheme.l(composer4).f48416e, LVAppDesignKitTheme.l(composer4).f48417f), "osa_bookAppointment_button"), LVAppDesignKitTheme.b(composer4).f48446a, null, null, StringResources_androidKt.c(composer4, R.string.osa_mylv_cta_create_new_appointment), function5, false, osaListViewState.f60909f.isEmpty(), false);
                    composer4.r();
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 13:
                InAppDispatch inAppDispatch = (InAppDispatch) obj;
                OsaItemUiModel osaItemUiModel = (OsaItemUiModel) obj2;
                inAppDispatch.getClass();
                osaItemUiModel.getClass();
                ((OsaListViewModel) obj4).o(new OsaTrackingUiModel.AddAppointmentToCalendarEvent(osaItemUiModel));
                ((Function2) obj3).invoke(inAppDispatch, osaItemUiModel);
                return Unit.f71739a;
            case 14:
                PLPCategoryViewModel pLPCategoryViewModel = (PLPCategoryViewModel) obj3;
                Bitmap bitmap = (Bitmap) obj;
                String str2 = (String) obj2;
                bitmap.getClass();
                str2.getClass();
                ((Function3) obj4).A(bitmap, str2, pLPCategoryViewModel.C2().getValue());
                pLPCategoryViewModel.O0(new PLPTrackingUiModel.NativeShareRequestedEvent(str2));
                return Unit.f71739a;
            case 15:
                ((Integer) obj2).getClass();
                PLPCuratedTextComposableKt.b((Modifier) obj4, (PlpSectionUiModel.CuratedText) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 16:
                ((Integer) obj2).getClass();
                PLPProductFullscreenComposableKt.a((AssetUiModel) obj4, (UrlFactory) obj3, (Composer) obj, RecomposeScopeImplKt.a(49));
                return Unit.f71739a;
            case 17:
                ((Integer) obj2).getClass();
                PLPStoreModeLeaveScreenKt.a((Flow) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 18:
                LVColorScheme lVColorScheme = (LVColorScheme) obj4;
                StoreModePLPFiltersViewState storeModePLPFiltersViewState = (StoreModePLPFiltersViewState) obj3;
                Composer composer5 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                if (composer5.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PLPStoreModeScreen$lambda$1$0$2");
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD3 = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode4 = Long.hashCode(composer5.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer5.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer5, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    Function0 function7 = ComposeUiNode.Companion.f9641b;
                    if (composer5.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer5.B();
                    if (composer5.getS()) {
                        composer5.C(function7);
                    } else {
                        composer5.o();
                    }
                    Updater.c(composer5, measurePolicyD3, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer5, persistentCompositionLocalMapN4, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer5, Integer.valueOf(iHashCode4), ComposeUiNode.Companion.g);
                    Updater.b(composer5, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer5, modifierC4, ComposeUiNode.Companion.d);
                    Painter painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer5).p, composer5, 0);
                    String strC3 = StringResources_androidKt.c(composer5, R.string.alt_show_filters);
                    int i3 = PLPStoreModeScreenKt.WhenMappings.f64904a[lVColorScheme.ordinal()];
                    if (i3 == 1) {
                        composer5.L(1414740069);
                        j2 = LVAppDesignKitTheme.c(composer5).f48361b.m;
                        composer5.F();
                    } else {
                        if (i3 != 2) {
                            throw o60.v(composer5, 1414736622);
                        }
                        composer5.L(1414743807);
                        j2 = LVAppDesignKitTheme.c(composer5).f48361b.f48382k;
                        composer5.F();
                    }
                    IconKt.a(painterA, strC3, null, j2, composer5, 8, 4);
                    if (storeModePLPFiltersViewState == null || !storeModePLPFiltersViewState.f65035e) {
                        composer5.L(907845905);
                        composer5.F();
                    } else {
                        LVNotificationIconKt.a(BoxScopeInstance.f4938a.g(pq0.j(907560488, composer5, "PLPStoreModeScreen$lambda$1$0$2"), Alignment.Companion.d), LVAppDesignKitTheme.d(composer5).f48388h, 0L, composer5, 0, 4);
                        composer5.F();
                    }
                    composer5.r();
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 19:
                PSPViewModel pSPViewModel = (PSPViewModel) obj4;
                Context context = (Context) obj3;
                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                int iIntValue6 = ((Integer) obj2).intValue();
                plpProductUiModel.getClass();
                MutableState mutableState = plpProductUiModel.f62934a;
                String str3 = ((PlpProductUiModel.SkuDataUiModel) mutableState.getF10755b()).f62943a;
                String str4 = ((PlpProductUiModel.SkuDataUiModel) mutableState.getF10755b()).d;
                AssetImageUiModel assetImageUiModel = ((PlpProductUiModel.SkuDataUiModel) mutableState.getF10755b()).f62946e.f51780b;
                String str5 = assetImageUiModel != null ? assetImageUiModel.f51778b : null;
                if (str5 == null) {
                    str5 = "";
                }
                pSPViewModel.x6(new HistoryItemUiModel.HistoryProductUiModel(str3, str4, str5, plpProductUiModel.d, ((PlpProductUiModel.SkuDataUiModel) mutableState.getF10755b()).g, null, null));
                context.startActivity(PLPDestinationsKt.a(new PLPDestinations.PageFromPlp(plpProductUiModel, null, 2, null), context));
                PlpProductUiModel.SkuDataUiModel skuDataUiModel = (PlpProductUiModel.SkuDataUiModel) mutableState.getF10755b();
                String str6 = skuDataUiModel.d;
                String str7 = skuDataUiModel.f62943a;
                ProductShortPriceUiModel productShortPriceUiModel = plpProductUiModel.d;
                pSPViewModel.j(new GA4TrackingUiModel.SelectItemClicked("search", productShortPriceUiModel != null ? productShortPriceUiModel.d : null, "search_results", "Search results", str7, str6, productShortPriceUiModel != null ? productShortPriceUiModel.f62983c : null, iIntValue6, null, null, 768, null));
                return Unit.f71739a;
            case 20:
                ((Integer) obj2).getClass();
                PackagingScreenKt.a((Modifier) obj4, (ReinsuranceUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 21:
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj4;
                float fFloatValue = ((Float) obj).floatValue();
                ((Float) obj2).getClass();
                float f2 = PagerStateKt.f5784a;
                ref$FloatRef.f71918b += ((PagerScrollScopeKt$LazyLayoutScrollScope$1) obj3).f5754a.e(fFloatValue - ref$FloatRef.f71918b);
                return Unit.f71739a;
            case 22:
                ((Integer) obj2).getClass();
                PassViewKt.a((Modifier) obj4, (BookingPassUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 23:
                PdpTracker pdpTracker = (PdpTracker) obj3;
                Function1 function8 = (Function1) obj4;
                List list2 = (List) obj;
                VariationType variationType = (VariationType) obj2;
                list2.getClass();
                variationType.getClass();
                List list3 = list2;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list3, 10));
                Iterator it = list3.iterator();
                while (it.hasNext()) {
                    arrayList2.add(new SkuIdUiModel(((VariationUiModel) it.next()).f61767b));
                }
                pdpTracker.getClass();
                pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(new PdpTrackingUiModel.OnMoreVariationClickedEvent(arrayList2, variationType), pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                function8.invoke(new PdpBottomSheetType.Variations(list2, false));
                return Unit.f71739a;
            case 24:
                ((Integer) obj2).getClass();
                PersonalSelectionsCurationAdvisorLookListKt.c((SelectionAssetUiModel) obj3, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 25:
                String str8 = (String) obj;
                String str9 = (String) obj2;
                str8.getClass();
                str9.getClass();
                ((Function1) obj4).invoke(PersonalSelectionsInStoreTrackingUiModel.BookAppointmentEvent.f62550a);
                ((Function2) obj3).invoke(str8, str9);
                return Unit.f71739a;
            case 26:
                ((Integer) obj2).getClass();
                PersonalSelectionsListScreenKt.a((PersonalSharingUiModel) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 27:
                FocusRequester focusRequester = (FocusRequester) obj3;
                Composer composer6 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer6.L(-340814682);
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                Modifier modifierA = FocusRequesterModifierKt.a(new DTFunctionNameModifier("setGivenGridMode$lambda$0"), (FocusRequester) obj4);
                boolean zK2 = composer6.K(focusRequester);
                Object objX2 = composer6.x();
                if (zK2 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new xk0(focusRequester, 2);
                    composer6.q(objX2);
                }
                Modifier modifierA2 = FocusPropertiesKt.a(modifierA, (Function1) objX2);
                Object objX3 = composer6.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new yn0(3);
                    composer6.q(objX3);
                }
                Modifier modifierB2 = SemanticsModifierKt.b(modifierA2, false, (Function1) objX3);
                composer6.F();
                return modifierB2;
            case 28:
                Object[] objArr = (Object[]) obj4;
                MutableIntState mutableIntState = (MutableIntState) obj3;
                Composer composer7 = (Composer) obj;
                int iIntValue7 = ((Integer) obj2).intValue();
                int i4 = PreviewActivity.f10996h;
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 3) != 2)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    boolean zY = composer7.y(objArr);
                    Object objX4 = composer7.x();
                    if (zY || objX4 == composer$Companion$Empty$1) {
                        objX4 = new jm0(mutableIntState, objArr, 10);
                        composer7.q(objX4);
                    }
                    ComposableSingletons$PreviewActivity_androidKt.f10994a.getClass();
                    FloatingActionButtonKt.a((Function0) objX4, null, null, 0L, 0L, null, ComposableSingletons$PreviewActivity_androidKt.f10995b, composer7, 12582912);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            default:
                Function2 function9 = (Function2) obj3;
                String str10 = (String) obj;
                FilterType filterType = (FilterType) obj2;
                str10.getClass();
                filterType.getClass();
                if (((QuickAccessFiltersViewState) obj4).p) {
                    function9.invoke(str10, filterType);
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ wd0(Object obj, Object obj2, int i2) {
        this.f80842b = i2;
        this.f80843c = obj;
        this.d = obj2;
    }

    public /* synthetic */ wd0(Object obj, Object obj2, int i2, int i3) {
        this.f80842b = i3;
        this.f80843c = obj;
        this.d = obj2;
    }

    public /* synthetic */ wd0(Object obj, Function1 function1, int i2) {
        this.f80842b = i2;
        this.d = obj;
        this.f80843c = function1;
    }
}
