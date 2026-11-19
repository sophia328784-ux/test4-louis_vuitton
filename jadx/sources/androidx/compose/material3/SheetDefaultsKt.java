package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.material3.SheetDefaultsKt;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import defpackage.fw0;
import defpackage.ql;
import defpackage.xz;
import defpackage.zt0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class SheetDefaultsKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f7201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TweenSpec f7202b;

    static {
        Dp.Companion companion = Dp.f11004c;
        f7201a = 22.0f;
        f7202b = AnimationSpecKt.c(300, 0, EasingKt.f3862a, 2);
    }

    public static final void a(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        ComposableLambdaImpl composableLambdaImpl2;
        GapComposer gapComposerH = composer.h(1033612924);
        if (gapComposerH.p(i2 & 1, (i2 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i3 = Strings.f7646a;
            final String strA = Strings_androidKt.a(gapComposerH, R.string.m3c_bottom_sheet_drag_handle_description);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("DragHandleWithTooltip");
            Alignment.f8582a.getClass();
            Modifier modifierB = ColumnScopeInstance.f4944a.b(dTFunctionNameModifier, Alignment.Companion.o);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iG = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Function2 function2 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function2);
            }
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            float f2 = TooltipDefaults.f7400b;
            TooltipAnchorPosition.f7394a.getClass();
            composableLambdaImpl2 = composableLambdaImpl;
            TooltipKt.b(TooltipDefaults.a(gapComposerH, TooltipAnchorPosition.f7395b), ComposableLambdaKt.b(2059851063, new Function3<TooltipScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.SheetDefaultsKt$DragHandleWithTooltip$1$1
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    TooltipScope tooltipScope = (TooltipScope) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Number) obj3).intValue();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= (iIntValue & 8) == 0 ? composer2.K(tooltipScope) : composer2.y(tooltipScope) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        final String str = strA;
                        TooltipKt.a(tooltipScope, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 0L, 0L, ComposableLambdaKt.b(-999924215, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SheetDefaultsKt$DragHandleWithTooltip$1$1.1
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj4, Object obj5) {
                                Composer composer3 = (Composer) obj4;
                                int iIntValue2 = ((Number) obj5).intValue();
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    TextKt.c(str, null, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer3, 0, 0, 262142);
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, (iIntValue & 14) | 805306368);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), TooltipKt.c(gapComposerH), null, false, composableLambdaImpl2, gapComposerH, 100663344, 248);
            gapComposerH.Z(true);
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ql(composableLambdaImpl2, i2, 27);
        }
    }

    public static final SheetState b(boolean z, final Function1 function1, final SheetValue sheetValue, boolean z2, Composer composer, int i2, int i3) {
        final boolean z3 = (i3 & 1) != 0 ? false : z;
        boolean z4 = (i3 & 8) != 0 ? false : z2;
        float f2 = BottomSheetDefaults.d;
        float f3 = BottomSheetDefaults.f6578e;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Density density = (Density) composer.k(CompositionLocalsKt.f10031h);
        boolean z5 = true;
        boolean zK = composer.K(density) | ((((57344 & i2) ^ 24576) > 16384 && composer.c(f2)) || (i2 & 24576) == 16384);
        Object objX = composer.x();
        Object obj = Composer.Companion.f7939a;
        if (zK || objX == obj) {
            objX = new fw0(density, f2, 0);
            composer.q(objX);
        }
        final Function0 function0 = (Function0) objX;
        boolean zK2 = composer.K(density) | ((((458752 & i2) ^ ImageMetadata.EDGE_MODE) > 131072 && composer.c(f3)) || (i2 & ImageMetadata.EDGE_MODE) == 131072);
        Object objX2 = composer.x();
        if (zK2 || objX2 == obj) {
            objX2 = new fw0(density, f3, 1);
            composer.q(objX2);
        }
        final Function0 function2 = (Function0) objX2;
        Object[] objArr = {Boolean.valueOf(z3), function1, Boolean.valueOf(z4)};
        SheetState.f7207h.getClass();
        SaverKt$Saver$1 saverKt$Saver$1 = new SaverKt$Saver$1(new zt0(18), new xz(z3, function0, function2, function1, z4));
        boolean zK3 = ((((i2 & 14) ^ 6) > 4 && composer.b(z3)) || (i2 & 6) == 4) | composer.K(function0) | composer.K(function2) | ((((i2 & 896) ^ KyberEngine.KyberPolyBytes) > 256 && composer.d(sheetValue.ordinal())) || (i2 & KyberEngine.KyberPolyBytes) == 256) | ((((i2 & 112) ^ 48) > 32 && composer.K(function1)) || (i2 & 48) == 32);
        if ((((i2 & 7168) ^ 3072) <= 2048 || !composer.b(z4)) && (i2 & 3072) != 2048) {
            z5 = false;
        }
        boolean z6 = zK3 | z5;
        Object objX3 = composer.x();
        if (z6 || objX3 == obj) {
            final boolean z7 = z4;
            Object obj2 = new Function0() { // from class: gw0
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    float f4 = SheetDefaultsKt.f7201a;
                    return new SheetState(z3, function0, function2, sheetValue, function1, z7);
                }
            };
            composer.q(obj2);
            objX3 = obj2;
        }
        return (SheetState) RememberSaveableKt.b(objArr, saverKt$Saver$1, (Function0) objX3, composer, 0);
    }
}
