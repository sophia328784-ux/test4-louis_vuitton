package defpackage;

import android.graphics.Bitmap;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.SpanStyle;
import androidx.navigation3.runtime.NavBackStack;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTextField;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternal;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternalKt;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.inappbanner.InAppBannerComposableKt;
import com.vuitton.android.presentation.screen.account.lvpass.components.QRCode2DScreenKt;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationNavDisplayKt;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditPasswordComposableKt;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginViewModel;
import com.vuitton.android.presentation.screen.authentication.login.components.NativeLoginComposableKt;
import com.vuitton.android.presentation.screen.booking.MyExperiencesNavDisplayKt;
import com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl;
import com.vuitton.android.presentation.screen.cart.components.NativeCartFilledScreenKt;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.PerfumeSamplesCardKt;
import com.vuitton.android.presentation.screen.cart.components.sections.NativeCartReinsuranceKt;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleAuthenticationViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleExpansionListViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleAuthenticationSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleExpansionListUiModel;
import com.vuitton.android.presentation.screen.options.notifications.components.NotificationsPreferencesComposableKt;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesBottomSheet;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeComponentsKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeNavHostKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeReasonScreenKt;
import com.vuitton.android.presentation.screen.orders.components.list.OrderListComposableKt;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderReturnOrExchangeViewModel;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaGuestAccountCheckingCardKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaGuestContactFormCardKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.models.OsaContactFormViewState;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormScreenKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListBottomSheetScreen;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListBottomSheetScreenKt;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorScreenKt;
import com.vuitton.android.presentation.screen.plp.components.screens.PSPStyle;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductShortPriceUiModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.PLPCategoryViewModel;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffScreenKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairDetailUiModel;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.plp.PSPStoreModeComposableKt;
import com.vuitton.android.presentation.tracking.GA4Tracker;
import com.vuitton.android.presentation.tracking.GA4TrackingUiModel;
import com.vuitton.foundation.model.domain.model.inappbanner.InAppBanner;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class uv implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80404b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80405c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80406e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f80407f;

    public /* synthetic */ uv(Modifier modifier, ImmutableList immutableList, Function1 function1, Function3 function3, int i2) {
        this.f80404b = 11;
        this.d = modifier;
        this.f80406e = immutableList;
        this.f80405c = function1;
        this.f80407f = function3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f80404b;
        Object obj3 = this.f80406e;
        Object obj4 = this.f80405c;
        Object obj5 = this.f80407f;
        Object obj6 = this.d;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                EditPasswordComposableKt.a((MyInformationViewModel) obj6, (Function0) obj3, (Function2) obj5, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 1:
                ((FeedTracker) obj6).a((FeedTab) obj3, "CarouselMedium", ((EditorialModuleUiModel.CarouselMUiModel) ((EditorialModuleUiModel) obj5)).f50825a, ((Integer) obj2).intValue());
                ((Function1) obj4).invoke((ContributionLinkUiModel) obj);
                break;
            case 2:
                ((Integer) obj2).getClass();
                ImmersiveArticleAuthenticationViewKt.a((Modifier) obj6, (ImmersiveArticleAuthenticationSectionUiModel) obj5, (Function0) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 3:
                ((Integer) obj2).getClass();
                ImmersiveArticleExpansionListViewKt.b((Modifier) obj6, (ImmersiveArticleExpansionListUiModel) obj3, (Function2) obj5, (Function2) obj4, (Composer) obj, RecomposeScopeImplKt.a(7));
                break;
            case 4:
                ((Integer) obj2).getClass();
                InAppBannerComposableKt.a((StateFlow) obj6, (Function0) obj3, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 5:
                ((Integer) obj2).getClass();
                InAppBannerComposableKt.b((InAppBanner) obj6, (Function0) obj3, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 6:
                Function1 function1 = (Function1) obj4;
                String str = (String) obj6;
                ConfigurationTextField configurationTextField = (ConfigurationTextField) obj3;
                FocusRequester focusRequester = (FocusRequester) obj5;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                SpringSpec springSpec = LVTextFieldInternalKt.f48631a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    LVTextFieldInternal lVTextFieldInternal = LVTextFieldInternal.f48624a;
                    boolean zK = composer.K(function1);
                    Object objX = composer.x();
                    if (zK || objX == Composer.Companion.f7939a) {
                        objX = new f70(function1, focusRequester, 1);
                        composer.q(objX);
                    }
                    lVTextFieldInternal.a((Function0) objX, str, StringResources_androidKt.c(composer, R.string.alt_clear_field), configurationTextField.p, composer, 24576);
                } else {
                    composer.D();
                }
                break;
            case 7:
                ((Integer) obj2).getClass();
                LazyLayoutKt.a((Function0) obj3, (Modifier) obj6, (LazyLayoutPrefetchState) obj5, (LazyLayoutMeasurePolicy) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 8:
                ((Integer) obj2).getClass();
                MyExperiencesNavDisplayKt.a((BookingListViewModelImpl) obj6, (NavBackStack) obj5, (Function1) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 9:
                ((Integer) obj2).getClass();
                MyInformationNavDisplayKt.a((NavBackStack) obj5, (MyInformationViewModel) obj6, (Function0) obj3, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 10:
                ((Integer) obj2).getClass();
                NativeCartFilledScreenKt.d((Modifier) obj6, (NativeCartViewState) obj5, (Function3) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 11:
                ((Integer) obj2).getClass();
                NativeCartReinsuranceKt.a((Modifier) obj6, (ImmutableList) obj3, (Function1) obj4, (Function3) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 12:
                ((Integer) obj2).getClass();
                NativeLoginComposableKt.a((NativeLoginViewModel) obj6, (Function1) obj4, (Function0) obj3, (Function0) obj5, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 13:
                ((Integer) obj2).getClass();
                NotificationsPreferencesComposableKt.a((String) obj6, (NotificationsPreferencesBottomSheet) obj5, (Function0) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 14:
                ((Integer) obj2).getClass();
                OrderListComposableKt.a((OrderViewModel) obj6, (Function0) obj3, (Function3) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 15:
                ((Integer) obj2).getClass();
                OrderReturnOrExchangeComponentsKt.h((Modifier) obj6, (String) obj3, (String) obj5, (List) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 16:
                ((Integer) obj2).getClass();
                OrderReturnOrExchangeNavHostKt.a((OrderReturnOrExchangeViewModel) obj6, (Function0) obj3, (Function0) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 17:
                ((Integer) obj2).getClass();
                OrderReturnOrExchangeReasonScreenKt.e((OrderReturnOrExchangeItemUiModel) obj6, (OrderReturnOrExchangeViewState) obj3, (Function2) obj5, (Function2) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 18:
                ((Integer) obj2).getClass();
                OsaGuestAccountCheckingCardKt.b((String) obj6, (SpanStyle) obj3, (String) obj5, (SpanStyle) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 19:
                ((Integer) obj2).getClass();
                OsaGuestAccountCheckingCardKt.a((OsaContactFormViewState) obj6, (Function2) obj5, (Function1) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 20:
                ((Integer) obj2).getClass();
                OsaGuestContactFormCardKt.a((OsaContactFormViewState) obj6, (Function2) obj5, (Function0) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 21:
                ((Integer) obj2).getClass();
                OsaListBottomSheetScreenKt.b((Modifier) obj6, (OsaListBottomSheetScreen) obj5, (Function0) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 22:
                ((Integer) obj2).getClass();
                OsaLocationFormScreenKt.b((OsaLocationFormViewState) obj6, (OsaReasonsFormViewState) obj5, (Function0) obj3, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            case 23:
                PLPCategoryViewModel pLPCategoryViewModel = (PLPCategoryViewModel) obj6;
                String str2 = (String) obj3;
                String str3 = (String) obj4;
                PlpProductUiModel plpProductUiModel = (PlpProductUiModel) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                plpProductUiModel.getClass();
                PlpProductUiModel.SkuDataUiModel skuDataUiModel = (PlpProductUiModel.SkuDataUiModel) plpProductUiModel.f62934a.getF10755b();
                ((Function2) obj5).invoke(new SkuIdUiModel(skuDataUiModel.f62943a), pLPCategoryViewModel.C2().getValue());
                String str4 = skuDataUiModel.d;
                String str5 = skuDataUiModel.f62943a;
                ProductShortPriceUiModel productShortPriceUiModel = plpProductUiModel.d;
                pLPCategoryViewModel.j(new GA4TrackingUiModel.SelectItemClicked("product_list", productShortPriceUiModel != null ? productShortPriceUiModel.d : null, str2, str3, str5, str4, productShortPriceUiModel != null ? productShortPriceUiModel.f62983c : null, iIntValue2, null, null, 768, null));
                break;
            case 24:
                ((Integer) obj2).getClass();
                PSPStoreModeComposableKt.a((PSPStoreModeViewModel) obj6, (LinkedHashMap) obj5, (PSPStyle) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(385));
                break;
            case 25:
                PdpTracker pdpTracker = (PdpTracker) obj6;
                GA4Tracker gA4Tracker = (GA4Tracker) obj5;
                Function1 function2 = (Function1) obj4;
                CarouselSItemUiModel carouselSItemUiModel = (CarouselSItemUiModel) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                carouselSItemUiModel.getClass();
                String str6 = carouselSItemUiModel.f50796a;
                ProductUiModel productUiModel = ((PdpViewState) obj3).f61566b;
                String str7 = productUiModel != null ? productUiModel.f61735b : null;
                pdpTracker.getClass();
                str6.getClass();
                pdpTracker.f61585a.a(PdpTrackingUiModelKt.a(new PdpTrackingUiModel.OnHitOnYMALProductEvent(str7, str6, null), pdpTracker.f61586b, pdpTracker.f61587c, pdpTracker.d));
                String str8 = carouselSItemUiModel.f50796a;
                String str9 = carouselSItemUiModel.f50797b;
                ProductShortPriceUiModel productShortPriceUiModel2 = carouselSItemUiModel.f50799e;
                gA4Tracker.a("product_sheet", "product_sheet.you_may_also_like", "Related products", str8, str9, productShortPriceUiModel2 != null ? productShortPriceUiModel2.f62983c : null, productShortPriceUiModel2 != null ? productShortPriceUiModel2.d : null, iIntValue3);
                function2.invoke(new SkuIdUiModel(str6));
                break;
            case 26:
                ((Integer) obj2).getClass();
                PerfumeSamplesCardKt.a((Modifier) obj6, (ArrayList) obj5, (Function0) obj3, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(7));
                break;
            case 27:
                ((Integer) obj2).getClass();
                PersonalSelectionsCurationAdvisorScreenKt.d(RecomposeScopeImplKt.a(1), (PagerState) obj3, (Composer) obj, (Modifier) obj6, (List) obj5, (CoroutineScope) obj4);
                break;
            case 28:
                ((Integer) obj2).getClass();
                QRCode2DScreenKt.a((Bitmap) obj6, (Function0) obj3, (Modifier) obj5, (Function0) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
            default:
                ((Integer) obj2).getClass();
                RepairDetailBffScreenKt.i((Modifier) obj6, (RepairDetailUiModel) obj5, (Function1) obj4, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ uv(NavBackStack navBackStack, MyInformationViewModel myInformationViewModel, Function0 function0, Function1 function1, int i2) {
        this.f80404b = 9;
        this.f80407f = navBackStack;
        this.d = myInformationViewModel;
        this.f80406e = function0;
        this.f80405c = function1;
    }

    public /* synthetic */ uv(NativeLoginViewModel nativeLoginViewModel, Function1 function1, Function0 function0, Function0 function2, int i2) {
        this.f80404b = 12;
        this.d = nativeLoginViewModel;
        this.f80405c = function1;
        this.f80406e = function0;
        this.f80407f = function2;
    }

    public /* synthetic */ uv(Object obj, Object obj2, Object obj3, Object obj4, int i2, int i3) {
        this.f80404b = i3;
        this.d = obj;
        this.f80406e = obj2;
        this.f80407f = obj3;
        this.f80405c = obj4;
    }

    public /* synthetic */ uv(Object obj, Object obj2, Object obj3, Function0 function0, int i2, int i3) {
        this.f80404b = i3;
        this.d = obj;
        this.f80407f = obj2;
        this.f80405c = obj3;
        this.f80406e = function0;
    }

    public /* synthetic */ uv(Object obj, Object obj2, Object obj3, Function1 function1, int i2) {
        this.f80404b = i2;
        this.d = obj;
        this.f80406e = obj2;
        this.f80407f = obj3;
        this.f80405c = function1;
    }

    public /* synthetic */ uv(Object obj, Object obj2, Function0 function0, Function function, int i2, int i3) {
        this.f80404b = i3;
        this.d = obj;
        this.f80407f = obj2;
        this.f80406e = function0;
        this.f80405c = function;
    }

    public /* synthetic */ uv(Function0 function0, Modifier modifier, LazyLayoutPrefetchState lazyLayoutPrefetchState, LazyLayoutMeasurePolicy lazyLayoutMeasurePolicy, int i2) {
        this.f80404b = 7;
        this.f80406e = function0;
        this.d = modifier;
        this.f80407f = lazyLayoutPrefetchState;
        this.f80405c = lazyLayoutMeasurePolicy;
    }

    public /* synthetic */ uv(Function1 function1, String str, ConfigurationTextField configurationTextField, FocusRequester focusRequester) {
        this.f80404b = 6;
        this.f80405c = function1;
        this.d = str;
        this.f80406e = configurationTextField;
        this.f80407f = focusRequester;
    }

    public /* synthetic */ uv(Function2 function2, PLPCategoryViewModel pLPCategoryViewModel, String str, String str2) {
        this.f80404b = 23;
        this.f80407f = function2;
        this.d = pLPCategoryViewModel;
        this.f80406e = str;
        this.f80405c = str2;
    }
}
