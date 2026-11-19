package com.sightcall.graphik.composent;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ButtonDefaults;
import androidx.compose.material3.ButtonKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.Shapes;
import androidx.compose.material3.ShapesKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.sightcall.graphik.Colors;
import com.sightcall.graphik.ColorsKt;
import com.sightcall.graphik.VisionTypographyKt;
import defpackage.a;
import defpackage.la;
import defpackage.lg;
import defpackage.vh;
import defpackage.wh;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.internal.Constants;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a-\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007H\u0007¢\u0006\u0002\u0010\b\u001a-\u0010\t\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007H\u0007¢\u0006\u0002\u0010\b\u001a\r\u0010\n\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u000b\u001a\r\u0010\f\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u000b¨\u0006\r"}, d2 = {"LargeConfirmButton", "", "text", "", "onClick", "Lkotlin/Function0;", "modifier", "Landroidx/compose/ui/Modifier;", "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "VisionTextButton", "PreviewLargeConfirmButton", "(Landroidx/compose/runtime/Composer;I)V", "PreviewVisionTextButton", "graphik_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class ButtonsKt {
    public static final void LargeConfirmButton(String str, Function0<Unit> function0, Modifier modifier, Composer composer, int i2, int i3) {
        int i4;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "LargeConfirmButton");
        }
        str.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-300000852);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(function0) ? 32 : 16;
        }
        int i5 = i3 & 4;
        if (i5 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(dTFunctionNameModifier) ? 256 : 128;
        }
        if ((i4 & 147) == 146 && gapComposerH.i()) {
            gapComposerH.D();
        } else {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LargeConfirmButton");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierD = SizeKt.d(dTFunctionNameModifier, 1.0f);
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierF = SizeKt.f(modifierD, 60.0f);
            PaddingValuesImpl paddingValuesImpl = ButtonDefaults.f6634a;
            long consentButtonBackground = ((Colors) gapComposerH.k(ColorsKt.getLocalVisionAppColors())).getConsentButtonBackground(gapComposerH, 0);
            Color.f8866b.getClass();
            ButtonKt.a(function0, modifierF, false, ((Shapes) gapComposerH.k(ShapesKt.f7199a)).f7194b, ButtonDefaults.a(consentButtonBackground, Color.f8868e, gapComposerH, 12), null, null, ComposableLambdaKt.b(448594332, new la(str, 1), gapComposerH), gapComposerH, ((i4 >> 3) & 14) | 805306368, 484);
        }
        Modifier modifier2 = dTFunctionNameModifier;
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new vh(str, function0, modifier2, i2, i3, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LargeConfirmButton$lambda$0(String str, RowScope rowScope, Composer composer, int i2) {
        rowScope.getClass();
        if ((i2 & 17) == 16 && composer.i()) {
            composer.D();
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            TextKt.b(str, null, 0L, 0L, 0L, 0L, 0, false, 0, 0, TextStyle.a(VisionTypographyKt.getTextButtonStyle(MaterialTheme.b(composer)), ((Colors) composer.k(ColorsKt.getLocalVisionAppColors())).getConsentButtonTextColor(composer, 0), 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214), composer, 0, Constants.CallType.HOST);
        }
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit LargeConfirmButton$lambda$1(String str, Function0 function0, Modifier modifier, int i2, int i3, Composer composer, int i4) {
        LargeConfirmButton(str, function0, modifier, composer, RecomposeScopeImplKt.a(i2 | 1), i3);
        return Unit.f71739a;
    }

    public static final void PreviewLargeConfirmButton(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1725181464);
        if (i2 == 0 && gapComposerH.i()) {
            gapComposerH.D();
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new lg(9);
                gapComposerH.q(objX);
            }
            Function0 function0 = (Function0) objX;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PreviewLargeConfirmButton");
            Dp.Companion companion = Dp.f11004c;
            LargeConfirmButton("Confirm", function0, PaddingKt.i(dTFunctionNameModifier, 16.0f), gapComposerH, 438, 0);
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wh(i2, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit PreviewLargeConfirmButton$lambda$1(int i2, Composer composer, int i3) {
        PreviewLargeConfirmButton(composer, RecomposeScopeImplKt.a(i2 | 1));
        return Unit.f71739a;
    }

    public static final void PreviewVisionTextButton(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1257843400);
        if (i2 == 0 && gapComposerH.i()) {
            gapComposerH.D();
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new lg(8);
                gapComposerH.q(objX);
            }
            Function0 function0 = (Function0) objX;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PreviewVisionTextButton");
            Dp.Companion companion = Dp.f11004c;
            VisionTextButton("Click Me", function0, PaddingKt.i(dTFunctionNameModifier, 16.0f), gapComposerH, 438, 0);
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wh(i2, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit PreviewVisionTextButton$lambda$1(int i2, Composer composer, int i3) {
        PreviewVisionTextButton(composer, RecomposeScopeImplKt.a(i2 | 1));
        return Unit.f71739a;
    }

    public static final void VisionTextButton(String str, Function0<Unit> function0, Modifier modifier, Composer composer, int i2, int i3) {
        int i4;
        Function0<Unit> function1;
        Modifier modifier2;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "VisionTextButton");
        }
        str.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1529898492);
        int i5 = 2;
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            function1 = function0;
            i4 |= gapComposerH.y(function1) ? 32 : 16;
        } else {
            function1 = function0;
        }
        int i6 = i3 & 4;
        if (i6 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(dTFunctionNameModifier) ? 256 : 128;
        }
        if ((i4 & 147) == 146 && gapComposerH.i()) {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
        } else {
            if (i6 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("VisionTextButton");
            }
            Modifier modifier3 = dTFunctionNameModifier;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i7 = i4 >> 3;
            ButtonKt.b(function1, modifier3, false, null, null, null, ComposableLambdaKt.b(-1454359047, new la(str, i5), gapComposerH), gapComposerH, (i7 & 14) | 805306368 | (i7 & 112), 508);
            modifier2 = modifier3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new vh(str, function0, modifier2, i2, i3, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit VisionTextButton$lambda$0(String str, RowScope rowScope, Composer composer, int i2) {
        rowScope.getClass();
        if ((i2 & 17) == 16 && composer.i()) {
            composer.D();
        } else {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            TextKt.b(str, null, 0L, 0L, 0L, 0L, 0, false, 0, 0, TextStyle.a(VisionTypographyKt.getTextButtonStyle(MaterialTheme.b(composer)), ((Colors) composer.k(ColorsKt.getLocalVisionAppColors())).getConsentButtonBackground(composer, 0), 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214), composer, 0, Constants.CallType.HOST);
        }
        return Unit.f71739a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit VisionTextButton$lambda$1(String str, Function0 function0, Modifier modifier, int i2, int i3, Composer composer, int i4) {
        VisionTextButton(str, function0, modifier, composer, RecomposeScopeImplKt.a(i2 | 1), i3);
        return Unit.f71739a;
    }
}
