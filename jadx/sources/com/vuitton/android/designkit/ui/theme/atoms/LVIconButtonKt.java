package com.vuitton.android.designkit.ui.theme.atoms;

import android.content.Context;
import android.graphics.ColorFilter;
import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteractionKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.compose.AnimateLottieCompositionAsStateKt;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.airbnb.lottie.compose.LottieCompositionSpec;
import com.airbnb.lottie.compose.LottieDynamicProperties;
import com.airbnb.lottie.compose.LottieDynamicPropertiesKt;
import com.airbnb.lottie.compose.LottieDynamicProperty;
import com.airbnb.lottie.compose.RememberLottieCompositionKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import defpackage.k40;
import defpackage.l00;
import defpackage.lt;
import defpackage.mm;
import defpackage.n00;
import defpackage.x;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002¨\u0006\r²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00048\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0006\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\b\u001a\u0004\u0018\u00010\u00078\nX\u008a\u0084\u0002²\u0006\f\u0010\n\u001a\u00020\t8\nX\u008a\u0084\u0002²\u0006\u000e\u0010\f\u001a\u00020\u000b8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\f\u001a\u00020\u000b8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\f\u001a\u00020\u000b8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\f\u001a\u00020\u000b8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\f\u001a\u00020\u000b8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\f\u001a\u00020\u000b8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\f\u001a\u00020\u000b8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\f\u001a\u00020\u000b8\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isPressed", "Landroidx/compose/ui/graphics/Color;", "backgroundColor", "Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationIconButton$Border;", "border", "animatingBorder", "Lcom/airbnb/lottie/LottieComposition;", "composition", "", "progress", "", "icon", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVIconButtonKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CubicBezierEasing f48475a = EasingKt.f3862a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f48476b = new StaticProvidableCompositionLocal(new k40(18));

    public static final void a(Modifier modifier, int i2, Dp dp, String str, ConfigurationIconButton configurationIconButton, int i3, boolean z, Function0 function0, Composer composer, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        GapComposer gapComposer;
        long j2;
        long j3;
        long jB;
        Modifier modifier2;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Modifier modifierJ;
        Modifier dTFunctionNameModifier;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "IconButtonInternal-_6lLnCg");
        }
        GapComposer gapComposerH = composer.h(-2001770222);
        if ((i4 & 6) == 0) {
            i6 = (gapComposerH.K(modifierE) ? 4 : 2) | i4;
        } else {
            i6 = i4;
        }
        if ((i4 & 48) == 0) {
            i6 |= gapComposerH.d(i2) ? 32 : 16;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.K(dp) ? 256 : 128;
        }
        int i9 = i6;
        if ((i4 & 3072) == 0) {
            i7 = i9 | (gapComposerH.K(str) ? 2048 : 1024);
        } else {
            i7 = i9;
        }
        if ((i4 & 24576) == 0) {
            i7 |= (i4 & 32768) == 0 ? gapComposerH.K(configurationIconButton) : gapComposerH.y(configurationIconButton) ? 16384 : 8192;
        }
        if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
            i7 |= gapComposerH.b(true) ? 131072 : 65536;
        }
        if ((i4 & 1572864) == 0) {
            i7 |= gapComposerH.b(false) ? 1048576 : 524288;
        }
        int i10 = i7 | 12582912;
        if ((i4 & 100663296) == 0) {
            i10 |= gapComposerH.d(i3) ? 67108864 : 33554432;
        }
        if ((i4 & 805306368) == 0) {
            i10 |= gapComposerH.b(z) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i5 & 6) == 0) {
            i8 = i5 | (gapComposerH.b(true) ? 4 : 2);
        } else {
            i8 = i5;
        }
        if ((i5 & 48) == 0) {
            i8 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if (gapComposerH.p(i10 & 1, ((306783379 & i10) == 306783378 && (i8 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$2) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX;
            MutableState mutableStateA = PressInteractionKt.a(mutableInteractionSource, gapComposerH, 6);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$2) {
                objX2 = SnapshotStateKt.g(new Color(configurationIconButton.f48551a));
                gapComposerH.q(objX2);
            }
            MutableState mutableState = (MutableState) objX2;
            if (z) {
                j2 = !((Boolean) mutableStateA.getF10755b()).booleanValue() ? configurationIconButton.f48551a : configurationIconButton.f48552b;
            } else {
                Color color = configurationIconButton.d;
                j2 = color != null ? color.f8872a : configurationIconButton.f48551a;
            }
            mutableState.setValue(new Color(j2));
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$2) {
                objX3 = SnapshotStateKt.g(configurationIconButton.f48556h);
                gapComposerH.q(objX3);
            }
            MutableState mutableState2 = (MutableState) objX3;
            mutableState2.setValue(!((Boolean) mutableStateA.getF10755b()).booleanValue() ? configurationIconButton.f48556h : configurationIconButton.f48557i);
            if (((ConfigurationIconButton.Border) mutableState2.getF10755b()) instanceof ConfigurationIconButton.Border.Stroke) {
                ConfigurationIconButton.Border border = (ConfigurationIconButton.Border) mutableState2.getF10755b();
                border.getClass();
                jB = ((ConfigurationIconButton.Border.Stroke) border).f48560a;
            } else {
                ConfigurationIconButton.Border border2 = configurationIconButton.f48556h;
                if (border2 instanceof ConfigurationIconButton.Border.Stroke) {
                    j3 = ((ConfigurationIconButton.Border.Stroke) border2).f48560a;
                } else {
                    Color.f8866b.getClass();
                    j3 = Color.f8870h;
                }
                jB = Color.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, j3);
            }
            int i11 = i10;
            State stateB = SingleValueAnimationKt.b(jB, AnimationSpecKt.c(150, 0, f48475a, 2), "animatingBorder", gapComposerH, 432, 8);
            gapComposer = gapComposerH;
            RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.f5846a;
            Modifier modifierB = BackgroundKt.b(ClipKt.a(modifierE, roundedCornerShape), ((Color) mutableState.getF10755b()).f8872a, RectangleShapeKt.f8913a);
            if (function0 != null) {
                gapComposer.L(886399482);
                modifier2 = modifierB;
                Modifier modifierC = ModifierExtKt.c(Modifier.Companion.f8607b, z, mutableInteractionSource, null, function0, 18);
                boolean z2 = (i11 & 7168) == 2048;
                Object objX4 = gapComposer.x();
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (z2 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new lt(str, 13);
                    gapComposer.q(objX4);
                }
                modifierJ = SemanticsModifierKt.b(modifierC, false, (Function1) objX4);
                gapComposer.Z(false);
            } else {
                modifier2 = modifierB;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                modifierJ = n00.j(gapComposer, 887196864, false, "IconButtonInternal-_6lLnCg");
            }
            Modifier modifierO = modifier2.o(modifierJ);
            if (((ConfigurationIconButton.Border) mutableState2.getF10755b()) instanceof ConfigurationIconButton.Border.Stroke) {
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("IconButtonInternal-_6lLnCg");
                ConfigurationIconButton.Border border3 = (ConfigurationIconButton.Border) mutableState2.getF10755b();
                border3.getClass();
                dTFunctionNameModifier = BorderKt.a(dTFunctionNameModifier2, ((ConfigurationIconButton.Border.Stroke) border3).f48561b, ((Color) stateB.getF10755b()).f8872a, roundedCornerShape);
            } else {
                dTFunctionNameModifier = new DTFunctionNameModifier("IconButtonInternal-_6lLnCg");
            }
            Modifier modifierO2 = modifierO.o(dTFunctionNameModifier);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposer.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposer, modifierO2);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposer.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function1);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposer, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposer, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposer, modifierC2, ComposeUiNode.Companion.d);
            Context context = (Context) gapComposer.k(AndroidCompositionLocals_androidKt.f9936b);
            String resourceName = context.getResources().getResourceName(i2);
            resourceName.getClass();
            boolean zK = StringsKt.k(resourceName, "drawable", false);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
            if (zK) {
                IconKt.a(PainterResources_androidKt.a(i2, gapComposer, (i11 >> 3) & 14), null, boxScopeInstance.g(SizeKt.o(PaddingKt.h(n00.i(gapComposer, -172665866, "IconButtonInternal-_6lLnCg"), configurationIconButton.g), dp != null ? dp.f11006b : configurationIconButton.f48555f), Alignment.Companion.f8587f), configurationIconButton.f48554e, gapComposer, 56, 0);
                gapComposer = gapComposer;
                gapComposer.Z(false);
            } else {
                String resourceName2 = context.getResources().getResourceName(i2);
                resourceName2.getClass();
                if (StringsKt.k(resourceName2, "raw", false)) {
                    gapComposer.L(-172023205);
                    LottieCompositionResultImpl lottieCompositionResultImplC = RememberLottieCompositionKt.c(new LottieCompositionSpec.RawRes(i2), gapComposer, 0);
                    LottieAnimatable lottieAnimatableA = AnimateLottieCompositionAsStateKt.a(lottieCompositionResultImplC.getF10755b(), false, null, i3, gapComposer, 958);
                    String[] strArr = {"**"};
                    ColorFilter colorFilter = LottieProperty.I;
                    boolean z3 = ((57344 & i11) == 16384 || ((i11 & 32768) != 0 && gapComposer.y(configurationIconButton))) | ((458752 & i11) == 131072);
                    Object objX5 = gapComposer.x();
                    if (z3 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new l00(configurationIconButton, 14);
                        gapComposer.q(objX5);
                    }
                    LottieDynamicProperties lottieDynamicPropertiesA = LottieDynamicPropertiesKt.a(new LottieDynamicProperty[]{LottieDynamicPropertiesKt.c(colorFilter, strArr, (Function1) objX5, gapComposer)}, gapComposer);
                    Modifier modifierG = boxScopeInstance.g(SizeKt.o(PaddingKt.h(new DTFunctionNameModifier("IconButtonInternal-_6lLnCg"), configurationIconButton.g), configurationIconButton.f48555f), Alignment.Companion.f8587f);
                    LottieComposition f10755b = lottieCompositionResultImplC.getF10755b();
                    boolean zK2 = gapComposer.K(lottieAnimatableA);
                    Object objX6 = gapComposer.x();
                    if (zK2 || objX6 == composer$Companion$Empty$1) {
                        objX6 = new x(lottieAnimatableA, 5);
                        gapComposer.q(objX6);
                    }
                    LottieAnimationKt.b(f10755b, (Function0) objX6, modifierG, false, false, false, false, null, false, lottieDynamicPropertiesA, null, null, false, false, null, null, false, gapComposer, 1073741824, 0, 130552);
                    gapComposer = gapComposer;
                    gapComposer.Z(false);
                } else {
                    gapComposer.L(-170674922);
                    gapComposer.Z(false);
                }
            }
            gapComposer.Z(true);
        } else {
            modifierE = modifierE;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new mm(modifierE, i2, dp, str, configurationIconButton, i3, z, function0, i4, i5);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x012d  */
    /* JADX WARN: Code duplicated, block: B:103:0x0132  */
    /* JADX WARN: Code duplicated, block: B:104:0x0134  */
    /* JADX WARN: Code duplicated, block: B:106:0x0137  */
    /* JADX WARN: Code duplicated, block: B:107:0x013a  */
    /* JADX WARN: Code duplicated, block: B:109:0x013d  */
    /* JADX WARN: Code duplicated, block: B:110:0x0146  */
    /* JADX WARN: Code duplicated, block: B:112:0x014a  */
    /* JADX WARN: Code duplicated, block: B:113:0x014d  */
    /* JADX WARN: Code duplicated, block: B:115:0x0151  */
    /* JADX WARN: Code duplicated, block: B:116:0x0153  */
    /* JADX WARN: Code duplicated, block: B:118:0x019a  */
    /* JADX WARN: Code duplicated, block: B:121:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:123:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:47:0x0080  */
    /* JADX WARN: Code duplicated, block: B:49:0x0085  */
    /* JADX WARN: Code duplicated, block: B:51:0x0089  */
    /* JADX WARN: Code duplicated, block: B:53:0x0091  */
    /* JADX WARN: Code duplicated, block: B:54:0x0094  */
    /* JADX WARN: Code duplicated, block: B:58:0x009e  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:69:0x00be  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:81:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:86:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:88:0x0101  */
    /* JADX WARN: Code duplicated, block: B:91:0x0113  */
    /* JADX WARN: Code duplicated, block: B:95:0x011b  */
    /* JADX WARN: Code duplicated, block: B:98:0x0125 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:99:0x0127  */
    public static final void b(Modifier modifier, final ConfigurationIconButton configurationIconButton, final int i2, Dp dp, String str, boolean z, int i3, boolean z2, boolean z3, Function0 function0, Composer composer, final int i4, final int i5, final int i6) {
        int i7;
        Dp dp2;
        int i8;
        String str2;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        boolean z4;
        final boolean z5;
        final int i20;
        final Dp dp3;
        final String str3;
        final Modifier modifier2;
        final boolean z6;
        final boolean z7;
        final Function0 function1;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        Dp dp4;
        String str4;
        int i21;
        int i22;
        boolean z8;
        Function0 function2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVIconButton--Ps0j-Y");
        }
        configurationIconButton.getClass();
        GapComposer gapComposerH = composer.h(-1670656677);
        int i23 = i6 & 1;
        if (i23 != 0) {
            i7 = i4 | 6;
        } else if ((i4 & 6) == 0) {
            i7 = (gapComposerH.K(modifierE) ? 4 : 2) | i4;
        } else {
            i7 = i4;
        }
        if ((i4 & 48) == 0) {
            i7 |= (i4 & 64) == 0 ? gapComposerH.K(configurationIconButton) : gapComposerH.y(configurationIconButton) ? 32 : 16;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            i7 |= gapComposerH.d(i2) ? 256 : 128;
        }
        int i24 = i6 & 8;
        if (i24 == 0) {
            if ((i4 & 3072) == 0) {
                dp2 = dp;
                i7 |= gapComposerH.K(dp2) ? 2048 : 1024;
            }
            i8 = i6 & 16;
            if (i8 != 0) {
                if ((i4 & 24576) == 0) {
                    str2 = str;
                    if (gapComposerH.K(str2)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i7 |= i9;
                }
                i10 = 1769472 | i7;
                i11 = i6 & 128;
                if (i11 != 0) {
                    if ((12582912 & i4) == 0) {
                        i12 = i3;
                        if (gapComposerH.d(i12)) {
                            i13 = 8388608;
                        } else {
                            i13 = 4194304;
                        }
                        i10 |= i13;
                    }
                    i14 = i6 & 256;
                    if (i14 != 0) {
                        if ((i4 & 100663296) == 0) {
                            if (gapComposerH.b(z2)) {
                                i15 = 67108864;
                            } else {
                                i15 = 33554432;
                            }
                            i10 |= i15;
                        }
                        i16 = i10 | 805306368;
                        i17 = i6 & 1024;
                        if (i17 != 0) {
                            i18 = i5 | 6;
                        } else if ((i5 & 6) == 0) {
                            if (gapComposerH.y(function0)) {
                                i19 = 4;
                            } else {
                                i19 = 2;
                            }
                            i18 = i5 | i19;
                        } else {
                            i18 = i5;
                        }
                        if ((i16 & 306783379) == 306783378 || (i18 & 3) != 2) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        if (gapComposerH.p(i16 & 1, z4)) {
                            if (i23 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVIconButton--Ps0j-Y");
                            } else {
                                dTFunctionNameModifier = modifierE;
                            }
                            if (i24 != 0) {
                                dp4 = null;
                            } else {
                                dp4 = dp2;
                            }
                            if (i8 != 0) {
                                str4 = "";
                            } else {
                                str4 = str2;
                            }
                            if (i11 != 0) {
                                i22 = Integer.MAX_VALUE;
                                i21 = i14;
                            } else {
                                i21 = i14;
                                i22 = i12;
                            }
                            if (i21 != 0) {
                                z8 = true;
                            } else {
                                z8 = z2;
                            }
                            if (i17 != 0) {
                                function2 = null;
                            } else {
                                function2 = function0;
                            }
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            int i25 = i16 >> 3;
                            int i26 = (i16 & 14) | (i25 & 112) | (i25 & 896) | (i25 & 7168) | ((i16 << 9) & 57344) | (458752 & i16) | (3670016 & i16);
                            int i27 = i16 << 3;
                            a(dTFunctionNameModifier, i2, dp4, str4, configurationIconButton, i22, z8, function2, gapComposerH, i26 | (234881024 & i27) | (i27 & 1879048192), ((i16 >> 27) & 14) | ((i18 << 3) & 112));
                            modifier2 = dTFunctionNameModifier;
                            dp3 = dp4;
                            function1 = function2;
                            z5 = true;
                            i20 = i22;
                            z7 = z8;
                            z6 = true;
                            str3 = str4;
                        } else {
                            gapComposerH.D();
                            z5 = z3;
                            i20 = i12;
                            dp3 = dp2;
                            str3 = str2;
                            modifier2 = modifierE;
                            z6 = z;
                            z7 = z2;
                            function1 = function0;
                        }
                        recomposeScopeImplB0 = gapComposerH.b0();
                        if (recomposeScopeImplB0 != null) {
                            recomposeScopeImplB0.d = new Function2() { // from class: d60
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    ((Integer) obj2).getClass();
                                    int iA = RecomposeScopeImplKt.a(i4 | 1);
                                    int iA2 = RecomposeScopeImplKt.a(i5);
                                    LVIconButtonKt.b(modifier2, configurationIconButton, i2, dp3, str3, z6, i20, z7, z5, function1, (Composer) obj, iA, iA2, i6);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i10 |= 100663296;
                    i16 = i10 | 805306368;
                    i17 = i6 & 1024;
                    if (i17 != 0) {
                        i18 = i5 | 6;
                    } else if ((i5 & 6) == 0) {
                        if (gapComposerH.y(function0)) {
                            i19 = 4;
                        } else {
                            i19 = 2;
                        }
                        i18 = i5 | i19;
                    } else {
                        i18 = i5;
                    }
                    if ((i16 & 306783379) == 306783378) {
                        z4 = true;
                    } else {
                        z4 = true;
                    }
                    if (gapComposerH.p(i16 & 1, z4)) {
                        if (i23 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVIconButton--Ps0j-Y");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i24 != 0) {
                            dp4 = null;
                        } else {
                            dp4 = dp2;
                        }
                        if (i8 != 0) {
                            str4 = "";
                        } else {
                            str4 = str2;
                        }
                        if (i11 != 0) {
                            i22 = Integer.MAX_VALUE;
                            i21 = i14;
                        } else {
                            i21 = i14;
                            i22 = i12;
                        }
                        if (i21 != 0) {
                            z8 = true;
                        } else {
                            z8 = z2;
                        }
                        if (i17 != 0) {
                            function2 = null;
                        } else {
                            function2 = function0;
                        }
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        int i28 = i16 >> 3;
                        int i29 = (i16 & 14) | (i28 & 112) | (i28 & 896) | (i28 & 7168) | ((i16 << 9) & 57344) | (458752 & i16) | (3670016 & i16);
                        int i210 = i16 << 3;
                        a(dTFunctionNameModifier, i2, dp4, str4, configurationIconButton, i22, z8, function2, gapComposerH, i29 | (234881024 & i210) | (i210 & 1879048192), ((i16 >> 27) & 14) | ((i18 << 3) & 112));
                        modifier2 = dTFunctionNameModifier;
                        dp3 = dp4;
                        function1 = function2;
                        z5 = true;
                        i20 = i22;
                        z7 = z8;
                        z6 = true;
                        str3 = str4;
                    } else {
                        gapComposerH.D();
                        z5 = z3;
                        i20 = i12;
                        dp3 = dp2;
                        str3 = str2;
                        modifier2 = modifierE;
                        z6 = z;
                        z7 = z2;
                        function1 = function0;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: d60
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i4 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i5);
                                LVIconButtonKt.b(modifier2, configurationIconButton, i2, dp3, str3, z6, i20, z7, z5, function1, (Composer) obj, iA, iA2, i6);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i10 = 14352384 | i7;
                i12 = i3;
                i14 = i6 & 256;
                if (i14 != 0) {
                    if ((i4 & 100663296) == 0) {
                        if (gapComposerH.b(z2)) {
                            i15 = 67108864;
                        } else {
                            i15 = 33554432;
                        }
                        i10 |= i15;
                    }
                    i16 = i10 | 805306368;
                    i17 = i6 & 1024;
                    if (i17 != 0) {
                        i18 = i5 | 6;
                    } else if ((i5 & 6) == 0) {
                        if (gapComposerH.y(function0)) {
                            i19 = 4;
                        } else {
                            i19 = 2;
                        }
                        i18 = i5 | i19;
                    } else {
                        i18 = i5;
                    }
                    if ((i16 & 306783379) == 306783378) {
                        z4 = true;
                    } else {
                        z4 = true;
                    }
                    if (gapComposerH.p(i16 & 1, z4)) {
                        if (i23 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVIconButton--Ps0j-Y");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i24 != 0) {
                            dp4 = null;
                        } else {
                            dp4 = dp2;
                        }
                        if (i8 != 0) {
                            str4 = "";
                        } else {
                            str4 = str2;
                        }
                        if (i11 != 0) {
                            i22 = Integer.MAX_VALUE;
                            i21 = i14;
                        } else {
                            i21 = i14;
                            i22 = i12;
                        }
                        if (i21 != 0) {
                            z8 = true;
                        } else {
                            z8 = z2;
                        }
                        if (i17 != 0) {
                            function2 = null;
                        } else {
                            function2 = function0;
                        }
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        int i211 = i16 >> 3;
                        int i212 = (i16 & 14) | (i211 & 112) | (i211 & 896) | (i211 & 7168) | ((i16 << 9) & 57344) | (458752 & i16) | (3670016 & i16);
                        int i213 = i16 << 3;
                        a(dTFunctionNameModifier, i2, dp4, str4, configurationIconButton, i22, z8, function2, gapComposerH, i212 | (234881024 & i213) | (i213 & 1879048192), ((i16 >> 27) & 14) | ((i18 << 3) & 112));
                        modifier2 = dTFunctionNameModifier;
                        dp3 = dp4;
                        function1 = function2;
                        z5 = true;
                        i20 = i22;
                        z7 = z8;
                        z6 = true;
                        str3 = str4;
                    } else {
                        gapComposerH.D();
                        z5 = z3;
                        i20 = i12;
                        dp3 = dp2;
                        str3 = str2;
                        modifier2 = modifierE;
                        z6 = z;
                        z7 = z2;
                        function1 = function0;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: d60
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i4 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i5);
                                LVIconButtonKt.b(modifier2, configurationIconButton, i2, dp3, str3, z6, i20, z7, z5, function1, (Composer) obj, iA, iA2, i6);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i10 |= 100663296;
                i16 = i10 | 805306368;
                i17 = i6 & 1024;
                if (i17 != 0) {
                    i18 = i5 | 6;
                } else if ((i5 & 6) == 0) {
                    if (gapComposerH.y(function0)) {
                        i19 = 4;
                    } else {
                        i19 = 2;
                    }
                    i18 = i5 | i19;
                } else {
                    i18 = i5;
                }
                if ((i16 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (gapComposerH.p(i16 & 1, z4)) {
                    if (i23 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVIconButton--Ps0j-Y");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if (i24 != 0) {
                        dp4 = null;
                    } else {
                        dp4 = dp2;
                    }
                    if (i8 != 0) {
                        str4 = "";
                    } else {
                        str4 = str2;
                    }
                    if (i11 != 0) {
                        i22 = Integer.MAX_VALUE;
                        i21 = i14;
                    } else {
                        i21 = i14;
                        i22 = i12;
                    }
                    if (i21 != 0) {
                        z8 = true;
                    } else {
                        z8 = z2;
                    }
                    if (i17 != 0) {
                        function2 = null;
                    } else {
                        function2 = function0;
                    }
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    int i214 = i16 >> 3;
                    int i215 = (i16 & 14) | (i214 & 112) | (i214 & 896) | (i214 & 7168) | ((i16 << 9) & 57344) | (458752 & i16) | (3670016 & i16);
                    int i216 = i16 << 3;
                    a(dTFunctionNameModifier, i2, dp4, str4, configurationIconButton, i22, z8, function2, gapComposerH, i215 | (234881024 & i216) | (i216 & 1879048192), ((i16 >> 27) & 14) | ((i18 << 3) & 112));
                    modifier2 = dTFunctionNameModifier;
                    dp3 = dp4;
                    function1 = function2;
                    z5 = true;
                    i20 = i22;
                    z7 = z8;
                    z6 = true;
                    str3 = str4;
                } else {
                    gapComposerH.D();
                    z5 = z3;
                    i20 = i12;
                    dp3 = dp2;
                    str3 = str2;
                    modifier2 = modifierE;
                    z6 = z;
                    z7 = z2;
                    function1 = function0;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: d60
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i4 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i5);
                            LVIconButtonKt.b(modifier2, configurationIconButton, i2, dp3, str3, z6, i20, z7, z5, function1, (Composer) obj, iA, iA2, i6);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i7 |= 24576;
            str2 = str;
            i10 = 1769472 | i7;
            i11 = i6 & 128;
            if (i11 != 0) {
                if ((12582912 & i4) == 0) {
                    i12 = i3;
                    if (gapComposerH.d(i12)) {
                        i13 = 8388608;
                    } else {
                        i13 = 4194304;
                    }
                    i10 |= i13;
                }
                i14 = i6 & 256;
                if (i14 != 0) {
                    if ((i4 & 100663296) == 0) {
                        if (gapComposerH.b(z2)) {
                            i15 = 67108864;
                        } else {
                            i15 = 33554432;
                        }
                        i10 |= i15;
                    }
                    i16 = i10 | 805306368;
                    i17 = i6 & 1024;
                    if (i17 != 0) {
                        i18 = i5 | 6;
                    } else if ((i5 & 6) == 0) {
                        if (gapComposerH.y(function0)) {
                            i19 = 4;
                        } else {
                            i19 = 2;
                        }
                        i18 = i5 | i19;
                    } else {
                        i18 = i5;
                    }
                    if ((i16 & 306783379) == 306783378) {
                        z4 = true;
                    } else {
                        z4 = true;
                    }
                    if (gapComposerH.p(i16 & 1, z4)) {
                        if (i23 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVIconButton--Ps0j-Y");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i24 != 0) {
                            dp4 = null;
                        } else {
                            dp4 = dp2;
                        }
                        if (i8 != 0) {
                            str4 = "";
                        } else {
                            str4 = str2;
                        }
                        if (i11 != 0) {
                            i22 = Integer.MAX_VALUE;
                            i21 = i14;
                        } else {
                            i21 = i14;
                            i22 = i12;
                        }
                        if (i21 != 0) {
                            z8 = true;
                        } else {
                            z8 = z2;
                        }
                        if (i17 != 0) {
                            function2 = null;
                        } else {
                            function2 = function0;
                        }
                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                        int i217 = i16 >> 3;
                        int i218 = (i16 & 14) | (i217 & 112) | (i217 & 896) | (i217 & 7168) | ((i16 << 9) & 57344) | (458752 & i16) | (3670016 & i16);
                        int i219 = i16 << 3;
                        a(dTFunctionNameModifier, i2, dp4, str4, configurationIconButton, i22, z8, function2, gapComposerH, i218 | (234881024 & i219) | (i219 & 1879048192), ((i16 >> 27) & 14) | ((i18 << 3) & 112));
                        modifier2 = dTFunctionNameModifier;
                        dp3 = dp4;
                        function1 = function2;
                        z5 = true;
                        i20 = i22;
                        z7 = z8;
                        z6 = true;
                        str3 = str4;
                    } else {
                        gapComposerH.D();
                        z5 = z3;
                        i20 = i12;
                        dp3 = dp2;
                        str3 = str2;
                        modifier2 = modifierE;
                        z6 = z;
                        z7 = z2;
                        function1 = function0;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: d60
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i4 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i5);
                                LVIconButtonKt.b(modifier2, configurationIconButton, i2, dp3, str3, z6, i20, z7, z5, function1, (Composer) obj, iA, iA2, i6);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i10 |= 100663296;
                i16 = i10 | 805306368;
                i17 = i6 & 1024;
                if (i17 != 0) {
                    i18 = i5 | 6;
                } else if ((i5 & 6) == 0) {
                    if (gapComposerH.y(function0)) {
                        i19 = 4;
                    } else {
                        i19 = 2;
                    }
                    i18 = i5 | i19;
                } else {
                    i18 = i5;
                }
                if ((i16 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (gapComposerH.p(i16 & 1, z4)) {
                    if (i23 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVIconButton--Ps0j-Y");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if (i24 != 0) {
                        dp4 = null;
                    } else {
                        dp4 = dp2;
                    }
                    if (i8 != 0) {
                        str4 = "";
                    } else {
                        str4 = str2;
                    }
                    if (i11 != 0) {
                        i22 = Integer.MAX_VALUE;
                        i21 = i14;
                    } else {
                        i21 = i14;
                        i22 = i12;
                    }
                    if (i21 != 0) {
                        z8 = true;
                    } else {
                        z8 = z2;
                    }
                    if (i17 != 0) {
                        function2 = null;
                    } else {
                        function2 = function0;
                    }
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    int i2110 = i16 >> 3;
                    int i2111 = (i16 & 14) | (i2110 & 112) | (i2110 & 896) | (i2110 & 7168) | ((i16 << 9) & 57344) | (458752 & i16) | (3670016 & i16);
                    int i2112 = i16 << 3;
                    a(dTFunctionNameModifier, i2, dp4, str4, configurationIconButton, i22, z8, function2, gapComposerH, i2111 | (234881024 & i2112) | (i2112 & 1879048192), ((i16 >> 27) & 14) | ((i18 << 3) & 112));
                    modifier2 = dTFunctionNameModifier;
                    dp3 = dp4;
                    function1 = function2;
                    z5 = true;
                    i20 = i22;
                    z7 = z8;
                    z6 = true;
                    str3 = str4;
                } else {
                    gapComposerH.D();
                    z5 = z3;
                    i20 = i12;
                    dp3 = dp2;
                    str3 = str2;
                    modifier2 = modifierE;
                    z6 = z;
                    z7 = z2;
                    function1 = function0;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: d60
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i4 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i5);
                            LVIconButtonKt.b(modifier2, configurationIconButton, i2, dp3, str3, z6, i20, z7, z5, function1, (Composer) obj, iA, iA2, i6);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i10 = 14352384 | i7;
            i12 = i3;
            i14 = i6 & 256;
            if (i14 != 0) {
                if ((i4 & 100663296) == 0) {
                    if (gapComposerH.b(z2)) {
                        i15 = 67108864;
                    } else {
                        i15 = 33554432;
                    }
                    i10 |= i15;
                }
                i16 = i10 | 805306368;
                i17 = i6 & 1024;
                if (i17 != 0) {
                    i18 = i5 | 6;
                } else if ((i5 & 6) == 0) {
                    if (gapComposerH.y(function0)) {
                        i19 = 4;
                    } else {
                        i19 = 2;
                    }
                    i18 = i5 | i19;
                } else {
                    i18 = i5;
                }
                if ((i16 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (gapComposerH.p(i16 & 1, z4)) {
                    if (i23 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVIconButton--Ps0j-Y");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if (i24 != 0) {
                        dp4 = null;
                    } else {
                        dp4 = dp2;
                    }
                    if (i8 != 0) {
                        str4 = "";
                    } else {
                        str4 = str2;
                    }
                    if (i11 != 0) {
                        i22 = Integer.MAX_VALUE;
                        i21 = i14;
                    } else {
                        i21 = i14;
                        i22 = i12;
                    }
                    if (i21 != 0) {
                        z8 = true;
                    } else {
                        z8 = z2;
                    }
                    if (i17 != 0) {
                        function2 = null;
                    } else {
                        function2 = function0;
                    }
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    int i2113 = i16 >> 3;
                    int i2114 = (i16 & 14) | (i2113 & 112) | (i2113 & 896) | (i2113 & 7168) | ((i16 << 9) & 57344) | (458752 & i16) | (3670016 & i16);
                    int i2115 = i16 << 3;
                    a(dTFunctionNameModifier, i2, dp4, str4, configurationIconButton, i22, z8, function2, gapComposerH, i2114 | (234881024 & i2115) | (i2115 & 1879048192), ((i16 >> 27) & 14) | ((i18 << 3) & 112));
                    modifier2 = dTFunctionNameModifier;
                    dp3 = dp4;
                    function1 = function2;
                    z5 = true;
                    i20 = i22;
                    z7 = z8;
                    z6 = true;
                    str3 = str4;
                } else {
                    gapComposerH.D();
                    z5 = z3;
                    i20 = i12;
                    dp3 = dp2;
                    str3 = str2;
                    modifier2 = modifierE;
                    z6 = z;
                    z7 = z2;
                    function1 = function0;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: d60
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i4 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i5);
                            LVIconButtonKt.b(modifier2, configurationIconButton, i2, dp3, str3, z6, i20, z7, z5, function1, (Composer) obj, iA, iA2, i6);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i10 |= 100663296;
            i16 = i10 | 805306368;
            i17 = i6 & 1024;
            if (i17 != 0) {
                i18 = i5 | 6;
            } else if ((i5 & 6) == 0) {
                if (gapComposerH.y(function0)) {
                    i19 = 4;
                } else {
                    i19 = 2;
                }
                i18 = i5 | i19;
            } else {
                i18 = i5;
            }
            if ((i16 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (gapComposerH.p(i16 & 1, z4)) {
                if (i23 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVIconButton--Ps0j-Y");
                } else {
                    dTFunctionNameModifier = modifierE;
                }
                if (i24 != 0) {
                    dp4 = null;
                } else {
                    dp4 = dp2;
                }
                if (i8 != 0) {
                    str4 = "";
                } else {
                    str4 = str2;
                }
                if (i11 != 0) {
                    i22 = Integer.MAX_VALUE;
                    i21 = i14;
                } else {
                    i21 = i14;
                    i22 = i12;
                }
                if (i21 != 0) {
                    z8 = true;
                } else {
                    z8 = z2;
                }
                if (i17 != 0) {
                    function2 = null;
                } else {
                    function2 = function0;
                }
                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                int i2116 = i16 >> 3;
                int i2117 = (i16 & 14) | (i2116 & 112) | (i2116 & 896) | (i2116 & 7168) | ((i16 << 9) & 57344) | (458752 & i16) | (3670016 & i16);
                int i2118 = i16 << 3;
                a(dTFunctionNameModifier, i2, dp4, str4, configurationIconButton, i22, z8, function2, gapComposerH, i2117 | (234881024 & i2118) | (i2118 & 1879048192), ((i16 >> 27) & 14) | ((i18 << 3) & 112));
                modifier2 = dTFunctionNameModifier;
                dp3 = dp4;
                function1 = function2;
                z5 = true;
                i20 = i22;
                z7 = z8;
                z6 = true;
                str3 = str4;
            } else {
                gapComposerH.D();
                z5 = z3;
                i20 = i12;
                dp3 = dp2;
                str3 = str2;
                modifier2 = modifierE;
                z6 = z;
                z7 = z2;
                function1 = function0;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: d60
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i4 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i5);
                        LVIconButtonKt.b(modifier2, configurationIconButton, i2, dp3, str3, z6, i20, z7, z5, function1, (Composer) obj, iA, iA2, i6);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i7 |= 3072;
        dp2 = dp;
        i8 = i6 & 16;
        if (i8 != 0) {
            if ((i4 & 24576) == 0) {
                str2 = str;
                if (gapComposerH.K(str2)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i7 |= i9;
            }
            i10 = 1769472 | i7;
            i11 = i6 & 128;
            if (i11 != 0) {
                if ((12582912 & i4) == 0) {
                    i12 = i3;
                    if (gapComposerH.d(i12)) {
                        i13 = 8388608;
                    } else {
                        i13 = 4194304;
                    }
                    i10 |= i13;
                }
                i14 = i6 & 256;
                if (i14 != 0) {
                    if ((i4 & 100663296) == 0) {
                        if (gapComposerH.b(z2)) {
                            i15 = 67108864;
                        } else {
                            i15 = 33554432;
                        }
                        i10 |= i15;
                    }
                    i16 = i10 | 805306368;
                    i17 = i6 & 1024;
                    if (i17 != 0) {
                        i18 = i5 | 6;
                    } else if ((i5 & 6) == 0) {
                        if (gapComposerH.y(function0)) {
                            i19 = 4;
                        } else {
                            i19 = 2;
                        }
                        i18 = i5 | i19;
                    } else {
                        i18 = i5;
                    }
                    if ((i16 & 306783379) == 306783378) {
                        z4 = true;
                    } else {
                        z4 = true;
                    }
                    if (gapComposerH.p(i16 & 1, z4)) {
                        if (i23 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVIconButton--Ps0j-Y");
                        } else {
                            dTFunctionNameModifier = modifierE;
                        }
                        if (i24 != 0) {
                            dp4 = null;
                        } else {
                            dp4 = dp2;
                        }
                        if (i8 != 0) {
                            str4 = "";
                        } else {
                            str4 = str2;
                        }
                        if (i11 != 0) {
                            i22 = Integer.MAX_VALUE;
                            i21 = i14;
                        } else {
                            i21 = i14;
                            i22 = i12;
                        }
                        if (i21 != 0) {
                            z8 = true;
                        } else {
                            z8 = z2;
                        }
                        if (i17 != 0) {
                            function2 = null;
                        } else {
                            function2 = function0;
                        }
                        OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                        int i2119 = i16 >> 3;
                        int i21110 = (i16 & 14) | (i2119 & 112) | (i2119 & 896) | (i2119 & 7168) | ((i16 << 9) & 57344) | (458752 & i16) | (3670016 & i16);
                        int i21111 = i16 << 3;
                        a(dTFunctionNameModifier, i2, dp4, str4, configurationIconButton, i22, z8, function2, gapComposerH, i21110 | (234881024 & i21111) | (i21111 & 1879048192), ((i16 >> 27) & 14) | ((i18 << 3) & 112));
                        modifier2 = dTFunctionNameModifier;
                        dp3 = dp4;
                        function1 = function2;
                        z5 = true;
                        i20 = i22;
                        z7 = z8;
                        z6 = true;
                        str3 = str4;
                    } else {
                        gapComposerH.D();
                        z5 = z3;
                        i20 = i12;
                        dp3 = dp2;
                        str3 = str2;
                        modifier2 = modifierE;
                        z6 = z;
                        z7 = z2;
                        function1 = function0;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: d60
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(i4 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i5);
                                LVIconButtonKt.b(modifier2, configurationIconButton, i2, dp3, str3, z6, i20, z7, z5, function1, (Composer) obj, iA, iA2, i6);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i10 |= 100663296;
                i16 = i10 | 805306368;
                i17 = i6 & 1024;
                if (i17 != 0) {
                    i18 = i5 | 6;
                } else if ((i5 & 6) == 0) {
                    if (gapComposerH.y(function0)) {
                        i19 = 4;
                    } else {
                        i19 = 2;
                    }
                    i18 = i5 | i19;
                } else {
                    i18 = i5;
                }
                if ((i16 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (gapComposerH.p(i16 & 1, z4)) {
                    if (i23 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVIconButton--Ps0j-Y");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if (i24 != 0) {
                        dp4 = null;
                    } else {
                        dp4 = dp2;
                    }
                    if (i8 != 0) {
                        str4 = "";
                    } else {
                        str4 = str2;
                    }
                    if (i11 != 0) {
                        i22 = Integer.MAX_VALUE;
                        i21 = i14;
                    } else {
                        i21 = i14;
                        i22 = i12;
                    }
                    if (i21 != 0) {
                        z8 = true;
                    } else {
                        z8 = z2;
                    }
                    if (i17 != 0) {
                        function2 = null;
                    } else {
                        function2 = function0;
                    }
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    int i21112 = i16 >> 3;
                    int i21113 = (i16 & 14) | (i21112 & 112) | (i21112 & 896) | (i21112 & 7168) | ((i16 << 9) & 57344) | (458752 & i16) | (3670016 & i16);
                    int i21114 = i16 << 3;
                    a(dTFunctionNameModifier, i2, dp4, str4, configurationIconButton, i22, z8, function2, gapComposerH, i21113 | (234881024 & i21114) | (i21114 & 1879048192), ((i16 >> 27) & 14) | ((i18 << 3) & 112));
                    modifier2 = dTFunctionNameModifier;
                    dp3 = dp4;
                    function1 = function2;
                    z5 = true;
                    i20 = i22;
                    z7 = z8;
                    z6 = true;
                    str3 = str4;
                } else {
                    gapComposerH.D();
                    z5 = z3;
                    i20 = i12;
                    dp3 = dp2;
                    str3 = str2;
                    modifier2 = modifierE;
                    z6 = z;
                    z7 = z2;
                    function1 = function0;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: d60
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i4 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i5);
                            LVIconButtonKt.b(modifier2, configurationIconButton, i2, dp3, str3, z6, i20, z7, z5, function1, (Composer) obj, iA, iA2, i6);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i10 = 14352384 | i7;
            i12 = i3;
            i14 = i6 & 256;
            if (i14 != 0) {
                if ((i4 & 100663296) == 0) {
                    if (gapComposerH.b(z2)) {
                        i15 = 67108864;
                    } else {
                        i15 = 33554432;
                    }
                    i10 |= i15;
                }
                i16 = i10 | 805306368;
                i17 = i6 & 1024;
                if (i17 != 0) {
                    i18 = i5 | 6;
                } else if ((i5 & 6) == 0) {
                    if (gapComposerH.y(function0)) {
                        i19 = 4;
                    } else {
                        i19 = 2;
                    }
                    i18 = i5 | i19;
                } else {
                    i18 = i5;
                }
                if ((i16 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (gapComposerH.p(i16 & 1, z4)) {
                    if (i23 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVIconButton--Ps0j-Y");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if (i24 != 0) {
                        dp4 = null;
                    } else {
                        dp4 = dp2;
                    }
                    if (i8 != 0) {
                        str4 = "";
                    } else {
                        str4 = str2;
                    }
                    if (i11 != 0) {
                        i22 = Integer.MAX_VALUE;
                        i21 = i14;
                    } else {
                        i21 = i14;
                        i22 = i12;
                    }
                    if (i21 != 0) {
                        z8 = true;
                    } else {
                        z8 = z2;
                    }
                    if (i17 != 0) {
                        function2 = null;
                    } else {
                        function2 = function0;
                    }
                    OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                    int i21115 = i16 >> 3;
                    int i21116 = (i16 & 14) | (i21115 & 112) | (i21115 & 896) | (i21115 & 7168) | ((i16 << 9) & 57344) | (458752 & i16) | (3670016 & i16);
                    int i21117 = i16 << 3;
                    a(dTFunctionNameModifier, i2, dp4, str4, configurationIconButton, i22, z8, function2, gapComposerH, i21116 | (234881024 & i21117) | (i21117 & 1879048192), ((i16 >> 27) & 14) | ((i18 << 3) & 112));
                    modifier2 = dTFunctionNameModifier;
                    dp3 = dp4;
                    function1 = function2;
                    z5 = true;
                    i20 = i22;
                    z7 = z8;
                    z6 = true;
                    str3 = str4;
                } else {
                    gapComposerH.D();
                    z5 = z3;
                    i20 = i12;
                    dp3 = dp2;
                    str3 = str2;
                    modifier2 = modifierE;
                    z6 = z;
                    z7 = z2;
                    function1 = function0;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: d60
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i4 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i5);
                            LVIconButtonKt.b(modifier2, configurationIconButton, i2, dp3, str3, z6, i20, z7, z5, function1, (Composer) obj, iA, iA2, i6);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i10 |= 100663296;
            i16 = i10 | 805306368;
            i17 = i6 & 1024;
            if (i17 != 0) {
                i18 = i5 | 6;
            } else if ((i5 & 6) == 0) {
                if (gapComposerH.y(function0)) {
                    i19 = 4;
                } else {
                    i19 = 2;
                }
                i18 = i5 | i19;
            } else {
                i18 = i5;
            }
            if ((i16 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (gapComposerH.p(i16 & 1, z4)) {
                if (i23 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVIconButton--Ps0j-Y");
                } else {
                    dTFunctionNameModifier = modifierE;
                }
                if (i24 != 0) {
                    dp4 = null;
                } else {
                    dp4 = dp2;
                }
                if (i8 != 0) {
                    str4 = "";
                } else {
                    str4 = str2;
                }
                if (i11 != 0) {
                    i22 = Integer.MAX_VALUE;
                    i21 = i14;
                } else {
                    i21 = i14;
                    i22 = i12;
                }
                if (i21 != 0) {
                    z8 = true;
                } else {
                    z8 = z2;
                }
                if (i17 != 0) {
                    function2 = null;
                } else {
                    function2 = function0;
                }
                OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                int i21118 = i16 >> 3;
                int i21119 = (i16 & 14) | (i21118 & 112) | (i21118 & 896) | (i21118 & 7168) | ((i16 << 9) & 57344) | (458752 & i16) | (3670016 & i16);
                int i211110 = i16 << 3;
                a(dTFunctionNameModifier, i2, dp4, str4, configurationIconButton, i22, z8, function2, gapComposerH, i21119 | (234881024 & i211110) | (i211110 & 1879048192), ((i16 >> 27) & 14) | ((i18 << 3) & 112));
                modifier2 = dTFunctionNameModifier;
                dp3 = dp4;
                function1 = function2;
                z5 = true;
                i20 = i22;
                z7 = z8;
                z6 = true;
                str3 = str4;
            } else {
                gapComposerH.D();
                z5 = z3;
                i20 = i12;
                dp3 = dp2;
                str3 = str2;
                modifier2 = modifierE;
                z6 = z;
                z7 = z2;
                function1 = function0;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: d60
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i4 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i5);
                        LVIconButtonKt.b(modifier2, configurationIconButton, i2, dp3, str3, z6, i20, z7, z5, function1, (Composer) obj, iA, iA2, i6);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i7 |= 24576;
        str2 = str;
        i10 = 1769472 | i7;
        i11 = i6 & 128;
        if (i11 != 0) {
            if ((12582912 & i4) == 0) {
                i12 = i3;
                if (gapComposerH.d(i12)) {
                    i13 = 8388608;
                } else {
                    i13 = 4194304;
                }
                i10 |= i13;
            }
            i14 = i6 & 256;
            if (i14 != 0) {
                if ((i4 & 100663296) == 0) {
                    if (gapComposerH.b(z2)) {
                        i15 = 67108864;
                    } else {
                        i15 = 33554432;
                    }
                    i10 |= i15;
                }
                i16 = i10 | 805306368;
                i17 = i6 & 1024;
                if (i17 != 0) {
                    i18 = i5 | 6;
                } else if ((i5 & 6) == 0) {
                    if (gapComposerH.y(function0)) {
                        i19 = 4;
                    } else {
                        i19 = 2;
                    }
                    i18 = i5 | i19;
                } else {
                    i18 = i5;
                }
                if ((i16 & 306783379) == 306783378) {
                    z4 = true;
                } else {
                    z4 = true;
                }
                if (gapComposerH.p(i16 & 1, z4)) {
                    if (i23 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVIconButton--Ps0j-Y");
                    } else {
                        dTFunctionNameModifier = modifierE;
                    }
                    if (i24 != 0) {
                        dp4 = null;
                    } else {
                        dp4 = dp2;
                    }
                    if (i8 != 0) {
                        str4 = "";
                    } else {
                        str4 = str2;
                    }
                    if (i11 != 0) {
                        i22 = Integer.MAX_VALUE;
                        i21 = i14;
                    } else {
                        i21 = i14;
                        i22 = i12;
                    }
                    if (i21 != 0) {
                        z8 = true;
                    } else {
                        z8 = z2;
                    }
                    if (i17 != 0) {
                        function2 = null;
                    } else {
                        function2 = function0;
                    }
                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                    int i211111 = i16 >> 3;
                    int i211112 = (i16 & 14) | (i211111 & 112) | (i211111 & 896) | (i211111 & 7168) | ((i16 << 9) & 57344) | (458752 & i16) | (3670016 & i16);
                    int i211113 = i16 << 3;
                    a(dTFunctionNameModifier, i2, dp4, str4, configurationIconButton, i22, z8, function2, gapComposerH, i211112 | (234881024 & i211113) | (i211113 & 1879048192), ((i16 >> 27) & 14) | ((i18 << 3) & 112));
                    modifier2 = dTFunctionNameModifier;
                    dp3 = dp4;
                    function1 = function2;
                    z5 = true;
                    i20 = i22;
                    z7 = z8;
                    z6 = true;
                    str3 = str4;
                } else {
                    gapComposerH.D();
                    z5 = z3;
                    i20 = i12;
                    dp3 = dp2;
                    str3 = str2;
                    modifier2 = modifierE;
                    z6 = z;
                    z7 = z2;
                    function1 = function0;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: d60
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(i4 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i5);
                            LVIconButtonKt.b(modifier2, configurationIconButton, i2, dp3, str3, z6, i20, z7, z5, function1, (Composer) obj, iA, iA2, i6);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i10 |= 100663296;
            i16 = i10 | 805306368;
            i17 = i6 & 1024;
            if (i17 != 0) {
                i18 = i5 | 6;
            } else if ((i5 & 6) == 0) {
                if (gapComposerH.y(function0)) {
                    i19 = 4;
                } else {
                    i19 = 2;
                }
                i18 = i5 | i19;
            } else {
                i18 = i5;
            }
            if ((i16 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (gapComposerH.p(i16 & 1, z4)) {
                if (i23 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVIconButton--Ps0j-Y");
                } else {
                    dTFunctionNameModifier = modifierE;
                }
                if (i24 != 0) {
                    dp4 = null;
                } else {
                    dp4 = dp2;
                }
                if (i8 != 0) {
                    str4 = "";
                } else {
                    str4 = str2;
                }
                if (i11 != 0) {
                    i22 = Integer.MAX_VALUE;
                    i21 = i14;
                } else {
                    i21 = i14;
                    i22 = i12;
                }
                if (i21 != 0) {
                    z8 = true;
                } else {
                    z8 = z2;
                }
                if (i17 != 0) {
                    function2 = null;
                } else {
                    function2 = function0;
                }
                OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                int i211114 = i16 >> 3;
                int i211115 = (i16 & 14) | (i211114 & 112) | (i211114 & 896) | (i211114 & 7168) | ((i16 << 9) & 57344) | (458752 & i16) | (3670016 & i16);
                int i211116 = i16 << 3;
                a(dTFunctionNameModifier, i2, dp4, str4, configurationIconButton, i22, z8, function2, gapComposerH, i211115 | (234881024 & i211116) | (i211116 & 1879048192), ((i16 >> 27) & 14) | ((i18 << 3) & 112));
                modifier2 = dTFunctionNameModifier;
                dp3 = dp4;
                function1 = function2;
                z5 = true;
                i20 = i22;
                z7 = z8;
                z6 = true;
                str3 = str4;
            } else {
                gapComposerH.D();
                z5 = z3;
                i20 = i12;
                dp3 = dp2;
                str3 = str2;
                modifier2 = modifierE;
                z6 = z;
                z7 = z2;
                function1 = function0;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: d60
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i4 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i5);
                        LVIconButtonKt.b(modifier2, configurationIconButton, i2, dp3, str3, z6, i20, z7, z5, function1, (Composer) obj, iA, iA2, i6);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i10 = 14352384 | i7;
        i12 = i3;
        i14 = i6 & 256;
        if (i14 != 0) {
            if ((i4 & 100663296) == 0) {
                if (gapComposerH.b(z2)) {
                    i15 = 67108864;
                } else {
                    i15 = 33554432;
                }
                i10 |= i15;
            }
            i16 = i10 | 805306368;
            i17 = i6 & 1024;
            if (i17 != 0) {
                i18 = i5 | 6;
            } else if ((i5 & 6) == 0) {
                if (gapComposerH.y(function0)) {
                    i19 = 4;
                } else {
                    i19 = 2;
                }
                i18 = i5 | i19;
            } else {
                i18 = i5;
            }
            if ((i16 & 306783379) == 306783378) {
                z4 = true;
            } else {
                z4 = true;
            }
            if (gapComposerH.p(i16 & 1, z4)) {
                if (i23 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVIconButton--Ps0j-Y");
                } else {
                    dTFunctionNameModifier = modifierE;
                }
                if (i24 != 0) {
                    dp4 = null;
                } else {
                    dp4 = dp2;
                }
                if (i8 != 0) {
                    str4 = "";
                } else {
                    str4 = str2;
                }
                if (i11 != 0) {
                    i22 = Integer.MAX_VALUE;
                    i21 = i14;
                } else {
                    i21 = i14;
                    i22 = i12;
                }
                if (i21 != 0) {
                    z8 = true;
                } else {
                    z8 = z2;
                }
                if (i17 != 0) {
                    function2 = null;
                } else {
                    function2 = function0;
                }
                OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                int i211117 = i16 >> 3;
                int i211118 = (i16 & 14) | (i211117 & 112) | (i211117 & 896) | (i211117 & 7168) | ((i16 << 9) & 57344) | (458752 & i16) | (3670016 & i16);
                int i211119 = i16 << 3;
                a(dTFunctionNameModifier, i2, dp4, str4, configurationIconButton, i22, z8, function2, gapComposerH, i211118 | (234881024 & i211119) | (i211119 & 1879048192), ((i16 >> 27) & 14) | ((i18 << 3) & 112));
                modifier2 = dTFunctionNameModifier;
                dp3 = dp4;
                function1 = function2;
                z5 = true;
                i20 = i22;
                z7 = z8;
                z6 = true;
                str3 = str4;
            } else {
                gapComposerH.D();
                z5 = z3;
                i20 = i12;
                dp3 = dp2;
                str3 = str2;
                modifier2 = modifierE;
                z6 = z;
                z7 = z2;
                function1 = function0;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: d60
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(i4 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i5);
                        LVIconButtonKt.b(modifier2, configurationIconButton, i2, dp3, str3, z6, i20, z7, z5, function1, (Composer) obj, iA, iA2, i6);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i10 |= 100663296;
        i16 = i10 | 805306368;
        i17 = i6 & 1024;
        if (i17 != 0) {
            i18 = i5 | 6;
        } else if ((i5 & 6) == 0) {
            if (gapComposerH.y(function0)) {
                i19 = 4;
            } else {
                i19 = 2;
            }
            i18 = i5 | i19;
        } else {
            i18 = i5;
        }
        if ((i16 & 306783379) == 306783378) {
            z4 = true;
        } else {
            z4 = true;
        }
        if (gapComposerH.p(i16 & 1, z4)) {
            if (i23 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVIconButton--Ps0j-Y");
            } else {
                dTFunctionNameModifier = modifierE;
            }
            if (i24 != 0) {
                dp4 = null;
            } else {
                dp4 = dp2;
            }
            if (i8 != 0) {
                str4 = "";
            } else {
                str4 = str2;
            }
            if (i11 != 0) {
                i22 = Integer.MAX_VALUE;
                i21 = i14;
            } else {
                i21 = i14;
                i22 = i12;
            }
            if (i21 != 0) {
                z8 = true;
            } else {
                z8 = z2;
            }
            if (i17 != 0) {
                function2 = null;
            } else {
                function2 = function0;
            }
            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
            int i2111110 = i16 >> 3;
            int i2111111 = (i16 & 14) | (i2111110 & 112) | (i2111110 & 896) | (i2111110 & 7168) | ((i16 << 9) & 57344) | (458752 & i16) | (3670016 & i16);
            int i2111112 = i16 << 3;
            a(dTFunctionNameModifier, i2, dp4, str4, configurationIconButton, i22, z8, function2, gapComposerH, i2111111 | (234881024 & i2111112) | (i2111112 & 1879048192), ((i16 >> 27) & 14) | ((i18 << 3) & 112));
            modifier2 = dTFunctionNameModifier;
            dp3 = dp4;
            function1 = function2;
            z5 = true;
            i20 = i22;
            z7 = z8;
            z6 = true;
            str3 = str4;
        } else {
            gapComposerH.D();
            z5 = z3;
            i20 = i12;
            dp3 = dp2;
            str3 = str2;
            modifier2 = modifierE;
            z6 = z;
            z7 = z2;
            function1 = function0;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: d60
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i4 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i5);
                    LVIconButtonKt.b(modifier2, configurationIconButton, i2, dp3, str3, z6, i20, z7, z5, function1, (Composer) obj, iA, iA2, i6);
                    return Unit.f71739a;
                }
            };
        }
    }
}
