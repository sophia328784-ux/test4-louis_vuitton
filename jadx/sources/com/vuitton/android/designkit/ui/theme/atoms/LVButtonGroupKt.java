package com.vuitton.android.designkit.ui.theme.atoms;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteractionKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.c10;
import defpackage.cj;
import defpackage.n00;
import defpackage.s3;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004¨\u0006\u0006²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0004\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "isPressed", "Landroidx/compose/ui/graphics/Color;", "borderColor", "backgroundColor", "isSelected", "system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVButtonGroupKt {
    /* JADX WARN: Code duplicated, block: B:102:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:103:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:106:0x025f  */
    /* JADX WARN: Code duplicated, block: B:108:0x0266  */
    /* JADX WARN: Code duplicated, block: B:109:0x026a  */
    /* JADX WARN: Code duplicated, block: B:112:0x028c  */
    /* JADX WARN: Code duplicated, block: B:114:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:116:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:117:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:119:0x02dc  */
    /* JADX WARN: Code duplicated, block: B:121:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:123:0x0330  */
    /* JADX WARN: Code duplicated, block: B:125:0x0334  */
    /* JADX WARN: Code duplicated, block: B:128:0x0340  */
    /* JADX WARN: Code duplicated, block: B:130:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x0079  */
    /* JADX WARN: Code duplicated, block: B:46:0x007e  */
    /* JADX WARN: Code duplicated, block: B:48:0x0082  */
    /* JADX WARN: Code duplicated, block: B:50:0x008a  */
    /* JADX WARN: Code duplicated, block: B:51:0x008d  */
    /* JADX WARN: Code duplicated, block: B:55:0x0095  */
    /* JADX WARN: Code duplicated, block: B:57:0x009b  */
    /* JADX WARN: Code duplicated, block: B:58:0x009e  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:66:0x00bb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:73:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:80:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:82:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:83:0x0104  */
    /* JADX WARN: Code duplicated, block: B:86:0x0130  */
    /* JADX WARN: Code duplicated, block: B:89:0x013e  */
    /* JADX WARN: Code duplicated, block: B:90:0x0150  */
    /* JADX WARN: Code duplicated, block: B:93:0x0163  */
    /* JADX WARN: Code duplicated, block: B:97:0x017a  */
    /* JADX WARN: Code duplicated, block: B:99:0x018d  */
    public static final void a(Modifier modifier, String str, boolean z, boolean z2, LVButtonGroupIndicator lVButtonGroupIndicator, Function0 function0, Composer composer, int i2, int i3) {
        int i4;
        boolean z3;
        int i5;
        LVButtonGroupIndicator lVButtonGroupIndicator2;
        int i6;
        int i7;
        boolean z4;
        Modifier modifier2;
        boolean z5;
        LVButtonGroupIndicator lVButtonGroupIndicator3;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z6;
        Object objX;
        MutableInteractionSource mutableInteractionSource;
        MutableState mutableStateA;
        float f2;
        long j2;
        float f3;
        LVButtonGroupIndicator lVButtonGroupIndicator4;
        long jB;
        long j3;
        long j4;
        Modifier modifier3;
        boolean z7;
        Modifier modifierA;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function1;
        Function2 function2;
        Function2 function3;
        Function2 function4;
        Function1 function5;
        Function2 function6;
        boolean z8;
        MeasurePolicy measurePolicyD;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        int i8;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVButtonGroupItem");
        }
        str.getClass();
        GapComposer gapComposerH = composer.h(-1023062871);
        Applier applier = gapComposerH.f7976a;
        int i9 = i3 & 1;
        if (i9 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(str) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.b(z) ? 256 : 128;
        }
        int i10 = i3 & 8;
        if (i10 == 0) {
            if ((i2 & 3072) == 0) {
                z3 = z2;
                i4 |= gapComposerH.b(z3) ? 2048 : 1024;
            }
            i5 = i3 & 16;
            if (i5 != 0) {
                if ((i2 & 24576) == 0) {
                    lVButtonGroupIndicator2 = lVButtonGroupIndicator;
                    if (gapComposerH.K(lVButtonGroupIndicator2)) {
                        i6 = 16384;
                    } else {
                        i6 = 8192;
                    }
                    i4 |= i6;
                }
                if ((196608 & i2) == 0) {
                    if (gapComposerH.y(function0)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
                i7 = i4;
                if ((i7 & 74899) != 74898) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (gapComposerH.p(i7 & 1, z4)) {
                    if (i9 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVButtonGroupItem");
                    }
                    if (i10 != 0) {
                        z6 = true;
                    } else {
                        z6 = z3;
                    }
                    if (i5 != 0) {
                        lVButtonGroupIndicator2 = null;
                    }
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = InteractionSourceKt.a();
                        gapComposerH.q(objX);
                    }
                    mutableInteractionSource = (MutableInteractionSource) objX;
                    mutableStateA = PressInteractionKt.a(mutableInteractionSource, gapComposerH, 6);
                    if (z6) {
                        f2 = 1.0f;
                    } else {
                        f2 = 0.5f;
                    }
                    if (z) {
                        gapComposerH.L(-977576516);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.u;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-977509928);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                        gapComposerH.Z(false);
                    }
                    f3 = f2;
                    lVButtonGroupIndicator4 = lVButtonGroupIndicator2;
                    State stateB = SingleValueAnimationKt.b(j2, null, null, gapComposerH, 0, 14);
                    float f4 = z ? 1.5f : 0.5f;
                    if (((Boolean) mutableStateA.getF10755b()).booleanValue()) {
                        gapComposerH.L(-977264842);
                        jB = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-977188210);
                        jB = Color.b(z ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b);
                        gapComposerH.Z(false);
                    }
                    float f5 = f4;
                    State stateB2 = SingleValueAnimationKt.b(jB, null, null, gapComposerH, 0, 14);
                    if (z6 != 0) {
                        gapComposerH.L(-976949572);
                        j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-976883139);
                        j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                        gapComposerH.Z(false);
                    }
                    j4 = j3;
                    Modifier modifierB = BackgroundKt.b(dTFunctionNameModifier, ((Color) stateB2.getF10755b()).f8872a, LVAppDesignKitTheme.j(gapComposerH).f48410b);
                    Role.f10289b.getClass();
                    modifier3 = dTFunctionNameModifier;
                    z7 = z6;
                    Modifier modifierA2 = SelectableKt.a(modifierB, z, mutableInteractionSource, null, z7, new Role(Role.f10291e), function0);
                    if (z7) {
                        modifierA = ModifierExtKt.d(n00.i(gapComposerH, -976317389, "LVButtonGroupItem"), mutableInteractionSource, function0, gapComposerH, ((i7 >> 9) & 896) | 54);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-976057578);
                        gapComposerH.Z(false);
                        modifierA = AlphaKt.a(new DTFunctionNameModifier("LVButtonGroupItem"), f3);
                    }
                    Modifier modifierJ = PaddingKt.j(BorderKt.a(modifierA2.o(modifierA), f5, ((Color) stateB.getF10755b()).f8872a, LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c);
                    Alignment.f8582a.getClass();
                    BiasAlignment.Vertical vertical = Alignment.Companion.l;
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    rowMeasurePolicyA = RowKt.a(new Arrangement.SpacedAligned(LVAppDesignKitTheme.l(gapComposerH).f48415c, true, new s3(Alignment.Companion.o, 3), null), vertical, gapComposerH, 48);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
                    ComposeUiNode.b0.getClass();
                    function1 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function1);
                    } else {
                        gapComposerH.o();
                    }
                    function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                    function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    function4 = ComposeUiNode.Companion.g;
                    Updater.c(gapComposerH, numValueOf, function4);
                    function5 = ComposeUiNode.Companion.f9645h;
                    Updater.b(gapComposerH, function5);
                    function6 = ComposeUiNode.Companion.d;
                    Updater.c(gapComposerH, modifierC, function6);
                    if (lVButtonGroupIndicator4 != null) {
                        gapComposerH.L(44834501);
                        BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                        DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("LVButtonGroupItem");
                        measurePolicyD = BoxKt.d(biasAlignment, false);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function1);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD, function2);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                        cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                        Updater.c(gapComposerH, modifierC2, function6);
                        lVButtonGroupIndicator4.a(gapComposerH, (i7 >> 12) & 14);
                        z8 = true;
                        gapComposerH.Z(true);
                        gapComposerH.Z(false);
                    } else {
                        z8 = true;
                        gapComposerH.L(44980573);
                        gapComposerH.Z(false);
                    }
                    TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).l;
                    TextOverflow.f10989a.getClass();
                    TextKt.c(str, null, j4, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 0, 0, null, textStyle, gapComposerH, (i7 >> 3) & 14, KyberEngine.KyberPolyBytes, 126970);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(z8);
                    z5 = z7;
                    lVButtonGroupIndicator3 = lVButtonGroupIndicator4;
                    modifier2 = modifier3;
                } else {
                    gapComposerH.D();
                    modifier2 = dTFunctionNameModifier;
                    z5 = z3;
                    lVButtonGroupIndicator3 = lVButtonGroupIndicator2;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new c10(modifier2, str, z, z5, lVButtonGroupIndicator3, function0, i2, i3, 1);
                }
            }
            i4 |= 24576;
            lVButtonGroupIndicator2 = lVButtonGroupIndicator;
            if ((196608 & i2) == 0) {
                if (gapComposerH.y(function0)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i4 |= i8;
            }
            i7 = i4;
            if ((i7 & 74899) != 74898) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i7 & 1, z4)) {
                if (i9 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVButtonGroupItem");
                }
                if (i10 != 0) {
                    z6 = true;
                } else {
                    z6 = z3;
                }
                if (i5 != 0) {
                    lVButtonGroupIndicator2 = null;
                }
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = InteractionSourceKt.a();
                    gapComposerH.q(objX);
                }
                mutableInteractionSource = (MutableInteractionSource) objX;
                mutableStateA = PressInteractionKt.a(mutableInteractionSource, gapComposerH, 6);
                if (z6) {
                    f2 = 1.0f;
                } else {
                    f2 = 0.5f;
                }
                if (z) {
                    gapComposerH.L(-977576516);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.u;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-977509928);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                    gapComposerH.Z(false);
                }
                f3 = f2;
                lVButtonGroupIndicator4 = lVButtonGroupIndicator2;
                State stateB3 = SingleValueAnimationKt.b(j2, null, null, gapComposerH, 0, 14);
                if (z) {
                }
                if (((Boolean) mutableStateA.getF10755b()).booleanValue()) {
                    gapComposerH.L(-977264842);
                    jB = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-977188210);
                    jB = Color.b(z ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b);
                    gapComposerH.Z(false);
                }
                float f6 = f4;
                State stateB4 = SingleValueAnimationKt.b(jB, null, null, gapComposerH, 0, 14);
                if (z6 != 0) {
                    gapComposerH.L(-976949572);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-976883139);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                    gapComposerH.Z(false);
                }
                j4 = j3;
                Modifier modifierB2 = BackgroundKt.b(dTFunctionNameModifier, ((Color) stateB4.getF10755b()).f8872a, LVAppDesignKitTheme.j(gapComposerH).f48410b);
                Role.f10289b.getClass();
                modifier3 = dTFunctionNameModifier;
                z7 = z6;
                Modifier modifierA3 = SelectableKt.a(modifierB2, z, mutableInteractionSource, null, z7, new Role(Role.f10291e), function0);
                if (z7) {
                    modifierA = ModifierExtKt.d(n00.i(gapComposerH, -976317389, "LVButtonGroupItem"), mutableInteractionSource, function0, gapComposerH, ((i7 >> 9) & 896) | 54);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-976057578);
                    gapComposerH.Z(false);
                    modifierA = AlphaKt.a(new DTFunctionNameModifier("LVButtonGroupItem"), f3);
                }
                Modifier modifierJ2 = PaddingKt.j(BorderKt.a(modifierA3.o(modifierA), f6, ((Color) stateB3.getF10755b()).f8872a, LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c);
                Alignment.f8582a.getClass();
                BiasAlignment.Vertical vertical2 = Alignment.Companion.l;
                Arrangement$Start$1 arrangement$Start$2 = Arrangement.f4918a;
                rowMeasurePolicyA = RowKt.a(new Arrangement.SpacedAligned(LVAppDesignKitTheme.l(gapComposerH).f48415c, true, new s3(Alignment.Companion.o, 3), null), vertical2, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierJ2);
                ComposeUiNode.b0.getClass();
                function1 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf2 = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf2, function4);
                function5 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function5);
                function6 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function6);
                if (lVButtonGroupIndicator4 != null) {
                    gapComposerH.L(44834501);
                    BiasAlignment biasAlignment2 = Alignment.Companion.f8587f;
                    DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("LVButtonGroupItem");
                    measurePolicyD = BoxKt.d(biasAlignment2, false);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier3);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function1);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                    cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                    Updater.c(gapComposerH, modifierC2, function6);
                    lVButtonGroupIndicator4.a(gapComposerH, (i7 >> 12) & 14);
                    z8 = true;
                    gapComposerH.Z(true);
                    gapComposerH.Z(false);
                } else {
                    z8 = true;
                    gapComposerH.L(44980573);
                    gapComposerH.Z(false);
                }
                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).l;
                TextOverflow.f10989a.getClass();
                TextKt.c(str, null, j4, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 0, 0, null, textStyle2, gapComposerH, (i7 >> 3) & 14, KyberEngine.KyberPolyBytes, 126970);
                gapComposerH = gapComposerH;
                gapComposerH.Z(z8);
                z5 = z7;
                lVButtonGroupIndicator3 = lVButtonGroupIndicator4;
                modifier2 = modifier3;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                z5 = z3;
                lVButtonGroupIndicator3 = lVButtonGroupIndicator2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new c10(modifier2, str, z, z5, lVButtonGroupIndicator3, function0, i2, i3, 1);
            }
        }
        i4 |= 3072;
        z3 = z2;
        i5 = i3 & 16;
        if (i5 != 0) {
            if ((i2 & 24576) == 0) {
                lVButtonGroupIndicator2 = lVButtonGroupIndicator;
                if (gapComposerH.K(lVButtonGroupIndicator2)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i4 |= i6;
            }
            if ((196608 & i2) == 0) {
                if (gapComposerH.y(function0)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i4 |= i8;
            }
            i7 = i4;
            if ((i7 & 74899) != 74898) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i7 & 1, z4)) {
                if (i9 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVButtonGroupItem");
                }
                if (i10 != 0) {
                    z6 = true;
                } else {
                    z6 = z3;
                }
                if (i5 != 0) {
                    lVButtonGroupIndicator2 = null;
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = InteractionSourceKt.a();
                    gapComposerH.q(objX);
                }
                mutableInteractionSource = (MutableInteractionSource) objX;
                mutableStateA = PressInteractionKt.a(mutableInteractionSource, gapComposerH, 6);
                if (z6) {
                    f2 = 1.0f;
                } else {
                    f2 = 0.5f;
                }
                if (z) {
                    gapComposerH.L(-977576516);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.u;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-977509928);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                    gapComposerH.Z(false);
                }
                f3 = f2;
                lVButtonGroupIndicator4 = lVButtonGroupIndicator2;
                State stateB5 = SingleValueAnimationKt.b(j2, null, null, gapComposerH, 0, 14);
                if (z) {
                }
                if (((Boolean) mutableStateA.getF10755b()).booleanValue()) {
                    gapComposerH.L(-977264842);
                    jB = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-977188210);
                    jB = Color.b(z ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b);
                    gapComposerH.Z(false);
                }
                float f7 = f4;
                State stateB6 = SingleValueAnimationKt.b(jB, null, null, gapComposerH, 0, 14);
                if (z6 != 0) {
                    gapComposerH.L(-976949572);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-976883139);
                    j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                    gapComposerH.Z(false);
                }
                j4 = j3;
                Modifier modifierB3 = BackgroundKt.b(dTFunctionNameModifier, ((Color) stateB6.getF10755b()).f8872a, LVAppDesignKitTheme.j(gapComposerH).f48410b);
                Role.f10289b.getClass();
                modifier3 = dTFunctionNameModifier;
                z7 = z6;
                Modifier modifierA4 = SelectableKt.a(modifierB3, z, mutableInteractionSource, null, z7, new Role(Role.f10291e), function0);
                if (z7) {
                    modifierA = ModifierExtKt.d(n00.i(gapComposerH, -976317389, "LVButtonGroupItem"), mutableInteractionSource, function0, gapComposerH, ((i7 >> 9) & 896) | 54);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-976057578);
                    gapComposerH.Z(false);
                    modifierA = AlphaKt.a(new DTFunctionNameModifier("LVButtonGroupItem"), f3);
                }
                Modifier modifierJ3 = PaddingKt.j(BorderKt.a(modifierA4.o(modifierA), f7, ((Color) stateB5.getF10755b()).f8872a, LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c);
                Alignment.f8582a.getClass();
                BiasAlignment.Vertical vertical3 = Alignment.Companion.l;
                Arrangement$Start$1 arrangement$Start$3 = Arrangement.f4918a;
                rowMeasurePolicyA = RowKt.a(new Arrangement.SpacedAligned(LVAppDesignKitTheme.l(gapComposerH).f48415c, true, new s3(Alignment.Companion.o, 3), null), vertical3, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierJ3);
                ComposeUiNode.b0.getClass();
                function1 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf3 = Integer.valueOf(iHashCode);
                function4 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf3, function4);
                function5 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function5);
                function6 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function6);
                if (lVButtonGroupIndicator4 != null) {
                    gapComposerH.L(44834501);
                    BiasAlignment biasAlignment3 = Alignment.Companion.f8587f;
                    DTFunctionNameModifier dTFunctionNameModifier4 = new DTFunctionNameModifier("LVButtonGroupItem");
                    measurePolicyD = BoxKt.d(biasAlignment3, false);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier4);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function1);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, function2);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                    cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                    Updater.c(gapComposerH, modifierC2, function6);
                    lVButtonGroupIndicator4.a(gapComposerH, (i7 >> 12) & 14);
                    z8 = true;
                    gapComposerH.Z(true);
                    gapComposerH.Z(false);
                } else {
                    z8 = true;
                    gapComposerH.L(44980573);
                    gapComposerH.Z(false);
                }
                TextStyle textStyle3 = LVAppDesignKitTheme.n(gapComposerH).l;
                TextOverflow.f10989a.getClass();
                TextKt.c(str, null, j4, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 0, 0, null, textStyle3, gapComposerH, (i7 >> 3) & 14, KyberEngine.KyberPolyBytes, 126970);
                gapComposerH = gapComposerH;
                gapComposerH.Z(z8);
                z5 = z7;
                lVButtonGroupIndicator3 = lVButtonGroupIndicator4;
                modifier2 = modifier3;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                z5 = z3;
                lVButtonGroupIndicator3 = lVButtonGroupIndicator2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new c10(modifier2, str, z, z5, lVButtonGroupIndicator3, function0, i2, i3, 1);
            }
        }
        i4 |= 24576;
        lVButtonGroupIndicator2 = lVButtonGroupIndicator;
        if ((196608 & i2) == 0) {
            if (gapComposerH.y(function0)) {
                i8 = 131072;
            } else {
                i8 = 65536;
            }
            i4 |= i8;
        }
        i7 = i4;
        if ((i7 & 74899) != 74898) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (gapComposerH.p(i7 & 1, z4)) {
            if (i9 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("LVButtonGroupItem");
            }
            if (i10 != 0) {
                z6 = true;
            } else {
                z6 = z3;
            }
            if (i5 != 0) {
                lVButtonGroupIndicator2 = null;
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            mutableInteractionSource = (MutableInteractionSource) objX;
            mutableStateA = PressInteractionKt.a(mutableInteractionSource, gapComposerH, 6);
            if (z6) {
                f2 = 1.0f;
            } else {
                f2 = 0.5f;
            }
            if (z) {
                gapComposerH.L(-977576516);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.u;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-977509928);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.q;
                gapComposerH.Z(false);
            }
            f3 = f2;
            lVButtonGroupIndicator4 = lVButtonGroupIndicator2;
            State stateB7 = SingleValueAnimationKt.b(j2, null, null, gapComposerH, 0, 14);
            if (z) {
            }
            if (((Boolean) mutableStateA.getF10755b()).booleanValue()) {
                gapComposerH.L(-977264842);
                jB = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-977188210);
                jB = Color.b(z ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b);
                gapComposerH.Z(false);
            }
            float f8 = f4;
            State stateB8 = SingleValueAnimationKt.b(jB, null, null, gapComposerH, 0, 14);
            if (z6 != 0) {
                gapComposerH.L(-976949572);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-976883139);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.l;
                gapComposerH.Z(false);
            }
            j4 = j3;
            Modifier modifierB4 = BackgroundKt.b(dTFunctionNameModifier, ((Color) stateB8.getF10755b()).f8872a, LVAppDesignKitTheme.j(gapComposerH).f48410b);
            Role.f10289b.getClass();
            modifier3 = dTFunctionNameModifier;
            z7 = z6;
            Modifier modifierA5 = SelectableKt.a(modifierB4, z, mutableInteractionSource, null, z7, new Role(Role.f10291e), function0);
            if (z7) {
                modifierA = ModifierExtKt.d(n00.i(gapComposerH, -976317389, "LVButtonGroupItem"), mutableInteractionSource, function0, gapComposerH, ((i7 >> 9) & 896) | 54);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-976057578);
                gapComposerH.Z(false);
                modifierA = AlphaKt.a(new DTFunctionNameModifier("LVButtonGroupItem"), f3);
            }
            Modifier modifierJ4 = PaddingKt.j(BorderKt.a(modifierA5.o(modifierA), f8, ((Color) stateB7.getF10755b()).f8872a, LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c);
            Alignment.f8582a.getClass();
            BiasAlignment.Vertical vertical4 = Alignment.Companion.l;
            Arrangement$Start$1 arrangement$Start$4 = Arrangement.f4918a;
            rowMeasurePolicyA = RowKt.a(new Arrangement.SpacedAligned(LVAppDesignKitTheme.l(gapComposerH).f48415c, true, new s3(Alignment.Companion.o, 3), null), vertical4, gapComposerH, 48);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierJ4);
            ComposeUiNode.b0.getClass();
            function1 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf4 = Integer.valueOf(iHashCode);
            function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf4, function4);
            function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            if (lVButtonGroupIndicator4 != null) {
                gapComposerH.L(44834501);
                BiasAlignment biasAlignment4 = Alignment.Companion.f8587f;
                DTFunctionNameModifier dTFunctionNameModifier5 = new DTFunctionNameModifier("LVButtonGroupItem");
                measurePolicyD = BoxKt.d(biasAlignment4, false);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier5);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
                Updater.c(gapComposerH, modifierC2, function6);
                lVButtonGroupIndicator4.a(gapComposerH, (i7 >> 12) & 14);
                z8 = true;
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            } else {
                z8 = true;
                gapComposerH.L(44980573);
                gapComposerH.Z(false);
            }
            TextStyle textStyle4 = LVAppDesignKitTheme.n(gapComposerH).l;
            TextOverflow.f10989a.getClass();
            TextKt.c(str, null, j4, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 0, 0, null, textStyle4, gapComposerH, (i7 >> 3) & 14, KyberEngine.KyberPolyBytes, 126970);
            gapComposerH = gapComposerH;
            gapComposerH.Z(z8);
            z5 = z7;
            lVButtonGroupIndicator3 = lVButtonGroupIndicator4;
            modifier2 = modifier3;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
            z5 = z3;
            lVButtonGroupIndicator3 = lVButtonGroupIndicator2;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new c10(modifier2, str, z, z5, lVButtonGroupIndicator3, function0, i2, i3, 1);
        }
    }
}
