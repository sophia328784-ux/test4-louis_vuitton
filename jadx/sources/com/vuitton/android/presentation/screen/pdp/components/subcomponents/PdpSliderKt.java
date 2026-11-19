package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.common.AccessibilityExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.presentation.compose.components.LVPagerLineIndicatorKt;
import com.vuitton.android.presentation.compose.components.LVSlideShowKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpSliderKt;
import defpackage.aj0;
import defpackage.cj;
import defpackage.n00;
import defpackage.rd;
import defpackage.tr;
import defpackage.x60;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.collections.immutable.ImmutableList;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"", "previousPagerIndex", "", "firstDisplay", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpSliderKt {
    public static final void a(Modifier modifier, final boolean z, final boolean z2, final boolean z3, final boolean z4, final ImmutableList immutableList, final Function0 function0, final Function0 function1, final Function1 function2, final Function1 function3, Composer composer, final int i2) {
        GapComposer gapComposer;
        PagerState pagerState;
        PagerState pagerState2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PdpSlider");
        }
        immutableList.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-2094440172);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.b(z2) ? 256 : 128) | (gapComposerH.b(z3) ? 2048 : 1024) | (gapComposerH.b(z4) ? 16384 : 8192) | (gapComposerH.K(immutableList) ? 131072 : 65536) | (gapComposerH.y(function0) ? 1048576 : 524288) | (gapComposerH.y(function1) ? 8388608 : 4194304) | (gapComposerH.y(function2) ? 67108864 : 33554432) | (gapComposerH.y(function3) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i3 & 1, (i3 & 306783379) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z5 = (458752 & i3) == 131072;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z5 || objX == composer$Companion$Empty$1) {
                objX = new x60(immutableList, 27);
                gapComposerH.q(objX);
            }
            PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX, gapComposerH, 0, 3);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierD = SizeKt.d(modifierE, 1.0f);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
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
            Updater.c(gapComposerH, measurePolicyD, function5);
            Function2 function6 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function6);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function7 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function7);
            Function1 function8 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function8);
            Function2 function9 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function9);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PdpSlider");
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function6);
            cj.t(iHashCode2, gapComposerH, function7, gapComposerH, function8);
            int i4 = i3 << 9;
            LVSlideShowKt.a(pagerStateB, ModifierExtKt.b(ModifierExtKt.b(AspectRatioKt.a(tr.e(gapComposerH, modifierC2, function9, "PdpSlider"), 1.0f, false), !AccessibilityExtKt.a(gapComposerH), new aj0(17), gapComposerH, 6), AccessibilityExtKt.a(gapComposerH), new aj0(18), gapComposerH, 0), false, null, false, z3, ComposableLambdaKt.b(-1250225138, new rd(immutableList, function3, context, z, 2), gapComposerH), gapComposerH, (3670016 & i4) | 12583296, 56);
            gapComposer = gapComposerH;
            if (immutableList.size() > 1) {
                gapComposer.L(536120105);
                LVPagerLineIndicatorKt.a(pagerStateB, immutableList.size(), null, 0L, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposer, 0, 60);
                gapComposer = gapComposer;
                gapComposer.Z(false);
            } else {
                gapComposer.L(536274826);
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
            if (z4) {
                pagerState = pagerStateB;
                LVButtonKt.b((i3 << 6) & 1879048192, 496, gapComposer, com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.i(boxScopeInstance.g(n00.i(gapComposer, -1067647307, "PdpSlider"), Alignment.Companion.f8590j), LVAppDesignKitTheme.l(gapComposer).f48416e), "pdp_arVTO_button"), LVAppDesignKitTheme.b(gapComposer).f48448c, Integer.valueOf(LVAppDesignKitTheme.g(gapComposer).m0), null, StringResources_androidKt.c(gapComposer, R.string.product_try_on_label), function1, false, false, false);
                gapComposer.Z(false);
            } else if (z2) {
                pagerState = pagerStateB;
                LVButtonKt.b(i4 & 1879048192, 496, gapComposer, com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.i(boxScopeInstance.g(n00.i(gapComposer, -1067108620, "PdpSlider"), Alignment.Companion.f8590j), LVAppDesignKitTheme.l(gapComposer).f48416e), "pdp_arVTO_button"), LVAppDesignKitTheme.b(gapComposer).f48448c, Integer.valueOf(LVAppDesignKitTheme.g(gapComposer).B0), null, StringResources_androidKt.c(gapComposer, R.string.product_details_ar_button), function0, false, false, false);
                gapComposer.Z(false);
            } else {
                pagerState = pagerStateB;
                gapComposer.L(-1066616588);
                gapComposer.Z(false);
            }
            Object objX2 = gapComposer.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotIntStateKt.a(pagerState.k());
                gapComposer.q(objX2);
            }
            MutableIntState mutableIntState = (MutableIntState) objX2;
            Object objX3 = gapComposer.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposer.q(objX3);
            }
            MutableState mutableState = (MutableState) objX3;
            boolean zK = gapComposer.K(pagerState) | ((i3 & 234881024) == 67108864);
            Object objX4 = gapComposer.x();
            if (zK || objX4 == composer$Companion$Empty$1) {
                PagerState pagerState3 = pagerState;
                PdpSliderKt$PdpSlider$1$2$1 pdpSliderKt$PdpSlider$1$2$1 = new PdpSliderKt$PdpSlider$1$2$1(pagerState3, function2, mutableState, mutableIntState, null);
                pagerState2 = pagerState3;
                gapComposer.q(pdpSliderKt$PdpSlider$1$2$1);
                objX4 = pdpSliderKt$PdpSlider$1$2$1;
            } else {
                pagerState2 = pagerState;
            }
            EffectsKt.e(gapComposer, pagerState2, (Function2) objX4);
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2(z, z2, z3, z4, immutableList, function0, function1, function2, function3, i2) { // from class: xm0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ boolean f81157c;
                public final /* synthetic */ boolean d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f81158e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ boolean f81159f;
                public final /* synthetic */ ImmutableList g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f81160h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function0 f81161i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function1 f81162j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function1 f81163k;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    PdpSliderKt.a(this.f81156b, this.f81157c, this.d, this.f81158e, this.f81159f, this.g, this.f81160h, this.f81161i, this.f81162j, this.f81163k, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
