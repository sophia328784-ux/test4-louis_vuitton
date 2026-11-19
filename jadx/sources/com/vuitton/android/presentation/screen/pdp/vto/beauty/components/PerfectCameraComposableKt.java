package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import android.content.Context;
import android.view.SurfaceHolder;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.perfectcorp.perfectlib.CameraView;
import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.perfectlib.ShadeFinder;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.PerfectCameraComposableKt;
import defpackage.d1;
import defpackage.k0;
import defpackage.n00;
import defpackage.pq0;
import defpackage.v9;
import defpackage.xg0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PerfectCameraComposableKt {
    public static final void a(final Context context, final boolean z, final boolean z2, final boolean z3, final CameraView cameraView, final MakeupCam makeupCam, final ShadeFinder shadeFinder, final Function1 function1, final Function1 function2, final Function1 function3, final Function1 function4, final Function0 function0, final Function0 function5, final Function2 function6, final Function0 function7, final Function1 function8, final Function0 function9, Composer composer, final int i2) {
        GapComposer gapComposer;
        int i3;
        CameraView cameraView2;
        boolean z4;
        context.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function0.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        GapComposer gapComposerH = composer.h(910230055);
        int i4 = i2 | (gapComposerH.y(context) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.b(z2) ? 256 : 128) | (gapComposerH.b(z3) ? 2048 : 1024) | (gapComposerH.y(cameraView) ? 16384 : 8192) | (gapComposerH.y(makeupCam) ? 131072 : 65536) | (gapComposerH.y(shadeFinder) ? 1048576 : 524288);
        int i5 = (gapComposerH.y(function4) ? (char) 4 : (char) 2) | (gapComposerH.y(function0) ? ' ' : (char) 16) | (gapComposerH.y(function5) ? 256 : 128) | (gapComposerH.y(function6) ? (char) 2048 : (char) 1024) | (gapComposerH.y(function7) ? (char) 16384 : (char) 8192) | (gapComposerH.y(function8) ? (char) 0 : (char) 0) | (gapComposerH.y(function9) ? (char) 0 : (char) 0);
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (599187 & i5) == 599186) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PerfectCameraComposable");
            FillElement fillElement = SizeKt.f5052c;
            BoxKt.a(BackgroundKt.b(dTFunctionNameModifier.o(fillElement), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48378f, RectangleShapeKt.f8913a), gapComposerH, 0);
            Unit unit = Unit.f71739a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new PerfectCameraComposableKt$PerfectCameraComposable$1$1(null, function1);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX);
            if (cameraView == null) {
                gapComposerH.L(-1758852662);
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new k0(function3, 28);
                    gapComposerH.q(objX2);
                }
                b((Function1) objX2, gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1758590309);
                gapComposerH.Z(false);
            }
            Boolean boolValueOf = Boolean.valueOf(z2);
            int i6 = i4 & 112;
            boolean zY = ((i4 & 896) == 256) | gapComposerH.y(cameraView) | gapComposerH.y(makeupCam) | ((i5 & 14) == 4) | ((i5 & 7168) == 2048) | gapComposerH.y(context) | (i6 == 32) | ((i5 & 896) == 256);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                i3 = i5;
                PerfectCameraComposableKt$PerfectCameraComposable$3$1 perfectCameraComposableKt$PerfectCameraComposable$3$1 = new PerfectCameraComposableKt$PerfectCameraComposable$3$1(z2, cameraView, makeupCam, z, function5, function4, function6, function2, context, null);
                cameraView2 = cameraView;
                gapComposerH.q(perfectCameraComposableKt$PerfectCameraComposable$3$1);
                objX3 = perfectCameraComposableKt$PerfectCameraComposable$3$1;
            } else {
                i3 = i5;
                cameraView2 = cameraView;
            }
            EffectsKt.g(boolValueOf, cameraView2, (Function2) objX3, gapComposerH);
            if (cameraView2 == null || !z3 || (shadeFinder == null && z)) {
                gapComposer = gapComposerH;
                gapComposer.L(-1753408101);
                gapComposer.Z(false);
            } else {
                gapComposerH.L(-1756830222);
                boolean z5 = (i6 == 32) | ((i3 & 57344) == 16384) | ((i3 & 3670016) == 1048576) | ((i3 & 112) == 32);
                Object objX4 = gapComposerH.x();
                if (z5 || objX4 == composer$Companion$Empty$1) {
                    PerfectCameraComposableKt$PerfectCameraComposable$4$1 perfectCameraComposableKt$PerfectCameraComposable$4$1 = new PerfectCameraComposableKt$PerfectCameraComposable$4$1(z, function7, function9, function0, null);
                    gapComposerH.q(perfectCameraComposableKt$PerfectCameraComposable$4$1);
                    objX4 = perfectCameraComposableKt$PerfectCameraComposable$4$1;
                }
                EffectsKt.e(gapComposerH, unit, (Function2) objX4);
                Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
                Object objX5 = gapComposerH.x();
                if (objX5 == composer$Companion$Empty$1) {
                    gapComposerH.q(null);
                    objX5 = null;
                }
                ref$ObjectRef.f71921b = (SurfaceHolder.Callback) objX5;
                Modifier modifierI = pq0.i("PerfectCameraComposable", fillElement);
                Alignment.f8582a.getClass();
                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
                ComposeUiNode.b0.getClass();
                Function0 function10 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function10);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                gapComposer = gapComposerH;
                AndroidView_androidKt.a(new d1(makeupCam, shadeFinder, function8, cameraView, ref$ObjectRef, 17), SizeKt.w(new DTFunctionNameModifier("PerfectCameraComposable"), biasAlignment, 2), null, gapComposer, 48, 4);
                EffectsKt.c(unit, new xg0(ref$ObjectRef, cameraView, 19), gapComposer);
                if (z) {
                    z4 = false;
                    gapComposer.L(-946231613);
                    gapComposer.Z(false);
                } else {
                    Modifier modifierM = PaddingKt.m(WindowInsetsPadding_androidKt.b(BoxScopeInstance.f4938a.g(SizeKt.f(SizeKt.d(ModifierExtKt.a(n00.i(gapComposer, -947115733, "PerfectCameraComposable"), null, null, 7), 1.0f), LVAppDesignKitTheme.d(gapComposer).E), Alignment.Companion.f8589i)), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, BeautyVtoScreenKt.f62031a, 7);
                    Brush.Companion companion = Brush.f8862a;
                    Color.f8866b.getClass();
                    Modifier modifierA = BackgroundKt.a(modifierM, Brush.Companion.b(companion, CollectionsKt.P(new Color(Color.f8870h), new Color(Color.b(0.3f, LVAppDesignKitTheme.c(gapComposer).f48361b.f48378f)), new Color(LVAppDesignKitTheme.c(gapComposer).f48361b.f48378f)), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14));
                    z4 = false;
                    BoxKt.a(modifierA, gapComposer, 0);
                    gapComposer.Z(false);
                }
                gapComposer.Z(true);
                gapComposer.Z(z4);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(context, z, z2, z3, cameraView, makeupCam, shadeFinder, function1, function2, function3, function4, function0, function5, function6, function7, function8, function9, i2) { // from class: en0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ Context f68907b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ boolean f68908c;
                public final /* synthetic */ boolean d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f68909e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ CameraView f68910f;
                public final /* synthetic */ MakeupCam g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ ShadeFinder f68911h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function1 f68912i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function1 f68913j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function1 f68914k;
                public final /* synthetic */ Function1 l;
                public final /* synthetic */ Function0 m;
                public final /* synthetic */ Function0 n;
                public final /* synthetic */ Function2 o;
                public final /* synthetic */ Function0 p;
                public final /* synthetic */ Function1 q;
                public final /* synthetic */ Function0 r;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(918552577);
                    PerfectCameraComposableKt.a(this.f68907b, this.f68908c, this.d, this.f68909e, this.f68910f, this.g, this.f68911h, this.f68912i, this.f68913j, this.f68914k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(Function1 function1, Composer composer, int i2) {
        function1.getClass();
        GapComposer gapComposerH = composer.h(-407433021);
        int i3 = (gapComposerH.y(function1) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new CameraView(context);
                gapComposerH.q(objX);
            }
            CameraView cameraView = (CameraView) objX;
            boolean zY = gapComposerH.y(cameraView) | ((i3 & 14) == 4);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new PerfectCameraComposableKt$SharedCameraView$1$1(function1, cameraView, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, cameraView, (Function2) objX2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v9(i2, 5, function1);
        }
    }
}
