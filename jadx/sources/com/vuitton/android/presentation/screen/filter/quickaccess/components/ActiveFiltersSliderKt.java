package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import android.content.Context;
import android.content.res.Configuration;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.LVTagFilterKt;
import com.vuitton.android.presentation.compose.components.TagFilterType;
import com.vuitton.android.presentation.screen.filter.quickaccess.components.ActiveFiltersSliderKt;
import defpackage.cj;
import defpackage.l3;
import defpackage.o3;
import defpackage.p;
import defpackage.r1;
import defpackage.s0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003¨\u0006\u0007²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0006\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002"}, d2 = {"Landroidx/compose/ui/unit/Dp;", "endPadding", "", "shouldIncreaseSliderSize", "", "scale", "visible", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ActiveFiltersSliderKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ExitTransition f58051a;

    static {
        Alignment.f8582a.getClass();
        f58051a = EnterExitTransitionKt.k(AnimationSpecKt.c(300, 10, null, 4), Alignment.Companion.n, null, 12).b(EnterExitTransitionKt.h(AnimationSpecKt.c(100, 200, null, 4), 2));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:103:0x032a  */
    /* JADX WARN: Code duplicated, block: B:104:0x032c  */
    /* JADX WARN: Code duplicated, block: B:108:0x0336  */
    /* JADX WARN: Code duplicated, block: B:111:0x035a  */
    /* JADX WARN: Code duplicated, block: B:112:0x035c  */
    /* JADX WARN: Code duplicated, block: B:116:0x0366  */
    /* JADX WARN: Code duplicated, block: B:119:0x03ba  */
    /* JADX WARN: Code duplicated, block: B:121:0x03d1  */
    /* JADX WARN: Code duplicated, block: B:123:0x03e2  */
    /* JADX WARN: Code duplicated, block: B:87:0x02c6  */
    /* JADX WARN: Code duplicated, block: B:89:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:90:0x02d1  */
    /* JADX WARN: Code duplicated, block: B:93:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:94:0x02ec  */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [boolean, int] */
    public static final void a(Modifier modifier, final boolean z, final boolean z2, final boolean z3, final List list, final List list2, final List list3, Function2 function2, final Function0 function0, Function0 function1, Composer composer, final int i2) {
        GapComposer gapComposer;
        ScrollState scrollState;
        GapComposer gapComposer2;
        float f2;
        int i3;
        ?? r10;
        MutableState mutableState;
        MutableState mutableState2;
        float f3;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        int i4;
        boolean z4;
        Object objX;
        boolean z5;
        GapComposer gapComposer3;
        boolean z6;
        boolean z7;
        Object objX2;
        boolean z8;
        Object objX3;
        float f4;
        Modifier modifierE = modifier;
        Function2 function3 = function2;
        final Function0 function4 = function1;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ActiveFiltersSlider");
        }
        list.getClass();
        list2.getClass();
        list3.getClass();
        function3.getClass();
        function0.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(709273829);
        Applier applier = gapComposerH.f7976a;
        int i5 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.b(z2) ? 256 : 128) | (gapComposerH.b(z3) ? 2048 : 1024) | (gapComposerH.y(list) ? 16384 : 8192) | (gapComposerH.y(list2) ? 131072 : 65536) | (gapComposerH.y(list3) ? 1048576 : 524288) | (gapComposerH.y(function3) ? 8388608 : 4194304) | (gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i5 & 1, (i5 & 306783379) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            ScrollState scrollStateB = ScrollKt.b(gapComposerH);
            float f5 = LVAppDesignKitTheme.l(gapComposerH).f48413a;
            float f6 = LVAppDesignKitTheme.d(gapComposerH).v;
            float f7 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenWidthDp;
            Dp.Companion companion = Dp.f11004c;
            float f8 = f6 / 2.0f;
            float f9 = (f7 - LVAppDesignKitTheme.l(gapComposerH).f48416e) - f8;
            Object objX4 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
            if (objX4 == composer$Companion$Empty$3) {
                objX4 = SnapshotStateKt.g(new Dp(f9));
                gapComposerH.q(objX4);
            }
            MutableState mutableState3 = (MutableState) objX4;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$3) {
                objX5 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX5);
            }
            MutableState mutableState4 = (MutableState) objX5;
            boolean z9 = list3.size() + (list.size() + list2.size()) <= 1;
            Boolean boolValueOf = Boolean.valueOf(z);
            Boolean boolValueOf2 = Boolean.valueOf(z2);
            final boolean z10 = z9;
            boolean zK = ((i5 & 896) == 256) | ((i5 & 112) == 32) | gapComposerH.K(scrollStateB) | gapComposerH.c(f9);
            Object objX6 = gapComposerH.x();
            if (zK || objX6 == composer$Companion$Empty$3) {
                scrollState = scrollStateB;
                gapComposer2 = gapComposerH;
                f2 = f5;
                i3 = i5;
                r10 = 0;
                ActiveFiltersSliderKt$ActiveFiltersSlider$1$1 activeFiltersSliderKt$ActiveFiltersSlider$1$1 = new ActiveFiltersSliderKt$ActiveFiltersSlider$1$1(z2, function0, z, scrollState, f9, mutableState3, mutableState4, null);
                mutableState = mutableState3;
                mutableState2 = mutableState4;
                f3 = f9;
                gapComposer2.q(activeFiltersSliderKt$ActiveFiltersSlider$1$1);
                objX6 = activeFiltersSliderKt$ActiveFiltersSlider$1$1;
            } else {
                f3 = f9;
                gapComposer2 = gapComposerH;
                i3 = i5;
                f2 = f5;
                scrollState = scrollStateB;
                mutableState = mutableState3;
                mutableState2 = mutableState4;
                r10 = 0;
            }
            EffectsKt.g(boolValueOf, boolValueOf2, (Function2) objX6, gapComposer2);
            Modifier modifierB = ModifierExtKt.b(PaddingKt.m(SizeKt.d(r19, 1.0f), LVAppDesignKitTheme.l(gapComposer2).f48416e + f8, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), !z, new r1(1, mutableState), gapComposer2, r10);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, r10);
            int iHashCode2 = Long.hashCode(gapComposer2.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer2.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposer2, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function5 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function5);
            } else {
                gapComposer2.o();
            }
            Function2 function6 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposer2, measurePolicyD, function6);
            Function2 function7 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposer2, persistentCompositionLocalMapU2, function7);
            Integer numValueOf = Integer.valueOf(iHashCode2);
            Function2 function8 = ComposeUiNode.Companion.g;
            Updater.c(gapComposer2, numValueOf, function8);
            Function1 function9 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposer2, function9);
            Function2 function10 = ComposeUiNode.Companion.d;
            Updater.c(gapComposer2, modifierC2, function10);
            Modifier modifierM = PaddingKt.m(PaddingKt.j(ScrollKt.a(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("ActiveFiltersSlider"), Alignment.Companion.f8586e), scrollState, z3, 12), LVAppDesignKitTheme.l(gapComposer2).f48414b + f2, LVAppDesignKitTheme.l(gapComposer2).f48415c), f8, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
            boolean zY = gapComposer2.y(list) | gapComposer2.y(list2) | gapComposer2.y(list3) | gapComposer2.b(z10);
            Object objX7 = gapComposer2.x();
            if (zY) {
                composer$Companion$Empty$1 = composer$Companion$Empty$3;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$3;
                if (objX7 != composer$Companion$Empty$1) {
                    composer$Companion$Empty$2 = composer$Companion$Empty$1;
                }
                Modifier modifierB2 = SemanticsModifierKt.b(modifierM, false, (Function1) objX7);
                rowMeasurePolicyA = RowKt.a(Arrangement.f4921e, Alignment.Companion.f8591k, gapComposer2, 6);
                iHashCode = Long.hashCode(gapComposer2.T);
                persistentCompositionLocalMapU = gapComposer2.U();
                modifierC = ComposedModifierKt.c(gapComposer2, modifierB2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer2.B();
                if (gapComposer2.S) {
                    gapComposer2.C(function5);
                } else {
                    gapComposer2.o();
                }
                Updater.c(gapComposer2, rowMeasurePolicyA, function6);
                Updater.c(gapComposer2, persistentCompositionLocalMapU, function7);
                cj.t(iHashCode, gapComposer2, function8, gapComposer2, function9);
                Updater.c(gapComposer2, modifierC, function10);
                ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$1 activeFiltersSliderKt$ActiveFiltersSlider$3$2$1 = ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$1.f58058b;
                i4 = i3 & 29360128;
                if (i4 == 8388608) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                objX = gapComposer2.x();
                if (!z4 || objX == composer$Companion$Empty$2) {
                    function3 = function2;
                    z5 = false;
                    objX = new l3(0, function3);
                    gapComposer2.q(objX);
                } else {
                    function3 = function2;
                    z5 = false;
                }
                int i6 = (i3 >> 6) & 112;
                gapComposer3 = gapComposer2;
                final float f10 = f2;
                z6 = z5;
                b(list3, z3, activeFiltersSliderKt$ActiveFiltersSlider$3$2$1, null, null, f10, (Function1) objX, gapComposer3, ((i3 >> 18) & 14) | i6, 24);
                ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$3 activeFiltersSliderKt$ActiveFiltersSlider$3$2$3 = ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$3.f58059b;
                ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$4 activeFiltersSliderKt$ActiveFiltersSlider$3$2$4 = ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$4.f58060b;
                if (i4 == 8388608) {
                    z7 = true;
                } else {
                    z7 = z6;
                }
                objX2 = gapComposer3.x();
                if (z7 || objX2 == composer$Companion$Empty$2) {
                    objX2 = new l3(1, function3);
                    gapComposer3.q(objX2);
                }
                b(list2, z3, activeFiltersSliderKt$ActiveFiltersSlider$3$2$3, null, activeFiltersSliderKt$ActiveFiltersSlider$3$2$4, f10, (Function1) objX2, gapComposer3, ((i3 >> 15) & 14) | i6, 8);
                ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$6 activeFiltersSliderKt$ActiveFiltersSlider$3$2$6 = ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$6.f58061b;
                ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$7 activeFiltersSliderKt$ActiveFiltersSlider$3$2$7 = ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$7.f58062b;
                ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$8 activeFiltersSliderKt$ActiveFiltersSlider$3$2$8 = ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$8.f58063b;
                if (i4 == 8388608) {
                    z8 = true;
                } else {
                    z8 = z6;
                }
                objX3 = gapComposer3.x();
                if (z8 || objX3 == composer$Companion$Empty$2) {
                    objX3 = new l3(2, function3);
                    gapComposer3.q(objX3);
                }
                b(list, z3, activeFiltersSliderKt$ActiveFiltersSlider$3$2$6, activeFiltersSliderKt$ActiveFiltersSlider$3$2$7, activeFiltersSliderKt$ActiveFiltersSlider$3$2$8, f10, (Function1) objX3, gapComposer3, ((i3 >> 12) & 14) | i6, 0);
                function4 = function1;
                f4 = f3;
                AnimatedVisibilityKt.d(RowScopeInstance.f5040a, !z10, null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), f58051a, null, ComposableLambdaKt.b(1987827555, new Function3() { // from class: m3
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        Composer composer2 = (Composer) obj2;
                        ((Integer) obj3).getClass();
                        ExitTransition exitTransition = ActiveFiltersSliderKt.f58051a;
                        ((AnimatedVisibilityScope) obj).getClass();
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        boolean z11 = z10;
                        int i7 = 0;
                        Modifier modifierC3 = GraphicsLayerModifierKt.c(PaddingKt.k(new DTFunctionNameModifier("ActiveFiltersSlider$lambda$8$1$3"), f10, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), ((Number) AnimateAsStateKt.b(!z11 ? 1.0f : 0.0f, AnimationSpecKt.c(300, 0, null, 6), null, composer2, 48, 28).getF10755b()).floatValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, TransformOriginKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.5f), null, 0, 523262);
                        Context context2 = context;
                        boolean zY2 = composer2.y(context2);
                        Function0 function11 = function4;
                        boolean zK2 = composer2.K(function11) | zY2;
                        Object objX8 = composer2.x();
                        if (zK2 || objX8 == Composer.Companion.f7939a) {
                            objX8 = new j3(context2, function11, i7);
                            composer2.q(objX8);
                        }
                        LVTagFilterKt.a(com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifierC3, "QAF_Delete_button", (Function1) objX8, 2), StringResources_androidKt.c(composer2, R.string.menu_delete), "QAF_DeleteButtonTitle_text", TagFilterType.ACTIVE, null, !z11, null, false, function11, composer2, 3456, 208);
                        return Unit.f71739a;
                    }
                }, gapComposer3), gapComposer3, 1600518, 18);
                gapComposer = gapComposer3;
                if (((Boolean) mutableState2.getF10755b()).booleanValue()) {
                    gapComposer.L(-150148305);
                    SpacerKt.a(gapComposer, SizeKt.s(new DTFunctionNameModifier("ActiveFiltersSlider"), f4));
                    gapComposer.Z(z6);
                } else {
                    gapComposer.L(-150032985);
                    gapComposer.Z(z6);
                }
                gapComposer.Z(true);
                gapComposer.Z(true);
            }
            composer$Companion$Empty$2 = composer$Companion$Empty$1;
            objX7 = new s0(list, list2, list3, z10, 1);
            gapComposer2.q(objX7);
            Modifier modifierB3 = SemanticsModifierKt.b(modifierM, false, (Function1) objX7);
            rowMeasurePolicyA = RowKt.a(Arrangement.f4921e, Alignment.Companion.f8591k, gapComposer2, 6);
            iHashCode = Long.hashCode(gapComposer2.T);
            persistentCompositionLocalMapU = gapComposer2.U();
            modifierC = ComposedModifierKt.c(gapComposer2, modifierB3);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer2.B();
            if (gapComposer2.S) {
                gapComposer2.C(function5);
            } else {
                gapComposer2.o();
            }
            Updater.c(gapComposer2, rowMeasurePolicyA, function6);
            Updater.c(gapComposer2, persistentCompositionLocalMapU, function7);
            cj.t(iHashCode, gapComposer2, function8, gapComposer2, function9);
            Updater.c(gapComposer2, modifierC, function10);
            ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$1 activeFiltersSliderKt$ActiveFiltersSlider$3$2$2 = ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$1.f58058b;
            i4 = i3 & 29360128;
            if (i4 == 8388608) {
                z4 = true;
            } else {
                z4 = false;
            }
            objX = gapComposer2.x();
            if (z4) {
                function3 = function2;
                z5 = false;
                objX = new l3(0, function3);
                gapComposer2.q(objX);
            } else {
                function3 = function2;
                z5 = false;
                objX = new l3(0, function3);
                gapComposer2.q(objX);
            }
            int i7 = (i3 >> 6) & 112;
            gapComposer3 = gapComposer2;
            final float f11 = f2;
            z6 = z5;
            b(list3, z3, activeFiltersSliderKt$ActiveFiltersSlider$3$2$2, null, null, f11, (Function1) objX, gapComposer3, ((i3 >> 18) & 14) | i7, 24);
            ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$3 activeFiltersSliderKt$ActiveFiltersSlider$3$2$5 = ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$3.f58059b;
            ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$4 activeFiltersSliderKt$ActiveFiltersSlider$3$2$9 = ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$4.f58060b;
            if (i4 == 8388608) {
                z7 = true;
            } else {
                z7 = z6;
            }
            objX2 = gapComposer3.x();
            if (z7) {
                objX2 = new l3(1, function3);
                gapComposer3.q(objX2);
            } else {
                objX2 = new l3(1, function3);
                gapComposer3.q(objX2);
            }
            b(list2, z3, activeFiltersSliderKt$ActiveFiltersSlider$3$2$5, null, activeFiltersSliderKt$ActiveFiltersSlider$3$2$9, f11, (Function1) objX2, gapComposer3, ((i3 >> 15) & 14) | i7, 8);
            ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$6 activeFiltersSliderKt$ActiveFiltersSlider$3$2$10 = ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$6.f58061b;
            ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$7 activeFiltersSliderKt$ActiveFiltersSlider$3$2$11 = ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$7.f58062b;
            ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$8 activeFiltersSliderKt$ActiveFiltersSlider$3$2$12 = ActiveFiltersSliderKt$ActiveFiltersSlider$3$2$8.f58063b;
            if (i4 == 8388608) {
                z8 = true;
            } else {
                z8 = z6;
            }
            objX3 = gapComposer3.x();
            if (z8) {
                objX3 = new l3(2, function3);
                gapComposer3.q(objX3);
            } else {
                objX3 = new l3(2, function3);
                gapComposer3.q(objX3);
            }
            b(list, z3, activeFiltersSliderKt$ActiveFiltersSlider$3$2$10, activeFiltersSliderKt$ActiveFiltersSlider$3$2$11, activeFiltersSliderKt$ActiveFiltersSlider$3$2$12, f11, (Function1) objX3, gapComposer3, ((i3 >> 12) & 14) | i7, 0);
            function4 = function1;
            f4 = f3;
            AnimatedVisibilityKt.d(RowScopeInstance.f5040a, !z10, null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), f58051a, null, ComposableLambdaKt.b(1987827555, new Function3() { // from class: m3
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    ((Integer) obj3).getClass();
                    ExitTransition exitTransition = ActiveFiltersSliderKt.f58051a;
                    ((AnimatedVisibilityScope) obj).getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    boolean z11 = z10;
                    int i8 = 0;
                    Modifier modifierC3 = GraphicsLayerModifierKt.c(PaddingKt.k(new DTFunctionNameModifier("ActiveFiltersSlider$lambda$8$1$3"), f11, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), ((Number) AnimateAsStateKt.b(!z11 ? 1.0f : 0.0f, AnimationSpecKt.c(300, 0, null, 6), null, composer2, 48, 28).getF10755b()).floatValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, TransformOriginKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.5f), null, 0, 523262);
                    Context context2 = context;
                    boolean zY2 = composer2.y(context2);
                    Function0 function11 = function4;
                    boolean zK2 = composer2.K(function11) | zY2;
                    Object objX8 = composer2.x();
                    if (zK2 || objX8 == Composer.Companion.f7939a) {
                        objX8 = new j3(context2, function11, i8);
                        composer2.q(objX8);
                    }
                    LVTagFilterKt.a(com.vuitton.android.presentation.extensions.ModifierExtKt.a(modifierC3, "QAF_Delete_button", (Function1) objX8, 2), StringResources_androidKt.c(composer2, R.string.menu_delete), "QAF_DeleteButtonTitle_text", TagFilterType.ACTIVE, null, !z11, null, false, function11, composer2, 3456, 208);
                    return Unit.f71739a;
                }
            }, gapComposer3), gapComposer3, 1600518, 18);
            gapComposer = gapComposer3;
            if (((Boolean) mutableState2.getF10755b()).booleanValue()) {
                gapComposer.L(-150148305);
                SpacerKt.a(gapComposer, SizeKt.s(new DTFunctionNameModifier("ActiveFiltersSlider"), f4));
                gapComposer.Z(z6);
            } else {
                gapComposer.L(-150032985);
                gapComposer.Z(z6);
            }
            gapComposer.Z(true);
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Function2 function11 = function3;
            final Function0 function12 = function4;
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2(z, z2, z3, list, list2, list3, function11, function0, function12, i2) { // from class: n3

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ boolean f76427c;
                public final /* synthetic */ boolean d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f76428e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ List f76429f;
                public final /* synthetic */ List g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ List f76430h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function2 f76431i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function0 f76432j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function0 f76433k;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(100663297);
                    ActiveFiltersSliderKt.a(this.f76426b, this.f76427c, this.d, this.f76428e, this.f76429f, this.g, this.f76430h, this.f76431i, this.f76432j, this.f76433k, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0163  */
    /* JADX WARN: Code duplicated, block: B:101:0x0166  */
    /* JADX WARN: Code duplicated, block: B:104:0x0173 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:105:0x0175  */
    /* JADX WARN: Code duplicated, block: B:110:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:113:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:118:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x006a  */
    /* JADX WARN: Code duplicated, block: B:39:0x006f  */
    /* JADX WARN: Code duplicated, block: B:41:0x0073  */
    /* JADX WARN: Code duplicated, block: B:43:0x007b  */
    /* JADX WARN: Code duplicated, block: B:44:0x007e  */
    /* JADX WARN: Code duplicated, block: B:48:0x0086  */
    /* JADX WARN: Code duplicated, block: B:50:0x008e  */
    /* JADX WARN: Code duplicated, block: B:51:0x0091  */
    /* JADX WARN: Code duplicated, block: B:53:0x0095  */
    /* JADX WARN: Code duplicated, block: B:56:0x009e  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:65:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:66:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:71:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:76:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:78:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:80:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:83:0x0109  */
    /* JADX WARN: Code duplicated, block: B:87:0x0121  */
    /* JADX WARN: Code duplicated, block: B:89:0x0135  */
    /* JADX WARN: Code duplicated, block: B:92:0x0146  */
    /* JADX WARN: Code duplicated, block: B:93:0x0149  */
    /* JADX WARN: Code duplicated, block: B:96:0x0155  */
    /* JADX WARN: Code duplicated, block: B:97:0x0158  */
    public static final void b(final List list, final boolean z, final Function1 function1, Function1 function2, Function1 function3, final float f2, final Function1 function4, Composer composer, final int i2, final int i3) {
        Function1 function5;
        int i4;
        Function1 function6;
        int i5;
        float f3;
        int i6;
        Function1 function7;
        int i7;
        boolean z2;
        GapComposer gapComposer;
        final Function1 function8;
        final Function1 function9;
        RecomposeScopeImpl recomposeScopeImplB0;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        final Function1 function10;
        Context context;
        Object objX;
        CoroutineScope coroutineScope;
        Object objX2;
        final MutableState mutableState;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean zY;
        Object objX3;
        final Object obj;
        int i8;
        final CoroutineScope coroutineScope2;
        Object objX4;
        Object objX5;
        int i9;
        int i10;
        Function1 function11 = function1;
        list.getClass();
        function11.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(-423261919);
        int i11 = (i2 & 6) == 0 ? (gapComposerH.y(list) ? 4 : 2) | i2 : i2;
        int i12 = 32;
        final boolean z6 = z;
        if ((i2 & 48) == 0) {
            i11 |= gapComposerH.b(z6) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i11 |= gapComposerH.y(function11) ? 256 : 128;
        }
        int i13 = i3 & 8;
        if (i13 == 0) {
            if ((i2 & 3072) == 0) {
                function5 = function2;
                i11 |= gapComposerH.y(function5) ? 2048 : 1024;
            }
            i4 = i3 & 16;
            if (i4 != 0) {
                if ((i2 & 24576) == 0) {
                    function6 = function3;
                    if (gapComposerH.y(function6)) {
                        i5 = 16384;
                    } else {
                        i5 = 8192;
                    }
                    i11 |= i5;
                }
                if ((196608 & i2) == 0) {
                    f3 = f2;
                    if (gapComposerH.c(f3)) {
                        i10 = 131072;
                    } else {
                        i10 = 65536;
                    }
                    i11 |= i10;
                } else {
                    f3 = f2;
                }
                i6 = 1048576;
                if ((1572864 & i2) == 0) {
                    function7 = function4;
                    if (gapComposerH.y(function7)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i11 |= i9;
                } else {
                    function7 = function4;
                }
                i7 = i11;
                if ((i7 & 599187) != 599186) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (gapComposerH.p(i7 & 1, z2)) {
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i13 != 0) {
                        objX5 = gapComposerH.x();
                        if (objX5 == composer$Companion$Empty$1) {
                            objX5 = new p(12);
                            gapComposerH.q(objX5);
                        }
                        function5 = (Function1) objX5;
                    }
                    if (i4 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new p(12);
                            gapComposerH.q(objX4);
                        }
                        function10 = (Function1) objX4;
                    } else {
                        function10 = function6;
                    }
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                        gapComposerH.q(objX);
                    }
                    coroutineScope = (CoroutineScope) objX;
                    for (Object obj2 : list) {
                        gapComposerH.A(2032764916, function11.invoke(obj2));
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = SnapshotStateKt.g(Boolean.TRUE);
                            gapComposerH.q(objX2);
                        }
                        mutableState = (MutableState) objX2;
                        if ((i7 & 112) == i12) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        boolean zY2 = z3 | gapComposerH.y(coroutineScope);
                        if ((i7 & 3670016) == i6) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        boolean z7 = zY2 | z4;
                        if ((i7 & 57344) == 16384) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        zY = z7 | z5 | gapComposerH.y(obj2);
                        objX3 = gapComposerH.x();
                        if (!zY || objX3 == composer$Companion$Empty$1) {
                            obj = obj2;
                            i8 = i6;
                            final Function1 function12 = function7;
                            coroutineScope2 = coroutineScope;
                            Function0 function0 = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.a
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    ExitTransition exitTransition = ActiveFiltersSliderKt.f58051a;
                                    if (z6) {
                                        mutableState.setValue(Boolean.FALSE);
                                        BuildersKt.c(coroutineScope2, null, null, new ActiveFiltersSliderKt$AnimatedActiveFilterList$3$onFilterClicked$1$1$1(function12, function10, obj, null), 3);
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposerH.q(function0);
                            objX3 = function0;
                        } else {
                            obj = obj2;
                            i8 = i6;
                            coroutineScope2 = coroutineScope;
                        }
                        GapComposer gapComposer2 = gapComposerH;
                        AnimatedVisibilityKt.e(((Boolean) mutableState.getF10755b()).booleanValue(), null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), f58051a, null, ComposableLambdaKt.b(997699033, new o3(function11, obj, function5, f3, context, (Function0) objX3, mutableState), gapComposerH), gapComposer2, 200064, 18);
                        gapComposer2.Z(false);
                        z6 = z;
                        function11 = function1;
                        f3 = f2;
                        function5 = function5;
                        gapComposerH = gapComposer2;
                        coroutineScope = coroutineScope2;
                        context = context;
                        i6 = i8;
                        composer$Companion$Empty$1 = composer$Companion$Empty$1;
                        i12 = 32;
                        function7 = function4;
                    }
                    gapComposer = gapComposerH;
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    function8 = function5;
                    function9 = function10;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    function8 = function5;
                    function9 = function6;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: i3
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj3, Object obj4) {
                            ((Integer) obj4).getClass();
                            ActiveFiltersSliderKt.b(list, z, function1, function8, function9, f2, function4, (Composer) obj3, RecomposeScopeImplKt.a(i2 | 1), i3);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i11 |= 24576;
            function6 = function3;
            if ((196608 & i2) == 0) {
                f3 = f2;
                if (gapComposerH.c(f3)) {
                    i10 = 131072;
                } else {
                    i10 = 65536;
                }
                i11 |= i10;
            } else {
                f3 = f2;
            }
            i6 = 1048576;
            if ((1572864 & i2) == 0) {
                function7 = function4;
                if (gapComposerH.y(function7)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i11 |= i9;
            } else {
                function7 = function4;
            }
            i7 = i11;
            if ((i7 & 599187) != 599186) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (gapComposerH.p(i7 & 1, z2)) {
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i13 != 0) {
                    objX5 = gapComposerH.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new p(12);
                        gapComposerH.q(objX5);
                    }
                    function5 = (Function1) objX5;
                }
                if (i4 != 0) {
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new p(12);
                        gapComposerH.q(objX4);
                    }
                    function10 = (Function1) objX4;
                } else {
                    function10 = function6;
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                    gapComposerH.q(objX);
                }
                coroutineScope = (CoroutineScope) objX;
                while (r22.hasNext()) {
                    gapComposerH.A(2032764916, function11.invoke(obj2));
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = SnapshotStateKt.g(Boolean.TRUE);
                        gapComposerH.q(objX2);
                    }
                    mutableState = (MutableState) objX2;
                    if ((i7 & 112) == i12) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    boolean zY3 = z3 | gapComposerH.y(coroutineScope);
                    if ((i7 & 3670016) == i6) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    boolean z8 = zY3 | z4;
                    if ((i7 & 57344) == 16384) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    zY = z8 | z5 | gapComposerH.y(obj2);
                    objX3 = gapComposerH.x();
                    if (zY) {
                        obj = obj2;
                        i8 = i6;
                        final Function1 function13 = function7;
                        coroutineScope2 = coroutineScope;
                        Function0 function14 = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.a
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                ExitTransition exitTransition = ActiveFiltersSliderKt.f58051a;
                                if (z6) {
                                    mutableState.setValue(Boolean.FALSE);
                                    BuildersKt.c(coroutineScope2, null, null, new ActiveFiltersSliderKt$AnimatedActiveFilterList$3$onFilterClicked$1$1$1(function13, function10, obj, null), 3);
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(function14);
                        objX3 = function14;
                    } else {
                        obj = obj2;
                        i8 = i6;
                        final Function1 function15 = function7;
                        coroutineScope2 = coroutineScope;
                        Function0 function16 = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.a
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                ExitTransition exitTransition = ActiveFiltersSliderKt.f58051a;
                                if (z6) {
                                    mutableState.setValue(Boolean.FALSE);
                                    BuildersKt.c(coroutineScope2, null, null, new ActiveFiltersSliderKt$AnimatedActiveFilterList$3$onFilterClicked$1$1$1(function15, function10, obj, null), 3);
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(function16);
                        objX3 = function16;
                    }
                    GapComposer gapComposer3 = gapComposerH;
                    AnimatedVisibilityKt.e(((Boolean) mutableState.getF10755b()).booleanValue(), null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), f58051a, null, ComposableLambdaKt.b(997699033, new o3(function11, obj, function5, f3, context, (Function0) objX3, mutableState), gapComposerH), gapComposer3, 200064, 18);
                    gapComposer3.Z(false);
                    z6 = z;
                    function11 = function1;
                    f3 = f2;
                    function5 = function5;
                    gapComposerH = gapComposer3;
                    coroutineScope = coroutineScope2;
                    context = context;
                    i6 = i8;
                    composer$Companion$Empty$1 = composer$Companion$Empty$1;
                    i12 = 32;
                    function7 = function4;
                }
                gapComposer = gapComposerH;
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                function8 = function5;
                function9 = function10;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                function8 = function5;
                function9 = function6;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: i3
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj3, Object obj4) {
                        ((Integer) obj4).getClass();
                        ActiveFiltersSliderKt.b(list, z, function1, function8, function9, f2, function4, (Composer) obj3, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i11 |= 3072;
        function5 = function2;
        i4 = i3 & 16;
        if (i4 != 0) {
            if ((i2 & 24576) == 0) {
                function6 = function3;
                if (gapComposerH.y(function6)) {
                    i5 = 16384;
                } else {
                    i5 = 8192;
                }
                i11 |= i5;
            }
            if ((196608 & i2) == 0) {
                f3 = f2;
                if (gapComposerH.c(f3)) {
                    i10 = 131072;
                } else {
                    i10 = 65536;
                }
                i11 |= i10;
            } else {
                f3 = f2;
            }
            i6 = 1048576;
            if ((1572864 & i2) == 0) {
                function7 = function4;
                if (gapComposerH.y(function7)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i11 |= i9;
            } else {
                function7 = function4;
            }
            i7 = i11;
            if ((i7 & 599187) != 599186) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (gapComposerH.p(i7 & 1, z2)) {
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i13 != 0) {
                    objX5 = gapComposerH.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new p(12);
                        gapComposerH.q(objX5);
                    }
                    function5 = (Function1) objX5;
                }
                if (i4 != 0) {
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new p(12);
                        gapComposerH.q(objX4);
                    }
                    function10 = (Function1) objX4;
                } else {
                    function10 = function6;
                }
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                    gapComposerH.q(objX);
                }
                coroutineScope = (CoroutineScope) objX;
                while (r22.hasNext()) {
                    gapComposerH.A(2032764916, function11.invoke(obj2));
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = SnapshotStateKt.g(Boolean.TRUE);
                        gapComposerH.q(objX2);
                    }
                    mutableState = (MutableState) objX2;
                    if ((i7 & 112) == i12) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    boolean zY4 = z3 | gapComposerH.y(coroutineScope);
                    if ((i7 & 3670016) == i6) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    boolean z9 = zY4 | z4;
                    if ((i7 & 57344) == 16384) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    zY = z9 | z5 | gapComposerH.y(obj2);
                    objX3 = gapComposerH.x();
                    if (zY) {
                        obj = obj2;
                        i8 = i6;
                        final Function1 function17 = function7;
                        coroutineScope2 = coroutineScope;
                        Function0 function18 = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.a
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                ExitTransition exitTransition = ActiveFiltersSliderKt.f58051a;
                                if (z6) {
                                    mutableState.setValue(Boolean.FALSE);
                                    BuildersKt.c(coroutineScope2, null, null, new ActiveFiltersSliderKt$AnimatedActiveFilterList$3$onFilterClicked$1$1$1(function17, function10, obj, null), 3);
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(function18);
                        objX3 = function18;
                    } else {
                        obj = obj2;
                        i8 = i6;
                        final Function1 function19 = function7;
                        coroutineScope2 = coroutineScope;
                        Function0 function110 = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.a
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                ExitTransition exitTransition = ActiveFiltersSliderKt.f58051a;
                                if (z6) {
                                    mutableState.setValue(Boolean.FALSE);
                                    BuildersKt.c(coroutineScope2, null, null, new ActiveFiltersSliderKt$AnimatedActiveFilterList$3$onFilterClicked$1$1$1(function19, function10, obj, null), 3);
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(function110);
                        objX3 = function110;
                    }
                    GapComposer gapComposer4 = gapComposerH;
                    AnimatedVisibilityKt.e(((Boolean) mutableState.getF10755b()).booleanValue(), null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), f58051a, null, ComposableLambdaKt.b(997699033, new o3(function11, obj, function5, f3, context, (Function0) objX3, mutableState), gapComposerH), gapComposer4, 200064, 18);
                    gapComposer4.Z(false);
                    z6 = z;
                    function11 = function1;
                    f3 = f2;
                    function5 = function5;
                    gapComposerH = gapComposer4;
                    coroutineScope = coroutineScope2;
                    context = context;
                    i6 = i8;
                    composer$Companion$Empty$1 = composer$Companion$Empty$1;
                    i12 = 32;
                    function7 = function4;
                }
                gapComposer = gapComposerH;
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                function8 = function5;
                function9 = function10;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                function8 = function5;
                function9 = function6;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: i3
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj3, Object obj4) {
                        ((Integer) obj4).getClass();
                        ActiveFiltersSliderKt.b(list, z, function1, function8, function9, f2, function4, (Composer) obj3, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i11 |= 24576;
        function6 = function3;
        if ((196608 & i2) == 0) {
            f3 = f2;
            if (gapComposerH.c(f3)) {
                i10 = 131072;
            } else {
                i10 = 65536;
            }
            i11 |= i10;
        } else {
            f3 = f2;
        }
        i6 = 1048576;
        if ((1572864 & i2) == 0) {
            function7 = function4;
            if (gapComposerH.y(function7)) {
                i9 = 1048576;
            } else {
                i9 = 524288;
            }
            i11 |= i9;
        } else {
            function7 = function4;
        }
        i7 = i11;
        if ((i7 & 599187) != 599186) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposerH.p(i7 & 1, z2)) {
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i13 != 0) {
                objX5 = gapComposerH.x();
                if (objX5 == composer$Companion$Empty$1) {
                    objX5 = new p(12);
                    gapComposerH.q(objX5);
                }
                function5 = (Function1) objX5;
            }
            if (i4 != 0) {
                objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new p(12);
                    gapComposerH.q(objX4);
                }
                function10 = (Function1) objX4;
            } else {
                function10 = function6;
            }
            OpaqueKey opaqueKey7 = ComposerKt.f7940a;
            context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            objX = gapComposerH.x();
            if (objX == composer$Companion$Empty$1) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            coroutineScope = (CoroutineScope) objX;
            while (r22.hasNext()) {
                gapComposerH.A(2032764916, function11.invoke(obj2));
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = SnapshotStateKt.g(Boolean.TRUE);
                    gapComposerH.q(objX2);
                }
                mutableState = (MutableState) objX2;
                if ((i7 & 112) == i12) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                boolean zY5 = z3 | gapComposerH.y(coroutineScope);
                if ((i7 & 3670016) == i6) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                boolean z10 = zY5 | z4;
                if ((i7 & 57344) == 16384) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                zY = z10 | z5 | gapComposerH.y(obj2);
                objX3 = gapComposerH.x();
                if (zY) {
                    obj = obj2;
                    i8 = i6;
                    final Function1 function111 = function7;
                    coroutineScope2 = coroutineScope;
                    Function0 function112 = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.a
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            ExitTransition exitTransition = ActiveFiltersSliderKt.f58051a;
                            if (z6) {
                                mutableState.setValue(Boolean.FALSE);
                                BuildersKt.c(coroutineScope2, null, null, new ActiveFiltersSliderKt$AnimatedActiveFilterList$3$onFilterClicked$1$1$1(function111, function10, obj, null), 3);
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(function112);
                    objX3 = function112;
                } else {
                    obj = obj2;
                    i8 = i6;
                    final Function1 function113 = function7;
                    coroutineScope2 = coroutineScope;
                    Function0 function114 = new Function0() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.components.a
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            ExitTransition exitTransition = ActiveFiltersSliderKt.f58051a;
                            if (z6) {
                                mutableState.setValue(Boolean.FALSE);
                                BuildersKt.c(coroutineScope2, null, null, new ActiveFiltersSliderKt$AnimatedActiveFilterList$3$onFilterClicked$1$1$1(function113, function10, obj, null), 3);
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(function114);
                    objX3 = function114;
                }
                GapComposer gapComposer5 = gapComposerH;
                AnimatedVisibilityKt.e(((Boolean) mutableState.getF10755b()).booleanValue(), null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), f58051a, null, ComposableLambdaKt.b(997699033, new o3(function11, obj, function5, f3, context, (Function0) objX3, mutableState), gapComposerH), gapComposer5, 200064, 18);
                gapComposer5.Z(false);
                z6 = z;
                function11 = function1;
                f3 = f2;
                function5 = function5;
                gapComposerH = gapComposer5;
                coroutineScope = coroutineScope2;
                context = context;
                i6 = i8;
                composer$Companion$Empty$1 = composer$Companion$Empty$1;
                i12 = 32;
                function7 = function4;
            }
            gapComposer = gapComposerH;
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
            function8 = function5;
            function9 = function10;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            function8 = function5;
            function9 = function6;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: i3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj3, Object obj4) {
                    ((Integer) obj4).getClass();
                    ActiveFiltersSliderKt.b(list, z, function1, function8, function9, f2, function4, (Composer) obj3, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }
}
