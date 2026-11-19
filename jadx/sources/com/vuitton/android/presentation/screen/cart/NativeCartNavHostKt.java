package com.vuitton.android.presentation.screen.cart;

import android.content.Context;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavGraphBuilderKt;
import androidx.navigation.compose.NavHostControllerKt;
import androidx.navigation.compose.NavHostKt;
import com.vuitton.android.presentation.screen.cart.NativeCartRoute;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.c;
import com.vuitton.android.presentation.screen.cart.components.NativeCartComposableKt;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModel;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftMessageViewModelImpl;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.GiftOptionComposableKt;
import com.vuitton.android.presentation.screen.cart.models.CartContributionUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen;
import com.vuitton.android.presentation.screen.cart.models.CartTrackingUiModel;
import com.vuitton.android.presentation.screen.cart.models.ContributionGiftingUiModel;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModel;
import defpackage.be0;
import defpackage.bn;
import defpackage.ef;
import defpackage.gf0;
import defpackage.if0;
import defpackage.k4;
import defpackage.k60;
import defpackage.md;
import defpackage.t30;
import defpackage.tb0;
import defpackage.yj;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;", "cartViewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeCartNavHostKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f54864a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f54864a = iArr;
        }
    }

    public static final void a(final NativeCartViewModel nativeCartViewModel, final ReinsuranceViewModel reinsuranceViewModel, final CartPreviousScreen cartPreviousScreen, final Function0 function0, final Function2 function2, final Function1 function1, final Function0 function3, final Function1 function4, final Function1 function5, Composer composer, int i2) {
        GapComposer gapComposer;
        boolean z;
        final NavHostController navHostController;
        nativeCartViewModel.getClass();
        reinsuranceViewModel.getClass();
        cartPreviousScreen.getClass();
        function0.getClass();
        function2.getClass();
        function1.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(183298437);
        int i3 = (gapComposerH.K(nativeCartViewModel) ? 4 : 2) | i2 | (gapComposerH.K(reinsuranceViewModel) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.d(cartPreviousScreen.ordinal()) ? 256 : 128;
        }
        int i4 = i3 | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288) | (gapComposerH.y(function4) ? 8388608 : 4194304) | (gapComposerH.y(function5) ? 67108864 : 33554432);
        if (gapComposerH.p(i4 & 1, (i4 & 38347923) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateL = SnapshotStateKt.l(gapComposerH.k(LocalLifecycleOwnerKt.f13562a), gapComposerH);
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], gapComposerH);
            boolean z2 = cartPreviousScreen == CartPreviousScreen.MAIN;
            Unit unit = Unit.f71739a;
            int i5 = i4 & 14;
            boolean zY = (i5 == 4) | gapComposerH.y(navHostControllerA);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new NativeCartNavHostKt$NativeCartNavHost$1$1(nativeCartViewModel, navHostControllerA, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new bn(context, nativeCartViewModel, 5);
                gapComposerH.q(objX2);
            }
            LifecycleEventObserver lifecycleEventObserver = (LifecycleEventObserver) objX2;
            Object f10755b = mutableStateL.getF10755b();
            boolean zK = gapComposerH.K(mutableStateL) | gapComposerH.y(lifecycleEventObserver);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                z = false;
                objX3 = new if0(mutableStateL, lifecycleEventObserver, 0);
                gapComposerH.q(objX3);
            } else {
                z = false;
            }
            EffectsKt.c(f10755b, (Function1) objX3, gapComposerH);
            NativeCartRoute.Cart cart = NativeCartRoute.Cart.INSTANCE;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new be0(7);
                gapComposerH.q(objX4);
            }
            Function1 function6 = (Function1) objX4;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new be0(8);
                gapComposerH.q(objX5);
            }
            Function1 function7 = (Function1) objX5;
            Object objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = new be0(9);
                gapComposerH.q(objX6);
            }
            Function1 function8 = (Function1) objX6;
            Object objX7 = gapComposerH.x();
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = new be0(10);
                gapComposerH.q(objX7);
            }
            Function1 function9 = (Function1) objX7;
            boolean zB = gapComposerH.b(z2) | ((57344 & i4) == 16384 ? true : z) | (i5 != 4 ? z : true) | ((i4 & 112) != 32 ? z : true) | ((i4 & 896) == 256 ? true : z) | gapComposerH.y(navHostControllerA) | gapComposerH.y(context) | ((i4 & 7168) == 2048 ? true : z) | ((458752 & i4) == 131072 ? true : z) | ((3670016 & i4) == 1048576 ? true : z) | ((29360128 & i4) == 8388608 ? true : z) | ((i4 & 234881024) != 67108864 ? z : true);
            Object objX8 = gapComposerH.x();
            if (zB || objX8 == composer$Companion$Empty$1) {
                final boolean z3 = z2;
                navHostController = navHostControllerA;
                Function1 function10 = new Function1() { // from class: jf0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
                        navGraphBuilder.getClass();
                        final boolean z4 = z3;
                        final Function2 function11 = function2;
                        final NativeCartViewModel nativeCartViewModel2 = nativeCartViewModel;
                        final ReinsuranceViewModel reinsuranceViewModel2 = reinsuranceViewModel;
                        final CartPreviousScreen cartPreviousScreen2 = cartPreviousScreen;
                        final NavHostController navHostController2 = navHostController;
                        final Context context2 = context;
                        final Function0 function12 = function0;
                        final Function1 function13 = function1;
                        final Function0 function14 = function3;
                        final Function1 function15 = function4;
                        ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(-561153530, true, new Function4() { // from class: com.vuitton.android.presentation.screen.cart.d
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj2, Object obj3, Object obj4, Object obj5) {
                                Composer composer2 = (Composer) obj4;
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScope) obj2).getClass();
                                ((NavBackStackEntry) obj3).getClass();
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Unit unit2 = Unit.f71739a;
                                boolean z5 = z4;
                                boolean zB2 = composer2.b(z5);
                                Function2 function16 = function11;
                                boolean zK2 = zB2 | composer2.K(function16);
                                Object objX9 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zK2 || objX9 == composer$Companion$Empty$2) {
                                    objX9 = new NativeCartNavHostKt$NativeCartNavHost$7$1$1$1$1(z5, function16, null);
                                    composer2.q(objX9);
                                }
                                EffectsKt.e(composer2, unit2, (Function2) objX9);
                                NavHostController navHostController3 = navHostController2;
                                boolean zY2 = composer2.y(navHostController3);
                                Context context3 = context2;
                                boolean zY3 = zY2 | composer2.y(context3);
                                Object objX10 = composer2.x();
                                final int i6 = 0;
                                if (zY3 || objX10 == composer$Companion$Empty$2) {
                                    objX10 = new gf0(navHostController3, context3, 0);
                                    composer2.q(objX10);
                                }
                                Function0 function17 = (Function0) objX10;
                                final NativeCartViewModel nativeCartViewModel3 = nativeCartViewModel2;
                                boolean zY4 = composer2.y(nativeCartViewModel3);
                                final Function0 function18 = function12;
                                boolean zK3 = zY4 | composer2.K(function18);
                                Object objX11 = composer2.x();
                                if (zK3 || objX11 == composer$Companion$Empty$2) {
                                    objX11 = new Function0() { // from class: hf0
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            switch (i6) {
                                                case 0:
                                                    nativeCartViewModel3.W9(CartTrackingUiModel.CartEmptyStartShopping.f55166b);
                                                    function18.mo47invoke();
                                                    break;
                                                default:
                                                    nativeCartViewModel3.c();
                                                    function18.mo47invoke();
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX11);
                                }
                                Function0 function19 = (Function0) objX11;
                                boolean zY5 = composer2.y(nativeCartViewModel3) | composer2.y(navHostController3);
                                Object objX12 = composer2.x();
                                if (zY5 || objX12 == composer$Companion$Empty$2) {
                                    objX12 = new k60(nativeCartViewModel3, navHostController3, 19);
                                    composer2.q(objX12);
                                }
                                Function1 function20 = (Function1) objX12;
                                boolean zY6 = composer2.y(navHostController3);
                                Object objX13 = composer2.x();
                                if (zY6 || objX13 == composer$Companion$Empty$2) {
                                    objX13 = new yj(navHostController3, 5);
                                    composer2.q(objX13);
                                }
                                Function0 function21 = (Function0) objX13;
                                boolean zY7 = composer2.y(nativeCartViewModel3) | composer2.y(navHostController3);
                                Object objX14 = composer2.x();
                                if (zY7 || objX14 == composer$Companion$Empty$2) {
                                    objX14 = new t30(nativeCartViewModel3, navHostController3, 18);
                                    composer2.q(objX14);
                                }
                                Function0 function22 = (Function0) objX14;
                                boolean zY8 = composer2.y(context3);
                                Object objX15 = composer2.x();
                                if (zY8 || objX15 == composer$Companion$Empty$2) {
                                    objX15 = new ef(context3, 9);
                                    composer2.q(objX15);
                                }
                                Function1 function23 = (Function1) objX15;
                                boolean zY9 = composer2.y(nativeCartViewModel3);
                                final Function0 function24 = function14;
                                boolean zK4 = zY9 | composer2.K(function24);
                                Object objX16 = composer2.x();
                                if (zK4 || objX16 == composer$Companion$Empty$2) {
                                    final int i7 = 1;
                                    objX16 = new Function0() { // from class: hf0
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            switch (i7) {
                                                case 0:
                                                    nativeCartViewModel3.W9(CartTrackingUiModel.CartEmptyStartShopping.f55166b);
                                                    function24.mo47invoke();
                                                    break;
                                                default:
                                                    nativeCartViewModel3.c();
                                                    function24.mo47invoke();
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer2.q(objX16);
                                }
                                Function0 function25 = (Function0) objX16;
                                boolean zY10 = composer2.y(nativeCartViewModel3);
                                Function1 function26 = function15;
                                boolean zK5 = zY10 | composer2.K(function26);
                                Object objX17 = composer2.x();
                                if (zK5 || objX17 == composer$Companion$Empty$2) {
                                    objX17 = new k60(nativeCartViewModel3, function26, 20);
                                    composer2.q(objX17);
                                }
                                NativeCartComposableKt.b(nativeCartViewModel3, reinsuranceViewModel2, cartPreviousScreen2, function17, function19, function20, function21, function22, function23, function13, function25, (Function1) objX17, composer2, 0);
                                return unit2;
                            }
                        });
                        Map mapC = MapsKt.c();
                        EmptyList emptyList = EmptyList.f71768b;
                        ReflectionFactory reflectionFactory = Reflection.f71922a;
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(NativeCartRoute.Cart.class), mapC, emptyList, null, null, null, null, composableLambdaImpl);
                        ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(714515133, true, new c(z4, function11, nativeCartViewModel2, navHostController2));
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(NativeCartRoute.PerfumeSamples.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl2);
                        final Function1 function16 = function5;
                        ComposableLambdaImpl composableLambdaImpl3 = new ComposableLambdaImpl(1940180926, true, new Function4() { // from class: com.vuitton.android.presentation.screen.cart.b
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj2, Object obj3, Object obj4, Object obj5) {
                                ContributionGiftingUiModel contributionGiftingUiModel;
                                ContributionGiftingUiModel contributionGiftingUiModel2;
                                Composer composer2 = (Composer) obj4;
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScope) obj2).getClass();
                                ((NavBackStackEntry) obj3).getClass();
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Unit unit2 = Unit.f71739a;
                                boolean z5 = z4;
                                boolean zB2 = composer2.b(z5);
                                Function2 function17 = function11;
                                boolean zK2 = zB2 | composer2.K(function17);
                                Object objX9 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                String str = null;
                                if (zK2 || objX9 == composer$Companion$Empty$2) {
                                    objX9 = new NativeCartNavHostKt$NativeCartNavHost$7$1$3$1$1(z5, function17, null);
                                    composer2.q(objX9);
                                }
                                EffectsKt.e(composer2, unit2, (Function2) objX9);
                                NativeCartViewModel nativeCartViewModel3 = nativeCartViewModel2;
                                MutableState mutableStateB = SnapshotStateKt.b(nativeCartViewModel3.getZ(), composer2);
                                ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer2);
                                if (viewModelStoreOwnerA == null) {
                                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                                    return null;
                                }
                                GiftMessageViewModel giftMessageViewModel = (GiftMessageViewModel) ViewModelKt.a(Reflection.f71922a.b(GiftMessageViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer2), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer2);
                                boolean z6 = ((NativeCartViewState) mutableStateB.getF10755b()).d;
                                CartContributionUiModel cartContributionUiModel = ((NativeCartViewState) mutableStateB.getF10755b()).o;
                                String str2 = (cartContributionUiModel == null || (contributionGiftingUiModel2 = cartContributionUiModel.f55136a) == null) ? null : contributionGiftingUiModel2.f55189b;
                                CartContributionUiModel cartContributionUiModel2 = ((NativeCartViewState) mutableStateB.getF10755b()).o;
                                if (cartContributionUiModel2 != null && (contributionGiftingUiModel = cartContributionUiModel2.f55136a) != null) {
                                    str = contributionGiftingUiModel.f55190c;
                                }
                                String str3 = str;
                                NavHostController navHostController3 = navHostController2;
                                boolean zY2 = composer2.y(navHostController3);
                                Object objX10 = composer2.x();
                                if (zY2 || objX10 == composer$Companion$Empty$2) {
                                    NativeCartNavHostKt$NativeCartNavHost$7$1$3$2$1 nativeCartNavHostKt$NativeCartNavHost$7$1$3$2$1 = new NativeCartNavHostKt$NativeCartNavHost$7$1$3$2$1(0, navHostController3, NavHostController.class, "popBackStack", "popBackStack()Z", 8);
                                    composer2.q(nativeCartNavHostKt$NativeCartNavHost$7$1$3$2$1);
                                    objX10 = nativeCartNavHostKt$NativeCartNavHost$7$1$3$2$1;
                                }
                                Function0 function18 = (Function0) objX10;
                                boolean zY3 = composer2.y(nativeCartViewModel3);
                                Object objX11 = composer2.x();
                                if (zY3 || objX11 == composer$Companion$Empty$2) {
                                    objX11 = new tb0(nativeCartViewModel3, 10);
                                    composer2.q(objX11);
                                }
                                GiftOptionComposableKt.a(giftMessageViewModel, z5, z6, str2, str3, function18, (Function1) objX11, function16, composer2, 0);
                                return unit2;
                            }
                        });
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(NativeCartRoute.GiftMessage.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl3);
                        ComposableLambdaImpl composableLambdaImpl4 = new ComposableLambdaImpl(-1129120577, true, new c(z4, function11, navHostController2, reinsuranceViewModel2));
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(NativeCartRoute.Packaging.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl4);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(function10);
                objX8 = function10;
            } else {
                navHostController = navHostControllerA;
            }
            gapComposer = gapComposerH;
            NavHostKt.b(navHostController, cart, null, null, null, function6, function7, function8, function9, (Function1) objX8, gapComposer, 920125488, 1084);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new k4(nativeCartViewModel, reinsuranceViewModel, cartPreviousScreen, function0, function2, function1, function3, function4, function5, i2, 7);
        }
    }
}
