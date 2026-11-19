package com.vuitton.android.presentation.screen.distantrepairs.form.components;

import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavGraphBuilderKt;
import androidx.navigation.compose.NavHostKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.ComposableSingletons$DistantRepairFormScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormRoutes;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import defpackage.g0;
import defpackage.o0;
import defpackage.rs;
import defpackage.tr;
import defpackage.v8;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairFormScreenKt {
    public static final void a(Function0 function0, Composer composer, int i2) {
        function0.getClass();
        GapComposer gapComposerH = composer.h(2074933056);
        int i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierK = PaddingKt.k(WindowInsetsPadding_androidKt.b(BackgroundKt.b(new DTFunctionNameModifier("ConfirmLayout"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a)), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            LVButtonKt.b((i3 << 27) & 1879048192, 504, gapComposerH, ModifierExtKt.e(PaddingKt.m(tr.d("ConfirmLayout", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, 5), "careservicesFormRecap_confirm_button"), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.dr_cta_create), function0, false, false, false);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o0(i2, 26, function0);
        }
    }

    public static final void b(final NavHostController navHostController, final DistantRepairFormViewState distantRepairFormViewState, final SnackbarHostState snackbarHostState, final CoroutineScope coroutineScope, final ContactUsUiModel contactUsUiModel, final LVModalBottomSheetState lVModalBottomSheetState, final Function0 function0, final Function0 function1, final Function0 function2, final Function1 function3, final Function1 function4, final Function1 function5, final Function3 function6, final Function1 function7, final Function1 function8, final Function1 function9, final Function0 function10, final Function0 function11, final Function0 function12, final Function0 function13, final Function0 function14, final Function0 function15, final Function1 function16, final Function1 function17, final Function2 function18, Composer composer, final int i2, final int i3, final int i4) {
        int i5;
        int i6;
        int i7;
        GapComposer gapComposer;
        navHostController.getClass();
        distantRepairFormViewState.getClass();
        snackbarHostState.getClass();
        coroutineScope.getClass();
        contactUsUiModel.getClass();
        lVModalBottomSheetState.getClass();
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
        function15.getClass();
        function16.getClass();
        function17.getClass();
        function18.getClass();
        GapComposer gapComposerH = composer.h(-1045701597);
        if ((i2 & 6) == 0) {
            i5 = (gapComposerH.y(navHostController) ? 4 : 2) | i2;
        } else {
            i5 = i2;
        }
        if ((i2 & 48) == 0) {
            i5 |= gapComposerH.y(distantRepairFormViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.K(snackbarHostState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i5 |= gapComposerH.y(coroutineScope) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i5 |= (32768 & i2) == 0 ? gapComposerH.K(contactUsUiModel) : gapComposerH.y(contactUsUiModel) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i5 |= (i2 & 262144) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i5 |= gapComposerH.y(function0) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i5 |= gapComposerH.y(function1) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i5 |= gapComposerH.y(function2) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i5 |= gapComposerH.y(function3) ? 536870912 : 268435456;
        }
        if ((i3 & 6) == 0) {
            i6 = i3 | (gapComposerH.y(function4) ? 4 : 2);
        } else {
            i6 = i3;
        }
        if ((i3 & 48) == 0) {
            i6 |= gapComposerH.y(function5) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.y(function6) ? 256 : 128;
        }
        int i8 = i5;
        if ((i3 & 3072) == 0) {
            i6 |= gapComposerH.y(function7) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i6 |= gapComposerH.y(function8) ? 16384 : 8192;
        }
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i6 |= gapComposerH.y(function9) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i6 |= gapComposerH.y(function10) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i6 |= gapComposerH.y(function11) ? 8388608 : 4194304;
        }
        if ((i3 & 100663296) == 0) {
            i6 |= gapComposerH.y(function12) ? 67108864 : 33554432;
        }
        if ((i3 & 805306368) == 0) {
            i6 |= gapComposerH.y(function13) ? 536870912 : 268435456;
        }
        if ((i4 & 6) == 0) {
            i7 = i4 | (gapComposerH.y(function14) ? 4 : 2);
        } else {
            i7 = i4;
        }
        if ((i4 & 48) == 0) {
            i7 |= gapComposerH.y(function15) ? 32 : 16;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            i7 |= gapComposerH.y(function16) ? 256 : 128;
        }
        if ((i4 & 3072) == 0) {
            i7 |= gapComposerH.y(function17) ? 2048 : 1024;
        }
        if ((i4 & 24576) == 0) {
            i7 |= gapComposerH.y(function18) ? 16384 : 8192;
        }
        if (gapComposerH.p(i8 & 1, ((i8 & 306783379) == 306783378 && (i6 & 306783379) == 306783378 && (i7 & 9363) == 9362) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            ScaffoldKt.a(null, ComposableLambdaKt.b(1358855903, new v8(2, lVModalBottomSheetState, contactUsUiModel, function0, function17), gapComposerH), ComposableLambdaKt.b(66786494, new rs(distantRepairFormViewState, function1, 5), gapComposerH), ComposableLambdaKt.b(-1225282915, new g0(snackbarHostState, 20), gapComposerH), null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(1473860276, new Function3() { // from class: vu
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierA = WindowInsetsPadding_androidKt.a(PaddingKt.h(WindowInsetsPadding_androidKt.b(BackgroundKt.b(new DTFunctionNameModifier("DistantRepairFormScreen$lambda$3").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer2).f48361b.f48375b, RectangleShapeKt.f8913a)), paddingValues));
                        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierA);
                        ComposeUiNode.b0.getClass();
                        Function0 function19 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function19);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        DistantRepairFormRoutes.Form form = DistantRepairFormRoutes.Form.INSTANCE;
                        final DistantRepairFormViewState distantRepairFormViewState2 = distantRepairFormViewState;
                        boolean zY = composer2.y(distantRepairFormViewState2);
                        final CoroutineScope coroutineScope2 = coroutineScope;
                        boolean zY2 = zY | composer2.y(coroutineScope2);
                        final Function0 function20 = function2;
                        boolean zK = zY2 | composer2.K(function20);
                        final Function1 function21 = function3;
                        boolean zK2 = zK | composer2.K(function21);
                        final Function1 function22 = function4;
                        boolean zK3 = zK2 | composer2.K(function22);
                        final Function1 function23 = function5;
                        boolean zK4 = zK3 | composer2.K(function23);
                        final Function3 function24 = function6;
                        boolean zK5 = zK4 | composer2.K(function24);
                        final Function1 function25 = function7;
                        boolean zK6 = zK5 | composer2.K(function25);
                        final Function1 function26 = function8;
                        boolean zK7 = zK6 | composer2.K(function26);
                        final Function1 function27 = function9;
                        boolean zK8 = zK7 | composer2.K(function27);
                        final Function0 function28 = function10;
                        boolean zK9 = zK8 | composer2.K(function28);
                        final Function0 function29 = function14;
                        boolean zK10 = zK9 | composer2.K(function29);
                        final LVModalBottomSheetState lVModalBottomSheetState2 = lVModalBottomSheetStateF;
                        boolean zY3 = zK10 | composer2.y(lVModalBottomSheetState2);
                        final Function0 function30 = function15;
                        boolean zK11 = zY3 | composer2.K(function30);
                        final Function1 function31 = function16;
                        boolean zK12 = zK11 | composer2.K(function31);
                        final Function2 function32 = function18;
                        boolean zK13 = zK12 | composer2.K(function32);
                        final Function0 function33 = function11;
                        boolean zK14 = zK13 | composer2.K(function33);
                        final Function0 function34 = function12;
                        boolean zK15 = zK14 | composer2.K(function34);
                        final Function0 function35 = function13;
                        boolean zK16 = zK15 | composer2.K(function35);
                        Object objX = composer2.x();
                        if (zK16 || objX == Composer.Companion.f7939a) {
                            Function1 function36 = new Function1() { // from class: xu
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    NavGraphBuilder navGraphBuilder = (NavGraphBuilder) obj4;
                                    navGraphBuilder.getClass();
                                    final DistantRepairFormViewState distantRepairFormViewState3 = distantRepairFormViewState2;
                                    final CoroutineScope coroutineScope3 = coroutineScope2;
                                    final Function0 function37 = function20;
                                    final Function1 function38 = function21;
                                    final Function1 function39 = function22;
                                    final Function1 function40 = function23;
                                    final Function3 function41 = function24;
                                    final Function1 function42 = function25;
                                    final Function1 function43 = function26;
                                    final Function1 function44 = function27;
                                    final Function0 function45 = function28;
                                    final Function0 function46 = function29;
                                    final LVModalBottomSheetState lVModalBottomSheetState3 = lVModalBottomSheetState2;
                                    final Function0 function47 = function30;
                                    final Function1 function48 = function31;
                                    final Function2 function49 = function32;
                                    ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(-940458901, true, new Function4() { // from class: uu
                                        @Override // kotlin.jvm.functions.Function4
                                        public final Object g(Object obj5, Object obj6, Object obj7, Object obj8) {
                                            Composer composer3 = (Composer) obj7;
                                            a.x((Integer) obj8, (AnimatedContentScope) obj5, (NavBackStackEntry) obj6);
                                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                            Function0 function50 = function46;
                                            boolean zK17 = composer3.K(function50);
                                            LVModalBottomSheetState lVModalBottomSheetState4 = lVModalBottomSheetState3;
                                            boolean zY4 = zK17 | composer3.y(lVModalBottomSheetState4);
                                            Object objX2 = composer3.x();
                                            if (zY4 || objX2 == Composer.Companion.f7939a) {
                                                objX2 = new t3(function50, lVModalBottomSheetState4, 6);
                                                composer3.q(objX2);
                                            }
                                            DistantRepairFormComponentKt.a(distantRepairFormViewState3, coroutineScope3, function37, function38, function39, function40, function41, function42, function43, function44, function45, (Function0) objX2, function47, function48, function49, composer3, 0, 0);
                                            return Unit.f71739a;
                                        }
                                    });
                                    Map mapC = MapsKt.c();
                                    EmptyList emptyList = EmptyList.f71768b;
                                    ReflectionFactory reflectionFactory = Reflection.f71922a;
                                    NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(DistantRepairFormRoutes.Form.class), mapC, emptyList, null, null, null, null, composableLambdaImpl);
                                    ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(936493282, true, new w4(distantRepairFormViewState3, function33, function34, function35, 5));
                                    NavGraphBuilderKt.a(navGraphBuilder, reflectionFactory.b(DistantRepairFormRoutes.Confirmation.class), MapsKt.c(), emptyList, null, null, null, null, composableLambdaImpl2);
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(function36);
                            objX = function36;
                        }
                        NavHostKt.b(navHostController, form, null, null, null, null, null, null, null, (Function1) objX, composer2, 48, 2044);
                        if (lVModalBottomSheetState2.a()) {
                            composer2.L(1906964677);
                            String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                            ComposableSingletons$DistantRepairFormScreenKt.f57214a.getClass();
                            LVModalBottomSheetKt.b(null, strC, null, lVModalBottomSheetState2, null, 0L, false, null, ComposableSingletons$DistantRepairFormScreenKt.f57216c, composer2, (LVModalBottomSheetState.f48797e << 9) | 100663296, 245);
                            composer2.F();
                        } else {
                            composer2.L(1907888632);
                            composer2.F();
                        }
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 805309872, 241);
            gapComposer = gapComposerH;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: wu
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).intValue();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    int iA3 = RecomposeScopeImplKt.a(i4);
                    DistantRepairFormScreenKt.b(navHostController, distantRepairFormViewState, snackbarHostState, coroutineScope, contactUsUiModel, lVModalBottomSheetState, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, function15, function16, function17, function18, (Composer) obj, iA, iA2, iA3);
                    return Unit.f71739a;
                }
            };
        }
    }
}
