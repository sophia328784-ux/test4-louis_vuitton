package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Center$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.internal.ProvideContentColorTextStyleKt;
import androidx.compose.material3.tokens.ButtonSmallTokens;
import androidx.compose.material3.tokens.FilledButtonTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.bg;
import defpackage.fc;
import defpackage.jh;
import defpackage.v5;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import org.squirrelframework.foundation.fsm.Action;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class ButtonKt {
    /* JADX WARN: Code duplicated, block: B:101:0x0110  */
    /* JADX WARN: Code duplicated, block: B:102:0x0113  */
    /* JADX WARN: Code duplicated, block: B:106:0x0126  */
    /* JADX WARN: Code duplicated, block: B:107:0x0129  */
    /* JADX WARN: Code duplicated, block: B:110:0x0132  */
    /* JADX WARN: Code duplicated, block: B:126:0x0160 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:127:0x0162  */
    /* JADX WARN: Code duplicated, block: B:128:0x0168  */
    /* JADX WARN: Code duplicated, block: B:130:0x016c  */
    /* JADX WARN: Code duplicated, block: B:133:0x0172  */
    /* JADX WARN: Code duplicated, block: B:136:0x0183  */
    /* JADX WARN: Code duplicated, block: B:139:0x0196  */
    /* JADX WARN: Code duplicated, block: B:140:0x01af  */
    /* JADX WARN: Code duplicated, block: B:142:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:146:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:149:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:150:0x01e1  */
    /* JADX WARN: Code duplicated, block: B:153:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:154:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:156:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:157:0x0207  */
    /* JADX WARN: Code duplicated, block: B:159:0x0220  */
    /* JADX WARN: Code duplicated, block: B:163:0x0236  */
    /* JADX WARN: Code duplicated, block: B:166:0x024c  */
    /* JADX WARN: Code duplicated, block: B:167:0x024f  */
    /* JADX WARN: Code duplicated, block: B:169:0x0253  */
    /* JADX WARN: Code duplicated, block: B:170:0x0256  */
    /* JADX WARN: Code duplicated, block: B:172:0x025a  */
    /* JADX WARN: Code duplicated, block: B:173:0x025d  */
    /* JADX WARN: Code duplicated, block: B:175:0x0261  */
    /* JADX WARN: Code duplicated, block: B:176:0x0264  */
    /* JADX WARN: Code duplicated, block: B:179:0x026c  */
    /* JADX WARN: Code duplicated, block: B:201:0x02e3  */
    /* JADX WARN: Code duplicated, block: B:204:0x0304  */
    /* JADX WARN: Code duplicated, block: B:206:0x0313  */
    /* JADX WARN: Code duplicated, block: B:209:0x031d  */
    /* JADX WARN: Code duplicated, block: B:211:0x035e  */
    /* JADX WARN: Code duplicated, block: B:214:0x036f  */
    /* JADX WARN: Code duplicated, block: B:216:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x0061  */
    /* JADX WARN: Code duplicated, block: B:38:0x0065  */
    /* JADX WARN: Code duplicated, block: B:40:0x006d  */
    /* JADX WARN: Code duplicated, block: B:41:0x0070  */
    /* JADX WARN: Code duplicated, block: B:44:0x0076  */
    /* JADX WARN: Code duplicated, block: B:47:0x007c  */
    /* JADX WARN: Code duplicated, block: B:49:0x0080  */
    /* JADX WARN: Code duplicated, block: B:51:0x0088  */
    /* JADX WARN: Code duplicated, block: B:52:0x008b  */
    /* JADX WARN: Code duplicated, block: B:55:0x0091  */
    /* JADX WARN: Code duplicated, block: B:58:0x0098  */
    /* JADX WARN: Code duplicated, block: B:60:0x009c  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:70:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:72:0x00be  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:82:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:90:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:92:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:94:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:95:0x0102  */
    /* JADX WARN: Code duplicated, block: B:99:0x010a  */
    public static final void a(Function0 function0, Modifier modifier, boolean z, Shape shape, ButtonColors buttonColors, ButtonElevation buttonElevation, PaddingValues paddingValues, final Function3 function3, Composer composer, int i2, int i3) {
        int i4;
        boolean z2;
        Shape shapeA;
        ButtonColors buttonColorsB;
        ButtonElevation buttonElevation2;
        int i5;
        int i6;
        final PaddingValues paddingValues2;
        int i7;
        Modifier modifier2;
        int i8;
        boolean z3;
        boolean z4;
        GapComposer gapComposer;
        boolean z5;
        Shape shape2;
        ButtonColors buttonColors2;
        ButtonElevation buttonElevation3;
        Modifier modifier3;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        ButtonElevation buttonElevation4;
        Modifier modifier4;
        ButtonColors buttonColors3;
        boolean z6;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MutableInteractionSource mutableInteractionSource;
        long j2;
        final long j3;
        int i9;
        Object objX2;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        SnapshotStateList snapshotStateList;
        boolean zK;
        Object objX3;
        Interaction interaction;
        float f2;
        Object objX4;
        Animatable animatable;
        float f3;
        boolean zY;
        Object objX5;
        boolean z7;
        ButtonElevation buttonElevation5;
        AnimationState animationState;
        float f4;
        Object objX6;
        int i10;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Button");
        }
        GapComposer gapComposerH = composer.h(-1310015664);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i11 = i3 & 2;
        if (i11 != 0) {
            i4 |= 48;
        } else if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(modifierE) ? 32 : 16;
        }
        int i12 = i3 & 4;
        if (i12 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                z2 = z;
                i4 |= gapComposerH.b(z2) ? 256 : 128;
            }
            if ((i2 & 3072) == 0) {
                if ((i3 & 8) == 0) {
                    shapeA = shape;
                    int i13 = gapComposerH.K(shapeA) ? 2048 : 1024;
                    i4 |= i13;
                } else {
                    shapeA = shape;
                }
                i4 |= i13;
            } else {
                shapeA = shape;
            }
            if ((i2 & 24576) == 0) {
                if ((i3 & 16) == 0) {
                    buttonColorsB = buttonColors;
                    int i14 = gapComposerH.K(buttonColorsB) ? 16384 : 8192;
                    i4 |= i14;
                } else {
                    buttonColorsB = buttonColors;
                }
                i4 |= i14;
            } else {
                buttonColorsB = buttonColors;
            }
            if ((196608 & i2) == 0) {
                if ((i3 & 32) == 0) {
                    buttonElevation2 = buttonElevation;
                    int i15 = gapComposerH.K(buttonElevation2) ? 131072 : 65536;
                    i4 |= i15;
                } else {
                    buttonElevation2 = buttonElevation;
                }
                i4 |= i15;
            } else {
                buttonElevation2 = buttonElevation;
            }
            if ((i3 & 64) != 0) {
                i4 |= 1572864;
            } else if ((i2 & 1572864) == 0) {
                if (gapComposerH.K(null)) {
                    i5 = 1048576;
                } else {
                    i5 = 524288;
                }
                i4 |= i5;
            }
            i6 = i3 & 128;
            if (i6 != 0) {
                i4 |= 12582912;
                paddingValues2 = paddingValues;
            } else {
                paddingValues2 = paddingValues;
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.K(paddingValues2)) {
                        i7 = 8388608;
                    } else {
                        i7 = 4194304;
                    }
                    i4 |= i7;
                }
            }
            modifier2 = modifierE;
            if ((i3 & 256) != 0) {
                i4 |= 100663296;
            } else if ((i2 & 100663296) == 0) {
                if (gapComposerH.K(null)) {
                    i8 = 67108864;
                } else {
                    i8 = 33554432;
                }
                i4 |= i8;
            }
            if ((805306368 & i2) == 0) {
                if (gapComposerH.y(function3)) {
                    i10 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i10 = 268435456;
                }
                i4 |= i10;
            }
            z3 = true;
            if ((306783379 & i4) != 306783378) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i4 & 1, z4)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0 || gapComposerH.h0()) {
                    if (i11 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Button");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i12 != 0) {
                        z2 = true;
                    }
                    if ((i3 & 8) != 0) {
                        PaddingValuesImpl paddingValuesImpl = ButtonDefaults.f6634a;
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        i4 &= -7169;
                        shapeA = ShapesKt.a(ButtonSmallTokens.f7745b, gapComposerH);
                    }
                    if ((i3 & 16) != 0) {
                        PaddingValuesImpl paddingValuesImpl2 = ButtonDefaults.f6634a;
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        i4 &= -57345;
                        buttonColorsB = ButtonDefaults.b(MaterialTheme.a(gapComposerH));
                    }
                    if ((i3 & 32) != 0) {
                        PaddingValuesImpl paddingValuesImpl3 = ButtonDefaults.f6634a;
                        float f5 = FilledButtonTokens.f7790f;
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        buttonElevation4 = new ButtonElevation(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f5, Call.Parameters.DEFAULT_CAMERA_ZOOM, null);
                        i4 &= -458753;
                    } else {
                        buttonElevation4 = buttonElevation2;
                    }
                    if (i6 != 0) {
                        paddingValues2 = ButtonDefaults.f6634a;
                    }
                    modifier4 = dTFunctionNameModifier;
                    buttonColors3 = buttonColorsB;
                    buttonElevation2 = buttonElevation4;
                } else {
                    gapComposerH.D();
                    if ((i3 & 8) != 0) {
                        i4 &= -7169;
                    }
                    if ((i3 & 16) != 0) {
                        i4 &= -57345;
                    }
                    if ((i3 & 32) != 0) {
                        i4 &= -458753;
                    }
                    buttonColors3 = buttonColorsB;
                    modifier4 = modifier2;
                }
                Shape shape3 = shapeA;
                z6 = z2;
                gapComposerH.a0();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                gapComposerH.L(1691738187);
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = InteractionSourceKt.a();
                    gapComposerH.q(objX);
                }
                mutableInteractionSource = (MutableInteractionSource) objX;
                gapComposerH.Z(false);
                if (z6) {
                    j2 = buttonColors3.f6631a;
                } else {
                    j2 = buttonColors3.f6633c;
                }
                long j4 = j2;
                if (z6) {
                    j3 = buttonColors3.f6632b;
                } else {
                    j3 = buttonColors3.d;
                }
                if (buttonElevation2 == null) {
                    gapComposerH.L(1691921830);
                    gapComposerH.Z(false);
                    composer$Companion$Empty$2 = composer$Companion$Empty$1;
                    z7 = z6;
                    buttonElevation5 = buttonElevation2;
                    animationState = null;
                } else {
                    gapComposerH.L(-499611205);
                    i9 = ((i4 >> 9) & 896) | ((i4 >> 6) & 14);
                    objX2 = gapComposerH.x();
                    composer$Companion$Empty$2 = composer$Companion$Empty$1;
                    if (objX2 == composer$Companion$Empty$2) {
                        objX2 = new SnapshotStateList();
                        gapComposerH.q(objX2);
                    }
                    snapshotStateList = (SnapshotStateList) objX2;
                    zK = gapComposerH.K(mutableInteractionSource);
                    objX3 = gapComposerH.x();
                    if (zK || objX3 == composer$Companion$Empty$2) {
                        objX3 = new ButtonElevation$animateElevation$1$1(mutableInteractionSource, snapshotStateList, null);
                        gapComposerH.q(objX3);
                    }
                    EffectsKt.e(gapComposerH, mutableInteractionSource, (Function2) objX3);
                    interaction = (Interaction) CollectionsKt.N(snapshotStateList);
                    if (!z6) {
                        f2 = buttonElevation2.f6641e;
                    } else if (interaction instanceof PressInteraction.Press) {
                        f2 = buttonElevation2.f6639b;
                    } else if (interaction instanceof HoverInteraction.Enter) {
                        f2 = buttonElevation2.d;
                    } else if (interaction instanceof FocusInteraction.Focus) {
                        f2 = buttonElevation2.f6640c;
                    } else {
                        f2 = buttonElevation2.f6638a;
                    }
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$2) {
                        objX4 = new Animatable(new Dp(f2), VectorConvertersKt.f4038c, null, null, 12, null);
                        gapComposerH.q(objX4);
                    }
                    animatable = (Animatable) objX4;
                    Dp dp = new Dp(f2);
                    f3 = f2;
                    boolean zY2 = gapComposerH.y(animatable) | gapComposerH.c(f2) | ((((i9 & 14) ^ 6) <= 4 && gapComposerH.b(z6)) || (i9 & 6) == 4);
                    if ((((i9 & 896) ^ KyberEngine.KyberPolyBytes) > 256 || !gapComposerH.K(buttonElevation2)) && (i9 & KyberEngine.KyberPolyBytes) != 256) {
                    }
                    zY = zY2 | z3 | gapComposerH.y(interaction);
                    objX5 = gapComposerH.x();
                    if (!zY || objX5 == composer$Companion$Empty$2) {
                        z7 = z6;
                        buttonElevation5 = buttonElevation2;
                        objX5 = new ButtonElevation$animateElevation$2$1(animatable, f3, z7, buttonElevation5, interaction, null);
                        gapComposerH.q(objX5);
                    } else {
                        z7 = z6;
                        buttonElevation5 = buttonElevation2;
                    }
                    EffectsKt.e(gapComposerH, dp, (Function2) objX5);
                    animationState = animatable.f3774c;
                    gapComposerH.Z(false);
                }
                if (animationState != null) {
                    f4 = ((Dp) ((SnapshotMutableStateImpl) animationState.f3818c).getF10755b()).f11006b;
                } else {
                    Dp.Companion companion = Dp.f11004c;
                    f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                }
                float f6 = f4;
                objX6 = gapComposerH.x();
                if (objX6 == composer$Companion$Empty$2) {
                    objX6 = new jh(4);
                    gapComposerH.q(objX6);
                }
                boolean z8 = z7;
                gapComposer = gapComposerH;
                SurfaceKt.c(function0, SemanticsModifierKt.b(modifier4, false, (Function1) objX6), z8, shape3, j4, j3, Call.Parameters.DEFAULT_CAMERA_ZOOM, f6, mutableInteractionSource, ComposableLambdaKt.b(-535639973, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ButtonKt$Button$2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                            TextStyle textStyle = MaterialTheme.b(composer2).m;
                            final PaddingValues paddingValues3 = paddingValues2;
                            final Function3 function4 = function3;
                            ProvideContentColorTextStyleKt.a(j3, textStyle, ComposableLambdaKt.b(417635459, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ButtonKt$Button$2.1
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Number) obj4).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                        Modifier modifierH = PaddingKt.h(SizeKt.a(Modifier.Companion.f8607b, ButtonDefaults.f6636c, ButtonDefaults.d), paddingValues3);
                                        Arrangement$Center$1 arrangement$Center$1 = Arrangement.f4921e;
                                        Alignment.f8582a.getClass();
                                        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Center$1, Alignment.Companion.l, composer3, 54);
                                        int iG = composer3.G();
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                                        Modifier modifierC = ComposedModifierKt.c(composer3, modifierH);
                                        ComposeUiNode.b0.getClass();
                                        Function0 function1 = ComposeUiNode.Companion.f9641b;
                                        if (composer3.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer3.B();
                                        if (composer3.getS()) {
                                            composer3.C(function1);
                                        } else {
                                            composer3.o();
                                        }
                                        Updater.c(composer3, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                                        Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                        Function2 function2 = ComposeUiNode.Companion.g;
                                        if (composer3.getS() || !Intrinsics.c(composer3.x(), Integer.valueOf(iG))) {
                                            fc.A(function2, iG, composer3, iG);
                                        }
                                        Updater.c(composer3, modifierC, ComposeUiNode.Companion.d);
                                        function4.A(RowScopeInstance.f5040a, composer3, 6);
                                        composer3.r();
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2), composer2, KyberEngine.KyberPolyBytes);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposer, (i4 & 8078) | ((i4 << 6) & 234881024), 64);
                buttonColors2 = buttonColors3;
                modifier3 = modifier4;
                shape2 = shape3;
                z5 = z8;
                buttonElevation3 = buttonElevation5;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                z5 = z2;
                shape2 = shapeA;
                buttonColors2 = buttonColorsB;
                buttonElevation3 = buttonElevation2;
                modifier3 = modifier2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new v5(function0, modifier3, z5, shape2, buttonColors2, buttonElevation3, paddingValues2, function3, i2, i3);
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        z2 = z;
        if ((i2 & 3072) == 0) {
            if ((i3 & 8) == 0) {
                shapeA = shape;
                if (gapComposerH.K(shapeA)) {
                }
                i4 |= i13;
            } else {
                shapeA = shape;
            }
            i4 |= i13;
        } else {
            shapeA = shape;
        }
        if ((i2 & 24576) == 0) {
            if ((i3 & 16) == 0) {
                buttonColorsB = buttonColors;
                if (gapComposerH.K(buttonColorsB)) {
                }
                i4 |= i14;
            } else {
                buttonColorsB = buttonColors;
            }
            i4 |= i14;
        } else {
            buttonColorsB = buttonColors;
        }
        if ((196608 & i2) == 0) {
            if ((i3 & 32) == 0) {
                buttonElevation2 = buttonElevation;
                if (gapComposerH.K(buttonElevation2)) {
                }
                i4 |= i15;
            } else {
                buttonElevation2 = buttonElevation;
            }
            i4 |= i15;
        } else {
            buttonElevation2 = buttonElevation;
        }
        if ((i3 & 64) != 0) {
            i4 |= 1572864;
        } else if ((i2 & 1572864) == 0) {
            if (gapComposerH.K(null)) {
                i5 = 1048576;
            } else {
                i5 = 524288;
            }
            i4 |= i5;
        }
        i6 = i3 & 128;
        if (i6 != 0) {
            i4 |= 12582912;
            paddingValues2 = paddingValues;
        } else {
            paddingValues2 = paddingValues;
            if ((i2 & 12582912) == 0) {
                if (gapComposerH.K(paddingValues2)) {
                    i7 = 8388608;
                } else {
                    i7 = 4194304;
                }
                i4 |= i7;
            }
        }
        modifier2 = modifierE;
        if ((i3 & 256) != 0) {
            i4 |= 100663296;
        } else if ((i2 & 100663296) == 0) {
            if (gapComposerH.K(null)) {
                i8 = 67108864;
            } else {
                i8 = 33554432;
            }
            i4 |= i8;
        }
        if ((805306368 & i2) == 0) {
            if (gapComposerH.y(function3)) {
                i10 = PKIFailureInfo.duplicateCertReq;
            } else {
                i10 = 268435456;
            }
            i4 |= i10;
        }
        z3 = true;
        if ((306783379 & i4) != 306783378) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (gapComposerH.p(i4 & 1, z4)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i11 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Button");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i12 != 0) {
                    z2 = true;
                }
                if ((i3 & 8) != 0) {
                    PaddingValuesImpl paddingValuesImpl4 = ButtonDefaults.f6634a;
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    i4 &= -7169;
                    shapeA = ShapesKt.a(ButtonSmallTokens.f7745b, gapComposerH);
                }
                if ((i3 & 16) != 0) {
                    PaddingValuesImpl paddingValuesImpl5 = ButtonDefaults.f6634a;
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    i4 &= -57345;
                    buttonColorsB = ButtonDefaults.b(MaterialTheme.a(gapComposerH));
                }
                if ((i3 & 32) != 0) {
                    PaddingValuesImpl paddingValuesImpl6 = ButtonDefaults.f6634a;
                    float f7 = FilledButtonTokens.f7790f;
                    OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                    buttonElevation4 = new ButtonElevation(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f7, Call.Parameters.DEFAULT_CAMERA_ZOOM, null);
                    i4 &= -458753;
                } else {
                    buttonElevation4 = buttonElevation2;
                }
                if (i6 != 0) {
                    paddingValues2 = ButtonDefaults.f6634a;
                }
                modifier4 = dTFunctionNameModifier;
                buttonColors3 = buttonColorsB;
                buttonElevation2 = buttonElevation4;
            } else {
                if (i11 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Button");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i12 != 0) {
                    z2 = true;
                }
                if ((i3 & 8) != 0) {
                    PaddingValuesImpl paddingValuesImpl7 = ButtonDefaults.f6634a;
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    i4 &= -7169;
                    shapeA = ShapesKt.a(ButtonSmallTokens.f7745b, gapComposerH);
                }
                if ((i3 & 16) != 0) {
                    PaddingValuesImpl paddingValuesImpl8 = ButtonDefaults.f6634a;
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    i4 &= -57345;
                    buttonColorsB = ButtonDefaults.b(MaterialTheme.a(gapComposerH));
                }
                if ((i3 & 32) != 0) {
                    PaddingValuesImpl paddingValuesImpl9 = ButtonDefaults.f6634a;
                    float f8 = FilledButtonTokens.f7790f;
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    buttonElevation4 = new ButtonElevation(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f8, Call.Parameters.DEFAULT_CAMERA_ZOOM, null);
                    i4 &= -458753;
                } else {
                    buttonElevation4 = buttonElevation2;
                }
                if (i6 != 0) {
                    paddingValues2 = ButtonDefaults.f6634a;
                }
                modifier4 = dTFunctionNameModifier;
                buttonColors3 = buttonColorsB;
                buttonElevation2 = buttonElevation4;
            }
            Shape shape4 = shapeA;
            z6 = z2;
            gapComposerH.a0();
            OpaqueKey opaqueKey11 = ComposerKt.f7940a;
            gapComposerH.L(1691738187);
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            mutableInteractionSource = (MutableInteractionSource) objX;
            gapComposerH.Z(false);
            if (z6) {
                j2 = buttonColors3.f6631a;
            } else {
                j2 = buttonColors3.f6633c;
            }
            long j5 = j2;
            if (z6) {
                j3 = buttonColors3.f6632b;
            } else {
                j3 = buttonColors3.d;
            }
            if (buttonElevation2 == null) {
                gapComposerH.L(1691921830);
                gapComposerH.Z(false);
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
                z7 = z6;
                buttonElevation5 = buttonElevation2;
                animationState = null;
            } else {
                gapComposerH.L(-499611205);
                i9 = ((i4 >> 9) & 896) | ((i4 >> 6) & 14);
                objX2 = gapComposerH.x();
                composer$Companion$Empty$2 = composer$Companion$Empty$1;
                if (objX2 == composer$Companion$Empty$2) {
                    objX2 = new SnapshotStateList();
                    gapComposerH.q(objX2);
                }
                snapshotStateList = (SnapshotStateList) objX2;
                zK = gapComposerH.K(mutableInteractionSource);
                objX3 = gapComposerH.x();
                if (zK) {
                    objX3 = new ButtonElevation$animateElevation$1$1(mutableInteractionSource, snapshotStateList, null);
                    gapComposerH.q(objX3);
                } else {
                    objX3 = new ButtonElevation$animateElevation$1$1(mutableInteractionSource, snapshotStateList, null);
                    gapComposerH.q(objX3);
                }
                EffectsKt.e(gapComposerH, mutableInteractionSource, (Function2) objX3);
                interaction = (Interaction) CollectionsKt.N(snapshotStateList);
                if (!z6) {
                    f2 = buttonElevation2.f6641e;
                } else if (interaction instanceof PressInteraction.Press) {
                    f2 = buttonElevation2.f6639b;
                } else if (interaction instanceof HoverInteraction.Enter) {
                    f2 = buttonElevation2.d;
                } else if (interaction instanceof FocusInteraction.Focus) {
                    f2 = buttonElevation2.f6640c;
                } else {
                    f2 = buttonElevation2.f6638a;
                }
                objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$2) {
                    objX4 = new Animatable(new Dp(f2), VectorConvertersKt.f4038c, null, null, 12, null);
                    gapComposerH.q(objX4);
                }
                animatable = (Animatable) objX4;
                Dp dp2 = new Dp(f2);
                f3 = f2;
                boolean zY3 = gapComposerH.y(animatable) | gapComposerH.c(f2) | ((((i9 & 14) ^ 6) <= 4 && gapComposerH.b(z6)) || (i9 & 6) == 4);
                z3 = ((i9 & 896) ^ KyberEngine.KyberPolyBytes) > 256 ? false : false;
                zY = zY3 | z3 | gapComposerH.y(interaction);
                objX5 = gapComposerH.x();
                if (zY) {
                    z7 = z6;
                    buttonElevation5 = buttonElevation2;
                    objX5 = new ButtonElevation$animateElevation$2$1(animatable, f3, z7, buttonElevation5, interaction, null);
                    gapComposerH.q(objX5);
                } else {
                    z7 = z6;
                    buttonElevation5 = buttonElevation2;
                    objX5 = new ButtonElevation$animateElevation$2$1(animatable, f3, z7, buttonElevation5, interaction, null);
                    gapComposerH.q(objX5);
                }
                EffectsKt.e(gapComposerH, dp2, (Function2) objX5);
                animationState = animatable.f3774c;
                gapComposerH.Z(false);
            }
            if (animationState != null) {
                f4 = ((Dp) ((SnapshotMutableStateImpl) animationState.f3818c).getF10755b()).f11006b;
            } else {
                Dp.Companion companion2 = Dp.f11004c;
                f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            float f9 = f4;
            objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$2) {
                objX6 = new jh(4);
                gapComposerH.q(objX6);
            }
            boolean z9 = z7;
            gapComposer = gapComposerH;
            SurfaceKt.c(function0, SemanticsModifierKt.b(modifier4, false, (Function1) objX6), z9, shape4, j5, j3, Call.Parameters.DEFAULT_CAMERA_ZOOM, f9, mutableInteractionSource, ComposableLambdaKt.b(-535639973, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ButtonKt$Button$2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                        TextStyle textStyle = MaterialTheme.b(composer2).m;
                        final PaddingValues paddingValues3 = paddingValues2;
                        final Function3 function4 = function3;
                        ProvideContentColorTextStyleKt.a(j3, textStyle, ComposableLambdaKt.b(417635459, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ButtonKt$Button$2.1
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                Composer composer3 = (Composer) obj3;
                                int iIntValue2 = ((Number) obj4).intValue();
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                    OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                                    Modifier modifierH = PaddingKt.h(SizeKt.a(Modifier.Companion.f8607b, ButtonDefaults.f6636c, ButtonDefaults.d), paddingValues3);
                                    Arrangement$Center$1 arrangement$Center$1 = Arrangement.f4921e;
                                    Alignment.f8582a.getClass();
                                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Center$1, Alignment.Companion.l, composer3, 54);
                                    int iG = composer3.G();
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer3, modifierH);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                                    if (composer3.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer3.B();
                                    if (composer3.getS()) {
                                        composer3.C(function1);
                                    } else {
                                        composer3.o();
                                    }
                                    Updater.c(composer3, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                                    Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                    Function2 function2 = ComposeUiNode.Companion.g;
                                    if (composer3.getS() || !Intrinsics.c(composer3.x(), Integer.valueOf(iG))) {
                                        fc.A(function2, iG, composer3, iG);
                                    }
                                    Updater.c(composer3, modifierC, ComposeUiNode.Companion.d);
                                    function4.A(RowScopeInstance.f5040a, composer3, 6);
                                    composer3.r();
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, KyberEngine.KyberPolyBytes);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, (i4 & 8078) | ((i4 << 6) & 234881024), 64);
            buttonColors2 = buttonColors3;
            modifier3 = modifier4;
            shape2 = shape4;
            z5 = z9;
            buttonElevation3 = buttonElevation5;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            z5 = z2;
            shape2 = shapeA;
            buttonColors2 = buttonColorsB;
            buttonElevation3 = buttonElevation2;
            modifier3 = modifier2;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v5(function0, modifier3, z5, shape2, buttonColors2, buttonElevation3, paddingValues2, function3, i2, i3);
        }
    }

    public static final void b(Function0 function0, Modifier modifier, boolean z, Shape shape, ButtonColors buttonColors, PaddingValues paddingValues, Function3 function3, Composer composer, int i2, int i3) {
        int i4;
        Shape shape2;
        ButtonColors buttonColorsC;
        Function3 function4;
        GapComposer gapComposer;
        boolean z2;
        Modifier modifier2;
        Shape shape3;
        ButtonColors buttonColors2;
        PaddingValues paddingValues2;
        Shape shapeA;
        Modifier modifier3;
        PaddingValues paddingValues3;
        ButtonColors buttonColors3;
        boolean z3;
        Shape shape4;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "TextButton");
        }
        GapComposer gapComposerH = composer.h(-1061374109);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i5 = i3 & 2;
        if (i5 != 0) {
            i4 |= 48;
        } else if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(dTFunctionNameModifier) ? 32 : 16;
        }
        int i6 = i4 | KyberEngine.KyberPolyBytes;
        if ((i2 & 3072) == 0) {
            if ((i3 & 8) == 0) {
                shape2 = shape;
                int i7 = gapComposerH.K(shape2) ? 2048 : 1024;
                i6 |= i7;
            } else {
                shape2 = shape;
            }
            i6 |= i7;
        } else {
            shape2 = shape;
        }
        if ((i2 & 24576) == 0) {
            if ((i3 & 16) == 0) {
                buttonColorsC = buttonColors;
                int i8 = gapComposerH.K(buttonColorsC) ? 16384 : 8192;
                i6 |= i8;
            } else {
                buttonColorsC = buttonColors;
            }
            i6 |= i8;
        } else {
            buttonColorsC = buttonColors;
        }
        if ((i3 & 32) != 0) {
            i6 |= ImageMetadata.EDGE_MODE;
        } else if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i6 |= gapComposerH.K(null) ? 131072 : 65536;
        }
        if ((i3 & 64) != 0) {
            i6 |= 1572864;
        } else if ((i2 & 1572864) == 0) {
            i6 |= gapComposerH.K(null) ? 1048576 : 524288;
        }
        int i9 = i6 | 113246208;
        if ((805306368 & i2) == 0) {
            function4 = function3;
            i9 |= gapComposerH.y(function4) ? PKIFailureInfo.duplicateCertReq : 268435456;
        } else {
            function4 = function3;
        }
        if (gapComposerH.p(i9 & 1, (306783379 & i9) != 306783378)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                if (i5 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("TextButton");
                }
                if ((i3 & 8) != 0) {
                    PaddingValuesImpl paddingValuesImpl = ButtonDefaults.f6634a;
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    shapeA = ShapesKt.a(ButtonSmallTokens.f7745b, gapComposerH);
                    i9 &= -7169;
                } else {
                    shapeA = shape2;
                }
                if ((i3 & 16) != 0) {
                    PaddingValuesImpl paddingValuesImpl2 = ButtonDefaults.f6634a;
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    i9 &= -57345;
                    buttonColorsC = ButtonDefaults.c(MaterialTheme.a(gapComposerH));
                }
                modifier3 = dTFunctionNameModifier;
                paddingValues3 = ButtonDefaults.f6635b;
                buttonColors3 = buttonColorsC;
                z3 = true;
                shape4 = shapeA;
            } else {
                gapComposerH.D();
                if ((i3 & 8) != 0) {
                    i9 &= -7169;
                }
                if ((i3 & 16) != 0) {
                    i9 &= -57345;
                }
                z3 = z;
                paddingValues3 = paddingValues;
                modifier3 = dTFunctionNameModifier;
                shape4 = shape2;
                buttonColors3 = buttonColorsC;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            a(function0, modifier3, z3, shape4, buttonColors3, null, paddingValues3, function4, gapComposer, i9 & Action.MAX_WEIGHT, 0);
            modifier2 = modifier3;
            z2 = z3;
            shape3 = shape4;
            buttonColors2 = buttonColors3;
            paddingValues2 = paddingValues3;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            z2 = z;
            modifier2 = dTFunctionNameModifier;
            shape3 = shape2;
            buttonColors2 = buttonColorsC;
            paddingValues2 = paddingValues;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new bg(function0, modifier2, z2, shape3, buttonColors2, paddingValues2, function3, i2, i3, 1);
        }
    }
}
