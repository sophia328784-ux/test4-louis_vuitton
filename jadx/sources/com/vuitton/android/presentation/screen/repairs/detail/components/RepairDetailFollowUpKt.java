package com.vuitton.android.presentation.screen.repairs.detail.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.repairs.FollowUp;
import defpackage.ai0;
import defpackage.cj;
import defpackage.d21;
import defpackage.hs0;
import defpackage.r5;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RepairDetailFollowUpKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float[] f63847a = {3.0f, 7.0f};

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f63848a;

        static {
            int[] iArr = new int[FollowUp.values().length];
            try {
                iArr[FollowUp.FUTURE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FollowUp.CURRENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FollowUp.PAST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f63848a = iArr;
        }
    }

    public static final void a(float f2, int i2, Composer composer, String str) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(1532014080);
        Applier applier = gapComposerH.f7976a;
        int i3 = (gapComposerH.K(str) ? 4 : 2) | i2 | (gapComposerH.c(f2) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(tr.d("FollowUpCurrent-ziNgDLE", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
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
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Modifier modifierB = BackgroundKt.b(SizeKt.f(tr.e(gapComposerH, modifierC, function5, "FollowUpCurrent-ziNgDLE"), LVAppDesignKitTheme.d(gapComposerH).o), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8586e, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, measurePolicyD, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.v;
            Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("FollowUpCurrent-ziNgDLE"), LVAppDesignKitTheme.d(gapComposerH).f48388h);
            boolean zE = gapComposerH.e(j2);
            Object objX = gapComposerH.x();
            if (zE || objX == Composer.Companion.f7939a) {
                objX = new r5(j2, 13);
                gapComposerH.q(objX);
            }
            CanvasKt.a(modifierO, (Function1) objX, gapComposerH, 0);
            gapComposerH.Z(true);
            TextKt.c(str, PaddingKt.k(new DTFunctionNameModifier("FollowUpCurrent-ziNgDLE"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, i3 & 14, 0, 131064);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new hs0(str, f2, i2, 3);
        }
    }

    public static final void b(float f2, int i2, Composer composer, String str) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(1066832510);
        Applier applier = gapComposerH.f7976a;
        int i3 = (gapComposerH.K(str) ? 4 : 2) | i2 | (gapComposerH.c(f2) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(BackgroundKt.b(tr.d("FollowUpFuture-ziNgDLE", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
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
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Modifier modifierF = SizeKt.f(tr.e(gapComposerH, modifierC, function5, "FollowUpFuture-ziNgDLE"), LVAppDesignKitTheme.d(gapComposerH).o);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8586e, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierF);
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
            Updater.c(gapComposerH, measurePolicyD, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
            Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("FollowUpFuture-ziNgDLE"), LVAppDesignKitTheme.d(gapComposerH).f48388h);
            boolean zE = gapComposerH.e(j2);
            Object objX = gapComposerH.x();
            if (zE || objX == Composer.Companion.f7939a) {
                objX = new r5(j2, 15);
                gapComposerH.q(objX);
            }
            CanvasKt.a(modifierO, (Function1) objX, gapComposerH, 0);
            gapComposerH.Z(true);
            TextKt.c(str, PaddingKt.k(new DTFunctionNameModifier("FollowUpFuture-ziNgDLE"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, i3 & 14, 0, 131064);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new hs0(str, f2, i2, 5);
        }
    }

    public static final void c(float f2, int i2, Composer composer, String str) {
        GapComposer gapComposer;
        int i3;
        GapComposer gapComposerH = composer.h(389223821);
        Applier applier = gapComposerH.f7976a;
        int i4 = (gapComposerH.K(str) ? 4 : 2) | i2 | (gapComposerH.c(f2) ? 32 : 16);
        if (gapComposerH.p(i4 & 1, (i4 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(tr.d("FollowUpPast-ziNgDLE", 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
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
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Modifier modifierB = BackgroundKt.b(SizeKt.f(tr.e(gapComposerH, modifierC, function5, "FollowUpPast-ziNgDLE"), LVAppDesignKitTheme.d(gapComposerH).o), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8586e, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, measurePolicyD, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.w;
            Modifier modifierO = SizeKt.o(new DTFunctionNameModifier("FollowUpPast-ziNgDLE"), LVAppDesignKitTheme.d(gapComposerH).f48388h);
            boolean zE = gapComposerH.e(j2);
            Object objX = gapComposerH.x();
            if (zE || objX == Composer.Companion.f7939a) {
                objX = new r5(j2, 14);
                gapComposerH.q(objX);
            }
            CanvasKt.a(modifierO, (Function1) objX, gapComposerH, 0);
            gapComposerH.Z(true);
            i3 = 4;
            TextKt.c(str, PaddingKt.k(new DTFunctionNameModifier("FollowUpPast-ziNgDLE"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, i4 & 14, 0, 131064);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            i3 = 4;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new hs0(str, f2, i2, i3);
        }
    }

    public static final void d(int i2, Composer composer, List list) {
        int i3;
        Function0 function0;
        float f2;
        list.getClass();
        GapComposer gapComposerH = composer.h(1408302160);
        Applier applier = gapComposerH.f7976a;
        int i4 = (gapComposerH.y(list) ? 4 : 2) | i2;
        if (gapComposerH.p(i4 & 1, (i4 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float f3 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            float f4 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            float f5 = LVAppDesignKitTheme.l(gapComposerH).f48416e;
            Modifier.Companion companion = Modifier.Companion.f8607b;
            Modifier modifierB = BackgroundKt.b(ClipKt.a(PaddingKt.m(companion, f3, f5, f4, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
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
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.dr_track_your_repair), PaddingKt.m(companion, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131068);
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
            Modifier modifierJ = PaddingKt.j(companion, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f);
            gapComposerH = gapComposerH;
            DividerKt.a(modifierJ, Call.Parameters.DEFAULT_CAMERA_ZOOM, j2, gapComposerH, 0, 2);
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("RepairDetailFollowUp"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 6);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                function0 = function1;
                gapComposerH.C(function0);
            } else {
                function0 = function1;
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
            Modifier modifierJ2 = BoxScopeInstance.f4938a.j(PaddingKt.m(new DTFunctionNameModifier("RepairDetailFollowUp"), LVAppDesignKitTheme.l(gapComposerH).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14));
            boolean zE = gapComposerH.e(j3);
            Object objX = gapComposerH.x();
            if (zE || objX == Composer.Companion.f7939a) {
                objX = new r5(j3, 16);
                gapComposerH.q(objX);
            }
            CanvasKt.a(modifierJ2, (Function1) objX, gapComposerH, 0);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("RepairDetailFollowUp");
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iHashCode3 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function3);
            cj.t(iHashCode3, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC3, function6);
            gapComposerH.L(-2092588326);
            int i5 = 0;
            for (Object obj : list) {
                int i6 = i5 + 1;
                if (i5 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                Pair pair = (Pair) obj;
                if (i5 == 0) {
                    gapComposerH.L(1812541577);
                    f2 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1812636933);
                    f2 = LVAppDesignKitTheme.l(gapComposerH).f48418h;
                    gapComposerH.Z(false);
                }
                Object obj2 = pair.f71705b;
                Object obj3 = pair.f71706c;
                int i7 = WhenMappings.f63848a[((FollowUp) obj2).ordinal()];
                if (i7 == 1) {
                    gapComposerH.L(1812814811);
                    b(f2, 0, gapComposerH, (String) obj3);
                    gapComposerH.Z(false);
                } else if (i7 == 2) {
                    gapComposerH.L(1812963642);
                    a(f2, 0, gapComposerH, (String) obj3);
                    gapComposerH.Z(false);
                } else {
                    if (i7 != 3) {
                        throw d21.u(gapComposerH, 2136686244, false);
                    }
                    gapComposerH.L(1813110365);
                    c(f2, 0, gapComposerH, (String) obj3);
                    gapComposerH.Z(false);
                }
                i5 = i6;
            }
            i3 = 3;
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            i3 = 3;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ai0(list, i2, i3);
        }
    }
}
