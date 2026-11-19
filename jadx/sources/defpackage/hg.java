package defpackage;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
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
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.ShadowKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVNavBarScope;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationTextField;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternal;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldInternalKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.NestedScroll;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditMyInfoScreenKt;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInformationViewState;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingExperienceViewState;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.components.NativeCartComposableKt;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.RegularGridItemKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.FilterCategorySliderKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.NextSectionProductTabs;
import com.vuitton.android.presentation.screen.immersivearticle.components.cards.ImmersiveArticleTextViewKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.immersivearticle.models.TextArticleSectionUiModel;
import com.vuitton.android.presentation.screen.main.components.MainNavBarKt;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.options.dispatch.components.DispatchComposableKt;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeSelectionScreenKt;
import com.vuitton.android.presentation.screen.orders.models.ExchangeSetupResponseUiModel;
import com.vuitton.android.presentation.screen.orders.models.VariationsResponseUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorLookListKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryUiModel;
import com.vuitton.android.presentation.screen.privacy.components.ConsentSwitchKt;
import com.vuitton.android.presentation.screen.privacy.models.ConsentValueUiModel;
import com.vuitton.android.presentation.screen.search.components.HistoryComposableKt;
import com.vuitton.android.presentation.screen.search.models.HistoryUiModel;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightSkuItemKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class hg implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69695b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f69696c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f69697e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f69698f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f69699h;

    public /* synthetic */ hg(State state, Density density, MainTopLevelDestination mainTopLevelDestination, boolean z, LVNavBarScope lVNavBarScope, String str) {
        this.f69695b = 8;
        this.f69698f = state;
        this.g = density;
        this.f69699h = mainTopLevelDestination;
        this.d = z;
        this.f69697e = lVNavBarScope;
        this.f69696c = str;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f69695b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        Object obj3 = this.f69697e;
        Object obj4 = this.f69699h;
        Object obj5 = this.g;
        Object obj6 = this.f69696c;
        Object obj7 = this.f69698f;
        switch (i2) {
            case 0:
                final BookingExperienceViewState bookingExperienceViewState = (BookingExperienceViewState) obj7;
                final BookingCTAState bookingCTAState = (BookingCTAState) obj5;
                final String str = (String) obj6;
                final Function3 function3 = (Function3) obj4;
                final Function1 function1 = (Function1) obj3;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                int i3 = BookingReservationScreenKt.f54457b;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    if (bookingExperienceViewState instanceof BookingExperienceViewState.Success) {
                        composer.L(1349152605);
                        boolean z = ((BookingExperienceViewState.Success) bookingExperienceViewState).f54503b;
                        Object objX = composer.x();
                        int i4 = 24;
                        if (objX == composer$Companion$Empty$1) {
                            objX = new re(i4);
                            composer.q(objX);
                        }
                        EnterTransition enterTransitionR = EnterExitTransitionKt.r((Function1) objX);
                        TweenSpec tweenSpecC = AnimationSpecKt.c(150, 0, EasingKt.f3864c, 2);
                        Object objX2 = composer.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new re(i4);
                            composer.q(objX2);
                        }
                        ExitTransition exitTransitionU = EnterExitTransitionKt.u((Function1) objX2, tweenSpecC);
                        final boolean z2 = this.d;
                        AnimatedVisibilityKt.e(z, null, enterTransitionR, exitTransitionU, null, ComposableLambdaKt.b(-1459943332, new Function3() { // from class: gg
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj8, Object obj9, Object obj10) {
                                int i5;
                                int i6;
                                String strK;
                                Composer composer2 = (Composer) obj9;
                                ((Integer) obj10).getClass();
                                int i7 = BookingReservationScreenKt.f54457b;
                                ((AnimatedVisibilityScope) obj8).getClass();
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Modifier modifierB = WindowInsetsPadding_androidKt.b(PaddingKt.m(PaddingKt.m(PaddingKt.k(BackgroundKt.b(ShadowKt.c(SizeKt.d(new DTFunctionNameModifier("BookingReservationScreen$lambda$3$2$2"), 1.0f), composer2, 6, 3), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(composer2).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48416e, 7), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13));
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                                ComposeUiNode.b0.getClass();
                                Function0 function0 = ComposeUiNode.Companion.f9641b;
                                Integer numValueOf = null;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function0);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                Modifier modifierC2 = n00.c(composer2, modifierC, ComposeUiNode.Companion.d, "BookingReservationScreen$lambda$3$2$2", 1.0f);
                                BookingCTAState bookingCTAState2 = bookingCTAState;
                                boolean zD = composer2.d(bookingCTAState2.ordinal());
                                String str2 = str;
                                boolean zK = zD | composer2.K(str2);
                                Object objX3 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zK || objX3 == composer$Companion$Empty$2) {
                                    objX3 = new k(bookingCTAState2, str2, 27);
                                    composer2.q(objX3);
                                }
                                Modifier modifierB2 = SemanticsModifierKt.b(modifierC2, false, (Function1) objX3);
                                ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer2).f48446a;
                                BookingCTAState bookingCTAState3 = BookingCTAState.LOADING;
                                boolean z3 = z2;
                                if (bookingCTAState2 == bookingCTAState3) {
                                    composer2.L(-431233508);
                                    composer2.F();
                                    strK = "";
                                } else {
                                    if (z3) {
                                        i5 = -1815024206;
                                        i6 = R.string.booking_confirm_cta;
                                    } else {
                                        i5 = -1815021227;
                                        i6 = R.string.booking_form_cta_label;
                                    }
                                    strK = o60.k(composer2, i5, i6, composer2);
                                }
                                if (BookingReservationScreenKt.WhenMappings.f54473a[bookingCTAState2.ordinal()] == 1) {
                                    composer2.L(-1815013457);
                                    int i8 = LVAppDesignKitTheme.a(composer2).y;
                                    composer2.F();
                                    numValueOf = Integer.valueOf(i8);
                                } else {
                                    composer2.L(-430785061);
                                    composer2.F();
                                }
                                boolean z4 = bookingCTAState2 != bookingCTAState3;
                                boolean zB = composer2.b(z3);
                                Function3 function4 = function3;
                                boolean zK2 = zB | composer2.K(function4);
                                BookingExperienceViewState bookingExperienceViewState2 = bookingExperienceViewState;
                                boolean zY = zK2 | composer2.y(bookingExperienceViewState2);
                                Function1 function2 = function1;
                                boolean zK3 = zY | composer2.K(function2);
                                Object objX4 = composer2.x();
                                if (zK3 || objX4 == composer$Companion$Empty$2) {
                                    objX4 = new nd(z3, function4, bookingExperienceViewState2, function2);
                                    composer2.q(objX4);
                                }
                                LVButtonKt.b(ImageMetadata.EDGE_MODE, 328, composer2, modifierB2, configurationButton, null, numValueOf, strK, (Function0) objX4, true, z4, false);
                                composer2.r();
                                return Unit.f71739a;
                            }
                        }, composer), composer, 196992, 18);
                        composer.F();
                    } else {
                        composer.L(1352100953);
                        composer.F();
                    }
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                ((Integer) obj2).getClass();
                ConsentSwitchKt.a((Modifier) obj7, (String) obj6, (String) obj5, (ConsentValueUiModel) obj4, this.d, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                ((Integer) obj2).getClass();
                DispatchComposableKt.d(this.d, (InAppDispatch) obj7, (InAppDispatch) obj5, (Function1) obj3, (Function1) obj6, (Function1) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 3:
                ((Integer) obj2).getClass();
                EditMyInfoScreenKt.b((MyInformationViewState) obj7, (SnackbarHostState) obj5, (ComposableLambdaImpl) obj6, (Function2) obj4, (Function0) obj3, this.d, (Composer) obj, RecomposeScopeImplKt.a(433));
                return Unit.f71739a;
            case 4:
                ((Integer) obj2).getClass();
                FilterCategorySliderKt.a((Modifier) obj7, this.d, (ScrollState) obj5, (List) obj6, (ProductFiltersCategoryUiModel) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 5:
                ((Integer) obj2).getClass();
                HistoryComposableKt.a((HistoryUiModel) obj7, this.d, (NestedScroll) obj5, (Function0) obj6, (Function2) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 6:
                ((Integer) obj2).getClass();
                ImmersiveArticleTextViewKt.a((Modifier) obj7, (TextArticleSectionUiModel) obj5, this.d, (ImmersiveArticleType) obj6, (NextSectionProductTabs) obj4, (Function1) obj3, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            case 7:
                Modifier modifierE = (Modifier) obj7;
                Integer num = (Integer) obj5;
                String str2 = (String) obj6;
                Function0 function0 = (Function0) obj4;
                ConfigurationTextField configurationTextField = (ConfigurationTextField) obj3;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                SpringSpec springSpec = LVTextFieldInternalKt.f48631a;
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "LVTextFieldInternal$lambda$13$3$0");
                }
                Modifier modifier = modifierE;
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    LVTextFieldInternal lVTextFieldInternal = LVTextFieldInternal.f48624a;
                    int iIntValue3 = num.intValue();
                    if (str2 == null) {
                        str2 = "";
                    }
                    lVTextFieldInternal.f(modifier, iIntValue3, str2, this.d, function0, configurationTextField, composer2, 1572864);
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 8:
                State state = (State) obj7;
                Density density = (Density) obj5;
                MainTopLevelDestination mainTopLevelDestination = (MainTopLevelDestination) obj4;
                LVNavBarScope lVNavBarScope = (LVNavBarScope) obj3;
                String str3 = (String) obj6;
                Composer composer3 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (composer3.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    Modifier modifierD = SizeKt.d(PaddingKt.m(new DTFunctionNameModifier("MainNavBar$lambda$5$1$0$0$5$0$3"), Call.Parameters.DEFAULT_CAMERA_ZOOM, ((Dp) state.getF10755b()).f11006b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 1.0f);
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.o, composer3, 48);
                    int iHashCode = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                    Modifier modifierC = ComposedModifierKt.c(composer3, modifierD);
                    ComposeUiNode.b0.getClass();
                    Function0 function2 = ComposeUiNode.Companion.f9641b;
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function2);
                    } else {
                        composer3.o();
                    }
                    Updater.c(composer3, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer3, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer3, modifierC, ComposeUiNode.Companion.d);
                    CompositionLocalKt.a(CompositionLocalsKt.f10031h.c(DensityKt.a(density.getF9496c(), 1.0f)), ComposableLambdaKt.b(1234079058, new rv(lVNavBarScope, str3, mainTopLevelDestination, 20), composer3), composer3, 56);
                    Modifier modifierP = SizeKt.p(PaddingKt.m(new DTFunctionNameModifier("MainNavBar$lambda$5$1$0$0$5$0$3"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.d(composer3).m, LVAppDesignKitTheme.d(composer3).q);
                    boolean zD = composer3.d(mainTopLevelDestination.ordinal());
                    Object objX3 = composer3.x();
                    if (zD || objX3 == composer$Companion$Empty$1) {
                        objX3 = new x60(mainTopLevelDestination, 5);
                        composer3.q(objX3);
                    }
                    MainNavBarKt.c(modifierP, mainTopLevelDestination, this.d, (Function0) objX3, composer3, 0);
                    composer3.r();
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            case 9:
                LVModalBottomSheetState lVModalBottomSheetState = (LVModalBottomSheetState) obj7;
                Function1 function4 = (Function1) obj3;
                NativeCartViewModel nativeCartViewModel = (NativeCartViewModel) obj5;
                MutableState mutableState = (MutableState) obj6;
                MutableState mutableState2 = (MutableState) obj4;
                Composer composer4 = (Composer) obj;
                int iIntValue5 = ((Integer) obj2).intValue();
                if (composer4.p(iIntValue5 & 1, (iIntValue5 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    ContactUsUiModel contactUsUiModel = ((NativeCartViewState) mutableState.getF10755b()).n;
                    boolean zY = composer4.y(nativeCartViewModel);
                    Object objX4 = composer4.x();
                    if (zY || objX4 == composer$Companion$Empty$1) {
                        objX4 = new te0(nativeCartViewModel, 1);
                        composer4.q(objX4);
                    }
                    NativeCartComposableKt.a(contactUsUiModel, this.d, lVModalBottomSheetState, function4, (Function0) objX4, (Function0) mutableState2.getF10755b(), composer4, LVModalBottomSheetState.f48797e << 6);
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            case 10:
                ((Integer) obj2).getClass();
                OrderReturnOrExchangeSelectionScreenKt.a((Function0) obj7, (Function0) obj5, (Function0) obj6, this.d, (VariationsResponseUiModel) obj4, (ExchangeSetupResponseUiModel) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 11:
                ((Integer) obj2).getClass();
                PersonalSelectionsCurationAdvisorLookListKt.d((List) obj7, this.d, (Function1) obj3, (Function1) obj5, (Function1) obj6, (Function2) obj4, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 12:
                ((Integer) obj2).getClass();
                RegularGridItemKt.a((Modifier) obj7, (ThemeItemUiModel) obj5, this.d, (Function2) obj6, (Function2) obj4, (Function2) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                SpotlightSkuItemKt.a((Modifier) obj7, (String) obj6, (String) obj5, (String) obj4, this.d, (Function0) obj3, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ hg(Modifier modifier, Object obj, boolean z, Object obj2, Object obj3, Function function, int i2, int i3) {
        this.f69695b = i3;
        this.f69698f = modifier;
        this.g = obj;
        this.d = z;
        this.f69696c = obj2;
        this.f69699h = obj3;
        this.f69697e = function;
    }

    public /* synthetic */ hg(Modifier modifier, String str, String str2, Object obj, boolean z, Function function, int i2, int i3) {
        this.f69695b = i3;
        this.f69698f = modifier;
        this.f69696c = str;
        this.g = str2;
        this.f69699h = obj;
        this.d = z;
        this.f69697e = function;
    }

    public /* synthetic */ hg(MyInformationViewState myInformationViewState, SnackbarHostState snackbarHostState, ComposableLambdaImpl composableLambdaImpl, Function2 function2, Function0 function0, boolean z, int i2) {
        this.f69695b = 3;
        this.f69698f = myInformationViewState;
        this.g = snackbarHostState;
        this.f69696c = composableLambdaImpl;
        this.f69699h = function2;
        this.f69697e = function0;
        this.d = z;
    }

    public /* synthetic */ hg(Object obj, Object obj2, String str, boolean z, Function function, Object obj3, int i2) {
        this.f69695b = i2;
        this.f69698f = obj;
        this.g = obj2;
        this.f69696c = str;
        this.d = z;
        this.f69699h = function;
        this.f69697e = obj3;
    }

    public /* synthetic */ hg(Object obj, boolean z, Object obj2, Object obj3, Object obj4, Function1 function1, int i2, int i3) {
        this.f69695b = i3;
        this.f69698f = obj;
        this.d = z;
        this.g = obj2;
        this.f69696c = obj3;
        this.f69699h = obj4;
        this.f69697e = function1;
    }

    public /* synthetic */ hg(List list, boolean z, Function1 function1, Function1 function2, Function1 function3, Function2 function4, int i2) {
        this.f69695b = 11;
        this.f69698f = list;
        this.d = z;
        this.f69697e = function1;
        this.g = function2;
        this.f69696c = function3;
        this.f69699h = function4;
    }

    public /* synthetic */ hg(Function0 function0, Function0 function1, Function0 function2, boolean z, VariationsResponseUiModel variationsResponseUiModel, ExchangeSetupResponseUiModel exchangeSetupResponseUiModel, int i2) {
        this.f69695b = 10;
        this.f69698f = function0;
        this.g = function1;
        this.f69696c = function2;
        this.d = z;
        this.f69699h = variationsResponseUiModel;
        this.f69697e = exchangeSetupResponseUiModel;
    }

    public /* synthetic */ hg(boolean z, LVModalBottomSheetState lVModalBottomSheetState, Function1 function1, NativeCartViewModel nativeCartViewModel, MutableState mutableState, MutableState mutableState2) {
        this.f69695b = 9;
        this.d = z;
        this.f69698f = lVModalBottomSheetState;
        this.f69697e = function1;
        this.g = nativeCartViewModel;
        this.f69696c = mutableState;
        this.f69699h = mutableState2;
    }

    public /* synthetic */ hg(boolean z, InAppDispatch inAppDispatch, InAppDispatch inAppDispatch2, Function1 function1, Function1 function2, Function1 function3, int i2) {
        this.f69695b = 2;
        this.d = z;
        this.f69698f = inAppDispatch;
        this.g = inAppDispatch2;
        this.f69697e = function1;
        this.f69696c = function2;
        this.f69699h = function3;
    }
}
