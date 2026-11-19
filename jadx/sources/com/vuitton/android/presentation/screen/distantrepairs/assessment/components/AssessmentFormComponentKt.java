package com.vuitton.android.presentation.screen.distantrepairs.assessment.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentFormComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentViewState;
import defpackage.cj;
import defpackage.j9;
import defpackage.n00;
import defpackage.t;
import defpackage.tr;
import defpackage.z8;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AssessmentFormComponentKt {
    public static final void a(final AssessmentViewState assessmentViewState, final String str, final CoroutineScope coroutineScope, final Function1 function1, final Function1 function2, final Function1 function3, final Function1 function4, final Function1 function5, final Function0 function0, final Function0 function6, final Function0 function7, final LVModalBottomSheetState lVModalBottomSheetState, Composer composer, final int i2, final int i3) {
        int i4;
        GapComposer gapComposer;
        assessmentViewState.getClass();
        str.getClass();
        coroutineScope.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function0.getClass();
        function6.getClass();
        function7.getClass();
        lVModalBottomSheetState.getClass();
        GapComposer gapComposerH = composer.h(641145452);
        int i5 = i2 | (gapComposerH.y(assessmentViewState) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.y(coroutineScope) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304) | (gapComposerH.y(function0) ? 67108864 : 33554432) | (gapComposerH.y(function6) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if ((i3 & 6) == 0) {
            i4 = i3 | (gapComposerH.y(function7) ? 4 : 2);
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= (i3 & 64) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 32 : 16;
        }
        if (gapComposerH.p(i5 & 1, ((i5 & 306783379) == 306783378 && (i4 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("AssessmentFormComponent"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            boolean zY = gapComposerH.y(assessmentViewState) | ((i5 & 112) == 32) | ((i5 & 7168) == 2048) | ((234881024 & i5) == 67108864) | ((i4 & 112) == 32 || ((i4 & 64) != 0 && gapComposerH.y(lVModalBottomSheetState))) | ((i4 & 14) == 4) | ((3670016 & i5) == 1048576) | ((1879048192 & i5) == 536870912) | ((29360128 & i5) == 8388608) | gapComposerH.y(coroutineScope) | gapComposerH.K(lazyListStateA) | ((57344 & i5) == 16384) | ((i5 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                z8 z8Var = new z8(assessmentViewState, str, function1, function0, lVModalBottomSheetState, function7, function4, function6, function5, coroutineScope, lazyListStateA, function2, function3);
                lazyListStateA = lazyListStateA;
                gapComposerH.q(z8Var);
                objX = z8Var;
            }
            gapComposer = gapComposerH;
            LazyDslKt.a(modifierK, lazyListStateA, null, null, null, null, false, null, (Function1) objX, gapComposer, 0, 508);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(str, coroutineScope, function1, function2, function3, function4, function5, function0, function6, function7, lVModalBottomSheetState, i2, i3) { // from class: i9

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ String f69909c;
                public final /* synthetic */ CoroutineScope d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function1 f69910e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function1 f69911f;
                public final /* synthetic */ Function1 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function1 f69912h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function1 f69913i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function0 f69914j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function0 f69915k;
                public final /* synthetic */ Function0 l;
                public final /* synthetic */ LVModalBottomSheetState m;
                public final /* synthetic */ int n;

                {
                    this.n = i3;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    int iA2 = RecomposeScopeImplKt.a(this.n);
                    AssessmentFormComponentKt.a(this.f69908b, this.f69909c, this.d, this.f69910e, this.f69911f, this.g, this.f69912h, this.f69913i, this.f69914j, this.f69915k, this.l, this.m, (Composer) obj, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-819476023);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("AssessmentSpacer"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new t(i2, 9);
        }
    }

    public static final void c(boolean z, Composer composer, int i2) {
        int i3;
        int i4;
        boolean z2;
        GapComposer gapComposerH = composer.h(768302817);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i3 = i2 | (gapComposerH.b(z) ? 4 : 2);
        } else {
            i3 = i2;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(ClipKt.a(tr.d("PaymentInformationCard", 1.0f), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
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
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            i4 = 0;
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_payinfo_title), null, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131070);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_prass_payinfo_text), null, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 0, 131070);
            gapComposerH = gapComposerH;
            if (z) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, 1402108268, "PaymentInformationCard");
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, gapComposerH, 0);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifierI);
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
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
                Updater.c(gapComposerH, modifierC2, function5);
                ImageKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).Q1.f48407b, gapComposerH, 0), null, SizeKt.o(new DTFunctionNameModifier("PaymentInformationCard"), LVAppDesignKitTheme.d(gapComposerH).o), null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 56, 120);
                ImageKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).Q1.f48408c, gapComposerH, 0), null, SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("PaymentInformationCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposerH).o), null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 56, 120);
                ImageKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).Q1.d, gapComposerH, 0), null, SizeKt.o(PaddingKt.m(new DTFunctionNameModifier("PaymentInformationCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.d(gapComposerH).o), null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 56, 120);
                z2 = true;
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            } else {
                z2 = true;
                gapComposerH.L(1403102903);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(z2);
        } else {
            i4 = 0;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new j9(z, i2, i4);
        }
    }
}
