package com.vuitton.android.presentation.screen.aicompanion.components.entrypoint;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.window.AndroidDialog_androidKt;
import androidx.compose.ui.window.DialogProperties;
import defpackage.d0;
import defpackage.u1;
import defpackage.v1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u000b²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u0012\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\nX\u008a\u0084\u0002²\u0006\u0012\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\nX\u008a\u0084\u0002²\u0006\f\u0010\n\u001a\u00020\t8\nX\u008a\u0084\u0002"}, d2 = {"", "tooltipHeightPx", "", "isVisible", "dismissedByButtonClick", "Lkotlin/Function0;", "", "currentOnTooltipDismissed", "currentOnAICompanionClicked", "Lcom/vuitton/android/presentation/screen/aicompanion/components/entrypoint/TooltipOffsets;", "tooltipOffsets", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AICompanionTooltipKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f52836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final long f52837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f52838c;
    public static final long d;

    static {
        Dp.Companion companion = Dp.f11004c;
        f52836a = 277.0f;
        Duration.Companion companion2 = Duration.INSTANCE;
        f52837b = DurationKt.g(5, DurationUnit.SECONDS);
        DurationUnit durationUnit = DurationUnit.MILLISECONDS;
        f52838c = DurationKt.g(300, durationUnit);
        d = DurationKt.g(100, durationUnit);
    }

    public static final void a(Rect rect, Function0 function0, Function0 function1, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerC = defpackage.a.c(function0, function1, composer, -1643817501);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerC.K(rect) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerC.y(function0) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerC.y(function1) ? 256 : 128;
        }
        if (gapComposerC.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Density density = (Density) gapComposerC.k(CompositionLocalsKt.f10031h);
            Object objX = gapComposerC.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotIntStateKt.a(0);
                gapComposerC.q(objX);
            }
            MutableIntState mutableIntState = (MutableIntState) objX;
            Object objX2 = gapComposerC.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerC.q(objX2);
            }
            MutableState mutableState = (MutableState) objX2;
            Object objX3 = gapComposerC.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerC.q(objX3);
            }
            MutableState mutableState2 = (MutableState) objX3;
            Object objX4 = gapComposerC.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new FocusRequester();
                gapComposerC.q(objX4);
            }
            FocusRequester focusRequester = (FocusRequester) objX4;
            MutableState mutableStateL = SnapshotStateKt.l(function0, gapComposerC);
            MutableState mutableStateL2 = SnapshotStateKt.l(function1, gapComposerC);
            Unit unit = Unit.f71739a;
            Object objX5 = gapComposerC.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new AICompanionTooltipKt$AICompanionTooltip$1$1(mutableState, null);
                gapComposerC.q(objX5);
            }
            EffectsKt.e(gapComposerC, unit, (Function2) objX5);
            Object objX6 = gapComposerC.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = new AICompanionTooltipKt$AICompanionTooltip$2$1(focusRequester, null);
                gapComposerC.q(objX6);
            }
            EffectsKt.e(gapComposerC, unit, (Function2) objX6);
            if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                gapComposerC.L(251626079);
                gapComposerC.Z(false);
            } else {
                gapComposerC.L(251407932);
                boolean zK = gapComposerC.K(mutableStateL) | gapComposerC.K(mutableStateL2);
                Object objX7 = gapComposerC.x();
                if (zK || objX7 == composer$Companion$Empty$1) {
                    objX7 = new AICompanionTooltipKt$AICompanionTooltip$3$1(mutableStateL, mutableState2, mutableStateL2, null);
                    gapComposerC.q(objX7);
                }
                EffectsKt.e(gapComposerC, unit, (Function2) objX7);
                gapComposerC.Z(false);
            }
            Object objX8 = gapComposerC.x();
            if (objX8 == composer$Companion$Empty$1) {
                objX8 = new d0(3, mutableState);
                gapComposerC.q(objX8);
            }
            AndroidDialog_androidKt.a((Function0) objX8, new DialogProperties(true, false, null, false, false, null, 0, null, 228, null), ComposableLambdaKt.b(-975122310, new u1(mutableState, density, focusRequester, rect, mutableIntState, mutableState2), gapComposerC), gapComposerC, 438, 0);
        } else {
            gapComposerC.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerC.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(i2, 0, rect, function0, function1);
        }
    }
}
