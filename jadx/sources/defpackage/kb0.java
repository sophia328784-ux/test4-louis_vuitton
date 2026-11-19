package defpackage;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.lifecycle.compose.FlowExtKt;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.AnimateLottieCompositionAsStateKt;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.airbnb.lottie.compose.LottieCompositionSpec;
import com.airbnb.lottie.compose.RememberLottieCompositionKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.ThemeKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.link.builder.PassAppLinkBuilder;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.redirectlink.DeeplinkUiState;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.screen.authentication.welcome.WelcomeViewModel;
import com.vuitton.android.presentation.screen.filter.quickaccess.QuickAccessFiltersViewModel;
import com.vuitton.android.presentation.screen.main.MainActivity;
import com.vuitton.android.presentation.screen.main.components.MainActivityBottomSheetType;
import com.vuitton.android.presentation.screen.main.components.MainActivityComposableKt;
import com.vuitton.android.presentation.screen.main.models.MainActivityUiEvent;
import com.vuitton.android.presentation.screen.main.models.MainActivityViewState;
import com.vuitton.android.presentation.screen.main.models.MainTopLevelDestination;
import com.vuitton.android.presentation.screen.main.navigation.CartRoute;
import com.vuitton.android.presentation.screen.main.navigation.CatalogRoute;
import defpackage.am;
import defpackage.ba0;
import defpackage.d3;
import defpackage.lb0;
import defpackage.mb0;
import defpackage.pq0;
import defpackage.t30;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.flow.SharedFlow;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class kb0 implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity f71611c;

    public /* synthetic */ kb0(MainActivity mainActivity, int i2) {
        this.f71610b = i2;
        this.f71611c = mainActivity;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f71610b;
        final MainActivity mainActivity = this.f71611c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                MainActivity.Companion companion = MainActivity.L;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    ThemeKt.a(null, ComposableLambdaKt.b(-1313528763, new Function2() { // from class: com.vuitton.android.presentation.screen.main.a
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            Object next;
                            FillElement fillElement;
                            String str;
                            LottieAnimatable lottieAnimatable;
                            LVModalBottomSheetState lVModalBottomSheetState;
                            String str2;
                            MainNavigationState mainNavigationState;
                            FillElement fillElement2;
                            Composer$Companion$Empty$1 composer$Companion$Empty$1;
                            Composer$Companion$Empty$1 composer$Companion$Empty$2;
                            MutableState badgeCount;
                            Composer composer2 = (Composer) obj3;
                            int iIntValue2 = ((Integer) obj4).intValue();
                            MainActivity.Companion companion2 = MainActivity.L;
                            int i3 = 0;
                            if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], composer2);
                                LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, composer2, null);
                                MainActivity mainActivity2 = mainActivity;
                                MutableState mutableStateC = FlowExtKt.c(mainActivity2.J().getI(), null, composer2, 0, 7);
                                MutableState mutableStateC2 = FlowExtKt.c(mainActivity2.I().getF52023c(), null, composer2, 0, 7);
                                Object objX = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                                if (objX == composer$Companion$Empty$3) {
                                    objX = SnapshotStateKt.g(MainActivityBottomSheetType.None.f59104a);
                                    composer2.q(objX);
                                }
                                MutableState mutableState = (MutableState) objX;
                                Object objX2 = composer2.x();
                                if (objX2 == composer$Companion$Empty$3) {
                                    objX2 = SnapshotStateKt.g(null);
                                    composer2.q(objX2);
                                }
                                MutableState mutableState2 = (MutableState) objX2;
                                boolean zB = composer2.b(((MainActivityViewState) mutableStateC.getF10755b()).f59143f.f59122b) | composer2.K(navHostControllerA);
                                Object objX3 = composer2.x();
                                if (zB || objX3 == composer$Companion$Empty$3) {
                                    objX3 = new MainNavigationState(navHostControllerA, ((MainActivityViewState) mutableStateC.getF10755b()).f59143f.f59122b, new lb0(mainActivity2, i3));
                                    composer2.q(objX3);
                                }
                                MainNavigationState mainNavigationState2 = (MainNavigationState) objX3;
                                int i4 = ((MainActivityViewState) mutableStateC.getF10755b()).g;
                                Iterator it = mainNavigationState2.d.iterator();
                                do {
                                    if (!it.hasNext()) {
                                        next = null;
                                        break;
                                    }
                                    next = it.next();
                                } while (!Intrinsics.c(((MainTopLevelDestination) next).getRoute(), Reflection.f71922a.b(CartRoute.class)));
                                MainTopLevelDestination mainTopLevelDestination = (MainTopLevelDestination) next;
                                if (mainTopLevelDestination != null && (badgeCount = mainTopLevelDestination.getBadgeCount()) != null) {
                                    badgeCount.setValue(Integer.valueOf(i4));
                                }
                                Unit unit = Unit.f71739a;
                                boolean zY = composer2.y(mainActivity2) | composer2.y(lVModalBottomSheetStateF);
                                Object objX4 = composer2.x();
                                if (zY || objX4 == composer$Companion$Empty$3) {
                                    objX4 = new MainActivity$onCreate$1$1$1$1(mainActivity2, lVModalBottomSheetStateF, mutableState, null);
                                    composer2.q(objX4);
                                }
                                EffectsKt.e(composer2, unit, (Function2) objX4);
                                boolean zY2 = composer2.y(mainActivity2);
                                Object objX5 = composer2.x();
                                if (zY2 || objX5 == composer$Companion$Empty$3) {
                                    objX5 = new MainActivity$onCreate$1$1$2$1(mainActivity2, null);
                                    composer2.q(objX5);
                                }
                                EffectsKt.e(composer2, unit, (Function2) objX5);
                                boolean zY3 = composer2.y(mainActivity2);
                                Object objX6 = composer2.x();
                                if (zY3 || objX6 == composer$Companion$Empty$3) {
                                    objX6 = new MainActivity$onCreate$1$1$3$1(mainActivity2, null);
                                    composer2.q(objX6);
                                }
                                EffectsKt.e(composer2, unit, (Function2) objX6);
                                boolean zY4 = composer2.y(mainActivity2);
                                Object objX7 = composer2.x();
                                if (zY4 || objX7 == composer$Companion$Empty$3) {
                                    objX7 = new MainActivity$onCreate$1$1$4$1(mainActivity2, null);
                                    composer2.q(objX7);
                                }
                                EffectsKt.e(composer2, unit, (Function2) objX7);
                                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("onCreate$lambda$0$0");
                                FillElement fillElement3 = SizeKt.f5052c;
                                Modifier modifierO = dTFunctionNameModifier.o(fillElement3);
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                int iHashCode = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierO);
                                ComposeUiNode.b0.getClass();
                                Function0 function0 = ComposeUiNode.Companion.f9641b;
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
                                Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                                MainActivityViewModel mainActivityViewModelJ = mainActivity2.J();
                                WelcomeViewModel welcomeViewModel = (WelcomeViewModel) mainActivity2.s.getF71699b();
                                QuickAccessFiltersViewModel quickAccessFiltersViewModel = (QuickAccessFiltersViewModel) mainActivity2.r.getF71699b();
                                AuthenticationViewModel authenticationViewModel = (AuthenticationViewModel) mainActivity2.q.getF71699b();
                                SharedFlow h2 = mainActivity2.J().getH();
                                MainActivityRouter mainActivityRouter = mainActivity2.E;
                                if (mainActivityRouter == null) {
                                    Intrinsics.h("mainActivityRouter");
                                    throw null;
                                }
                                ContributionLinkNavigator contributionLinkNavigator = mainActivity2.D;
                                if (contributionLinkNavigator == null) {
                                    Intrinsics.h("contributionLinkNavigator");
                                    throw null;
                                }
                                PassAppLinkBuilder passAppLinkBuilder = mainActivity2.y;
                                if (passAppLinkBuilder == null) {
                                    Intrinsics.h("passAppLinkBuilder");
                                    throw null;
                                }
                                MainActivityBottomSheetType mainActivityBottomSheetType = (MainActivityBottomSheetType) mutableState.getF10755b();
                                boolean zY5 = composer2.y(mainActivity2);
                                Object objX8 = composer2.x();
                                if (zY5 || objX8 == composer$Companion$Empty$3) {
                                    objX8 = new mb0(mainActivity2, 0);
                                    composer2.q(objX8);
                                }
                                Function0 function1 = (Function0) objX8;
                                boolean zY6 = composer2.y(mainActivity2);
                                Object objX9 = composer2.x();
                                if (zY6 || objX9 == composer$Companion$Empty$3) {
                                    objX9 = new mb0(mainActivity2, 1);
                                    composer2.q(objX9);
                                }
                                Function0 function2 = (Function0) objX9;
                                boolean zY7 = composer2.y(mainActivity2);
                                Object objX10 = composer2.x();
                                if (zY7 || objX10 == composer$Companion$Empty$3) {
                                    objX10 = new t30(mainActivity2, mutableState2, 12);
                                    composer2.q(objX10);
                                }
                                Function0 function3 = (Function0) objX10;
                                Object objX11 = composer2.x();
                                if (objX11 == composer$Companion$Empty$3) {
                                    objX11 = new ba0(2);
                                    composer2.q(objX11);
                                }
                                Function1 function4 = (Function1) objX11;
                                boolean zY8 = composer2.y(mainActivity2);
                                Object objX12 = composer2.x();
                                if (zY8 || objX12 == composer$Companion$Empty$3) {
                                    objX12 = new mb0(mainActivity2, 2);
                                    composer2.q(objX12);
                                }
                                Function0 function5 = (Function0) objX12;
                                boolean zY9 = composer2.y(mainActivity2);
                                Object objX13 = composer2.x();
                                if (zY9 || objX13 == composer$Companion$Empty$3) {
                                    objX13 = new mb0(mainActivity2, 3);
                                    composer2.q(objX13);
                                }
                                Function0 function6 = (Function0) objX13;
                                boolean zY10 = composer2.y(mainActivity2);
                                Object objX14 = composer2.x();
                                int i5 = 4;
                                if (zY10 || objX14 == composer$Companion$Empty$3) {
                                    objX14 = new mb0(mainActivity2, i5);
                                    composer2.q(objX14);
                                }
                                Function0 function7 = (Function0) objX14;
                                boolean zY11 = composer2.y(mainActivity2);
                                Object objX15 = composer2.x();
                                if (zY11 || objX15 == composer$Companion$Empty$3) {
                                    objX15 = new d3(mainActivity2, 28);
                                    composer2.q(objX15);
                                }
                                MainActivityComposableKt.a(mainActivityViewModelJ, welcomeViewModel, quickAccessFiltersViewModel, authenticationViewModel, h2, mainNavigationState2, lVModalBottomSheetStateF, mainActivityRouter, navHostControllerA, contributionLinkNavigator, passAppLinkBuilder, mainActivityBottomSheetType, function1, function2, function3, function4, function5, function6, function7, (Function3) objX15, composer2, LVModalBottomSheetState.f48797e << 18);
                                Composer composer3 = composer2;
                                LottieCompositionResultImpl lottieCompositionResultImplC = RememberLottieCompositionKt.c(new LottieCompositionSpec.Asset("splashscreen_secondary.json"), composer3, 6);
                                LottieAnimatable lottieAnimatableA = AnimateLottieCompositionAsStateKt.a(lottieCompositionResultImplC.getF10755b(), false, null, 0, composer3, 1022);
                                if (lottieAnimatableA.isPlaying() || lottieAnimatableA.c() != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    fillElement = fillElement3;
                                    str = "onCreate$lambda$0$0";
                                    composer3.L(318672867);
                                    composer3.F();
                                } else {
                                    composer3.L(318284902);
                                    str = "onCreate$lambda$0$0";
                                    fillElement = fillElement3;
                                    Modifier modifierO2 = new DTFunctionNameModifier(str).o(fillElement);
                                    Painter painterA = PainterResources_androidKt.a(R.drawable.splashscreen_fade_out_first_frame, composer3, 0);
                                    ContentScale.f9447a.getClass();
                                    ImageKt.a(painterA, null, modifierO2, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, composer3, 25016, 104);
                                    composer3 = composer3;
                                    composer3.F();
                                }
                                if (((MainActivityViewState) mutableStateC.getF10755b()).f59139a) {
                                    composer3.L(318730682);
                                    LottieComposition f10755b = lottieCompositionResultImplC.getF10755b();
                                    boolean zK = composer3.K(lottieAnimatableA);
                                    Object objX16 = composer3.x();
                                    if (zK) {
                                        composer$Companion$Empty$2 = composer$Companion$Empty$3;
                                    } else {
                                        composer$Companion$Empty$2 = composer$Companion$Empty$3;
                                        if (objX16 == composer$Companion$Empty$2) {
                                        }
                                        Function0 function8 = (Function0) objX16;
                                        Modifier modifierI = pq0.i(str, fillElement);
                                        ContentScale.f9447a.getClass();
                                        Composer composer4 = composer3;
                                        lottieAnimatable = lottieAnimatableA;
                                        mainNavigationState = mainNavigationState2;
                                        lVModalBottomSheetState = lVModalBottomSheetStateF;
                                        fillElement2 = fillElement;
                                        str2 = str;
                                        composer$Companion$Empty$1 = composer$Companion$Empty$2;
                                        LottieAnimationKt.b(f10755b, function8, modifierI, false, false, false, false, null, false, null, null, ContentScale.Companion.f9449b, false, false, null, null, false, composer4, KyberEngine.KyberPolyBytes, 48, 129016);
                                        composer3 = composer4;
                                        composer3.F();
                                    }
                                    objX16 = new am(lottieAnimatableA, 4);
                                    composer3.q(objX16);
                                    Function0 function9 = (Function0) objX16;
                                    Modifier modifierI2 = pq0.i(str, fillElement);
                                    ContentScale.f9447a.getClass();
                                    Composer composer5 = composer3;
                                    lottieAnimatable = lottieAnimatableA;
                                    mainNavigationState = mainNavigationState2;
                                    lVModalBottomSheetState = lVModalBottomSheetStateF;
                                    fillElement2 = fillElement;
                                    str2 = str;
                                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                                    LottieAnimationKt.b(f10755b, function9, modifierI2, false, false, false, false, null, false, null, null, ContentScale.Companion.f9449b, false, false, null, null, false, composer5, KyberEngine.KyberPolyBytes, 48, 129016);
                                    composer3 = composer5;
                                    composer3.F();
                                } else {
                                    lottieAnimatable = lottieAnimatableA;
                                    lVModalBottomSheetState = lVModalBottomSheetStateF;
                                    str2 = str;
                                    mainNavigationState = mainNavigationState2;
                                    fillElement2 = fillElement;
                                    composer$Companion$Empty$1 = composer$Companion$Empty$3;
                                    composer3.L(319046851);
                                    composer3.F();
                                }
                                if (!lottieAnimatable.isPlaying() && lottieAnimatable.k() && lottieAnimatable.c() == 1.0f) {
                                    mainActivity2.J().S2();
                                }
                                if (((DeeplinkUiState) mutableStateC2.getF10755b()).f51954a) {
                                    composer3.L(319269741);
                                    ProgressViewKt.a(new DTFunctionNameModifier(str2).o(fillElement2), 0L, false, composer3, 6, 6);
                                    composer3.F();
                                } else {
                                    composer3.L(319413891);
                                    composer3.F();
                                }
                                composer3.r();
                                MainNavigationState mainNavigationState3 = mainNavigationState;
                                LVModalBottomSheetState lVModalBottomSheetState2 = lVModalBottomSheetState;
                                boolean zY12 = composer3.y(mainActivity2) | composer3.K(mainNavigationState3) | composer3.y(lVModalBottomSheetState2);
                                Object objX17 = composer3.x();
                                if (zY12 || objX17 == composer$Companion$Empty$1) {
                                    MainActivity$onCreate$1$1$6$1 mainActivity$onCreate$1$1$6$1 = new MainActivity$onCreate$1$1$6$1(mutableState2, mutableState, lVModalBottomSheetState2, mainActivity2, mainNavigationState3, null);
                                    composer3.q(mainActivity$onCreate$1$1$6$1);
                                    objX17 = mainActivity$onCreate$1$1$6$1;
                                }
                                EffectsKt.e(composer3, unit, (Function2) objX17);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer), composer, 48);
                } else {
                    composer.D();
                }
                break;
            case 1:
                MainTopLevelDestination mainTopLevelDestination = (MainTopLevelDestination) obj;
                MainActivity.Companion companion2 = MainActivity.L;
                mainTopLevelDestination.getClass();
                mainActivity.J().F6(new MainActivityUiEvent.NavigateToDeepLink(mainTopLevelDestination, (Pair) obj2));
                break;
            case 2:
                MainTopLevelDestination mainTopLevelDestination2 = (MainTopLevelDestination) obj;
                String str = (String) obj2;
                MainActivity.Companion companion3 = MainActivity.L;
                mainTopLevelDestination2.getClass();
                str.getClass();
                mainActivity.J().F6(new MainActivityUiEvent.NavigateToAppLink(mainTopLevelDestination2, str));
                break;
            case 3:
                MainActivity.Companion companion4 = MainActivity.L;
                mainActivity.J().F6(new MainActivityUiEvent.NavigateToTopLevelDestination((MainTopLevelDestination) obj, (CatalogRoute) obj2));
                break;
            case 4:
                MainActivity.Companion companion5 = MainActivity.L;
                mainActivity.J().F6(new MainActivityUiEvent.NavigateToDeepLink((MainTopLevelDestination) obj, (Pair) obj2));
                break;
            default:
                MainActivity.Companion companion6 = MainActivity.L;
                mainActivity.J().F6(new MainActivityUiEvent.NavigateToAppLink((MainTopLevelDestination) obj, (String) obj2));
                break;
        }
        return Unit.f71739a;
    }
}
