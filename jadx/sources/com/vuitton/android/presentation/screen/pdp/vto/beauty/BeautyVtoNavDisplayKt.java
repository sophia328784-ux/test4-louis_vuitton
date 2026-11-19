package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.lifecycle.viewmodel.navigation3.ViewModelStoreNavEntryDecoratorKt;
import androidx.navigation3.runtime.EntryProviderScope;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.SaveableStateHolderNavEntryDecoratorKt;
import androidx.navigation3.ui.NavDisplayKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderResultComposableKt;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import defpackage.a3;
import defpackage.cj;
import defpackage.me;
import defpackage.n4;
import defpackage.oe;
import defpackage.pe;
import defpackage.t;
import defpackage.u5;
import defpackage.x0;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BeautyVtoNavDisplayKt {
    /* JADX WARN: Code duplicated, block: B:105:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:108:0x0303  */
    /* JADX WARN: Code duplicated, block: B:111:0x0316  */
    public static final void a(final NavBackStack navBackStack, final BeautyVtoViewModel beautyVtoViewModel, final PermissionsViewModel permissionsViewModel, final Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function1 function4, Function0 function5, final Function0 function6, Function0 function7, Function0 function8, Function0 function9, Function1 function10, Function0 function11, final Function0 function12, Function0 function13, Function1 function14, Composer composer, int i2) {
        Function0 function15;
        GapComposer gapComposer;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Object objX;
        Object objX2;
        Object objX3;
        navBackStack.getClass();
        beautyVtoViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        function12.getClass();
        function13.getClass();
        function14.getClass();
        GapComposer gapComposerH = composer.h(1386345434);
        int i3 = i2 | (gapComposerH.K(navBackStack) ? 4 : 2) | (gapComposerH.K(beautyVtoViewModel) ? 32 : 16) | (gapComposerH.K(permissionsViewModel) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288) | (gapComposerH.y(function4) ? 8388608 : 4194304) | (gapComposerH.y(function5) ? 67108864 : 33554432) | (gapComposerH.y(function6) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (((((((((gapComposerH.y(function7) ? (char) 4 : (char) 2) | (gapComposerH.y(function8) ? ' ' : (char) 16)) | (gapComposerH.y(function9) ? 256 : 128)) | (gapComposerH.y(function10) ? 2048 : 1024)) | (gapComposerH.y(function11) ? (char) 16384 : (char) 8192)) | (gapComposerH.y(function12) ? (char) 0 : (char) 0)) | (gapComposerH.y(function13) ? (char) 0 : (char) 0)) | (gapComposerH.y(function14) ? (char) 0 : (char) 0)) & 4793491) == 4793490) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean z = ((i3 & 112) == 32) | (i4 == 4);
            Object objX4 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z || objX4 == composer$Companion$Empty$2) {
                objX4 = new BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$1$1(beautyVtoViewModel, navBackStack, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX4);
            List listP = CollectionsKt.P(SaveableStateHolderNavEntryDecoratorKt.a(gapComposerH), ViewModelStoreNavEntryDecoratorKt.a(gapComposerH));
            gapComposerH.L(838144284);
            EntryProviderScope entryProviderScope = new EntryProviderScope(new Function1() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$$inlined$entryProvider$default$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    throw new IllegalStateException(cj.i(obj, "Unknown screen "));
                }
            });
            gapComposer = gapComposerH;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1567943383, new me(beautyVtoViewModel, permissionsViewModel, function0, function2, function4, function5, function6, function8, function9, function10, function13, function14), gapComposer);
            BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$1 beautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$1 = new Function1<BeautyVtoRoutes.Vto, Object>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC = MapsKt.c();
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            entryProviderScope.a(reflectionFactory.b(BeautyVtoRoutes.Vto.class), beautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$1, new Function1<BeautyVtoRoutes.Vto, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC;
                }
            }, composableLambdaImplB);
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-91213091, new pe(beautyVtoViewModel, navBackStack, function0, function7), gapComposer);
            BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$3 beautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$3 = new Function1<BeautyVtoRoutes.PicturePreview, Object>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC2 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(BeautyVtoRoutes.PicturePreview.class), beautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$3, new Function1<BeautyVtoRoutes.PicturePreview, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC2;
                }
            }, composableLambdaImplB2);
            function15 = function1;
            ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(1271414701, new pe(function0, beautyVtoViewModel, navBackStack, function15), gapComposer);
            BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$5 beautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$5 = new Function1<BeautyVtoRoutes.ShadeFinderIntro, Object>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC3 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(BeautyVtoRoutes.ShadeFinderIntro.class), beautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$5, new Function1<BeautyVtoRoutes.ShadeFinderIntro, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$6
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC3;
                }
            }, composableLambdaImplB3);
            ComposableLambdaImpl composableLambdaImplB4 = ComposableLambdaKt.b(1734244911, new n4((Object) beautyVtoViewModel, function0, function3, (Object) navBackStack, (Function) function11, 5), gapComposer);
            BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$7 beautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$7 = new Function1<BeautyVtoRoutes.ShadeFinderScan, Object>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC4 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(BeautyVtoRoutes.ShadeFinderScan.class), beautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$7, new Function1<BeautyVtoRoutes.ShadeFinderScan, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$8
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC4;
                }
            }, composableLambdaImplB4);
            ComposableLambdaImpl composableLambdaImplB5 = ComposableLambdaKt.b(-928421168, new Function3() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.c
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    ((BeautyVtoRoutes.ShadeFinderResult) obj).getClass();
                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        final BeautyVtoViewModel beautyVtoViewModel2 = beautyVtoViewModel;
                        boolean zY = composer2.y(beautyVtoViewModel2);
                        final NavBackStack navBackStack2 = navBackStack;
                        boolean zY2 = zY | composer2.y(navBackStack2);
                        final Function0 function16 = function12;
                        boolean zK = zY2 | composer2.K(function16);
                        Object objX5 = composer2.x();
                        if (zK || objX5 == Composer.Companion.f7939a) {
                            objX5 = new Function1<SkuIdUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$2$5$1$1
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    String str = ((SkuIdUiModel) obj4).f61764b;
                                    str.getClass();
                                    beautyVtoViewModel2.U4(str);
                                    navBackStack2.a(BeautyVtoRoutes.Vto.INSTANCE);
                                    function16.mo47invoke();
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX5);
                        }
                        ShadeFinderResultComposableKt.a(beautyVtoViewModel2, permissionsViewModel, function0, function6, (Function1) objX5, composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposer);
            BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$9 beautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$9 = new Function1<BeautyVtoRoutes.ShadeFinderResult, Object>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$9
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC5 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(BeautyVtoRoutes.ShadeFinderResult.class), beautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$9, new Function1<BeautyVtoRoutes.ShadeFinderResult, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$10
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC5;
                }
            }, composableLambdaImplB5);
            ComposableLambdaImpl composableLambdaImplB6 = ComposableLambdaKt.b(1071135092, new a3(function0, 5), gapComposer);
            BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$11 beautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$11 = new Function1<BeautyVtoRoutes.ShadeFinderResultEmpty, Object>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$11
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC6 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(BeautyVtoRoutes.ShadeFinderResultEmpty.class), beautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$11, new Function1<BeautyVtoRoutes.ShadeFinderResultEmpty, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$lambda$1$$inlined$entry$default$12
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC6;
                }
            }, composableLambdaImplB6);
            androidx.navigation3.runtime.a aVar = new androidx.navigation3.runtime.a(entryProviderScope);
            boolean z2 = false;
            gapComposer.Z(false);
            if (i4 == 4) {
                z2 = true;
            }
            Object objX5 = gapComposer.x();
            if (z2) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (objX5 == composer$Companion$Empty$1) {
                }
                Function0 function16 = (Function0) objX5;
                objX = gapComposer.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new u5(28);
                    gapComposer.q(objX);
                }
                Function1 function17 = (Function1) objX;
                objX2 = gapComposer.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new u5(29);
                    gapComposer.q(objX2);
                }
                Function1 function18 = (Function1) objX2;
                objX3 = gapComposer.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new t(15);
                    gapComposer.q(objX3);
                }
                NavBackStack.Companion companion = NavBackStack.INSTANCE;
                NavDisplayKt.c(navBackStack, null, null, function16, listP, null, null, function17, function18, (Function2) objX3, aVar, gapComposer, 805306368 | i4);
            }
            objX5 = new x0(navBackStack, 1);
            gapComposer.q(objX5);
            Function0 function19 = (Function0) objX5;
            objX = gapComposer.x();
            if (objX == composer$Companion$Empty$1) {
                objX = new u5(28);
                gapComposer.q(objX);
            }
            Function1 function110 = (Function1) objX;
            objX2 = gapComposer.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new u5(29);
                gapComposer.q(objX2);
            }
            Function1 function111 = (Function1) objX2;
            objX3 = gapComposer.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new t(15);
                gapComposer.q(objX3);
            }
            NavBackStack.Companion companion2 = NavBackStack.INSTANCE;
            NavDisplayKt.c(navBackStack, null, null, function19, listP, null, null, function110, function111, (Function2) objX3, aVar, gapComposer, 805306368 | i4);
        } else {
            function15 = function1;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oe(navBackStack, beautyVtoViewModel, permissionsViewModel, function0, function15, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, i2);
        }
    }
}
