package com.vuitton.android.presentation.screen.wishlist;

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
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavGraphBuilderKt;
import androidx.navigation.compose.NavHostKt;
import com.vuitton.android.presentation.screen.wishlist.WishlistRoutes;
import com.vuitton.android.presentation.screen.wishlist.WishlistViewModel;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistComposableKt;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistViewState;
import defpackage.yj;
import defpackage.zl;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KFunction;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WishlistNavHostKt {
    public static final void a(final NavHostController navHostController, final WishlistViewModel wishlistViewModel, final boolean z, final Function0 function0, final Function0 function1, final Function2 function2, final Function1 function3, final Function0 function4, final Function2 function5, final Function1 function6, final Function0 function7, Composer composer, int i2) {
        GapComposer gapComposer;
        int i3;
        navHostController.getClass();
        wishlistViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(-29386750);
        int i4 = i2 | (gapComposerH.y(navHostController) ? 4 : 2) | (gapComposerH.K(wishlistViewModel) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288) | (gapComposerH.y(function3) ? 8388608 : 4194304) | (gapComposerH.y(function4) ? 67108864 : 33554432) | (gapComposerH.y(function5) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i5 = (gapComposerH.y(function6) ? (char) 4 : (char) 2) | (gapComposerH.y(function7) ? ' ' : (char) 16);
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(wishlistViewModel.getC(), gapComposerH);
            Result result = ((WishlistViewState) mutableStateB.getF10755b()).g;
            boolean zK = gapComposerH.K(mutableStateB) | gapComposerH.y(navHostController);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new WishlistNavHostKt$WishlistNavHost$3$1(mutableStateB, navHostController, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, result, (Function2) objX);
            WishlistRoutes.Wishlist wishlist = WishlistRoutes.Wishlist.INSTANCE;
            boolean zY = ((i4 & 112) == 32) | ((i4 & 896) == 256) | ((57344 & i4) == 16384) | ((458752 & i4) == 131072) | gapComposerH.y(navHostController) | ((29360128 & i4) == 8388608) | ((3670016 & i4) == 1048576) | ((234881024 & i4) == 67108864) | ((i5 & 14) == 4) | ((i5 & 112) == 32) | ((1879048192 & i4) == 536870912);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                i3 = i4;
                Function1 function8 = new Function1() { // from class: h71
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj;
                        navGraphBuilder.getClass();
                        final WishlistViewModel wishlistViewModel2 = wishlistViewModel;
                        final boolean z2 = z;
                        final Function0 function9 = function0;
                        final Function0 function10 = function1;
                        final NavHostController navHostController2 = navHostController;
                        final Function1 function11 = function3;
                        final Function2 function12 = function2;
                        final Function0 function13 = function4;
                        final Function1 function14 = function6;
                        final Function0 function15 = function7;
                        ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(1166962435, true, new Function4() { // from class: com.vuitton.android.presentation.screen.wishlist.b
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj2, Object obj3, Object obj4, Object obj5) {
                                Composer composer2 = (Composer) obj4;
                                ((Integer) obj5).getClass();
                                ((AnimatedContentScope) obj2).getClass();
                                ((NavBackStackEntry) obj3).getClass();
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                Unit unit = Unit.f71739a;
                                WishlistViewModel wishlistViewModel3 = wishlistViewModel2;
                                boolean zY2 = composer2.y(wishlistViewModel3);
                                Object objX3 = composer2.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (zY2 || objX3 == composer$Companion$Empty$2) {
                                    objX3 = new WishlistNavHostKt$WishlistNavHost$4$1$1$1$1(wishlistViewModel3, null);
                                    composer2.q(objX3);
                                }
                                EffectsKt.e(composer2, unit, (Function2) objX3);
                                boolean zY3 = composer2.y(wishlistViewModel3);
                                Object objX4 = composer2.x();
                                if (zY3 || objX4 == composer$Companion$Empty$2) {
                                    objX4 = new WishlistNavHostKt$WishlistNavHost$4$1$1$2$1(2, wishlistViewModel3, WishlistViewModel.class, "onItemExpanded", "onItemExpanded-sAjZjhE(Ljava/lang/String;Ljava/lang/String;)V", 0);
                                    composer2.q(objX4);
                                }
                                KFunction kFunction = (KFunction) objX4;
                                boolean zY4 = composer2.y(wishlistViewModel3);
                                Object objX5 = composer2.x();
                                if (zY4 || objX5 == composer$Companion$Empty$2) {
                                    WishlistNavHostKt$WishlistNavHost$4$1$1$3$1 wishlistNavHostKt$WishlistNavHost$4$1$1$3$1 = new WishlistNavHostKt$WishlistNavHost$4$1$1$3$1(1, wishlistViewModel3, WishlistViewModel.class, "onItemCollapsed", "onItemCollapsed-fvG9qJw(Ljava/lang/String;)V", 0);
                                    composer2.q(wishlistNavHostKt$WishlistNavHost$4$1$1$3$1);
                                    objX5 = wishlistNavHostKt$WishlistNavHost$4$1$1$3$1;
                                }
                                KFunction kFunction2 = (KFunction) objX5;
                                NavHostController navHostController3 = navHostController2;
                                boolean zY5 = composer2.y(navHostController3);
                                Object objX6 = composer2.x();
                                if (zY5 || objX6 == composer$Companion$Empty$2) {
                                    objX6 = new yj(navHostController3, 19);
                                    composer2.q(objX6);
                                }
                                WishlistComposableKt.a(wishlistViewModel3, z2, false, function9, function10, (Function0) objX6, (Function2) kFunction, (Function1) kFunction2, function11, function12, function13, function14, function15, composer2, 0, 0);
                                return unit;
                            }
                        });
                        Map mapC = MapsKt.c();
                        EmptyList emptyList = EmptyList.f71768b;
                        ReflectionFactory reflectionFactory = Reflection.f71922a;
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(WishlistRoutes.Wishlist.class), mapC, emptyList, null, null, null, null, composableLambdaImpl);
                        ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(-993706694, true, new s8(wishlistViewModel2, navHostController2, function5, 17));
                        NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(WishlistRoutes.Share.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl2);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(function8);
                objX2 = function8;
            } else {
                i3 = i4;
            }
            gapComposer = gapComposerH;
            NavHostKt.b(navHostController, wishlist, null, null, null, null, null, null, null, (Function1) objX2, gapComposer, (i3 & 14) | 48, 2044);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zl(navHostController, wishlistViewModel, z, function0, function1, function2, function3, function4, function5, function6, function7, i2);
        }
    }
}
