package com.vuitton.android.presentation.screen.storemode.components.catalog;

import android.content.res.Configuration;
import androidx.activity.compose.BackHandlerKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.foundation.shape.CornerSizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.material3.BottomSheetScaffoldKt;
import androidx.compose.material3.BottomSheetScaffoldState;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SheetValue;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.Dp;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavHostController;
import androidx.navigation.Navigator;
import androidx.navigation.compose.NavHostControllerKt;
import androidx.navigation.compose.NavHostKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.accompanist.systemuicontroller.AndroidSystemUiController;
import com.google.accompanist.systemuicontroller.SystemUiControllerKt;
import com.vuitton.android.designkit.components.ScreenDimensionsKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.SearchBottomBarKt;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.StoreModeRoute;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.CatalogStoreModeKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import defpackage.a;
import defpackage.g0;
import defpackage.jh;
import defpackage.n00;
import defpackage.nh;
import defpackage.q8;
import defpackage.qk;
import defpackage.rk;
import defpackage.tk;
import defpackage.u;
import defpackage.u1;
import defpackage.w0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Reflection;
import kotlin.math.MathKt;
import kotlin.reflect.KClass;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/material3/SheetValue;", "currentBottomSheetState", "", "currentAlphaValue", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CatalogStoreModeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f64850a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f64851b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final jh f64852c;
    public static final jh d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final jh f64853e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final jh f64854f;

    static {
        Dp.Companion companion = Dp.f11004c;
        f64850a = 144.0f;
        f64851b = 68.0f;
        f64852c = new jh(15);
        d = new jh(19);
        f64853e = new jh(20);
        f64854f = new jh(21);
    }

    public static final void a(StoreModeViewModel storeModeViewModel, PSPStoreModeViewModel pSPStoreModeViewModel, StoreModeViewState storeModeViewState, Function1 function1, Function0 function0, Function1 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        storeModeViewModel.getClass();
        pSPStoreModeViewModel.getClass();
        storeModeViewState.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-1110993229);
        int i3 = i2 | (gapComposerH.K(storeModeViewModel) ? 4 : 2) | (gapComposerH.K(pSPStoreModeViewModel) ? 32 : 16) | (gapComposerH.y(storeModeViewState) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], gapComposerH);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(SheetValue.PartiallyExpanded);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            final AndroidSystemUiController androidSystemUiControllerA = SystemUiControllerKt.a(gapComposerH);
            boolean zK = gapComposerH.K(androidSystemUiControllerA);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new NavController.OnDestinationChangedListener() { // from class: uk
                    @Override // androidx.navigation.NavController.OnDestinationChangedListener
                    public final void f(NavController navController, NavDestination navDestination) {
                        float f2 = CatalogStoreModeKt.f64850a;
                        navController.getClass();
                        navDestination.getClass();
                        Color.f8866b.getClass();
                        long j2 = Color.f8870h;
                        NavDestination.Companion companion = NavDestination.g;
                        KClass kClassB = Reflection.f71922a.b(StoreModeRoute.Plp.class);
                        companion.getClass();
                        androidSystemUiControllerA.a(j2, NavDestination.Companion.c(navDestination, kClassB), SystemUiControllerKt.f27786b);
                    }
                };
                gapComposerH.q(objX2);
            }
            navHostControllerA.a((NavController.OnDestinationChangedListener) objX2);
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean zY = (i4 == 4) | gapComposerH.y(navHostControllerA);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new CatalogStoreModeKt$CatalogStoreMode$2$1(storeModeViewModel, navHostControllerA, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            boolean z = i4 == 4;
            Object objX4 = gapComposerH.x();
            if (z || objX4 == composer$Companion$Empty$1) {
                objX4 = new qk(storeModeViewModel, 1);
                gapComposerH.q(objX4);
            }
            BackHandlerKt.a(false, (Function0) objX4, gapComposerH, 0, 1);
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = n00.b(gapComposerH);
            }
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, null, ComposableLambdaKt.b(-176816904, new u((Object) storeModeViewState, function1, (Object) storeModeViewModel, 18), gapComposerH), ComposableLambdaKt.b(1376270457, new g0((SnackbarHostState) objX5, 15), gapComposerH), null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-2082573118, new w0(navHostControllerA, storeModeViewModel, storeModeViewState, function0, function2, pSPStoreModeViewModel, mutableState), gapComposerH), gapComposer, 805309824, 243);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(storeModeViewModel, pSPStoreModeViewModel, storeModeViewState, function1, function0, function2, i2, 8);
        }
    }

    public static final void b(final StoreModeViewModel storeModeViewModel, final StoreModeViewState storeModeViewState, SheetValue sheetValue, Function1 function1, final Function0 function0, final Function2 function2, final Function1 function3, final Function0 function4, Composer composer, int i2) {
        GapComposer gapComposer;
        float f2;
        BottomSheetScaffoldState bottomSheetScaffoldState;
        final float f3;
        GapComposer gapComposerH = composer.h(-1584961824);
        int i3 = i2 | (gapComposerH.K(storeModeViewModel) ? 4 : 2) | (gapComposerH.y(storeModeViewState) ? 32 : 16) | (gapComposerH.d(sheetValue.ordinal()) ? 256 : 128) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288) | (gapComposerH.y(function4) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float fC = MathKt.c(ScreenDimensionsKt.a(gapComposerH, 1));
            Dp.Companion companion = Dp.f11004c;
            float fC2 = fC - MathKt.c(((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp);
            float f4 = (fC - StoreModeLevel1ScreenKt.f64871a) - LVAppDesignKitTheme.l(gapComposerH).f48420j;
            float f5 = SearchBottomBarKt.f62854a;
            float f6 = f4 - f5;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = PrimitiveSnapshotStateKt.a(0.2f);
                gapComposerH.q(objX);
            }
            MutableFloatState mutableFloatState = (MutableFloatState) objX;
            BottomSheetScaffoldState bottomSheetScaffoldStateD = BottomSheetScaffoldKt.d(BottomSheetScaffoldKt.e(sheetValue, gapComposerH, ((i3 >> 6) & 14) | KyberEngine.KyberPolyBytes, 2), gapComposerH, 2);
            boolean zK = gapComposerH.K(bottomSheetScaffoldStateD);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new CatalogStoreModeKt$InBottomSheetNavigation$1$1(bottomSheetScaffoldStateD, function1, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, bottomSheetScaffoldStateD, (Function2) objX2);
            final NavHostController navHostControllerA = NavHostControllerKt.a(new Navigator[0], gapComposerH);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("InBottomSheetNavigation");
            boolean zK2 = gapComposerH.K(bottomSheetScaffoldStateD) | gapComposerH.c(fC) | gapComposerH.c(fC2) | gapComposerH.c(f6);
            Object objX3 = gapComposerH.x();
            if (zK2 || objX3 == composer$Companion$Empty$1) {
                f2 = f6;
                bottomSheetScaffoldState = bottomSheetScaffoldStateD;
                rk rkVar = new rk(bottomSheetScaffoldState, fC, fC2, f2, mutableFloatState, 0);
                f3 = fC2;
                gapComposerH.q(rkVar);
                objX3 = rkVar;
            } else {
                f3 = fC2;
                f2 = f6;
                bottomSheetScaffoldState = bottomSheetScaffoldStateD;
            }
            Modifier modifierA = OffsetKt.a(dTFunctionNameModifier, (Function1) objX3);
            RoundedCornerShape roundedCornerShape = (RoundedCornerShape) CornerBasedShape.c(LVAppDesignKitTheme.j(gapComposerH).d, null, null, CornerSizeKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM), CornerSizeKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM), 3);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
            final float f7 = f2;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(428747503, new Function3() { // from class: sk
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    NavHostController navHostController;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    float f8 = CatalogStoreModeKt.f64850a;
                    ((ColumnScope) obj).getClass();
                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierB = BackgroundKt.b(ClipKt.b(SizeKt.g(new DTFunctionNameModifier("InBottomSheetNavigation$lambda$5"), f3, f7)).o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a);
                        StoreModeViewState storeModeViewState2 = storeModeViewState;
                        Object obj4 = storeModeViewState2.f65088j ? StoreModeRoute.Home.INSTANCE : StoreModeRoute.Level1.INSTANCE;
                        boolean zY = composer2.y(storeModeViewState2);
                        StoreModeViewModel storeModeViewModel2 = storeModeViewModel;
                        boolean zY2 = zY | composer2.y(storeModeViewModel2);
                        NavHostController navHostController2 = navHostControllerA;
                        boolean zY3 = zY2 | composer2.y(navHostController2);
                        Function1 function5 = function3;
                        boolean zK3 = zY3 | composer2.K(function5);
                        Function0 function6 = function0;
                        boolean zK4 = zK3 | composer2.K(function6);
                        Function0 function7 = function4;
                        boolean zK5 = zK4 | composer2.K(function7);
                        Function2 function8 = function2;
                        boolean zK6 = zK5 | composer2.K(function8);
                        Object objX4 = composer2.x();
                        if (zK6 || objX4 == Composer.Companion.f7939a) {
                            navHostController = navHostController2;
                            nk nkVar = new nk(storeModeViewState2, storeModeViewModel2, navHostController, function5, function6, function7, function8);
                            composer2.q(nkVar);
                            objX4 = nkVar;
                        } else {
                            navHostController = navHostController2;
                        }
                        NavHostKt.b(navHostController, obj4, modifierB, null, null, null, null, null, null, (Function1) objX4, composer2, 0, 2040);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH);
            ComposableSingletons$CatalogStoreModeKt.f64862a.getClass();
            gapComposer = gapComposerH;
            BottomSheetScaffoldKt.a(composableLambdaImplB, modifierA, bottomSheetScaffoldState, f3 - f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, roundedCornerShape, j2, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableSingletons$CatalogStoreModeKt.f64863b, false, null, null, 0L, 0L, ComposableLambdaKt.b(-1755545275, new tk(f3, storeModeViewState, storeModeViewModel, mutableFloatState, 0), gapComposerH), gapComposer, 6, 1572870, 64400);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new q8(storeModeViewModel, storeModeViewState, sheetValue, function1, function0, function2, function3, function4, i2);
        }
    }

    public static final void c(Modifier modifier, StoreModeViewState storeModeViewState, Function0 function0, Function1 function1, Function0 function2, Function0 function3, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier modifier2;
        DTFunctionNameModifier dTFunctionNameModifier;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "StoreModeExploreScreen");
        }
        GapComposer gapComposerH = composer.h(-2143673298);
        int i3 = i2 | 6 | (gapComposerH.y(storeModeViewState) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("StoreModeExploreScreen");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = storeModeViewState.f65085f.f65745a > 0;
            Unit unit = Unit.f71739a;
            boolean z2 = (458752 & i3) == 131072;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$1) {
                objX = new CatalogStoreModeKt$StoreModeExploreScreen$1$1(function3, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            boolean zB = ((i3 & 896) == 256) | gapComposerH.b(z) | ((57344 & i3) == 16384) | gapComposerH.y(storeModeViewState) | ((i3 & 7168) == 2048);
            Object objX2 = gapComposerH.x();
            if (zB || objX2 == composer$Companion$Empty$1) {
                dTFunctionNameModifier = dTFunctionNameModifier2;
                nh nhVar = new nh(z, storeModeViewState, dTFunctionNameModifier, function0, function2, function1);
                gapComposerH.q(nhVar);
                objX2 = nhVar;
            } else {
                dTFunctionNameModifier = dTFunctionNameModifier2;
            }
            gapComposer = gapComposerH;
            LazyDslKt.a(dTFunctionNameModifier, null, null, null, null, null, false, null, (Function1) objX2, gapComposer, 6, 510);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(modifier2, storeModeViewState, function0, function1, function2, function3, i2, 7);
        }
    }
}
