package defpackage;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.paging.compose.LazyPagingItems;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSearchBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVHeaderTopBarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialRegisterComposableKt;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialRegisterViewState;
import com.vuitton.android.presentation.screen.cart.components.packaging.SignatureBoxCardKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.ThematicPlpHeaderKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.screen.OverlayConstants;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModel;
import com.vuitton.android.presentation.screen.osa.list.OsaListViewModel;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListComposableKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderResultComposableKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderResultScreenKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderScanComposableKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.RecommendationUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderViewState;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.models.PersonalSelectionsInStoreTrackingUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.models.PersonalSelectionsInStoreViewState;
import com.vuitton.android.presentation.screen.personalselections.list.components.PersonalSelectionsListComposableKt;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchViewModel;
import com.vuitton.android.presentation.screen.placesearch.components.PlaceSearchPageComposableKt;
import com.vuitton.android.presentation.screen.plp.activities.PLPDestinations;
import com.vuitton.android.presentation.screen.plp.activities.PLPDestinationsKt;
import com.vuitton.android.presentation.screen.plp.components.composables.PLPHeaderKt;
import com.vuitton.android.presentation.screen.plp.components.composables.brandcontent.PLPProductFullscreenComposableKt;
import com.vuitton.android.presentation.screen.plp.components.composables.brandcontent.PLPProductHighlightComposableKt;
import com.vuitton.android.presentation.screen.plp.components.composables.brandcontent.PLPProductSliderComposableKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ProductFocusDialogKt;
import com.vuitton.android.presentation.screen.plp.models.CatalogMode;
import com.vuitton.android.presentation.screen.plp.models.plp.PlpSectionUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.android.presentation.screen.portal.PortalSliderViewModel;
import com.vuitton.android.presentation.screen.portal.components.PortalSliderComposableKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairDetailAddressBookComposableKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairPaymentFailedComposableKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairShippingConfirmationComposableKt;
import com.vuitton.android.presentation.screen.repairs.list.components.RepairListBffItemKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.CareServiceShortUiModel;
import com.vuitton.android.presentation.screen.services.ServicesViewModel;
import com.vuitton.android.presentation.screen.services.models.ServicesViewState;
import com.vuitton.android.presentation.screen.spotlight.SpotlightViewModel;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightComposableKt;
import com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.StoreModeWelcomeComposableKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel1ScreenKt;
import com.vuitton.android.presentation.screen.storemode.filters.ProductFilterBottomSheetContentKt;
import com.vuitton.android.presentation.screen.storemode.filters.model.ProductFilterViewState;
import com.vuitton.android.presentation.screen.storemode.models.PLPStoreModeViewState;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.android.presentation.screen.story.components.StoryClickCatcherKt;
import com.vuitton.android.presentation.screen.story.components.StoryComposableKt;
import com.vuitton.android.presentation.screen.story.models.StoryViewState;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import com.vuitton.android.presentation.tracking.PersonalSelectionActions;
import com.vuitton.foundation.model.domain.model.place.AutocompleteContext;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class kj0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f71669c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f71670e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f71671f;
    public final /* synthetic */ Object g;

    public /* synthetic */ kj0(Modifier modifier, MutableState mutableState, ComposableLambdaImpl composableLambdaImpl, BasicTextContextMenuProvider basicTextContextMenuProvider, Function0 function0) {
        this.f71668b = 9;
        this.f71670e = modifier;
        this.g = mutableState;
        this.d = composableLambdaImpl;
        this.f71669c = basicTextContextMenuProvider;
        this.f71671f = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CatalogMode catalogMode;
        Object next;
        PlpProductUiModel plpProductUiModel;
        MutableState mutableState;
        PlpProductUiModel.SkuDataUiModel skuDataUiModel;
        String str;
        String str2;
        boolean z;
        int i2 = this.f71668b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        String strB = null;
        Object obj3 = this.g;
        Object obj4 = this.f71669c;
        Object obj5 = this.d;
        Object obj6 = this.f71671f;
        Object obj7 = this.f71670e;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                OsaListComposableKt.a((OsaListViewModel) obj7, (Function0) obj6, (Function0) obj3, (Function2) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                PLPHeaderKt.b((Modifier) obj7, (List) obj6, (String) obj3, (Function1) obj4, (Function2) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                PLPProductFullscreenComposableKt.c((Modifier) obj7, (PlpSectionUiModel.ProductFullscreen) obj6, (Function1) obj4, (Function1) obj3, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                PLPProductHighlightComposableKt.a((Modifier) obj7, (PlpSectionUiModel.ProductHighlight) obj6, (Function1) obj4, (Function1) obj3, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                PLPProductSliderComposableKt.a((Modifier) obj7, (PlpSectionUiModel.ProductSlider) obj6, (Function1) obj4, (Function1) obj3, (Function1) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 5:
                PLPStoreModeViewModel pLPStoreModeViewModel = (PLPStoreModeViewModel) obj7;
                Context context = (Context) obj6;
                String str3 = (String) obj3;
                MutableState mutableState2 = (MutableState) obj5;
                MutableState mutableState3 = (MutableState) obj4;
                PlpProductUiModel plpProductUiModel2 = (PlpProductUiModel) obj;
                int iIntValue = ((Integer) obj2).intValue();
                plpProductUiModel2.getClass();
                if (pLPStoreModeViewModel.q0()) {
                    String strD0 = pLPStoreModeViewModel.d0();
                    StoreModeContentUiModel storeModeContentUiModel = ((PLPStoreModeViewState) mutableState2.getF10755b()).f65037a;
                    storeModeContentUiModel.getClass();
                    int i3 = StoreModeContentUiModel.WhenMappings.f65051a[storeModeContentUiModel.ordinal()];
                    if (i3 == 1) {
                        catalogMode = CatalogMode.IN_STORE;
                    } else {
                        if (i3 != 2) {
                            v40.g();
                            return null;
                        }
                        catalogMode = CatalogMode.ONLINE;
                    }
                    context.startActivity(PLPDestinationsKt.a(new PLPDestinations.PageFromStoreMode(plpProductUiModel2, strD0, catalogMode), context));
                    PlpProductUiModel.SkuDataUiModel skuDataUiModel2 = (PlpProductUiModel.SkuDataUiModel) plpProductUiModel2.f62934a.getF10755b();
                    String str4 = ((PLPViewState) mutableState3.getF10755b()).f63005a;
                    if (str4 == null) {
                        str4 = new String();
                    }
                    String str5 = str4;
                    String str6 = skuDataUiModel2.d;
                    String str7 = skuDataUiModel2.f62943a;
                    ProductShortPriceUiModel productShortPriceUiModel = plpProductUiModel2.d;
                    pLPStoreModeViewModel.j(new GA4TrackingUiModel.SelectItemClicked("product_list", productShortPriceUiModel != null ? productShortPriceUiModel.d : null, str3, str5, str7, str6, productShortPriceUiModel != null ? productShortPriceUiModel.f62983c : null, iIntValue, null, null, 768, null));
                }
                return Unit.f71739a;
            case 6:
                LazyPagingItems lazyPagingItems = (LazyPagingItems) obj6;
                Function1 function1 = (Function1) obj4;
                AppsFlyerUiTracker appsFlyerUiTracker = (AppsFlyerUiTracker) obj3;
                Function1 function2 = (Function1) obj5;
                PlpProductUiModel plpProductUiModel3 = (PlpProductUiModel) obj;
                ((Integer) obj2).getClass();
                plpProductUiModel3.getClass();
                PersonalSelectionsInStoreViewState.Success success = (PersonalSelectionsInStoreViewState.Success) ((PersonalSelectionsInStoreViewState) obj7);
                List list = success.n;
                MutableState mutableState4 = plpProductUiModel3.f62934a;
                if (list.contains(new SkuIdUiModel(((PlpProductUiModel.SkuDataUiModel) mutableState4.getF10755b()).f62943a))) {
                    return Unit.f71739a;
                }
                for (PlpSectionUiModel plpSectionUiModel : lazyPagingItems.c().f18632e) {
                }
                function1.invoke(new PersonalSelectionsInStoreTrackingUiModel.ProductClickEvent(-1, ((PlpProductUiModel.SkuDataUiModel) mutableState4.getF10755b()).f62943a));
                PersonalSelectionActions personalSelectionActions = PersonalSelectionActions.PRODUCT_SELECTED;
                String str8 = success.f62561f.f62587a;
                String str9 = ((PlpProductUiModel.SkuDataUiModel) mutableState4.getF10755b()).f62943a;
                List list2 = lazyPagingItems.c().f18632e;
                ArrayList arrayList = new ArrayList();
                for (Object obj8 : list2) {
                    if (obj8 instanceof PlpSectionUiModel.Products) {
                        arrayList.add(obj8);
                    }
                }
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    CollectionsKt.j(arrayList2, ((PlpSectionUiModel.Products) it.next()).f62933b);
                }
                Iterator it2 = arrayList2.iterator();
                do {
                    if (it2.hasNext()) {
                        next = it2.next();
                        str = ((PlpProductUiModel.SkuDataUiModel) ((PlpProductUiModel) next).f62934a.getF10755b()).f62944b;
                        if (str == null) {
                            str = null;
                        }
                        str2 = ((PlpProductUiModel.SkuDataUiModel) mutableState4.getF10755b()).f62944b;
                        if (str2 == null) {
                            str2 = null;
                        }
                    } else {
                        next = null;
                    }
                    plpProductUiModel = (PlpProductUiModel) next;
                    if (plpProductUiModel != null && (mutableState = plpProductUiModel.f62934a) != null && (skuDataUiModel = (PlpProductUiModel.SkuDataUiModel) mutableState.getF10755b()) != null) {
                        strB = skuDataUiModel.f62945c;
                    }
                    appsFlyerUiTracker.f(personalSelectionActions, str9, strB, str8);
                    function2.invoke(plpProductUiModel3);
                    return Unit.f71739a;
                } while (!Intrinsics.c(str, str2));
                plpProductUiModel = (PlpProductUiModel) next;
                if (plpProductUiModel != null) {
                    strB = skuDataUiModel.f62945c;
                }
                appsFlyerUiTracker.f(personalSelectionActions, str9, strB, str8);
                function2.invoke(plpProductUiModel3);
                return Unit.f71739a;
            case 7:
                ((Integer) obj2).getClass();
                PersonalSelectionsListComposableKt.b((String) obj7, (ContactUsUiModel) obj5, (Function0) obj6, (Function1) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 8:
                ((Integer) obj2).getClass();
                PlaceSearchPageComposableKt.b((PlaceSearchViewModel) obj7, (AutocompleteContext) obj3, (PlaceSearchActivity.PlaceInfoType) obj5, (String) obj4, (Function0) obj6, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 9:
                Modifier modifierE = (Modifier) obj7;
                MutableState mutableState5 = (MutableState) obj3;
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj5;
                BasicTextContextMenuProvider basicTextContextMenuProvider = (BasicTextContextMenuProvider) obj4;
                Function0 function0 = (Function0) obj6;
                Composer composer = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "ProvideBothDefaultProviders$lambda$4");
                }
                if (composer.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Object objX = composer.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new c30(26, mutableState5);
                        composer.q(objX);
                    }
                    Modifier modifierA = OnGloballyPositionedModifierKt.a(modifierE, (Function1) objX);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, true);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierA);
                    ComposeUiNode.b0.getClass();
                    Function0 function3 = ComposeUiNode.Companion.f9641b;
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function3);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                    composableLambdaImpl.invoke(composer, 0);
                    basicTextContextMenuProvider.b(function0, composer, 6);
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 10:
                ((Integer) obj2).getClass();
                PortalSliderComposableKt.a((PortalSliderViewModel) obj7, (PermissionsViewModelImpl) obj5, (Function1) obj4, (Function0) obj6, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 11:
                ((Integer) obj2).getClass();
                ProductFilterBottomSheetContentKt.a((ProductFilterViewState) obj7, (Function0) obj6, (Function0) obj3, (Function2) obj5, (Function5) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 12:
                ((Integer) obj2).getClass();
                ProductFocusDialogKt.c((Modifier) obj7, (PlpProductUiModel) obj5, (Function0) obj6, (Function0) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 13:
                ((Integer) obj2).getClass();
                RepairDetailAddressBookComposableKt.a((DistantRepairAssessmentViewModel) obj7, (String) obj3, (Function1) obj4, (Function1) obj5, (Function0) obj6, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 14:
                ((Integer) obj2).getClass();
                RepairListBffItemKt.a((CareServiceShortUiModel) obj7, (Function1) obj4, (Function1) obj3, (Function1) obj5, (Function0) obj6, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 15:
                ((Integer) obj2).getClass();
                RepairPaymentFailedComposableKt.b((DistantRepairAssessmentViewModel) obj7, (String) obj5, (Function0) obj6, (Function0) obj3, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 16:
                ((Integer) obj2).getClass();
                RepairShippingConfirmationComposableKt.c((DistantRepairAssessmentViewModel) obj7, (String) obj5, (Function0) obj6, (Function0) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 17:
                State state = (State) obj7;
                ServicesViewModel servicesViewModel = (ServicesViewModel) obj6;
                Context context2 = (Context) obj3;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj5;
                Function1 function4 = (Function1) obj4;
                Composer composer2 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer2.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    String str10 = ((ServicesViewState) state.getF10755b()).f64407e;
                    if (str10 == null) {
                        composer2.L(-561010193);
                        composer2.F();
                    } else {
                        composer2.L(-561010192);
                        strB = StringResources_androidKt.b(R.string.welcome_user, new Object[]{str10}, composer2);
                        composer2.F();
                    }
                    if (strB == null) {
                        strB = o60.k(composer2, 1090284714, R.string.services_section_title, composer2);
                    } else {
                        composer2.L(1090280994);
                        composer2.F();
                    }
                    LVHeaderTopBarKt.a(null, strB, ComposableLambdaKt.b(1293347880, new rl(servicesViewModel, context2, lVModalBottomSheetState, function4, state), composer2), null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer2, KyberEngine.KyberPolyBytes, NSType.TKEY);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 18:
                ((Integer) obj2).getClass();
                ShadeFinderResultComposableKt.a((BeautyVtoViewModel) obj7, (PermissionsViewModel) obj5, (Function0) obj6, (Function0) obj3, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 19:
                ShadeFinderViewState shadeFinderViewState = (ShadeFinderViewState) obj7;
                List list3 = (List) obj6;
                Function1 function5 = (Function1) obj4;
                RecommendationUiModel recommendationUiModel = (RecommendationUiModel) obj3;
                Function2 function6 = (Function2) obj5;
                Composer composer3 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    boolean z2 = shadeFinderViewState.f62182f.f62137b;
                    List list4 = list3;
                    if ((list4 instanceof Collection) && list4.isEmpty()) {
                        z = false;
                    } else {
                        Iterator it3 = list4.iterator();
                        while (true) {
                            if (!it3.hasNext()) {
                                z = false;
                            } else if (((RecommendationUiModel) it3.next()).f62172c != null) {
                                z = true;
                            }
                        }
                    }
                    boolean z3 = shadeFinderViewState.f62179b;
                    boolean zK = composer3.K(function5) | composer3.y(recommendationUiModel);
                    Object objX2 = composer3.x();
                    if (zK || objX2 == composer$Companion$Empty$1) {
                        objX2 = new jm0(function5, recommendationUiModel, 22);
                        composer3.q(objX2);
                    }
                    Function0 function7 = (Function0) objX2;
                    boolean zY = composer3.y(shadeFinderViewState) | composer3.y(recommendationUiModel) | composer3.K(function6);
                    Object objX3 = composer3.x();
                    if (zY || objX3 == composer$Companion$Empty$1) {
                        objX3 = new sm0(shadeFinderViewState, recommendationUiModel, function6, 16);
                        composer3.q(objX3);
                    }
                    ShadeFinderResultScreenKt.c(z2, z, z3, function7, (Function0) objX3, composer3, 0);
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 20:
                ((Integer) obj2).getClass();
                ShadeFinderScanComposableKt.a((BeautyVtoViewModel) obj7, (Function0) obj6, (Function0) obj3, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 21:
                ((Integer) obj2).getClass();
                SignatureBoxCardKt.a((Modifier) obj7, (String) obj6, (String) obj3, (String) obj5, (Boolean) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 22:
                ((Integer) obj2).getClass();
                SocialRegisterComposableKt.a((Modifier) obj7, (SocialRegisterViewState) obj4, (Function2) obj5, (Function0) obj6, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 23:
                ((Integer) obj2).getClass();
                SpotlightComposableKt.a((SpotlightViewModel) obj7, (Function0) obj6, (Function1) obj4, (Function2) obj5, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 24:
                ((Integer) obj2).getClass();
                StoreModeLevel1ScreenKt.b((StoreModeViewModel) obj7, (StoreModeViewState) obj5, (Function0) obj6, (Function1) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 25:
                FocusRequester focusRequester = (FocusRequester) obj7;
                Function1 function8 = (Function1) obj4;
                FocusManager focusManager = (FocusManager) obj6;
                MutableState mutableState6 = (MutableState) obj3;
                MutableState mutableState7 = (MutableState) obj5;
                Composer composer4 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                if (composer4.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    Modifier modifierA2 = WindowInsetsPadding_androidKt.a(BackgroundKt.b(new DTFunctionNameModifier("StoreModeSearchScreenComposable$lambda$14"), LVAppDesignKitTheme.c(composer4).f48361b.u, RectangleShapeKt.f8913a));
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer4, 0);
                    int iHashCode2 = Long.hashCode(composer4.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer4.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer4, modifierA2);
                    ComposeUiNode.b0.getClass();
                    Function0 function9 = ComposeUiNode.Companion.f9641b;
                    if (composer4.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer4.B();
                    if (composer4.getS()) {
                        composer4.C(function9);
                    } else {
                        composer4.o();
                    }
                    Updater.c(composer4, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer4, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer4, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(composer4, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer4, modifierC2, ComposeUiNode.Companion.d);
                    Modifier modifierI = PaddingKt.i(FocusRequesterModifierKt.a(new DTFunctionNameModifier("StoreModeSearchScreenComposable$lambda$14"), focusRequester), LVAppDesignKitTheme.l(composer4).f48416e);
                    String strC = StringResources_androidKt.c(composer4, R.string.search_placeholder);
                    String str11 = (String) mutableState6.getF10755b();
                    Object objX4 = composer4.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new ku0(4, mutableState6);
                        composer4.q(objX4);
                    }
                    Function1 function10 = (Function1) objX4;
                    boolean zK2 = composer4.K(function8);
                    Object objX5 = composer4.x();
                    if (zK2 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new e00(function8, mutableState7, mutableState6, 1);
                        composer4.q(objX5);
                    }
                    Function0 function11 = (Function0) objX5;
                    boolean zY2 = composer4.y(focusManager);
                    Object objX6 = composer4.x();
                    if (zY2 || objX6 == composer$Companion$Empty$1) {
                        objX6 = new r11(focusManager, 0);
                        composer4.q(objX6);
                    }
                    LVSearchBarKt.a(modifierI, str11, function10, function11, strC, null, 0, (Function0) objX6, null, composer4, 100663680, 608);
                    composer4.r();
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 26:
                ((Integer) obj2).getClass();
                StoreModeWelcomeComposableKt.b((StoreModeViewState) obj7, (Function0) obj6, (Function0) obj3, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 27:
                ((Integer) obj2).getClass();
                StoryClickCatcherKt.a((Modifier) obj7, (Function0) obj6, (Function0) obj3, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(3073));
                return Unit.f71739a;
            case 28:
                ((Integer) obj2).getClass();
                StoryComposableKt.a((StoryViewState) obj7, (Function1) obj4, (Function1) obj5, (Function0) obj6, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                ThematicPlpHeaderKt.c((List) obj7, (String) obj6, (Function2) obj5, (Function1) obj4, (OverlayConstants) obj3, (Composer) obj, RecomposeScopeImplKt.a(3073));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ kj0(Modifier modifier, PlpSectionUiModel plpSectionUiModel, Function1 function1, Function1 function2, Function1 function3, int i2, int i3) {
        this.f71668b = i3;
        this.f71670e = modifier;
        this.f71671f = plpSectionUiModel;
        this.f71669c = function1;
        this.g = function2;
        this.d = function3;
    }

    public /* synthetic */ kj0(Modifier modifier, List list, String str, Function1 function1, Function2 function2, int i2) {
        this.f71668b = 1;
        this.f71670e = modifier;
        this.f71671f = list;
        this.g = str;
        this.f71669c = function1;
        this.d = function2;
    }

    public /* synthetic */ kj0(FocusRequester focusRequester, Function1 function1, FocusManager focusManager, MutableState mutableState, MutableState mutableState2) {
        this.f71668b = 25;
        this.f71670e = focusRequester;
        this.f71669c = function1;
        this.f71671f = focusManager;
        this.g = mutableState;
        this.d = mutableState2;
    }

    public /* synthetic */ kj0(DistantRepairAssessmentViewModel distantRepairAssessmentViewModel, String str, Function1 function1, Function1 function2, Function0 function0, int i2) {
        this.f71668b = 13;
        this.f71670e = distantRepairAssessmentViewModel;
        this.g = str;
        this.f71669c = function1;
        this.d = function2;
        this.f71671f = function0;
    }

    public /* synthetic */ kj0(PlaceSearchViewModel placeSearchViewModel, AutocompleteContext autocompleteContext, PlaceSearchActivity.PlaceInfoType placeInfoType, String str, Function0 function0, int i2) {
        this.f71668b = 8;
        this.f71670e = placeSearchViewModel;
        this.g = autocompleteContext;
        this.d = placeInfoType;
        this.f71669c = str;
        this.f71671f = function0;
    }

    public /* synthetic */ kj0(PortalSliderViewModel portalSliderViewModel, PermissionsViewModelImpl permissionsViewModelImpl, Function1 function1, Function0 function0, Function0 function2, int i2) {
        this.f71668b = 10;
        this.f71670e = portalSliderViewModel;
        this.d = permissionsViewModelImpl;
        this.f71669c = function1;
        this.f71671f = function0;
        this.g = function2;
    }

    public /* synthetic */ kj0(CareServiceShortUiModel careServiceShortUiModel, Function1 function1, Function1 function2, Function1 function3, Function0 function0, int i2) {
        this.f71668b = 14;
        this.f71670e = careServiceShortUiModel;
        this.f71669c = function1;
        this.g = function2;
        this.d = function3;
        this.f71671f = function0;
    }

    public /* synthetic */ kj0(SpotlightViewModel spotlightViewModel, Function0 function0, Function1 function1, Function2 function2, Function1 function3, int i2) {
        this.f71668b = 23;
        this.f71670e = spotlightViewModel;
        this.f71671f = function0;
        this.f71669c = function1;
        this.d = function2;
        this.g = function3;
    }

    public /* synthetic */ kj0(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i2) {
        this.f71668b = i2;
        this.f71670e = obj;
        this.f71671f = obj2;
        this.g = obj3;
        this.d = obj4;
        this.f71669c = obj5;
    }

    public /* synthetic */ kj0(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i2, int i3) {
        this.f71668b = i3;
        this.f71670e = obj;
        this.f71671f = obj2;
        this.g = obj3;
        this.d = obj4;
        this.f71669c = obj5;
    }

    public /* synthetic */ kj0(Object obj, Object obj2, Function function, Function0 function0, Function0 function1, int i2, int i3) {
        this.f71668b = i3;
        this.f71670e = obj;
        this.f71669c = obj2;
        this.d = function;
        this.f71671f = function0;
        this.g = function1;
    }

    public /* synthetic */ kj0(Object obj, Object obj2, Function0 function0, Function0 function1, Function function, int i2, int i3) {
        this.f71668b = i3;
        this.f71670e = obj;
        this.d = obj2;
        this.f71671f = function0;
        this.g = function1;
        this.f71669c = function;
    }

    public /* synthetic */ kj0(Object obj, Object obj2, Function0 function0, Function1 function1, Function0 function2, int i2, int i3) {
        this.f71668b = i3;
        this.f71670e = obj;
        this.d = obj2;
        this.f71671f = function0;
        this.f71669c = function1;
        this.g = function2;
    }

    public /* synthetic */ kj0(Object obj, Object obj2, Function1 function1, Object obj3, Function function, int i2) {
        this.f71668b = i2;
        this.f71670e = obj;
        this.f71671f = obj2;
        this.f71669c = function1;
        this.g = obj3;
        this.d = function;
    }

    public /* synthetic */ kj0(List list, String str, Function2 function2, Function1 function1, OverlayConstants overlayConstants, int i2) {
        this.f71668b = 29;
        this.f71670e = list;
        this.f71671f = str;
        this.d = function2;
        this.f71669c = function1;
        this.g = overlayConstants;
    }
}
