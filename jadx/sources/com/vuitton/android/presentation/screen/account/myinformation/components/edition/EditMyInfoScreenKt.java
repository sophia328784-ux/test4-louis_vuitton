package com.vuitton.android.presentation.screen.account.myinformation.components.edition;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
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
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVRadioButtonKt;
import com.vuitton.android.presentation.screen.account.myinformation.models.MyInformationViewState;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormComposableKt;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormToolBox;
import defpackage.cj;
import defpackage.g0;
import defpackage.g80;
import defpackage.hg;
import defpackage.mv;
import defpackage.o60;
import defpackage.rv;
import defpackage.sv;
import defpackage.tr;
import defpackage.tv;
import defpackage.we;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isCNPolicyGranted", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class EditMyInfoScreenKt {
    public static final void a(PaddingValues paddingValues, MyInformationViewState myInformationViewState, boolean z, boolean z2, Function2 function2, Function1 function1, boolean z3, Composer composer, int i2) {
        int i3;
        boolean z4;
        GapComposer gapComposerH = composer.h(-352087851);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(paddingValues) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(myInformationViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.b(z3) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(ScrollKt.d(WindowInsetsPadding_androidKt.a(WindowInsetsPaddingKt.a(PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("EditMyInfoFormContent").o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), paddingValues), paddingValues)), ScrollKt.b(gapComposerH), false, 14), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, 7);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int i4 = i3;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            DynamicFormComposableKt.a(DynamicFormToolBox.a(tr.e(gapComposerH, modifierC, function7, "EditMyInfoFormContent"), PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.l(gapComposerH).f48416e, gapComposerH, 24582, 1), null, myInformationViewState.f52669f, false, Call.Parameters.DEFAULT_CAMERA_ZOOM, function2, null, null, null, null, false, false, false, null, null, null, ComposableLambdaKt.b(531106261, new sv(z3, 0), gapComposerH), null, false, gapComposerH, (i4 << 3) & ImageMetadata.JPEG_GPS_COORDINATES, 102236160, 196570);
            if (z) {
                gapComposerH.L(446770847);
                Modifier modifierM2 = PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM2);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA2, function3);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
                cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
                DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC2, function7, "EditMyInfoFormContent");
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, gapComposerH, 0);
                int iHashCode3 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifierE);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, function3);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function4);
                cj.t(iHashCode3, gapComposerH, function5, gapComposerH, function6);
                Updater.c(gapComposerH, modifierC3, function7);
                boolean z5 = ((i4 & 7168) == 2048) | ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
                Object objX = gapComposerH.x();
                if (z5 || objX == Composer.Companion.f7939a) {
                    objX = new mv(function1, z2, 1);
                    gapComposerH.q(objX);
                }
                gapComposerH = gapComposerH;
                LVRadioButtonKt.a(null, false, z2, null, (Function1) objX, gapComposerH, (i4 >> 3) & 896, 11);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.cn_legal_disclaimer_mylv), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131066);
                TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.cn_legal_disclaimer_part3), PaddingKt.m(o60.f(gapComposerH, true, "EditMyInfoFormContent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 5), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
                z4 = true;
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            } else {
                gapComposerH = gapComposerH;
                z4 = true;
                gapComposerH.L(448116247);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(z4);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new tv(paddingValues, myInformationViewState, z, z2, function2, function1, z3, i2);
        }
    }

    public static final void b(MyInformationViewState myInformationViewState, SnackbarHostState snackbarHostState, ComposableLambdaImpl composableLambdaImpl, Function2 function2, Function0 function0, boolean z, Composer composer, int i2) {
        GapComposer gapComposer;
        myInformationViewState.getClass();
        snackbarHostState.getClass();
        function2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(75588555);
        int i3 = i2 | (gapComposerH.K(myInformationViewState) ? 4 : 2) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.b(z) ? 131072 : 65536);
        int i4 = 1;
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final FocusManager focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
            boolean z2 = myInformationViewState.d.f52640a && myInformationViewState.f52667c.f52644b;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.valueOf(!z2));
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("EditMyInfoScreen");
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(focusManager);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditMyInfoScreenKt$EditMyInfoScreen$1$1
                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager, 4), continuation, 7);
                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                    }
                };
                gapComposerH.q(objX2);
            }
            gapComposer = gapComposerH;
            ScaffoldKt.a(SuspendingPointerInputFilterKt.a(dTFunctionNameModifier, unit, (PointerInputEventHandler) objX2), composableLambdaImpl, ComposableLambdaKt.b(-1361522586, new rv(myInformationViewState, function0, mutableState, i4), gapComposerH), ComposableLambdaKt.b(-190313915, new g0(snackbarHostState, 23), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(897349212, new g80(myInformationViewState, z2, function2, z, mutableState), gapComposerH), gapComposer, 805309872, 496);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new hg(myInformationViewState, snackbarHostState, composableLambdaImpl, function2, function0, z, i2);
        }
    }
}
