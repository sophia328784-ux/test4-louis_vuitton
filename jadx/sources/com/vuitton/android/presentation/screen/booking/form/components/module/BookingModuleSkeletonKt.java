package com.vuitton.android.presentation.screen.booking.form.components.module;

import androidx.compose.animation.core.InfiniteTransition;
import androidx.compose.animation.core.InfiniteTransitionKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.intl.Locale;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSkeletonKt;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import defpackage.a;
import defpackage.a4;
import defpackage.cj;
import defpackage.qe;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingModuleSkeletonKt {
    public static final void a(Modifier modifier, Composer composer, int i2) {
        int i3;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "BookingCalendarSkeleton");
        }
        GapComposer gapComposerH = composer.h(-1982698271);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | 6;
        if (gapComposerH.p(i4 & 1, (i4 & 3) != 2)) {
            dTFunctionNameModifier = new DTFunctionNameModifier("BookingCalendarSkeleton");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            InfiniteTransition infiniteTransitionC = InfiniteTransitionKt.c(0, gapComposerH, "BookingCalendarSkeleton");
            String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_loading_status);
            Modifier modifierD = SizeKt.d(dTFunctionNameModifier, 1.0f);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
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
            Updater.c(gapComposerH, measurePolicyD, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function5 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function5);
            LVCalendarKt.d(ModifierExtKt.a(AlphaKt.a(new DTFunctionNameModifier("BookingCalendarSkeleton"), Call.Parameters.DEFAULT_CAMERA_ZOOM), null, null, 7), EmptyList.f71768b, null, ((Locale) gapComposerH.k(CompositionLocalsKt.p)).f10871a, false, false, null, gapComposerH, 48, 116);
            gapComposerH = gapComposerH;
            Modifier modifierK = PaddingKt.k(BoxScopeInstance.f4938a.j(new DTFunctionNameModifier("BookingCalendarSkeleton")), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).d, 1);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d), Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC2, function5);
            LVSkeletonKt.e(tr.d("BookingCalendarSkeleton", 0.4f), null, null, gapComposerH, 6, 6);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("BookingCalendarSkeleton");
            boolean zK = gapComposerH.K(strC);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new a4(strC, 12);
                gapComposerH.q(objX);
            }
            i3 = 1;
            LVSkeletonKt.b(ClipKt.a(ColumnScopeInstance.f4944a.a(SizeKt.d(SemanticsModifierKt.b(dTFunctionNameModifier2, false, (Function1) objX), 1.0f), 1.0f, true), LVAppDesignKitTheme.j(gapComposerH).f48410b), null, infiniteTransitionC, gapComposerH, 512, 2);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            i3 = 1;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qe(dTFunctionNameModifier, i2, i3);
        }
    }
}
