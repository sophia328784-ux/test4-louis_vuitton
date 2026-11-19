package com.vuitton.android.presentation.screen.maintenance;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Center$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.style.TextAlign;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVImageKt;
import defpackage.cj;
import defpackage.md;
import defpackage.n00;
import defpackage.n50;
import defpackage.rv;
import defpackage.tr;
import defpackage.x2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModel$MaintenanceViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MaintenanceComposableKt {
    public static final void a(Function0 function0, Function0 function1, Composer composer, int i2) {
        Function0 function2;
        Function0 function3;
        GapComposer gapComposerH = composer.h(-1950632305);
        Applier applier = gapComposerH.f7976a;
        int i3 = (gapComposerH.y(function0) ? 32 : 16) | i2 | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BottomContainer");
            Alignment.f8582a.getClass();
            Modifier modifierG = BoxScopeInstance.f4938a.g(dTFunctionNameModifier, Alignment.Companion.f8589i);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierG);
            ComposeUiNode.b0.getClass();
            Function0 function4 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Function2 function5 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            Modifier modifierK = PaddingKt.k(n00.e(gapComposerH, modifierC, function9, "BottomContainer", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48420j, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            TextAlign.f10959b.getClass();
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.maintenance_description), modifierK, 0L, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 130044);
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("BottomContainer"), LVAppDesignKitTheme.l(gapComposerH).d));
            Modifier modifierJ = PaddingKt.j(BackgroundKt.b(new DTFunctionNameModifier("BottomContainer"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).d);
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierJ);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
            Updater.c(gapComposerH, modifierC2, function9);
            LVButtonKt.b(((i3 << 24) & 1879048192) | 6, 504, gapComposerH, tr.d("BottomContainer", 1.0f), LVAppDesignKitTheme.b(gapComposerH).f48446a, null, null, StringResources_androidKt.c(gapComposerH, R.string.maintenance_button_faq), function0, false, false, false);
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("BottomContainer"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
            function3 = function1;
            function2 = function0;
            LVButtonKt.b(6 | ((i3 << 21) & 1879048192), 504, gapComposerH, tr.d("BottomContainer", 1.0f), LVAppDesignKitTheme.b(gapComposerH).f48449e, null, null, StringResources_androidKt.c(gapComposerH, R.string.maintenance_button_client_service), function3, false, false, false);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            function2 = function0;
            function3 = function1;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x2(function2, function3, i2, 11);
        }
    }

    public static final void b(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1312718512);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierO = new DTFunctionNameModifier("CenteredMessages").o(SizeKt.f5052c);
            Arrangement$Center$1 arrangement$Center$1 = Arrangement.f4921e;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Center$1, Alignment.Companion.o, gapComposerH, 54);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            LVImageKt.a(SizeKt.o(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "CenteredMessages"), LVAppDesignKitTheme.d(gapComposerH).v), PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).x, gapComposerH, 0), StringResources_androidKt.c(gapComposerH, R.string.maintenance_title), Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 64, 24);
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("CenteredMessages"), LVAppDesignKitTheme.l(gapComposerH).g));
            Modifier modifierK = PaddingKt.k(SizeKt.d(new DTFunctionNameModifier("CenteredMessages"), 1.0f), LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            TextAlign.f10959b.getClass();
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.maintenance_title), modifierK, 0L, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).d, gapComposerH, 0, 0, 130044);
            gapComposerH = gapComposerH;
            cj.x(new DTFunctionNameModifier("CenteredMessages"), LVAppDesignKitTheme.l(gapComposerH).m, gapComposerH, true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new n50(i2, 14);
        }
    }

    public static final void c(MaintenanceViewModelImpl maintenanceViewModelImpl, Function1 function1, Function1 function2, Composer composer, int i2) {
        MaintenanceViewModelImpl maintenanceViewModelImpl2;
        MaintenanceViewModelImpl maintenanceViewModelImpl3;
        int i3;
        MaintenanceViewModelImpl maintenanceViewModelImpl4;
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(1571025833);
        int i4 = i2 | 2 | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128);
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(gapComposerH);
                if (viewModelStoreOwnerA == null) {
                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                } else {
                    maintenanceViewModelImpl3 = (MaintenanceViewModelImpl) ViewModelKt.a(Reflection.f71922a.b(MaintenanceViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, gapComposerH), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, gapComposerH);
                    i3 = i4 & (-15);
                }
            } else {
                gapComposerH.D();
                i3 = i4 & (-15);
                maintenanceViewModelImpl3 = maintenanceViewModelImpl;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Unit unit = Unit.f71739a;
            boolean zY = ((i3 & 112) == 32) | gapComposerH.y(maintenanceViewModelImpl3) | ((i3 & 896) == 256);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new MaintenanceComposableKt$MaintenanceComposable$1$1(maintenanceViewModelImpl3, function1, function2, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            MaintenanceViewModel.MaintenanceViewState maintenanceViewState = (MaintenanceViewModel.MaintenanceViewState) SnapshotStateKt.b(maintenanceViewModelImpl3.d, gapComposerH).getF10755b();
            boolean zY2 = gapComposerH.y(maintenanceViewModelImpl3);
            Object objX2 = gapComposerH.x();
            if (zY2 || objX2 == composer$Companion$Empty$1) {
                MaintenanceComposableKt$MaintenanceComposable$2$1 maintenanceComposableKt$MaintenanceComposable$2$1 = new MaintenanceComposableKt$MaintenanceComposable$2$1(0, maintenanceViewModelImpl3, MaintenanceViewModelImpl.class, "onContactRequested", "onContactRequested()V", 0);
                gapComposerH.q(maintenanceComposableKt$MaintenanceComposable$2$1);
                objX2 = maintenanceComposableKt$MaintenanceComposable$2$1;
            }
            Function0 function0 = (Function0) ((KFunction) objX2);
            boolean zY3 = gapComposerH.y(maintenanceViewModelImpl3);
            Object objX3 = gapComposerH.x();
            if (zY3 || objX3 == composer$Companion$Empty$1) {
                maintenanceViewModelImpl4 = maintenanceViewModelImpl3;
                MaintenanceComposableKt$MaintenanceComposable$3$1 maintenanceComposableKt$MaintenanceComposable$3$1 = new MaintenanceComposableKt$MaintenanceComposable$3$1(0, maintenanceViewModelImpl4, MaintenanceViewModelImpl.class, "onClientServicesRequested", "onClientServicesRequested()V", 0);
                gapComposerH.q(maintenanceComposableKt$MaintenanceComposable$3$1);
                objX3 = maintenanceComposableKt$MaintenanceComposable$3$1;
            } else {
                maintenanceViewModelImpl4 = maintenanceViewModelImpl3;
            }
            d(maintenanceViewState, function0, (Function0) ((KFunction) objX3), gapComposerH, 0);
            maintenanceViewModelImpl2 = maintenanceViewModelImpl4;
        } else {
            gapComposerH.D();
            maintenanceViewModelImpl2 = maintenanceViewModelImpl;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rv(i2, 21, maintenanceViewModelImpl2, function1, function2);
        }
    }

    public static final void d(MaintenanceViewModel.MaintenanceViewState maintenanceViewState, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(428783202);
        int i3 = (gapComposerH.K(maintenanceViewState) ? 4 : 2) | i2 | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierO = new DTFunctionNameModifier("MaintenanceScreen").o(SizeKt.f5052c);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48378f;
            RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
            Modifier modifierD = WindowInsetsPadding_androidKt.d(BackgroundKt.b(WindowInsetsPadding_androidKt.b(BackgroundKt.b(modifierO, j2, rectangleShapeKt$RectangleShape$1)), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, rectangleShapeKt$RectangleShape$1));
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            b(gapComposerH, 0);
            a(function0, function1, gapComposerH, (i3 & 896) | (i3 & 112) | 6);
            if (maintenanceViewState.f59209a) {
                LVFlowerLoaderKt.a(BoxScopeInstance.f4938a.g(n00.i(gapComposerH, 508417415, "MaintenanceScreen"), Alignment.Companion.f8587f), null, false, gapComposerH, 0, 6);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(508497178);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rv(i2, 22, maintenanceViewState, function0, function1);
        }
    }
}
