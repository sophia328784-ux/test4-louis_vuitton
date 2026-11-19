package androidx.compose.material3;

import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.material3.tokens.OutlinedTextFieldTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.PlatformTextStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import defpackage.bk0;
import defpackage.fj0;
import defpackage.kv0;
import defpackage.n00;
import defpackage.nj0;
import defpackage.o80;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class OutlinedTextFieldKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f7123a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f7123a = 4.0f;
    }

    public static final void a(TextFieldValue textFieldValue, Function1 function1, Modifier modifier, boolean z, TextStyle textStyle, Function2 function2, Function2 function3, final Function2 function4, final boolean z2, final VisualTransformation visualTransformation, final KeyboardOptions keyboardOptions, KeyboardActions keyboardActions, final boolean z3, int i2, int i3, Shape shape, final TextFieldColors textFieldColors, Composer composer, int i4) {
        final TextFieldValue textFieldValue2;
        int i5;
        Function1 function5;
        Function2 function6;
        Function2 function7;
        final Modifier modifier2;
        GapComposer gapComposer;
        boolean z4;
        TextStyle textStyle2;
        KeyboardActions keyboardActions2;
        int i6;
        int i7;
        Shape shape2;
        TextStyle textStyle3;
        KeyboardActions keyboardActions3;
        final int i8;
        final Shape shapeA;
        final int i9;
        Modifier modifier3;
        long j2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "OutlinedTextField");
        }
        GapComposer gapComposerH = composer.h(2057288437);
        if ((i4 & 6) == 0) {
            textFieldValue2 = textFieldValue;
            i5 = (gapComposerH.K(textFieldValue2) ? 4 : 2) | i4;
        } else {
            textFieldValue2 = textFieldValue;
            i5 = i4;
        }
        if ((i4 & 48) == 0) {
            function5 = function1;
            i5 |= gapComposerH.y(function5) ? 32 : 16;
        } else {
            function5 = function1;
        }
        if ((i4 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.K(modifierE) ? 256 : 128;
        }
        int i10 = i5 | 27648;
        if ((196608 & i4) == 0) {
            i10 = 93184 | i5;
        }
        if ((1572864 & i4) == 0) {
            function6 = function2;
            i10 |= gapComposerH.y(function6) ? 1048576 : 524288;
        } else {
            function6 = function2;
        }
        if ((12582912 & i4) == 0) {
            function7 = function3;
            i10 |= gapComposerH.y(function7) ? 8388608 : 4194304;
        } else {
            function7 = function3;
        }
        int i11 = i10 | 905969664;
        boolean z5 = true;
        if (gapComposerH.p(i11 & 1, ((i11 & 306783379) == 306783378 && (((((gapComposerH.b(z2) ? (char) 2048 : (char) 1024) | 438) | (gapComposerH.K(visualTransformation) ? 16384 : 8192)) | 840433664) & 306783379) == 306783378 && (((gapComposerH.K(textFieldColors) ? (char) 256 : (char) 128) | 22) & 147) == 146) ? false : true)) {
            gapComposerH.y0();
            if ((i4 & 1) == 0 || gapComposerH.h0()) {
                textStyle3 = (TextStyle) gapComposerH.k(TextKt.f7383a);
                KeyboardActions.g.getClass();
                keyboardActions3 = KeyboardActions.f5912h;
                i8 = z3 ? 1 : Integer.MAX_VALUE;
                OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.f7118a;
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                shapeA = ShapesKt.a(OutlinedTextFieldTokens.f7815b, gapComposerH);
                i9 = 1;
            } else {
                gapComposerH.D();
                z5 = z;
                textStyle3 = textStyle;
                keyboardActions3 = keyboardActions;
                i8 = i2;
                i9 = i3;
                shapeA = shape;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            gapComposerH.L(-502250010);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            final MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX;
            gapComposerH.Z(false);
            gapComposerH.L(1369277167);
            long jB = textStyle3.b();
            if (jB != 16) {
                modifier3 = modifierE;
            } else {
                boolean zBooleanValue = ((Boolean) FocusInteractionKt.a(mutableInteractionSource, gapComposerH, 0).getF10755b()).booleanValue();
                if (z5) {
                    modifier3 = modifierE;
                    if (z2) {
                        j2 = textFieldColors.d;
                    } else {
                        j2 = zBooleanValue ? textFieldColors.f7363a : textFieldColors.f7364b;
                    }
                } else {
                    modifier3 = modifierE;
                    j2 = textFieldColors.f7365c;
                }
                jB = j2;
            }
            long j3 = jB;
            gapComposerH.Z(false);
            final TextStyle textStyleD = textStyle3.d(new TextStyle(j3, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (DrawStyle) null, 0, 0, 0L, (TextIndent) null, (PlatformTextStyle) null, (LineHeightStyle) null, 0, 0, (TextMotion) null, 16777214, (DefaultConstructorMarker) null));
            final Function2 function8 = function6;
            final Function1 function9 = function5;
            final boolean z6 = z5;
            modifier2 = modifier3;
            final KeyboardActions keyboardActions4 = keyboardActions3;
            final Function2 function10 = function7;
            gapComposer = gapComposerH;
            CompositionLocalKt.a(TextSelectionColorsKt.f6503a.c(textFieldColors.f7371k), ComposableLambdaKt.b(-2094276683, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt$OutlinedTextField$5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        Function2 function11 = function8;
                        Modifier modifierM = Modifier.Companion.f8607b;
                        if (function11 != null) {
                            composer2.L(-1901539802);
                            Object objX2 = composer2.x();
                            if (objX2 == Composer.Companion.f7939a) {
                                objX2 = new fj0(18);
                                composer2.q(objX2);
                            }
                            modifierM = PaddingKt.m(SemanticsModifierKt.b(modifierM, true, (Function1) objX2), Call.Parameters.DEFAULT_CAMERA_ZOOM, TextFieldImplKt.e(composer2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                            composer2.F();
                        } else {
                            composer2.L(-1901156115);
                            composer2.F();
                        }
                        Modifier modifierO = modifier2.o(modifierM);
                        int i12 = Strings.f7646a;
                        String strA = Strings_androidKt.a(composer2, R.string.default_error_message);
                        float f2 = TextFieldImplKt.f7647a;
                        boolean z7 = z2;
                        if (z7) {
                            modifierO = SemanticsModifierKt.b(modifierO, false, new nj0(strA, 22));
                        }
                        Modifier modifierA = SizeKt.a(modifierO, OutlinedTextFieldDefaults.f7120c, OutlinedTextFieldDefaults.f7119b);
                        final TextFieldColors textFieldColors2 = textFieldColors;
                        SolidColor solidColor = new SolidColor(z7 ? textFieldColors2.f7370j : textFieldColors2.f7369i, null);
                        final Function2 function12 = function4;
                        final Shape shape3 = shapeA;
                        final TextFieldValue textFieldValue3 = textFieldValue2;
                        final boolean z8 = z6;
                        final boolean z9 = z3;
                        final VisualTransformation visualTransformation2 = visualTransformation;
                        final MutableInteractionSource mutableInteractionSource2 = mutableInteractionSource;
                        final boolean z10 = z2;
                        final Function2 function13 = function8;
                        final Function2 function14 = function10;
                        BasicTextFieldKt.a(textFieldValue3, function9, modifierA, z8, false, textStyleD, keyboardOptions, keyboardActions4, z9, i8, i9, visualTransformation2, null, mutableInteractionSource2, solidColor, ComposableLambdaKt.b(674541106, new Function3<Function2<? super Composer, ? super Integer, ? extends Unit>, Composer, Integer, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt$OutlinedTextField$5.2
                            /* JADX WARN: Type inference fix 'apply assigned field type' failed
                            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
                            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                             */
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj3, Object obj4, Object obj5) {
                                Function2 function15 = (Function2) obj3;
                                Composer composer3 = (Composer) obj4;
                                int iIntValue2 = ((Number) obj5).intValue();
                                if ((iIntValue2 & 6) == 0) {
                                    iIntValue2 |= composer3.y(function15) ? 4 : 2;
                                }
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                    OutlinedTextFieldDefaults outlinedTextFieldDefaults2 = OutlinedTextFieldDefaults.f7118a;
                                    String str = textFieldValue3.f10840a.f10420c;
                                    final Shape shape4 = shape3;
                                    final boolean z11 = z8;
                                    final boolean z12 = z10;
                                    final MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource2;
                                    final TextFieldColors textFieldColors3 = textFieldColors2;
                                    outlinedTextFieldDefaults2.b(str, function15, z11, z9, visualTransformation2, mutableInteractionSource3, z12, function13, function14, function12, textFieldColors3, null, ComposableLambdaKt.b(1409265477, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.OutlinedTextFieldKt.OutlinedTextField.5.2.1
                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(Object obj6, Object obj7) {
                                            Composer composer4 = (Composer) obj6;
                                            int iIntValue3 = ((Number) obj7).intValue();
                                            if (composer4.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                                OutlinedTextFieldDefaults.f7118a.a(z11, z12, mutableInteractionSource3, null, textFieldColors3, shape4, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, composer4, 100663296, 200);
                                            } else {
                                                composer4.D();
                                            }
                                            return Unit.f71739a;
                                        }
                                    }, composer3), composer3, (iIntValue2 << 3) & 112);
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 0, ImageMetadata.EDGE_MODE, 4096);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposer), gapComposer, 56);
            z4 = z6;
            i6 = i8;
            i7 = i9;
            shape2 = shapeA;
            textStyle2 = textStyle3;
            keyboardActions2 = keyboardActions4;
        } else {
            modifier2 = modifierE;
            gapComposer = gapComposerH;
            gapComposer.D();
            z4 = z;
            textStyle2 = textStyle;
            keyboardActions2 = keyboardActions;
            i6 = i2;
            i7 = i3;
            shape2 = shape;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o80(textFieldValue, function1, modifier2, z4, textStyle2, function2, function3, function4, z2, visualTransformation, keyboardOptions, keyboardActions2, z3, i6, i7, shape2, textFieldColors, i4);
        }
    }

    /* JADX WARN: Code duplicated, block: B:276:0x05b3  */
    /* JADX WARN: Code duplicated, block: B:278:0x05b7  */
    /* JADX WARN: Code duplicated, block: B:281:0x05ef  */
    /* JADX WARN: Code duplicated, block: B:283:0x05f6  */
    /* JADX WARN: Code duplicated, block: B:284:0x05fa  */
    /* JADX WARN: Code duplicated, block: B:287:0x0607  */
    /* JADX WARN: Code duplicated, block: B:289:0x0615  */
    /* JADX WARN: Code duplicated, block: B:292:0x0633  */
    public static final void b(Modifier modifier, final Function2 function2, Function3 function3, Function2 function4, final Function2 function5, final Function2 function6, final Function2 function7, final Function2 function8, final boolean z, final TextFieldLabelPosition.Attached attached, FloatProducer floatProducer, final Function1 function1, final ComposableLambdaImpl composableLambdaImpl, Function2 function9, final PaddingValues paddingValues, Composer composer, final int i2, final int i3) {
        int i4;
        int i5;
        Function2 function10;
        Function2 function11;
        Function3 function12;
        FloatProducer floatProducer2;
        GapComposer gapComposer;
        int i6;
        String str;
        Function2 function13;
        Function2 function14;
        Alignment.Vertical vertical;
        float f2;
        float f3;
        boolean z2;
        boolean z3;
        Object objX;
        MeasurePolicy measurePolicyD;
        int iG;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "OutlinedTextFieldLayout");
        }
        GapComposer gapComposerH = composer.h(753699262);
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
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i4 |= gapComposerH.y(function6) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= gapComposerH.y(function7) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= gapComposerH.y(function8) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= gapComposerH.b(z) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.K(attached) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | ((i3 & 8) == 0 ? gapComposerH.K(floatProducer) : gapComposerH.y(floatProducer) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.y(function1) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(composableLambdaImpl) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposerH.y(function9) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= gapComposerH.K(paddingValues) ? 16384 : 8192;
        }
        int i7 = i5;
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i7 & 9363) == 9362) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float f4 = TextFieldImplKt.f(gapComposerH);
            int i8 = i7 & 14;
            boolean zC = ((i4 & 234881024) == 67108864) | ((i7 & 112) == 32) | ((i4 & 1879048192) == 536870912) | (i8 == 4 || ((i7 & 8) != 0 && gapComposerH.K(floatProducer))) | ((i7 & 57344) == 16384) | gapComposerH.c(f4);
            Object objX2 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zC || objX2 == composer$Companion$Empty$1) {
                i6 = i8;
                gapComposer = gapComposerH;
                str = "OutlinedTextFieldLayout";
                OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy = new OutlinedTextFieldMeasurePolicy(function1, z, attached, floatProducer, paddingValues, f4, null);
                gapComposer.q(outlinedTextFieldMeasurePolicy);
                objX2 = outlinedTextFieldMeasurePolicy;
            } else {
                i6 = i8;
                gapComposer = gapComposerH;
                str = "OutlinedTextFieldLayout";
            }
            OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy2 = (OutlinedTextFieldMeasurePolicy) objX2;
            LayoutDirection layoutDirection = (LayoutDirection) gapComposer.k(CompositionLocalsKt.n);
            int iG2 = gapComposer.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposer, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (r43 == 0) {
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
            Updater.c(gapComposer, outlinedTextFieldMeasurePolicy2, function15);
            Function2 function16 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposer, persistentCompositionLocalMapU2, function16);
            Function2 function17 = ComposeUiNode.Companion.g;
            if (gapComposer.S || !Intrinsics.c(gapComposer.x(), Integer.valueOf(iG2))) {
                defpackage.a.t(iG2, gapComposer, iG2, function17);
            }
            Function2 function18 = ComposeUiNode.Companion.d;
            Updater.c(gapComposer, modifierC2, function18);
            composableLambdaImpl.invoke(gapComposer, Integer.valueOf((i7 >> 6) & 14));
            if (function5 != null) {
                gapComposer.L(2145628269);
                Modifier modifierO = LayoutIdKt.b(new DTFunctionNameModifier(str), "Leading").o(MinimumInteractiveModifier.f7044b);
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
                gapComposer.L(2145874285);
                gapComposer.Z(false);
            }
            if (function6 != null) {
                gapComposer.L(2145917003);
                Modifier modifierO2 = LayoutIdKt.b(new DTFunctionNameModifier(str), "Trailing").o(MinimumInteractiveModifier.f7044b);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD3 = BoxKt.d(Alignment.Companion.f8587f, false);
                int iG4 = gapComposer.G();
                PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposer.U();
                Modifier modifierC4 = ComposedModifierKt.c(gapComposer, modifierO2);
                if (r43 == 0) {
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
                gapComposer.L(2146164941);
                gapComposer.Z(false);
            }
            float fG = PaddingKt.g(paddingValues, layoutDirection);
            float f5 = PaddingKt.f(paddingValues, layoutDirection);
            if (function5 != null) {
                fG -= f4;
                Dp.Companion companion = Dp.f11004c;
                if (fG < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    fG = 0.0f;
                }
            }
            float f6 = fG;
            if (function6 != null) {
                f5 -= f4;
                Dp.Companion companion2 = Dp.f11004c;
                if (f5 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    f5 = 0.0f;
                }
            }
            float f7 = f5;
            if (function7 != null) {
                gapComposer.L(2146868920);
                Modifier modifierM = PaddingKt.m(SizeKt.v(SizeKt.h(LayoutIdKt.b(new DTFunctionNameModifier(str), "Prefix"), TextFieldImplKt.f7651f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), null, 3), f6, Call.Parameters.DEFAULT_CAMERA_ZOOM, TextFieldImplKt.f7650e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD4 = BoxKt.d(Alignment.Companion.f8584b, false);
                int iG5 = gapComposer.G();
                PersistentCompositionLocalMap persistentCompositionLocalMapU5 = gapComposer.U();
                Modifier modifierC5 = ComposedModifierKt.c(gapComposer, modifierM);
                if (r43 == 0) {
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
                gapComposer.L(2147196621);
                gapComposer.Z(false);
            }
            if (function8 != null) {
                gapComposer.L(2147239866);
                Modifier modifierM2 = PaddingKt.m(SizeKt.v(SizeKt.h(LayoutIdKt.b(new DTFunctionNameModifier(str), "Suffix"), TextFieldImplKt.f7651f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), null, 3), TextFieldImplKt.f7650e, Call.Parameters.DEFAULT_CAMERA_ZOOM, f7, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD5 = BoxKt.d(Alignment.Companion.f8584b, false);
                int iG6 = gapComposer.G();
                PersistentCompositionLocalMap persistentCompositionLocalMapU6 = gapComposer.U();
                Modifier modifierC6 = ComposedModifierKt.c(gapComposer, modifierM2);
                if (r43 == 0) {
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
                vertical = null;
            } else {
                function14 = function8;
                vertical = null;
                gapComposer.L(-2147401651);
                gapComposer.Z(false);
            }
            Modifier modifierV = SizeKt.v(SizeKt.h(new DTFunctionNameModifier(str), TextFieldImplKt.f7651f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), vertical, 3);
            if (function13 == null) {
                f2 = f6;
            } else {
                Dp.Companion companion3 = Dp.f11004c;
                f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            if (function14 == null) {
                f3 = f7;
            } else {
                Dp.Companion companion4 = Dp.f11004c;
                f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            Modifier modifierM3 = PaddingKt.m(modifierV, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
            if (function3 != null) {
                gapComposer.L(-2147031666);
                function12 = function3;
                function12.A(LayoutIdKt.b(new DTFunctionNameModifier(str), "Hint").o(modifierM3), gapComposer, Integer.valueOf((i4 >> 3) & 112));
                gapComposer.Z(false);
            } else {
                function12 = function3;
                gapComposer.L(-2146940371);
                gapComposer.Z(false);
            }
            Modifier modifierO3 = LayoutIdKt.b(new DTFunctionNameModifier(str), "TextField").o(modifierM3);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD6 = BoxKt.d(biasAlignment, true);
            int iG7 = gapComposer.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU7 = gapComposer.U();
            Modifier modifierC7 = ComposedModifierKt.c(gapComposer, modifierO3);
            if (r43 == 0) {
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
            function2.invoke(gapComposer, Integer.valueOf((i4 >> 3) & 14));
            gapComposer.Z(true);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier(str);
            if (function4 != null) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposer, -2146287790, str);
                if (i6 != 4) {
                    if ((i7 & 8) != 0) {
                        floatProducer2 = floatProducer;
                        if (gapComposer.y(floatProducer2)) {
                        }
                        objX = gapComposer.x();
                        if (z3 || objX == composer$Companion$Empty$1) {
                            objX = new bk0(floatProducer2, 0);
                            gapComposer.q(objX);
                        }
                        Modifier modifierO4 = LayoutIdKt.b(SizeKt.v(LayoutModifierKt.a(dTFunctionNameModifierI, new kv0((Function0) objX, 5)), null, 3), "Label").o(dTFunctionNameModifier);
                        measurePolicyD = BoxKt.d(biasAlignment, false);
                        iG = gapComposer.G();
                        persistentCompositionLocalMapU = gapComposer.U();
                        modifierC = ComposedModifierKt.c(gapComposer, modifierO4);
                        if (r43 == 0) {
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
                        function10 = function4;
                        function10.invoke(gapComposer, Integer.valueOf((i4 >> 9) & 14));
                        gapComposer.Z(true);
                        gapComposer.Z(false);
                    } else {
                        floatProducer2 = floatProducer;
                    }
                    z3 = false;
                    objX = gapComposer.x();
                    if (z3) {
                        objX = new bk0(floatProducer2, 0);
                        gapComposer.q(objX);
                    } else {
                        objX = new bk0(floatProducer2, 0);
                        gapComposer.q(objX);
                    }
                    Modifier modifierO5 = LayoutIdKt.b(SizeKt.v(LayoutModifierKt.a(dTFunctionNameModifierI, new kv0((Function0) objX, 5)), null, 3), "Label").o(dTFunctionNameModifier);
                    measurePolicyD = BoxKt.d(biasAlignment, false);
                    iG = gapComposer.G();
                    persistentCompositionLocalMapU = gapComposer.U();
                    modifierC = ComposedModifierKt.c(gapComposer, modifierO5);
                    if (r43 == 0) {
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
                    function10 = function4;
                    function10.invoke(gapComposer, Integer.valueOf((i4 >> 9) & 14));
                    gapComposer.Z(true);
                    gapComposer.Z(false);
                } else {
                    floatProducer2 = floatProducer;
                }
                z3 = true;
                objX = gapComposer.x();
                if (z3) {
                    objX = new bk0(floatProducer2, 0);
                    gapComposer.q(objX);
                } else {
                    objX = new bk0(floatProducer2, 0);
                    gapComposer.q(objX);
                }
                Modifier modifierO6 = LayoutIdKt.b(SizeKt.v(LayoutModifierKt.a(dTFunctionNameModifierI, new kv0((Function0) objX, 5)), null, 3), "Label").o(dTFunctionNameModifier);
                measurePolicyD = BoxKt.d(biasAlignment, false);
                iG = gapComposer.G();
                persistentCompositionLocalMapU = gapComposer.U();
                modifierC = ComposedModifierKt.c(gapComposer, modifierO6);
                if (r43 == 0) {
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
                function10 = function4;
                function10.invoke(gapComposer, Integer.valueOf((i4 >> 9) & 14));
                gapComposer.Z(true);
                gapComposer.Z(false);
            } else {
                function10 = function4;
                floatProducer2 = floatProducer;
                gapComposer.L(-2145892819);
                gapComposer.Z(false);
            }
            function11 = function9;
            if (function11 != null) {
                gapComposer.L(-2145844304);
                Modifier modifierV2 = SizeKt.v(SizeKt.h(LayoutIdKt.b(new DTFunctionNameModifier(str), "Supporting"), TextFieldImplKt.f7652h, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), null, 3);
                int i9 = TextFieldDefaults.f7372a;
                Modifier modifierH = PaddingKt.h(modifierV2, TextFieldDefaults.a());
                MeasurePolicy measurePolicyD7 = BoxKt.d(biasAlignment, false);
                int iG8 = gapComposer.G();
                PersistentCompositionLocalMap persistentCompositionLocalMapU8 = gapComposer.U();
                Modifier modifierC8 = ComposedModifierKt.c(gapComposer, modifierH);
                if (r43 == 0) {
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
                function11.invoke(gapComposer, Integer.valueOf((i7 >> 9) & 14));
                z2 = true;
                gapComposer.Z(true);
                gapComposer.Z(false);
            } else {
                z2 = true;
                gapComposer.L(-2145508915);
                gapComposer.Z(false);
            }
            gapComposer.Z(z2);
        } else {
            function10 = function4;
            function11 = function9;
            function12 = function3;
            floatProducer2 = floatProducer;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Function2 function19 = function10;
            final FloatProducer floatProducer3 = floatProducer2;
            final Function3 function20 = function12;
            final Function2 function21 = function11;
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: ck0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    OutlinedTextFieldKt.b(modifier2, function2, function20, function19, function5, function6, function7, function8, z, attached, floatProducer3, function1, composableLambdaImpl, function21, paddingValues, (Composer) obj, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }
}
