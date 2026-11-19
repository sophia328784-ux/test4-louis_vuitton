package com.vuitton.android.presentation.screen.catalog.components;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.foundation.shape.CornerSizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.BottomSheetScaffoldKt;
import androidx.compose.material3.BottomSheetScaffoldState;
import androidx.compose.material3.SheetValue;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.ScrollProgressTrackerKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.catalog.models.CatalogViewState;
import com.vuitton.android.presentation.screen.catalog.models.CategoryUiModel;
import defpackage.d0;
import defpackage.fw0;
import defpackage.g1;
import defpackage.j1;
import defpackage.k4;
import defpackage.ma;
import defpackage.o0;
import defpackage.p0;
import defpackage.tf;
import defpackage.u1;
import defpackage.w0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\t²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\f\u0010\u0006\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\b\u001a\u00020\u00078\nX\u008a\u0084\u0002"}, d2 = {"Landroidx/compose/ui/unit/Dp;", "height", "bottomSheetMaxHeight", "bottomSheetInitialHeight", "Landroidx/compose/material3/SheetValue;", "currentBottomSheetState", "contentListHeight", "", "isSwipeEnabled", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CatalogSubcategoryScreenKt {
    public static final void a(Modifier modifier, CatalogViewState catalogViewState, CategoryUiModel categoryUiModel, Function0 function0, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function0 function5, Composer composer, int i2) {
        Function1 function6;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CatalogSubcategoryScreen");
        }
        catalogViewState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(2037282337);
        int i3 = i2 | 6 | (gapComposerH.y(catalogViewState) ? 32 : 16) | (gapComposerH.y(categoryUiModel) ? 256 : 128);
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            function6 = function4;
            i3 |= gapComposerH.y(function6) ? 8388608 : 4194304;
        } else {
            function6 = function4;
        }
        if ((100663296 & i2) == 0) {
            i3 |= gapComposerH.y(function5) ? 67108864 : 33554432;
        }
        if (gapComposerH.p(i3 & 1, (38347923 & i3) != 38347922)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CatalogSubcategoryScreen");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            float f5031b = WindowInsetsKt.e(WindowInsets_androidKt.b(gapComposerH), gapComposerH).getF5031b();
            Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            int i4 = i3;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.e(new fw0(f5031b, mutableState));
                gapComposerH.q(objX2);
            }
            State state = (State) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.e(new d0(16, mutableState));
                gapComposerH.q(objX3);
            }
            State state2 = (State) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotStateKt.g(SheetValue.PartiallyExpanded);
                gapComposerH.q(objX4);
            }
            BottomSheetScaffoldState bottomSheetScaffoldStateD = BottomSheetScaffoldKt.d(BottomSheetScaffoldKt.e((SheetValue) ((MutableState) objX4).getF10755b(), gapComposerH, KyberEngine.KyberPolyBytes, 2), gapComposerH, 2);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = SnapshotStateKt.e(new tf(density, lazyListStateA, 15));
                gapComposerH.q(objX5);
            }
            State state3 = (State) objX5;
            Object objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = SnapshotStateKt.e(new tf(state3, state2, 16));
                gapComposerH.q(objX6);
            }
            State state4 = (State) objX6;
            ScrollProgressTrackerKt.c(lazyListStateA, function1, gapComposerH, (i4 >> 9) & 112);
            Modifier modifierO = dTFunctionNameModifier.o(SizeKt.f5052c);
            boolean zK = gapComposerH.K(density);
            Object objX7 = gapComposerH.x();
            if (zK || objX7 == composer$Companion$Empty$1) {
                objX7 = new j1(density, mutableState, 1);
                gapComposerH.q(objX7);
            }
            Modifier modifierA = OnGloballyPositionedModifierKt.a(modifierO, (Function1) objX7);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
            ComposeUiNode.b0.getClass();
            Function0 function7 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function7);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            boolean zBooleanValue = ((Boolean) state4.getF10755b()).booleanValue();
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
            BottomSheetScaffoldKt.a(ComposableLambdaKt.b(-1398596938, new p0((Object) state, (Object) lazyListStateA, (Object) categoryUiModel, (Object) catalogViewState, function2, (Object) function3, 7), gapComposerH), null, bottomSheetScaffoldStateD, ((Dp) state2.getF10755b()).f11006b + LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, (RoundedCornerShape) CornerBasedShape.c(LVAppDesignKitTheme.j(gapComposerH).d, null, null, CornerSizeKt.b(LVAppDesignKitTheme.d(gapComposerH).f48383a), CornerSizeKt.b(LVAppDesignKitTheme.d(gapComposerH).f48383a), 3), j2, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, zBooleanValue, null, null, 0L, 0L, ComposableLambdaKt.b(677850380, new w0(categoryUiModel, catalogViewState, function0, lVModalBottomSheetStateF, function6, lVModalBottomSheetStateF2, function5), gapComposerH), gapComposerH, 6, 1572870, 62354);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
            modifierE = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new k4(modifierE, catalogViewState, categoryUiModel, function0, function1, function2, function3, function4, function5, i2);
        }
    }

    public static final void b(Modifier modifier, String str, CatalogViewState catalogViewState, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CatalogSubcategoryTransparentTopBar");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-230645809);
        int i3 = 2;
        int i4 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.y(catalogViewState) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536);
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            WindowInsets windowInsetsA = WindowInsetsExtKt.a();
            float f2 = TopAppBarDefaults.f7433a;
            Color.f8866b.getClass();
            AppBarKt.c(ComposableLambdaKt.b(-741843573, new ma(str, i3), gapComposerH), modifier2, ComposableLambdaKt.b(1777048649, new o0(function0, 19), gapComposerH), ComposableLambdaKt.b(1747498752, new g1(10, catalogViewState, function2, function1), gapComposerH), Call.Parameters.DEFAULT_CAMERA_ZOOM, windowInsetsA, TopAppBarDefaults.d(Color.f8870h, 0L, gapComposerH, 62), gapComposerH, ((i4 << 3) & 112) | 3462, 144);
            gapComposerH = gapComposerH;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(modifier2, str, catalogViewState, function0, function1, function2, i2, 9);
        }
    }
}
