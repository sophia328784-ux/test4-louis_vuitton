package defpackage;

import android.content.Context;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.SliderState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.SavedStateHandle;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavBackStackEntryKt;
import androidx.navigation.NavHostController;
import coil3.compose.AsyncImagePainter;
import coil3.compose.ImagePainter_androidKt;
import coil3.compose.SubcomposeAsyncImageScope;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.kizitonwose.calendar.core.CalendarMonth;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVCapsulePageControlKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarActionScope;
import com.vuitton.android.presentation.compose.components.DownloadIndicatorKt;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModel;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.components.ForgetPasswordComposableKt;
import com.vuitton.android.presentation.screen.authentication.login.NativeLoginFragment;
import com.vuitton.android.presentation.screen.booking.list.models.BookingUiModel;
import com.vuitton.android.presentation.screen.certificates.components.visionnaire.CertificateVisionnaireContentKt;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleLookCardUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleViewState;
import com.vuitton.android.presentation.screen.immersivearticle.models.WallpaperDownloadStateUiModel;
import com.vuitton.android.presentation.screen.mylv.models.MarketingUserConsentsUiModel;
import com.vuitton.android.presentation.screen.options.settings.SettingsViewModel;
import com.vuitton.android.presentation.screen.options.settings.components.EditSettingsComposableKt;
import com.vuitton.android.presentation.screen.options.settings.models.SettingsViewState;
import com.vuitton.android.presentation.screen.pdp.components.PdpEditorialContentKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.EditorialContentUiModel;
import com.vuitton.android.presentation.screen.plp.components.composables.brandcontent.PLPProductFullscreenComposableKt;
import com.vuitton.android.presentation.screen.storemode.StoreModeRoute;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.StoreModePLPScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.thelookimmersivearticle.models.TheLookImmersiveArticleViewState;
import com.vuitton.android.presentation.utils.UrlFactory;
import com.vuitton.foundation.logger.LegacyLogger;
import java.util.List;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class cf implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f21138c;
    public final /* synthetic */ Object d;

    public /* synthetic */ cf(Locale locale, List list) {
        this.f21137b = 6;
        this.d = locale;
        this.f21138c = list;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
        String strB;
        int i2;
        int i3;
        int i4;
        SavedStateHandle savedStateHandleA;
        Object obj5;
        int i5 = this.f21137b;
        int i6 = 3;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        int i7 = 0;
        Object obj6 = this.d;
        Object obj7 = this.f21138c;
        switch (i5) {
            case 0:
                PagerState pagerState = (PagerState) obj6;
                int iIntValue = ((Integer) obj2).intValue();
                Composer composer = (Composer) obj3;
                int iIntValue2 = ((Integer) obj4).intValue();
                ((PagerScope) obj).getClass();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                BookingUiModel bookingUiModel = (BookingUiModel) ((List) obj7).get(iIntValue);
                if (pagerState.o() > 1) {
                    composer.L(586461866);
                    strB = StringResources_androidKt.b(R.string.alt_tab, new Object[]{String.valueOf(iIntValue + 1), String.valueOf(pagerState.o())}, composer);
                    composer.F();
                } else {
                    composer.L(586640643);
                    composer.F();
                    strB = "";
                }
                Modifier modifierO = new DTFunctionNameModifier("BookingCarousel_X0wkCjc$lambda$4").o(SizeKt.f5052c);
                int i8 = (iIntValue2 & 112) ^ 48;
                boolean zK = composer.K(pagerState) | ((i8 > 32 && composer.d(iIntValue)) || (iIntValue2 & 48) == 32);
                Object objX = composer.x();
                Object obj8 = objX;
                if (zK || objX == composer$Companion$Empty$1) {
                    ze zeVar = new ze(pagerState, iIntValue, 0);
                    composer.q(zeVar);
                    obj8 = zeVar;
                }
                Modifier modifierA = ClipKt.a(GraphicsLayerModifierKt.a(modifierO, (Function1) obj8), LVAppDesignKitTheme.j(composer).d);
                boolean z = ((((composer.K(pagerState) ? 1 : 0) | (((i8 > 32 && composer.d(iIntValue)) || (iIntValue2 & 48) == 32) ? 1 : 0)) | (composer.y(bookingUiModel) ? 1 : 0)) == true ? 1 : 0) | (composer.K(strB) ? 1 : 0);
                Object objX2 = composer.x();
                Object obj9 = objX2;
                if (z != 0 || objX2 == composer$Companion$Empty$1) {
                    af afVar = new af(iIntValue, pagerState, bookingUiModel, strB);
                    composer.q(afVar);
                    obj9 = afVar;
                }
                Modifier modifierB = SemanticsModifierKt.b(modifierA, true, (Function1) obj9);
                String str = bookingUiModel.g;
                ContentScale.f9447a.getClass();
                ImageLoaderKt.b(modifierB, str, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, composer, 3456, 2032);
                return Unit.f71739a;
            case 1:
                StoreModeViewModel storeModeViewModel = (StoreModeViewModel) obj7;
                NavHostController navHostController = (NavHostController) obj6;
                NavBackStackEntry navBackStackEntry = (NavBackStackEntry) obj2;
                Composer composer2 = (Composer) obj3;
                ((Integer) obj4).getClass();
                float f2 = CatalogStoreModeKt.f64850a;
                ((AnimatedContentScope) obj).getClass();
                navBackStackEntry.getClass();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                String str2 = ((StoreModeRoute.Plp) NavBackStackEntryKt.a(navBackStackEntry, Reflection.f71922a.b(StoreModeRoute.Plp.class))).f64781b;
                boolean zY = composer2.y(navHostController);
                Object objX3 = composer2.x();
                if (zY || objX3 == composer$Companion$Empty$1) {
                    objX3 = new yj(navHostController, i6);
                    composer2.q(objX3);
                }
                StoreModePLPScreenKt.a(storeModeViewModel, str2, (Function0) objX3, composer2, 0);
                return Unit.f71739a;
            case 2:
                String str3 = (String) obj7;
                CertificateVisionnaireUiModel certificateVisionnaireUiModel = (CertificateVisionnaireUiModel) obj6;
                int iIntValue3 = ((Integer) obj2).intValue();
                Composer composer3 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((PagerScope) obj).getClass();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                if (iIntValue3 == 0) {
                    composer3.L(261922357);
                    CertificateVisionnaireContentKt.d(str3, certificateVisionnaireUiModel.f55890k, certificateVisionnaireUiModel.l, composer3, 0);
                    composer3.F();
                } else if (iIntValue3 != 1) {
                    composer3.L(-469849491);
                    composer3.F();
                } else {
                    composer3.L(261929246);
                    CertificateVisionnaireContentKt.b(certificateVisionnaireUiModel.m, certificateVisionnaireUiModel.p, certificateVisionnaireUiModel.q, certificateVisionnaireUiModel.o, composer3, 0);
                    composer3.F();
                }
                return Unit.f71739a;
            case 3:
                String str4 = (String) obj7;
                Function3 function3 = (Function3) obj6;
                SubcomposeAsyncImageScope subcomposeAsyncImageScope = (SubcomposeAsyncImageScope) obj;
                AsyncImagePainter.State.Error error = (AsyncImagePainter.State.Error) obj2;
                Composer composer4 = (Composer) obj3;
                int iIntValue4 = ((Integer) obj4).intValue();
                subcomposeAsyncImageScope.getClass();
                error.getClass();
                if ((iIntValue4 & 6) == 0) {
                    i2 = (composer4.K(subcomposeAsyncImageScope) ? 4 : 2) | iIntValue4;
                } else {
                    i2 = iIntValue4;
                }
                if ((iIntValue4 & 48) == 0) {
                    i2 |= (iIntValue4 & 64) == 0 ? composer4.K(error) : composer4.y(error) ? 32 : 16;
                }
                if (composer4.p(i2 & 1, (i2 & 147) != 146)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    LegacyLogger.f66205a.c("ImageLoading", "Unable to load image from data=" + ((Object) str4), error.f21280b.f21611c);
                    function3.A(subcomposeAsyncImageScope, composer4, Integer.valueOf(i2 & 14));
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 4:
                Function4 function4 = (Function4) obj7;
                Context context = (Context) obj6;
                SubcomposeAsyncImageScope subcomposeAsyncImageScope2 = (SubcomposeAsyncImageScope) obj;
                AsyncImagePainter.State.Success success = (AsyncImagePainter.State.Success) obj2;
                Composer composer5 = (Composer) obj3;
                int iIntValue5 = ((Integer) obj4).intValue();
                subcomposeAsyncImageScope2.getClass();
                success.getClass();
                if ((iIntValue5 & 6) == 0) {
                    i3 = (composer5.K(subcomposeAsyncImageScope2) ? 4 : 2) | iIntValue5;
                } else {
                    i3 = iIntValue5;
                }
                if ((iIntValue5 & 48) == 0) {
                    i3 |= (iIntValue5 & 64) == 0 ? composer5.K(success) : composer5.y(success) ? 32 : 16;
                }
                if (composer5.p(i3 & 1, (i3 & 147) != 146)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    function4.g(subcomposeAsyncImageScope2, ImagePainter_androidKt.b(success.f21283b.f21668a, context), composer5, Integer.valueOf((i3 & 14) | 64));
                } else {
                    composer5.D();
                }
                return Unit.f71739a;
            case 5:
                Function0 function0 = (Function0) obj6;
                TopBarActionScope topBarActionScope = (TopBarActionScope) obj;
                LVColorScheme lVColorScheme = (LVColorScheme) obj2;
                Composer composer6 = (Composer) obj3;
                int iIntValue6 = ((Integer) obj4).intValue();
                topBarActionScope.getClass();
                lVColorScheme.getClass();
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                if (((ImmersiveArticleViewState) obj7).f58804h) {
                    composer6.L(-361673861);
                    TopBarActionScope.ComposeDefaultImpls.a(null, LVAppDesignKitTheme.g(composer6).u, StringResources_androidKt.c(composer6, R.string.alt_share), function0, lVColorScheme, null, null, false, topBarActionScope, composer6, ((iIntValue6 << 9) & 57344) | ((iIntValue6 << 24) & 234881024), 225);
                    composer6.F();
                } else {
                    composer6.L(-361332706);
                    composer6.F();
                }
                return Unit.f71739a;
            case 6:
                Locale locale = (Locale) obj6;
                List list = (List) obj7;
                CalendarMonth calendarMonth = (CalendarMonth) obj2;
                Composer composer7 = (Composer) obj3;
                int iIntValue7 = ((Integer) obj4).intValue();
                float f3 = LVCalendarKt.f50961a;
                ((ColumnScope) obj).getClass();
                calendarMonth.getClass();
                if ((iIntValue7 & 48) == 0) {
                    iIntValue7 |= composer7.K(calendarMonth) ? 32 : 16;
                }
                if (composer7.p(iIntValue7 & 1, (iIntValue7 & 145) != 144)) {
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    LVCalendarKt.e(new DTFunctionNameModifier("LVCalendar$lambda$12$0$1"), calendarMonth, locale, list, composer7, (iIntValue7 & 112) | 6);
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
            case 7:
                ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) obj7;
                SliderState sliderState = (SliderState) obj6;
                ColumnScope columnScope = (ColumnScope) obj;
                Integer num = (Integer) obj2;
                int iIntValue8 = num.intValue();
                Composer composer8 = (Composer) obj3;
                int iIntValue9 = ((Integer) obj4).intValue();
                columnScope.getClass();
                if ((iIntValue9 & 6) == 0) {
                    i4 = (composer8.K(columnScope) ? 4 : 2) | iIntValue9;
                } else {
                    i4 = iIntValue9;
                }
                if ((48 & iIntValue9) == 0) {
                    i4 |= composer8.d(iIntValue8) ? 32 : 16;
                }
                if (composer8.p(i4 & 1, (i4 & 147) != 146)) {
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    composableLambdaImpl.D(columnScope, num, Integer.valueOf((int) sliderState.d()), composer8, Integer.valueOf(i4 & 126));
                } else {
                    composer8.D();
                }
                return Unit.f71739a;
            case 8:
                NavHostController navHostController2 = (NavHostController) obj7;
                NativeLoginFragment nativeLoginFragment = (NativeLoginFragment) obj6;
                Composer composer9 = (Composer) obj3;
                ((Integer) obj4).getClass();
                NativeLoginFragment.Companion companion = NativeLoginFragment.A;
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer9);
                if (viewModelStoreOwnerA == null) {
                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return null;
                }
                ForgetPasswordViewModel forgetPasswordViewModel = (ForgetPasswordViewModel) ViewModelKt.a(Reflection.f71922a.b(ForgetPasswordViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer9), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer9);
                boolean zY2 = composer9.y(navHostController2) | composer9.y(nativeLoginFragment);
                Object objX4 = composer9.x();
                if (zY2 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new t30(navHostController2, nativeLoginFragment, 19);
                    composer9.q(objX4);
                }
                ForgetPasswordComposableKt.a(forgetPasswordViewModel, (Function0) objX4, composer9, 0);
                return Unit.f71739a;
            case 9:
                int iIntValue10 = ((Integer) obj2).intValue();
                ((Integer) obj4).getClass();
                ((PagerScope) obj).getClass();
                OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                PLPProductFullscreenComposableKt.a((AssetUiModel) ((List) obj7).get(iIntValue10), (UrlFactory) obj6, (Composer) obj3, 48);
                return Unit.f71739a;
            case 10:
                int iIntValue11 = ((Integer) obj2).intValue();
                ((Integer) obj4).getClass();
                ((PagerScope) obj).getClass();
                OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                PdpEditorialContentKt.b(null, (EditorialContentUiModel) ((List) obj7).get(iIntValue11), (Function2) obj6, (Composer) obj3, 0);
                return Unit.f71739a;
            case 11:
                NavHostController navHostController3 = (NavHostController) obj7;
                SettingsViewModel settingsViewModel = (SettingsViewModel) obj6;
                Composer composer10 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((AnimatedContentScope) obj).getClass();
                ((NavBackStackEntry) obj2).getClass();
                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                NavBackStackEntry navBackStackEntryH = navHostController3.f18122b.h();
                if ((navBackStackEntryH == null || (savedStateHandleA = navBackStackEntryH.a()) == null) ? false : Intrinsics.c(savedStateHandleA.a("already_saved_info"), Boolean.TRUE)) {
                    ((SettingsViewState) settingsViewModel.getT().getValue()).f60069c.f59457b.setValue(MarketingUserConsentsUiModel.a((MarketingUserConsentsUiModel) ((SettingsViewState) settingsViewModel.getT().getValue()).f60069c.f59457b.getF10755b(), false, false, false, false, Boolean.TRUE, null, null, 111));
                    settingsViewModel.db(true);
                }
                boolean zY3 = composer10.y(navHostController3) | composer10.y(settingsViewModel);
                Object objX5 = composer10.x();
                if (zY3 || objX5 == composer$Companion$Empty$1) {
                    objX5 = new mv0(navHostController3, settingsViewModel);
                    composer10.q(objX5);
                }
                Function0 function1 = (Function0) objX5;
                boolean zY4 = composer10.y(navHostController3);
                Object objX6 = composer10.x();
                if (zY4 || objX6 == composer$Companion$Empty$1) {
                    objX6 = new yj(navHostController3, 15);
                    composer10.q(objX6);
                }
                EditSettingsComposableKt.a(settingsViewModel, function1, (Function0) objX6, composer10, 0);
                return Unit.f71739a;
            case 12:
                TheLookImmersiveArticleViewState theLookImmersiveArticleViewState = (TheLookImmersiveArticleViewState) obj7;
                Function1 function2 = (Function1) obj6;
                Composer composer11 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((TopBarActionScope) obj).getClass();
                ((LVColorScheme) obj2).getClass();
                OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                WallpaperDownloadStateUiModel wallpaperDownloadStateUiModel = new WallpaperDownloadStateUiModel(false, theLookImmersiveArticleViewState.g, false, 5, null);
                int i9 = LVAppDesignKitTheme.g(composer11).u;
                int i10 = LVAppDesignKitTheme.a(composer11).m;
                boolean zY5 = composer11.y(theLookImmersiveArticleViewState) | composer11.K(function2);
                Object objX7 = composer11.x();
                if (zY5 || objX7 == composer$Companion$Empty$1) {
                    objX7 = new t31(theLookImmersiveArticleViewState, function2);
                    composer11.q(objX7);
                }
                DownloadIndicatorKt.a(null, wallpaperDownloadStateUiModel, i9, i10, (Function0) objX7, null, composer11, 0, 33);
                return Unit.f71739a;
            default:
                Context context2 = (Context) obj6;
                int iIntValue12 = ((Integer) obj2).intValue();
                Composer composer12 = (Composer) obj3;
                ((Integer) obj4).getClass();
                ((PagerScope) obj).getClass();
                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                List list2 = ((ImmersiveArticleLookCardUiModel) ((TheLookImmersiveArticleViewState) obj7).f65395e.get(iIntValue12)).f58685f;
                if (list2 == null) {
                    composer12.L(-830318688);
                    composer12.F();
                } else {
                    composer12.L(-830318687);
                    boolean zY6 = composer12.y(list2);
                    Object objX8 = composer12.x();
                    if (zY6 || objX8 == composer$Companion$Empty$1) {
                        obj5 = objX8;
                        db dbVar = new db(list2, 18);
                        composer12.q(dbVar);
                        obj5 = dbVar;
                    }
                    PagerState pagerStateB = PagerStateKt.b(0, (Function0) obj5, composer12, 0, 3);
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("TheLookImmersiveArticleDetailScreen$lambda$5$0$0");
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer12.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer12.n();
                    Modifier modifierC = ComposedModifierKt.c(composer12, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    Function0 function5 = ComposeUiNode.Companion.f9641b;
                    if (composer12.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer12.B();
                    if (composer12.getS()) {
                        composer12.C(function5);
                    } else {
                        composer12.o();
                    }
                    Updater.c(composer12, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer12, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer12, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer12, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer12, modifierC, ComposeUiNode.Companion.d);
                    PagerKt.b(pagerStateB, new DTFunctionNameModifier("TheLookImmersiveArticleDetailScreen$lambda$5$0$0").o(SizeKt.f5052c), null, null, null, null, false, null, null, null, ComposableLambdaKt.b(-1441411619, new u31(i7, context2, list2), composer12), composer12, 48);
                    if (list2.size() > 1) {
                        LVCapsulePageControlKt.a(PaddingKt.i(BoxScopeInstance.f4938a.g(pq0.j(1823536332, composer12, "TheLookImmersiveArticleDetailScreen$lambda$5$0$0"), Alignment.Companion.f8586e), LVAppDesignKitTheme.l(composer12).f48415c), pagerStateB, null, true, composer12, 3072, 4);
                        composer12.F();
                    } else {
                        composer12.L(1823943796);
                        composer12.F();
                    }
                    composer12.r();
                    composer12.F();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ cf(Object obj, Object obj2, int i2) {
        this.f21137b = i2;
        this.f21138c = obj;
        this.d = obj2;
    }
}
