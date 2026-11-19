package com.vuitton.android.designkit.components.components;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.AlertDialogKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.window.DialogProperties;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import defpackage.b3;
import defpackage.n00;
import defpackage.w;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u0004\u0018\u00010\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/airbnb/lottie/LottieComposition;", "composition", "components"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVTooltipKt {

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48271a;

        static {
            int[] iArr = new int[TooltipGravity.values().length];
            try {
                iArr[TooltipGravity.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TooltipGravity.BOTTOM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[TooltipGravity.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f48271a = iArr;
        }
    }

    public static final void a(TooltipGravity tooltipGravity, PaddingValues paddingValues, String str, String str2, Function0 function0, Composer composer, int i2) {
        int i3;
        Object obj;
        Object obj2;
        TooltipGravity tooltipGravity2;
        Modifier modifierJ;
        tooltipGravity.getClass();
        str.getClass();
        str2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(826586086);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.d(tooltipGravity.ordinal()) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(paddingValues) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.d(R.raw.animation_long_press) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            obj = str;
            i3 |= gapComposerH.K(obj) ? 2048 : 1024;
        } else {
            obj = str;
        }
        if ((i2 & 24576) == 0) {
            obj2 = str2;
            i3 |= gapComposerH.K(obj2) ? 16384 : 8192;
        } else {
            obj2 = str2;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (paddingValues != null) {
                tooltipGravity2 = tooltipGravity;
                if (tooltipGravity2 == TooltipGravity.TOP) {
                    DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, 1779005008, "LVTooltip");
                    float f5031b = paddingValues.getF5031b() - WindowInsetsKt.e(WindowInsets_androidKt.b(gapComposerH), gapComposerH).getF5031b();
                    Dp.Companion companion = Dp.f11004c;
                    modifierJ = PaddingKt.m(dTFunctionNameModifierI, Call.Parameters.DEFAULT_CAMERA_ZOOM, f5031b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    gapComposerH.Z(false);
                }
                AlertDialogKt.b(function0, modifierJ, new DialogProperties(false, false, false, 3, (DefaultConstructorMarker) null), ComposableLambdaKt.b(-514891924, new w(tooltipGravity2, function0, n00.h(R.raw.animation_long_press, gapComposerH, 0), obj, obj2, 24), gapComposerH), gapComposerH, ((i3 >> 15) & 14) | 3456);
            } else {
                tooltipGravity2 = tooltipGravity;
            }
            modifierJ = n00.j(gapComposerH, 1779269252, false, "LVTooltip");
            AlertDialogKt.b(function0, modifierJ, new DialogProperties(false, false, false, 3, (DefaultConstructorMarker) null), ComposableLambdaKt.b(-514891924, new w(tooltipGravity2, function0, n00.h(R.raw.animation_long_press, gapComposerH, 0), obj, obj2, 24), gapComposerH), gapComposerH, ((i3 >> 15) & 14) | 3456);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3((Object) tooltipGravity, (Object) paddingValues, (Object) str, (Object) str2, function0, i2, 12);
        }
    }
}
