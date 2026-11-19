package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.BottomSheetScaffoldKt;
import androidx.compose.material3.SheetState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.DialogWindowProvider;
import androidx.paging.LoadState;
import androidx.paging.compose.LazyPagingItems;
import com.sightcall.core.consent.ConsentViewModel;
import com.sightcall.core.consent.compose.ConsentViewKt;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.designkit.ui.theme.templates.AutomationTagsAction;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.NestedScroll;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookContentKt;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookScreenKt;
import com.vuitton.android.presentation.screen.account.addressbook.models.AccountAddressUiModel;
import com.vuitton.android.presentation.screen.account.addressbook.models.AddressBookViewState;
import com.vuitton.android.presentation.screen.account.lvpass.QRCodeViewModel;
import com.vuitton.android.presentation.screen.account.lvpass.components.QRCode3DScreenKt;
import com.vuitton.android.presentation.screen.account.lvpass.components.QRCodeComposableKt;
import com.vuitton.android.presentation.screen.account.profile.AddressUiModel;
import com.vuitton.android.presentation.screen.account.userworldwideid.UserWorldwideIdViewModel;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionTooltipKt;
import com.vuitton.android.presentation.screen.booking.details.components.BookingDetailsScreenKt;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftCardKt;
import com.vuitton.android.presentation.screen.catalog.components.CatalogSubcategoryScreenKt;
import com.vuitton.android.presentation.screen.catalog.models.CatalogViewState;
import com.vuitton.android.presentation.screen.certificates.components.CertificateFormState;
import com.vuitton.android.presentation.screen.certificates.components.add.AddCertificateComposableKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.AssessmentReceiveComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.formsections.DistantRepairInitiateComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.DistantRepairContactMethod;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleProductTabsViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleProductTabsSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.options.dispatch.components.DispatchComposableKt;
import com.vuitton.android.presentation.screen.options.notifications.components.NotificationsPreferencesScreenKt;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesViewState;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderExchangeVariantSelectionComposableKt;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListDataScreenKt;
import com.vuitton.android.presentation.screen.osa.list.models.OsaListViewState;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpTraceabilityKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorProductListKt;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity;
import com.vuitton.android.presentation.screen.placesearch.components.PlaceSearchPageComposableKt;
import com.vuitton.android.presentation.screen.placesearch.models.PlacesUiModel;
import com.vuitton.android.presentation.screen.plp.components.screens.PSPScreenKt;
import com.vuitton.android.presentation.screen.plp.components.screens.PSPStyle;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PSPHeaderKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PSPSearchHeaderKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressBffComposableKt;
import com.vuitton.android.presentation.screen.repairs.components.RepairConfirmAddressComposableKt;
import com.vuitton.android.presentation.screen.repairs.models.RepairsViewState;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairsBffViewState;
import com.vuitton.android.presentation.screen.search.components.NoResultSearchComposableKt;
import com.vuitton.android.presentation.screen.search.models.SearchListState;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.filters.model.StoreModePLPFiltersViewState;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.foundation.model.domain.model.cart.GiftOption;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class u1 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80198b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80199c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80200e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80201f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f80202h;

    public /* synthetic */ u1(String str, Function2 function2, Function2 function3, ContentScale contentScale, MutableState mutableState, MutableState mutableState2) {
        this.f80198b = 16;
        this.f80200e = str;
        this.f80201f = function2;
        this.g = function3;
        this.f80202h = contentScale;
        this.f80199c = mutableState;
        this.d = mutableState2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Object obj3;
        Integer num;
        int i2 = this.f80198b;
        z = false;
        boolean z = false;
        Object obj4 = this.f80202h;
        Object obj5 = this.g;
        Object obj6 = this.f80201f;
        Object obj7 = this.f80200e;
        Object obj8 = this.d;
        Object obj9 = this.f80199c;
        switch (i2) {
            case 0:
                MutableState mutableState = (MutableState) obj9;
                Density density = (Density) obj7;
                FocusRequester focusRequester = (FocusRequester) obj6;
                Rect rect = (Rect) obj5;
                MutableIntState mutableIntState = (MutableIntState) obj4;
                MutableState mutableState2 = (MutableState) obj8;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                float f2 = AICompanionTooltipKt.f52836a;
                if (composer.p(1 & iIntValue, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ViewParent parent = ((View) composer.k(AndroidCompositionLocals_androidKt.f9939f)).getParent();
                    DialogWindowProvider dialogWindowProvider = parent instanceof DialogWindowProvider ? (DialogWindowProvider) parent : null;
                    Window l = dialogWindowProvider != null ? dialogWindowProvider.getL() : null;
                    boolean zY = composer.y(l);
                    Object objX = composer.x();
                    if (zY || objX == Composer.Companion.f7939a) {
                        obj3 = objX;
                        w1 w1Var = new w1(l, false ? 1 : 0);
                        composer.q(w1Var);
                        obj3 = w1Var;
                    }
                    obj3 = objX;
                    EffectsKt.i((Function0) obj3, composer);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.n;
                    CompositionLocalKt.a(staticProvidableCompositionLocal.c(LayoutDirection.Ltr), ComposableLambdaKt.b(-2038258374, new o(mutableIntState, mutableState, mutableState2, focusRequester, rect, density, (LayoutDirection) composer.k(staticProvidableCompositionLocal)), composer), composer, 56);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                AddCertificateComposableKt.i((Modifier) obj9, (InAppDispatch) obj8, (CertificateFormState) obj7, (String) obj6, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                AddressBookContentKt.a((Modifier) obj9, (InAppDispatch) obj8, (AccountAddressUiModel) obj7, (List) obj6, (Function2) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                AddressBookScreenKt.a((Function2) obj9, (AddressBookViewState) obj8, (Function0) obj7, (Function2) obj6, (Function1) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                AssessmentReceiveComponentKt.c((InAppDispatch) obj9, (List) obj8, (AddressUiModel) obj7, (Function1) obj6, (Function1) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 5:
                ((Integer) obj2).getClass();
                BookingDetailsScreenKt.b((Modifier) obj9, (List) obj8, (Function0) obj7, (Function0) obj6, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 6:
                ((Integer) obj2).getClass();
                BottomSheetScaffoldKt.b((Function2) obj9, (ComposableLambdaImpl) obj8, (ComposableLambdaImpl) obj7, (ComposableLambdaImpl) obj6, (Function0) obj5, (SheetState) obj4, (Composer) obj, RecomposeScopeImplKt.a(3505));
                return Unit.f71739a;
            case 7:
                ((Integer) obj2).getClass();
                CatalogStoreModeKt.c((Modifier) obj9, (StoreModeViewState) obj8, (Function0) obj7, (Function1) obj6, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 8:
                ((Integer) obj2).getClass();
                CatalogStoreModeKt.a((StoreModeViewModel) obj9, (PSPStoreModeViewModel) obj8, (StoreModeViewState) obj7, (Function1) obj6, (Function0) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 9:
                ((Integer) obj2).getClass();
                CatalogSubcategoryScreenKt.b((Modifier) obj9, (String) obj8, (CatalogViewState) obj7, (Function0) obj6, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 10:
                return ConsentViewKt.ConsentView$lambda$0((Context) obj9, (String) obj8, (Function0) obj7, (Function0) obj6, (AnnotatedString) obj5, (ConsentViewModel) obj4, (Composer) obj, ((Integer) obj2).intValue());
            case 11:
                ((Integer) obj2).getClass();
                DispatchComposableKt.c((List) obj9, (InAppDispatch) obj8, (Function1) obj7, (Function1) obj6, (Function1) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 12:
                ((Integer) obj2).getClass();
                DistantRepairInitiateComponentKt.b((DistantRepairFormViewState) obj9, (DistantRepairContactMethod) obj8, (String) obj7, (Function0) obj6, (Function1) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 13:
                ((Integer) obj2).getClass();
                GiftCardKt.a((Modifier) obj9, (GiftOption) obj8, (String) obj7, (List) obj6, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            case 14:
                ((Integer) obj2).getClass();
                ImmersiveArticleProductTabsViewKt.a((Modifier) obj9, (ImmersiveArticleProductTabsSectionUiModel) obj8, (ImmersiveArticleType) obj7, (Function2) obj6, (Function1) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 15:
                ((Integer) obj2).getClass();
                LVEmptyViewKt.c((Modifier) obj9, (String) obj8, (String) obj7, (Function0) obj6, (String) obj5, (AutomationTagsAction) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 16:
                String str = (String) obj7;
                Function2 function2 = (Function2) obj6;
                Function2 function3 = (Function2) obj5;
                ContentScale contentScale = (ContentScale) obj4;
                MutableState mutableState3 = (MutableState) obj9;
                MutableState mutableState4 = (MutableState) obj8;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if (composer2.p(1 & iIntValue2, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    if (str == null) {
                        composer2.L(419047876);
                        composer2.F();
                        mutableState3 = mutableState3;
                        num = 0;
                    } else {
                        composer2.L(419047877);
                        if (((Boolean) mutableState3.getF10755b()).booleanValue()) {
                            num = 0;
                            ImageLoaderKt.b(pq0.j(-359184854, composer2, "LvVideoPlayer$lambda$22$5").o(SizeKt.f5052c), str, contentScale, null, null, 0, false, null, null, null, composer2, 6, 2040);
                            composer2.F();
                        } else {
                            num = 0;
                            composer2.L(-358922501);
                            composer2.F();
                        }
                        composer2.F();
                    }
                    if (function2 == null) {
                        composer2.L(419424929);
                        composer2.F();
                    } else {
                        composer2.L(419424930);
                        if (((Boolean) mutableState3.getF10755b()).booleanValue()) {
                            composer2.L(-1301993620);
                            function2.invoke(composer2, num);
                            composer2.F();
                        } else {
                            composer2.L(-1301943648);
                            composer2.F();
                        }
                        composer2.F();
                    }
                    if (function3 == null) {
                        composer2.L(419589415);
                        composer2.F();
                    } else {
                        composer2.L(419589416);
                        if (((Boolean) mutableState4.getF10755b()).booleanValue()) {
                            composer2.L(1249910283);
                            function3.invoke(composer2, num);
                            composer2.F();
                        } else {
                            composer2.L(1249960255);
                            composer2.F();
                        }
                        composer2.F();
                    }
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 17:
                ((Integer) obj2).getClass();
                NoResultSearchComposableKt.a((SearchListState) obj9, (SearchListState) obj8, (NestedScroll) obj7, (Function2) obj6, (Function1) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 18:
                ((Integer) obj2).getClass();
                NotificationsPreferencesScreenKt.a((Modifier) obj9, (NotificationsPreferencesViewState) obj8, (Function2) obj7, (Function0) obj6, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 19:
                ((Integer) obj2).getClass();
                OrderExchangeVariantSelectionComposableKt.a((OrderReturnOrExchangeViewModel) obj9, (Function1) obj8, (Function3) obj7, (Function0) obj6, (Function1) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 20:
                ((Integer) obj2).getClass();
                OsaListDataScreenKt.d((Modifier) obj9, (OsaListViewState) obj8, (Function0) obj7, (Function2) obj6, (Function1) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 21:
                String str2 = (String) obj9;
                Function0 function0 = (Function0) obj8;
                LazyPagingItems lazyPagingItems = (LazyPagingItems) obj7;
                StoreModePLPFiltersViewState storeModePLPFiltersViewState = (StoreModePLPFiltersViewState) obj6;
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj5;
                Function0 function1 = (Function0) obj4;
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    LVStandardTopBarKt.a(null, null, false, str2, null, null, function0, ComposableLambdaKt.b(-1977688654, new w4(lazyPagingItems, storeModePLPFiltersViewState, lVModalBottomSheetState, function1), composer3), null, null, null, composer3, 12582912, 0, 3895);
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 22:
                PSPStyle pSPStyle = (PSPStyle) obj9;
                String str3 = (String) obj8;
                Integer num2 = (Integer) obj7;
                LazyPagingItems lazyPagingItems2 = (LazyPagingItems) obj6;
                Function1 function4 = (Function1) obj5;
                Function0 function5 = (Function0) obj4;
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    int i3 = PSPScreenKt.WhenMappings.f62772a[pSPStyle.ordinal()];
                    if (i3 == 1) {
                        composer4.L(-1045466287);
                        if ((lazyPagingItems2.d().f18562a instanceof LoadState.Loading) || ((lazyPagingItems2.d().f18564c instanceof LoadState.Loading) && lazyPagingItems2.b() == 0)) {
                            z = true;
                        }
                        PSPHeaderKt.a(str3, num2, !z, function4, function5, composer4, 0);
                        composer4.F();
                    } else {
                        if (i3 != 2) {
                            throw o60.v(composer4, -33725852);
                        }
                        composer4.L(-1045047291);
                        PSPSearchHeaderKt.a(str3, num2, !(lazyPagingItems2.d().f18562a instanceof LoadState.Loading), LVColorScheme.INVERT, function5, composer4, 24576);
                        composer4.F();
                    }
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 23:
                ((Integer) obj2).getClass();
                PdpTraceabilityKt.a((Modifier) obj9, (String) obj8, (String) obj7, (String) obj6, (String) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 24:
                ((Integer) obj2).getClass();
                PersonalSelectionsCurationAdvisorProductListKt.a((List) obj9, (List) obj8, (Function1) obj7, (Function1) obj6, (Function1) obj5, (Function2) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 25:
                ((Integer) obj2).getClass();
                PlaceSearchPageComposableKt.c((PlacesUiModel) obj9, (Function2) obj8, (Function1) obj7, (PlaceSearchActivity.PlaceInfoType) obj6, (String) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 26:
                ((Integer) obj2).getClass();
                QRCode3DScreenKt.a((Bitmap) obj9, (Bitmap) obj8, (Function0) obj7, (Modifier) obj6, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(24577));
                return Unit.f71739a;
            case 27:
                ((Integer) obj2).getClass();
                QRCodeComposableKt.b((QRCodeViewModel) obj9, (UserWorldwideIdViewModel) obj8, (Function1) obj7, (Function0) obj6, (Function0) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 28:
                ((Integer) obj2).getClass();
                RepairConfirmAddressBffComposableKt.b((Modifier) obj9, (RepairsBffViewState) obj8, (AssessmentBffViewState) obj7, (Function0) obj6, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                RepairConfirmAddressComposableKt.c((Modifier) obj9, (RepairsViewState) obj8, (AssessmentViewState) obj7, (Function0) obj6, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ u1(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, int i2) {
        this.f80198b = i2;
        this.f80199c = obj;
        this.d = obj2;
        this.f80200e = obj3;
        this.f80201f = obj4;
        this.g = obj5;
        this.f80202h = obj6;
    }

    public /* synthetic */ u1(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, int i2, int i3) {
        this.f80198b = i3;
        this.f80199c = obj;
        this.d = obj2;
        this.f80200e = obj3;
        this.f80201f = obj4;
        this.g = obj5;
        this.f80202h = obj6;
    }

    public /* synthetic */ u1(MutableState mutableState, Density density, FocusRequester focusRequester, Rect rect, MutableIntState mutableIntState, MutableState mutableState2) {
        this.f80198b = 0;
        this.f80199c = mutableState;
        this.f80200e = density;
        this.f80201f = focusRequester;
        this.g = rect;
        this.f80202h = mutableIntState;
        this.d = mutableState2;
    }
}
