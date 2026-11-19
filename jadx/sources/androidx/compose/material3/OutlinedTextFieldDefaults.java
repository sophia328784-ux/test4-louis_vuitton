package androidx.compose.material3;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.OutlinedTextFieldDefaults;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.material3.internal.TextFieldType;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.input.TransformedText;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.m21;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/OutlinedTextFieldDefaults;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class OutlinedTextFieldDefaults {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final OutlinedTextFieldDefaults f7118a = new OutlinedTextFieldDefaults();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f7119b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f7120c;
    public static final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final float f7121e;

    static {
        Dp.Companion companion = Dp.f11004c;
        f7119b = 56.0f;
        f7120c = 280.0f;
        d = 1.0f;
        f7121e = 2.0f;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0175  */
    /* JADX WARN: Code duplicated, block: B:102:0x017f  */
    /* JADX WARN: Code duplicated, block: B:103:0x0181  */
    /* JADX WARN: Code duplicated, block: B:105:0x0193  */
    /* JADX WARN: Code duplicated, block: B:108:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:109:0x01c4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:110:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:111:0x01c9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:112:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:113:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:88:0x0126  */
    /* JADX WARN: Code duplicated, block: B:89:0x0129 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:90:0x012b  */
    /* JADX WARN: Code duplicated, block: B:91:0x012e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:92:0x0130  */
    /* JADX WARN: Code duplicated, block: B:93:0x0133  */
    /* JADX WARN: Code duplicated, block: B:96:0x013e  */
    /* JADX WARN: Code duplicated, block: B:97:0x0157  */
    public final void a(final boolean z, final boolean z2, final InteractionSource interactionSource, Modifier modifier, final TextFieldColors textFieldColors, final Shape shape, float f2, float f3, Composer composer, final int i2, final int i3) {
        float f4;
        float f5;
        GapComposer gapComposer;
        final float f6;
        final float f7;
        final Modifier modifier2;
        Modifier dTFunctionNameModifier;
        float f8;
        float f9;
        int i4;
        boolean zBooleanValue;
        long j2;
        FiniteAnimationSpec finiteAnimationSpecA;
        GapComposer gapComposer2;
        State stateL;
        FiniteAnimationSpec finiteAnimationSpecA2;
        GapComposer gapComposer3;
        State stateL2;
        long j3;
        float f10;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Container-4EFweAY");
        }
        GapComposer gapComposerH = composer.h(1035477640);
        int i5 = (gapComposerH.b(z) ? 4 : 2) | i2 | (gapComposerH.b(z2) ? 32 : 16) | (gapComposerH.K(interactionSource) ? 256 : 128);
        int i6 = i3 & 8;
        if (i6 != 0) {
            i5 |= 3072;
        } else if ((i2 & 3072) == 0) {
            i5 |= gapComposerH.K(modifierE) ? 2048 : 1024;
        }
        int i7 = i5 | (gapComposerH.K(textFieldColors) ? 16384 : 8192) | (gapComposerH.K(shape) ? 131072 : 65536);
        if ((1572864 & i2) == 0) {
            if ((i3 & 64) == 0) {
                f4 = f2;
                int i8 = gapComposerH.c(f4) ? 1048576 : 524288;
                i7 |= i8;
            } else {
                f4 = f2;
            }
            i7 |= i8;
        } else {
            f4 = f2;
        }
        if ((12582912 & i2) == 0) {
            if ((i3 & 128) == 0) {
                f5 = f3;
                int i9 = gapComposerH.c(f5) ? 8388608 : 4194304;
                i7 |= i9;
            } else {
                f5 = f3;
            }
            i7 |= i9;
        } else {
            f5 = f3;
        }
        Modifier modifier3 = modifierE;
        if (gapComposerH.p(i7 & 1, (38347923 & i7) != 38347922)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                dTFunctionNameModifier = i6 != 0 ? new DTFunctionNameModifier("Container-4EFweAY") : modifier3;
                if ((i3 & 64) != 0) {
                    i7 &= -3670017;
                    f4 = f7121e;
                }
                if ((i3 & 128) != 0) {
                    int i10 = i7 & (-29360129);
                    f9 = d;
                    f8 = f4;
                    i4 = i10;
                } else {
                    f8 = f4;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                zBooleanValue = ((Boolean) FocusInteractionKt.a(interactionSource, gapComposerH, (i4 >> 6) & 14).getF10755b()).booleanValue();
                float f11 = TextFieldImplKt.f7647a;
                if (!z) {
                    j2 = textFieldColors.n;
                } else if (z2) {
                    j2 = textFieldColors.o;
                } else if (zBooleanValue) {
                    j2 = textFieldColors.l;
                } else {
                    j2 = textFieldColors.m;
                }
                MotionSchemeKeyTokens motionSchemeKeyTokens = MotionSchemeKeyTokens.FastEffects;
                finiteAnimationSpecA = MotionSchemeKt.a(motionSchemeKeyTokens, gapComposerH);
                if (z) {
                    gapComposerH.L(-1674507999);
                    stateL = SingleValueAnimationKt.b(j2, finiteAnimationSpecA, null, gapComposerH, 0, 12);
                    gapComposer2 = gapComposerH;
                    gapComposer2.Z(false);
                } else {
                    long j4 = j2;
                    gapComposer2 = gapComposerH;
                    gapComposer2.L(-1674427244);
                    stateL = SnapshotStateKt.l(new Color(j4), gapComposer2);
                    gapComposer2.Z(false);
                }
                finiteAnimationSpecA2 = MotionSchemeKt.a(MotionSchemeKeyTokens.FastSpatial, gapComposer2);
                if (z) {
                    gapComposer2.L(-1674245832);
                    GapComposer gapComposer4 = gapComposer2;
                    if (zBooleanValue) {
                        f10 = f8;
                    } else {
                        f10 = f9;
                    }
                    stateL2 = AnimateAsStateKt.a(f10, finiteAnimationSpecA2, null, null, gapComposer4, 0, 12);
                    gapComposer3 = gapComposer4;
                    gapComposer3.Z(false);
                } else {
                    gapComposer3 = gapComposer2;
                    gapComposer3.L(-1674063769);
                    stateL2 = SnapshotStateKt.l(new Dp(f9), gapComposer3);
                    gapComposer3.Z(false);
                }
                MutableState mutableStateL = SnapshotStateKt.l(BorderStrokeKt.a(((Dp) stateL2.getF10755b()).f11006b, ((Color) stateL.getF10755b()).f8872a), gapComposer3);
                if (!z) {
                    j3 = textFieldColors.g;
                } else if (z2) {
                    j3 = textFieldColors.f7368h;
                } else if (zBooleanValue) {
                    j3 = textFieldColors.f7366e;
                } else {
                    j3 = textFieldColors.f7367f;
                }
                GapComposer gapComposer5 = gapComposer3;
                State stateB = SingleValueAnimationKt.b(j3, MotionSchemeKt.a(motionSchemeKeyTokens, gapComposer3), null, gapComposer5, 0, 12);
                gapComposer = gapComposer5;
                BorderStroke borderStroke = (BorderStroke) mutableStateL.getF10755b();
                BoxKt.a(DrawModifierKt.c(BorderKt.b(dTFunctionNameModifier, borderStroke.f4154a, borderStroke.f4155b, shape), new m21(shape, new TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0(new OutlinedTextFieldDefaults$Container$1(stateB, State.class, "value", "getValue()Ljava/lang/Object;", 0)), 3)), gapComposer, 0);
                modifier2 = dTFunctionNameModifier;
                f7 = f9;
                f6 = f8;
            } else {
                gapComposerH.D();
                if ((i3 & 64) != 0) {
                    i7 &= -3670017;
                }
                if ((i3 & 128) != 0) {
                    i7 &= -29360129;
                }
                f8 = f4;
                dTFunctionNameModifier = modifier3;
            }
            i4 = i7;
            f9 = f5;
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            zBooleanValue = ((Boolean) FocusInteractionKt.a(interactionSource, gapComposerH, (i4 >> 6) & 14).getF10755b()).booleanValue();
            float f12 = TextFieldImplKt.f7647a;
            if (!z) {
                j2 = textFieldColors.n;
            } else if (z2) {
                j2 = textFieldColors.o;
            } else if (zBooleanValue) {
                j2 = textFieldColors.l;
            } else {
                j2 = textFieldColors.m;
            }
            MotionSchemeKeyTokens motionSchemeKeyTokens2 = MotionSchemeKeyTokens.FastEffects;
            finiteAnimationSpecA = MotionSchemeKt.a(motionSchemeKeyTokens2, gapComposerH);
            if (z) {
                gapComposerH.L(-1674507999);
                stateL = SingleValueAnimationKt.b(j2, finiteAnimationSpecA, null, gapComposerH, 0, 12);
                gapComposer2 = gapComposerH;
                gapComposer2.Z(false);
            } else {
                long j5 = j2;
                gapComposer2 = gapComposerH;
                gapComposer2.L(-1674427244);
                stateL = SnapshotStateKt.l(new Color(j5), gapComposer2);
                gapComposer2.Z(false);
            }
            finiteAnimationSpecA2 = MotionSchemeKt.a(MotionSchemeKeyTokens.FastSpatial, gapComposer2);
            if (z) {
                gapComposer2.L(-1674245832);
                GapComposer gapComposer6 = gapComposer2;
                if (zBooleanValue) {
                    f10 = f8;
                } else {
                    f10 = f9;
                }
                stateL2 = AnimateAsStateKt.a(f10, finiteAnimationSpecA2, null, null, gapComposer6, 0, 12);
                gapComposer3 = gapComposer6;
                gapComposer3.Z(false);
            } else {
                gapComposer3 = gapComposer2;
                gapComposer3.L(-1674063769);
                stateL2 = SnapshotStateKt.l(new Dp(f9), gapComposer3);
                gapComposer3.Z(false);
            }
            MutableState mutableStateL2 = SnapshotStateKt.l(BorderStrokeKt.a(((Dp) stateL2.getF10755b()).f11006b, ((Color) stateL.getF10755b()).f8872a), gapComposer3);
            if (!z) {
                j3 = textFieldColors.g;
            } else if (z2) {
                j3 = textFieldColors.f7368h;
            } else if (zBooleanValue) {
                j3 = textFieldColors.f7366e;
            } else {
                j3 = textFieldColors.f7367f;
            }
            GapComposer gapComposer7 = gapComposer3;
            State stateB2 = SingleValueAnimationKt.b(j3, MotionSchemeKt.a(motionSchemeKeyTokens2, gapComposer3), null, gapComposer7, 0, 12);
            gapComposer = gapComposer7;
            BorderStroke borderStroke2 = (BorderStroke) mutableStateL2.getF10755b();
            BoxKt.a(DrawModifierKt.c(BorderKt.b(dTFunctionNameModifier, borderStroke2.f4154a, borderStroke2.f4155b, shape), new m21(shape, new TextFieldDefaults$sam$androidx_compose_ui_graphics_ColorProducer$0(new OutlinedTextFieldDefaults$Container$1(stateB2, State.class, "value", "getValue()Ljava/lang/Object;", 0)), 3)), gapComposer, 0);
            modifier2 = dTFunctionNameModifier;
            f7 = f9;
            f6 = f8;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            f6 = f4;
            f7 = f5;
            modifier2 = modifier3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: zj0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).getClass();
                    OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.f7118a;
                    this.f81646b.a(z, z2, interactionSource, modifier2, textFieldColors, shape, f6, f7, composer2, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }

    public final void b(final String str, final Function2 function2, final boolean z, final boolean z2, final VisualTransformation visualTransformation, final InteractionSource interactionSource, final boolean z3, final Function2 function3, final Function2 function4, final Function2 function5, final TextFieldColors textFieldColors, PaddingValues paddingValues, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2) {
        int i3;
        Function2 function6;
        boolean z4;
        boolean z5;
        InteractionSource interactionSource2;
        GapComposer gapComposer;
        final PaddingValues paddingValues2;
        PaddingValues paddingValuesD;
        int i4;
        ComposableLambdaImpl composableLambdaImpl2;
        Object objH;
        ComposableLambdaImpl composableLambdaImpl3;
        GapComposer gapComposerH = composer.h(-1732281618);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            function6 = function2;
            i3 |= gapComposerH.y(function6) ? 32 : 16;
        } else {
            function6 = function2;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            z4 = z;
            i3 |= gapComposerH.b(z4) ? 256 : 128;
        } else {
            z4 = z;
        }
        if ((i2 & 3072) == 0) {
            z5 = z2;
            i3 |= gapComposerH.b(z5) ? 2048 : 1024;
        } else {
            z5 = z2;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(visualTransformation) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            interactionSource2 = interactionSource;
            i3 |= gapComposerH.K(interactionSource2) ? 131072 : 65536;
        } else {
            interactionSource2 = interactionSource;
        }
        if ((i2 & 1572864) == 0) {
            i3 |= gapComposerH.b(z3) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i3 |= gapComposerH.y(function3) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i3 |= gapComposerH.y(function4) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i3 |= gapComposerH.y(null) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        int i5 = 14155776 | (gapComposerH.y(null) ? 4 : 2) | (gapComposerH.y(null) ? 32 : 16) | (gapComposerH.y(null) ? 256 : 128) | (gapComposerH.y(function5) ? 2048 : 1024) | (gapComposerH.K(textFieldColors) ? 16384 : 8192) | 65536;
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (i5 & 4793491) == 4793490) ? false : true)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                float f2 = TextFieldImplKt.f7647a;
                paddingValuesD = PaddingKt.d(f2, f2, f2, f2);
                i4 = i5 & (-458753);
            } else {
                gapComposerH.D();
                i4 = i5 & (-458753);
                paddingValuesD = paddingValues;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z6 = ((i3 & 14) == 4) | ((i3 & 57344) == 16384);
            Object objX = gapComposerH.x();
            if (z6 || objX == Composer.Companion.f7939a) {
                composableLambdaImpl2 = null;
                objH = visualTransformation.h(new AnnotatedString(str, null, 2, null));
                gapComposerH.q(objH);
            } else {
                objH = objX;
                composableLambdaImpl2 = null;
            }
            String str2 = ((TransformedText) objH).f10863a.f10420c;
            TextFieldType textFieldType = TextFieldType.Outlined;
            TextFieldLabelPosition.Attached attached = new TextFieldLabelPosition.Attached(false, null, null, 7, null);
            if (function3 == null) {
                gapComposerH.L(1927058812);
                gapComposerH.Z(false);
                composableLambdaImpl3 = composableLambdaImpl2;
            } else {
                gapComposerH.L(1927058813);
                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1459717586, new Function3<TextFieldLabelScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldDefaults$DecorationBox$2$1
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Number) obj3).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            function3.invoke(composer2, 0);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH);
                gapComposerH.Z(false);
                composableLambdaImpl3 = composableLambdaImplB;
            }
            int i6 = i3 >> 9;
            int i7 = i4 << 21;
            gapComposer = gapComposerH;
            TextFieldImplKt.a(textFieldType, str2, function6, attached, composableLambdaImpl3, function4, function5, z5, z4, z3, interactionSource2, paddingValuesD, textFieldColors, composableLambdaImpl, gapComposer, ((i3 << 3) & 896) | 6 | (458752 & i6) | (i6 & 3670016) | (i7 & 29360128) | (i7 & 234881024) | (i7 & 1879048192), ((i3 >> 3) & 57344) | ((i4 >> 9) & 14) | ((i3 >> 6) & 112) | (i3 & 896) | (i6 & 7168) | ((i4 << 6) & 3670016) | 12582912);
            paddingValues2 = paddingValuesD;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            paddingValues2 = paddingValues;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: ak0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.f7118a;
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    this.f531b.b(str, function2, z, z2, visualTransformation, interactionSource, z3, function3, function4, function5, textFieldColors, paddingValues2, composableLambdaImpl, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
