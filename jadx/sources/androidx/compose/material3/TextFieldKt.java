package androidx.compose.material3;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextFieldKt;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.bk0;
import defpackage.kv0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class TextFieldKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f7374a = 0;

    static {
        Dp.Companion companion = Dp.f11004c;
    }

    /* JADX WARN: Code duplicated, block: B:244:0x04e1  */
    /* JADX WARN: Code duplicated, block: B:246:0x04e5  */
    /* JADX WARN: Code duplicated, block: B:249:0x051e  */
    /* JADX WARN: Code duplicated, block: B:251:0x0525  */
    /* JADX WARN: Code duplicated, block: B:252:0x0529  */
    /* JADX WARN: Code duplicated, block: B:255:0x0536  */
    /* JADX WARN: Code duplicated, block: B:257:0x0544  */
    /* JADX WARN: Code duplicated, block: B:259:0x0561  */
    public static final void a(Modifier modifier, Function2 function2, final Function2 function3, Function3 function4, final Function2 function5, final Function2 function6, final Function2 function7, final Function2 function8, final boolean z, final TextFieldLabelPosition.Attached attached, FloatProducer floatProducer, final ComposableLambdaImpl composableLambdaImpl, Function2 function9, final PaddingValues paddingValues, Composer composer, final int i2, final int i3) {
        int i4;
        int i5;
        Function2 function10;
        Function2 function11;
        Function3 function12;
        GapComposer gapComposer;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Function2 function13;
        float f2;
        Function2 function14;
        Alignment.Vertical vertical;
        float f3;
        float f4;
        boolean z2;
        boolean z3;
        Object objX;
        MeasurePolicy measurePolicyD;
        int iG;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Modifier modifierE = modifier;
        final FloatProducer floatProducer2 = floatProducer;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "TextFieldLayout");
        }
        GapComposer gapComposerH = composer.h(-1086465551);
        Applier applier = gapComposerH.f7976a;
        if ((i2 & 6) == 0) {
            i4 = i2 | (gapComposerH.K(modifierE) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(function2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(function3) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(function4) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.y(function5) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i4 |= gapComposerH.y(function6) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i4 |= gapComposerH.y(function7) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i4 |= gapComposerH.y(function8) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i4 |= gapComposerH.b(z) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.K(attached) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | ((i3 & 8) == 0 ? gapComposerH.K(floatProducer2) : gapComposerH.y(floatProducer2) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.y(composableLambdaImpl) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(function9) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposerH.K(paddingValues) ? 2048 : 1024;
        }
        int i6 = i5;
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i6 & 1171) == 1170) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float fE = TextFieldImplKt.e(gapComposerH);
            int i7 = i6 & 14;
            boolean zC = ((i4 & 234881024) == 67108864) | ((i4 & 1879048192) == 536870912) | (i7 == 4 || ((i6 & 8) != 0 && gapComposerH.K(floatProducer2))) | ((i6 & 7168) == 2048) | gapComposerH.c(fE);
            Object objX2 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (zC || objX2 == composer$Companion$Empty$2) {
                gapComposer = gapComposerH;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                TextFieldMeasurePolicy textFieldMeasurePolicy = new TextFieldMeasurePolicy(z, attached, floatProducer2, paddingValues, fE, null);
                gapComposer.q(textFieldMeasurePolicy);
                objX2 = textFieldMeasurePolicy;
            } else {
                gapComposer = gapComposerH;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            }
            TextFieldMeasurePolicy textFieldMeasurePolicy2 = (TextFieldMeasurePolicy) objX2;
            LayoutDirection layoutDirection = (LayoutDirection) gapComposer.k(CompositionLocalsKt.n);
            int iG2 = gapComposer.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposer, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (r41 == 0) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function0);
            } else {
                gapComposer.o();
            }
            Function2 function15 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposer, textFieldMeasurePolicy2, function15);
            Function2 function16 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposer, persistentCompositionLocalMapU2, function16);
            Function2 function17 = ComposeUiNode.Companion.g;
            if (gapComposer.S || !Intrinsics.c(gapComposer.x(), Integer.valueOf(iG2))) {
                defpackage.a.t(iG2, gapComposer, iG2, function17);
            }
            Function2 function18 = ComposeUiNode.Companion.d;
            Updater.c(gapComposer, modifierC2, function18);
            composableLambdaImpl.invoke(gapComposer, Integer.valueOf((i6 >> 3) & 14));
            if (function5 != null) {
                gapComposer.L(-1445181094);
                Modifier modifierB = LayoutIdKt.b(new DTFunctionNameModifier("TextFieldLayout"), "Leading");
                HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.f7011a;
                Modifier modifierO = modifierB.o(MinimumInteractiveModifier.f7044b);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8587f, false);
                int iG3 = gapComposer.G();
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposer.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposer, modifierO);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function0);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, measurePolicyD2, function15);
                Updater.c(gapComposer, persistentCompositionLocalMapU3, function16);
                if (gapComposer.S || !Intrinsics.c(gapComposer.x(), Integer.valueOf(iG3))) {
                    defpackage.a.t(iG3, gapComposer, iG3, function17);
                }
                Updater.c(gapComposer, modifierC3, function18);
                function5.invoke(gapComposer, Integer.valueOf((i4 >> 12) & 14));
                gapComposer.Z(true);
                gapComposer.Z(false);
            } else {
                gapComposer.L(-1444935078);
                gapComposer.Z(false);
            }
            if (function6 != null) {
                gapComposer.L(-1444892360);
                Modifier modifierB2 = LayoutIdKt.b(new DTFunctionNameModifier(r16), "Trailing");
                HorizontalAlignmentLine horizontalAlignmentLine2 = InteractiveComponentSizeKt.f7011a;
                Modifier modifierO2 = modifierB2.o(MinimumInteractiveModifier.f7044b);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD3 = BoxKt.d(Alignment.Companion.f8587f, false);
                int iG4 = gapComposer.G();
                PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposer.U();
                Modifier modifierC4 = ComposedModifierKt.c(gapComposer, modifierO2);
                if (r41 == 0) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function0);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, measurePolicyD3, function15);
                Updater.c(gapComposer, persistentCompositionLocalMapU4, function16);
                if (gapComposer.S || !Intrinsics.c(gapComposer.x(), Integer.valueOf(iG4))) {
                    defpackage.a.t(iG4, gapComposer, iG4, function17);
                }
                Updater.c(gapComposer, modifierC4, function18);
                function6.invoke(gapComposer, Integer.valueOf((i4 >> 15) & 14));
                gapComposer.Z(true);
                gapComposer.Z(false);
            } else {
                gapComposer.L(-1444644422);
                gapComposer.Z(false);
            }
            float fG = PaddingKt.g(paddingValues, layoutDirection);
            float f5 = PaddingKt.f(paddingValues, layoutDirection);
            float f6 = TextFieldImplKt.f(gapComposer);
            if (function5 != null) {
                fG -= f6;
                Dp.Companion companion = Dp.f11004c;
                if (fG < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    fG = 0.0f;
                }
            }
            float f7 = fG;
            if (function6 != null) {
                f5 -= f6;
                Dp.Companion companion2 = Dp.f11004c;
                if (f5 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    f5 = 0.0f;
                }
            }
            if (function7 != null) {
                gapComposer.L(-1443868027);
                Modifier modifierM = PaddingKt.m(SizeKt.v(SizeKt.h(LayoutIdKt.b(new DTFunctionNameModifier(r16), "Prefix"), TextFieldImplKt.f7651f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), null, 3), f7, Call.Parameters.DEFAULT_CAMERA_ZOOM, TextFieldImplKt.f7650e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD4 = BoxKt.d(Alignment.Companion.f8584b, false);
                int iG5 = gapComposer.G();
                PersistentCompositionLocalMap persistentCompositionLocalMapU5 = gapComposer.U();
                Modifier modifierC5 = ComposedModifierKt.c(gapComposer, modifierM);
                if (r41 == 0) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function0);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, measurePolicyD4, function15);
                Updater.c(gapComposer, persistentCompositionLocalMapU5, function16);
                if (gapComposer.S || !Intrinsics.c(gapComposer.x(), Integer.valueOf(iG5))) {
                    defpackage.a.t(iG5, gapComposer, iG5, function17);
                }
                Updater.c(gapComposer, modifierC5, function18);
                function13 = function7;
                function13.invoke(gapComposer, Integer.valueOf((i4 >> 18) & 14));
                gapComposer.Z(true);
                gapComposer.Z(false);
            } else {
                function13 = function7;
                gapComposer.L(-1443540326);
                gapComposer.Z(false);
            }
            if (function8 != null) {
                gapComposer.L(-1443497081);
                float f8 = f5;
                Modifier modifierM2 = PaddingKt.m(SizeKt.v(SizeKt.h(LayoutIdKt.b(new DTFunctionNameModifier(r16), "Suffix"), TextFieldImplKt.f7651f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), null, 3), TextFieldImplKt.f7650e, Call.Parameters.DEFAULT_CAMERA_ZOOM, f8, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
                f2 = f8;
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD5 = BoxKt.d(Alignment.Companion.f8584b, false);
                int iG6 = gapComposer.G();
                PersistentCompositionLocalMap persistentCompositionLocalMapU6 = gapComposer.U();
                Modifier modifierC6 = ComposedModifierKt.c(gapComposer, modifierM2);
                if (r41 == 0) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function0);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, measurePolicyD5, function15);
                Updater.c(gapComposer, persistentCompositionLocalMapU6, function16);
                if (gapComposer.S || !Intrinsics.c(gapComposer.x(), Integer.valueOf(iG6))) {
                    defpackage.a.t(iG6, gapComposer, iG6, function17);
                }
                Updater.c(gapComposer, modifierC6, function18);
                function14 = function8;
                function14.invoke(gapComposer, Integer.valueOf((i4 >> 21) & 14));
                gapComposer.Z(true);
                gapComposer.Z(false);
            } else {
                f2 = f5;
                function14 = function8;
                gapComposer.L(-1443171302);
                gapComposer.Z(false);
            }
            Modifier modifierM3 = PaddingKt.m(new DTFunctionNameModifier(r16), f7, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
            if (function3 != null) {
                gapComposer.L(-1442671489);
                Modifier modifierB3 = LayoutIdKt.b(new DTFunctionNameModifier(r16), "Label");
                if (i7 != 4) {
                    if ((i6 & 8) != 0) {
                        floatProducer2 = floatProducer;
                        if (gapComposer.y(floatProducer2)) {
                        }
                        objX = gapComposer.x();
                        if (z3 || objX == composer$Companion$Empty$1) {
                            objX = new bk0(floatProducer2, 1);
                            gapComposer.q(objX);
                        }
                        Modifier modifierO3 = SizeKt.v(LayoutModifierKt.a(modifierB3, new kv0((Function0) objX, 5)), null, 3).o(modifierM3);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        iG = gapComposer.G();
                        persistentCompositionLocalMapU = gapComposer.U();
                        modifierC = ComposedModifierKt.c(gapComposer, modifierO3);
                        if (r41 == 0) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposer.B();
                        if (gapComposer.S) {
                            gapComposer.C(function0);
                        } else {
                            gapComposer.o();
                        }
                        Updater.c(gapComposer, measurePolicyD, function15);
                        Updater.c(gapComposer, persistentCompositionLocalMapU, function16);
                        if (gapComposer.S || !Intrinsics.c(gapComposer.x(), Integer.valueOf(iG))) {
                            defpackage.a.t(iG, gapComposer, iG, function17);
                        }
                        Updater.c(gapComposer, modifierC, function18);
                        function3.invoke(gapComposer, Integer.valueOf((i4 >> 6) & 14));
                        gapComposer.Z(true);
                        gapComposer.Z(false);
                        vertical = null;
                    } else {
                        floatProducer2 = floatProducer;
                    }
                    z3 = false;
                    objX = gapComposer.x();
                    if (z3) {
                        objX = new bk0(floatProducer2, 1);
                        gapComposer.q(objX);
                    } else {
                        objX = new bk0(floatProducer2, 1);
                        gapComposer.q(objX);
                    }
                    Modifier modifierO4 = SizeKt.v(LayoutModifierKt.a(modifierB3, new kv0((Function0) objX, 5)), null, 3).o(modifierM3);
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    iG = gapComposer.G();
                    persistentCompositionLocalMapU = gapComposer.U();
                    modifierC = ComposedModifierKt.c(gapComposer, modifierO4);
                    if (r41 == 0) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposer.B();
                    if (gapComposer.S) {
                        gapComposer.C(function0);
                    } else {
                        gapComposer.o();
                    }
                    Updater.c(gapComposer, measurePolicyD, function15);
                    Updater.c(gapComposer, persistentCompositionLocalMapU, function16);
                    if (gapComposer.S) {
                        defpackage.a.t(iG, gapComposer, iG, function17);
                    } else {
                        defpackage.a.t(iG, gapComposer, iG, function17);
                    }
                    Updater.c(gapComposer, modifierC, function18);
                    function3.invoke(gapComposer, Integer.valueOf((i4 >> 6) & 14));
                    gapComposer.Z(true);
                    gapComposer.Z(false);
                    vertical = null;
                } else {
                    floatProducer2 = floatProducer;
                }
                z3 = true;
                objX = gapComposer.x();
                if (z3) {
                    objX = new bk0(floatProducer2, 1);
                    gapComposer.q(objX);
                } else {
                    objX = new bk0(floatProducer2, 1);
                    gapComposer.q(objX);
                }
                Modifier modifierO5 = SizeKt.v(LayoutModifierKt.a(modifierB3, new kv0((Function0) objX, 5)), null, 3).o(modifierM3);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                iG = gapComposer.G();
                persistentCompositionLocalMapU = gapComposer.U();
                modifierC = ComposedModifierKt.c(gapComposer, modifierO5);
                if (r41 == 0) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function0);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, measurePolicyD, function15);
                Updater.c(gapComposer, persistentCompositionLocalMapU, function16);
                if (gapComposer.S) {
                    defpackage.a.t(iG, gapComposer, iG, function17);
                } else {
                    defpackage.a.t(iG, gapComposer, iG, function17);
                }
                Updater.c(gapComposer, modifierC, function18);
                function3.invoke(gapComposer, Integer.valueOf((i4 >> 6) & 14));
                gapComposer.Z(true);
                gapComposer.Z(false);
                vertical = null;
            } else {
                floatProducer2 = floatProducer;
                vertical = null;
                gapComposer.L(-1442276518);
                gapComposer.Z(false);
            }
            Modifier modifierV = SizeKt.v(SizeKt.h(new DTFunctionNameModifier(r16), TextFieldImplKt.f7651f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), vertical, 3);
            if (function13 == null) {
                f3 = f7;
            } else {
                Dp.Companion companion3 = Dp.f11004c;
                f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            if (function14 == null) {
                f4 = f2;
            } else {
                Dp.Companion companion4 = Dp.f11004c;
                f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            Modifier modifierM4 = PaddingKt.m(modifierV, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, f4, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
            if (function4 != null) {
                gapComposer.L(-1441906533);
                function12 = function4;
                function12.A(LayoutIdKt.b(new DTFunctionNameModifier(r16), "Hint").o(modifierM4), gapComposer, Integer.valueOf((i4 >> 6) & 112));
                gapComposer.Z(false);
            } else {
                function12 = function4;
                gapComposer.L(-1441815238);
                gapComposer.Z(false);
            }
            Modifier modifierO6 = LayoutIdKt.b(new DTFunctionNameModifier(r16), "TextField").o(modifierM4);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD6 = BoxKt.d(biasAlignment, true);
            int iG7 = gapComposer.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU7 = gapComposer.U();
            Modifier modifierC7 = ComposedModifierKt.c(gapComposer, modifierO6);
            if (r41 == 0) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function0);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, measurePolicyD6, function15);
            Updater.c(gapComposer, persistentCompositionLocalMapU7, function16);
            if (gapComposer.S || !Intrinsics.c(gapComposer.x(), Integer.valueOf(iG7))) {
                defpackage.a.t(iG7, gapComposer, iG7, function17);
            }
            Updater.c(gapComposer, modifierC7, function18);
            function11 = function2;
            function11.invoke(gapComposer, Integer.valueOf((i4 >> 3) & 14));
            gapComposer.Z(true);
            function10 = function9;
            if (function10 != null) {
                gapComposer.L(-1441566587);
                Modifier modifierV2 = SizeKt.v(SizeKt.h(LayoutIdKt.b(new DTFunctionNameModifier(r16), "Supporting"), TextFieldImplKt.f7652h, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), null, 3);
                int i8 = TextFieldDefaults.f7372a;
                Modifier modifierH = PaddingKt.h(modifierV2, TextFieldDefaults.a());
                MeasurePolicy measurePolicyD7 = BoxKt.d(biasAlignment, false);
                int iG8 = gapComposer.G();
                PersistentCompositionLocalMap persistentCompositionLocalMapU8 = gapComposer.U();
                Modifier modifierC8 = ComposedModifierKt.c(gapComposer, modifierH);
                if (r41 == 0) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function0);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, measurePolicyD7, function15);
                Updater.c(gapComposer, persistentCompositionLocalMapU8, function16);
                if (gapComposer.S || !Intrinsics.c(gapComposer.x(), Integer.valueOf(iG8))) {
                    defpackage.a.t(iG8, gapComposer, iG8, function17);
                }
                Updater.c(gapComposer, modifierC8, function18);
                function10.invoke(gapComposer, Integer.valueOf((i6 >> 6) & 14));
                z2 = true;
                gapComposer.Z(true);
                gapComposer.Z(false);
            } else {
                z2 = true;
                gapComposer.L(-1441177382);
                gapComposer.Z(false);
            }
            gapComposer.Z(z2);
        } else {
            function10 = function9;
            function11 = function2;
            function12 = function4;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Function2 function19 = function11;
            final Function3 function20 = function12;
            final Modifier modifier2 = modifierE;
            final Function2 function21 = function10;
            recomposeScopeImplB0.d = new Function2() { // from class: a31
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    TextFieldKt.a(modifier2, function19, function3, function20, function5, function6, function7, function8, z, attached, floatProducer2, composableLambdaImpl, function21, paddingValues, (Composer) obj, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }
}
