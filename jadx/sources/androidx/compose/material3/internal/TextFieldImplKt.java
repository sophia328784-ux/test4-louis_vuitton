package androidx.compose.material3.internal;

import androidx.compose.animation.ColorVectorConverterKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.interaction.FocusInteractionKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.InteractiveComponentSizeKt;
import androidx.compose.material3.MaterialTheme;
import androidx.compose.material3.MotionSchemeKt;
import androidx.compose.material3.OutlinedTextFieldKt;
import androidx.compose.material3.TextFieldColors;
import androidx.compose.material3.TextFieldKt;
import androidx.compose.material3.TextFieldLabelPosition;
import androidx.compose.material3.Typography;
import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.SmallIconButtonTokens;
import androidx.compose.material3.tokens.TypeScaleTokens;
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
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.ShadowKt;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.EmojiSupportMatch;
import androidx.compose.ui.text.ParagraphStyle;
import androidx.compose.ui.text.ParagraphStyleKt;
import androidx.compose.ui.text.PlatformParagraphStyle;
import androidx.compose.ui.text.PlatformSpanStyle;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.SpanStyleKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.Hyphens;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextDrawStyleKt;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.util.MathHelpersKt;
import com.google.ar.core.ImageMetadata;
import defpackage.az;
import defpackage.cl0;
import defpackage.d21;
import defpackage.fc;
import defpackage.jx;
import defpackage.lg0;
import defpackage.qq0;
import defpackage.v40;
import defpackage.ya;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference0Impl;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0003¨\u0006\u0003²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0002\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "showPlaceholder", "showPrefixSuffix", "material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class TextFieldImplKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f7647a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f7648b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f7649c;
    public static final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final float f7650e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final float f7651f;
    public static final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final float f7652h;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7676a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f7677b;

        static {
            int[] iArr = new int[TextFieldType.values().length];
            try {
                iArr[TextFieldType.Filled.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TextFieldType.Outlined.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f7676a = iArr;
            int[] iArr2 = new int[InputPhase.values().length];
            try {
                iArr2[InputPhase.Focused.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[InputPhase.UnfocusedEmpty.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[InputPhase.UnfocusedNotEmpty.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            f7677b = iArr2;
        }
    }

    static {
        Dp.Companion companion = Dp.f11004c;
        f7647a = 16.0f;
        f7648b = 4.0f;
        f7649c = 4.0f;
        d = 4.0f;
        f7650e = 2.0f;
        f7651f = 24.0f;
        g = 16.0f;
        f7652h = 16.0f;
    }

    /* JADX WARN: Code duplicated, block: B:212:0x030b  */
    /* JADX WARN: Code duplicated, block: B:225:0x0338  */
    /* JADX WARN: Code duplicated, block: B:254:0x03ec  */
    /* JADX WARN: Code duplicated, block: B:256:0x03f0  */
    /* JADX WARN: Code duplicated, block: B:260:0x040a  */
    /* JADX WARN: Code duplicated, block: B:263:0x042e  */
    /* JADX WARN: Code duplicated, block: B:265:0x0433  */
    /* JADX WARN: Code duplicated, block: B:268:0x0454  */
    /* JADX WARN: Code duplicated, block: B:270:0x045a  */
    /* JADX WARN: Code duplicated, block: B:274:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:277:0x04f5  */
    /* JADX WARN: Code duplicated, block: B:280:0x0502  */
    /* JADX WARN: Code duplicated, block: B:281:0x0519  */
    /* JADX WARN: Code duplicated, block: B:283:0x0543  */
    /* JADX WARN: Code duplicated, block: B:284:0x0548  */
    /* JADX WARN: Code duplicated, block: B:286:0x054c  */
    /* JADX WARN: Code duplicated, block: B:287:0x054f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:288:0x0551  */
    /* JADX WARN: Code duplicated, block: B:289:0x0554  */
    /* JADX WARN: Code duplicated, block: B:292:0x055c  */
    /* JADX WARN: Code duplicated, block: B:293:0x056e  */
    /* JADX WARN: Code duplicated, block: B:301:0x05a2  */
    /* JADX WARN: Code duplicated, block: B:304:0x05b5  */
    /* JADX WARN: Code duplicated, block: B:307:0x05f0  */
    /* JADX WARN: Code duplicated, block: B:308:0x05f3 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:309:0x05f5  */
    /* JADX WARN: Code duplicated, block: B:310:0x05f8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:311:0x05fa  */
    /* JADX WARN: Code duplicated, block: B:312:0x05fd  */
    /* JADX WARN: Code duplicated, block: B:314:0x0601  */
    /* JADX WARN: Code duplicated, block: B:315:0x060f  */
    /* JADX WARN: Code duplicated, block: B:318:0x0636  */
    /* JADX WARN: Code duplicated, block: B:320:0x0639  */
    /* JADX WARN: Code duplicated, block: B:322:0x0645  */
    /* JADX WARN: Code duplicated, block: B:323:0x065b  */
    /* JADX WARN: Code duplicated, block: B:326:0x0691  */
    /* JADX WARN: Code duplicated, block: B:327:0x0694  */
    /* JADX WARN: Code duplicated, block: B:331:0x06a4  */
    /* JADX WARN: Code duplicated, block: B:333:0x06f0  */
    /* JADX WARN: Code duplicated, block: B:335:0x06fa  */
    public static final void a(final TextFieldType textFieldType, final CharSequence charSequence, final Function2 function2, final TextFieldLabelPosition.Attached attached, final Function3 function3, final Function2 function4, final Function2 function5, final boolean z, final boolean z2, final boolean z3, final InteractionSource interactionSource, final PaddingValues paddingValues, final TextFieldColors textFieldColors, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2, final int i3) {
        int i4;
        int i5;
        GapComposer gapComposer;
        InputPhase inputPhase;
        long j2;
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        Transition.TransitionAnimationState transitionAnimationStateD;
        InputPhase inputPhase2;
        long j3;
        ColorSpace colorSpaceF;
        boolean zK;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        InputPhase inputPhase3;
        long j4;
        InputPhase inputPhase4;
        long j5;
        int i6;
        final Transition.TransitionAnimationState transitionAnimationStateD2;
        ColorSpace colorSpaceF2;
        boolean zK2;
        Object objX2;
        final Transition.TransitionAnimationState transitionAnimationStateD3;
        Object objX3;
        final TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1 textFieldImplKt$CommonDecorationBox$3$labelScope$1$1;
        boolean z4;
        final TextStyle textStyle;
        ComposableLambdaImpl composableLambdaImpl2;
        final TextStyle textStyle2;
        ComposableLambdaImpl composableLambdaImpl3;
        TextFieldColors textFieldColors2;
        final long j6;
        Object objX4;
        int i7;
        ComposableLambdaImpl composableLambdaImpl4;
        Object objX5;
        final long j7;
        ComposableLambdaImpl composableLambdaImpl5;
        int i8;
        Modifier.Companion companion;
        Object objX6;
        int i9;
        final MutableState mutableState;
        boolean z5;
        boolean zK3;
        Object objX7;
        GapComposer gapComposerH = composer.h(546805032);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.d(textFieldType.ordinal()) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(charSequence) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(function2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.K(attached) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.y(function3) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i4 |= gapComposerH.y(function4) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i4 |= gapComposerH.y(null) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i4 |= gapComposerH.y(null) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i4 |= gapComposerH.y(null) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.y(null) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = (gapComposerH.y(function5) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.b(z) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.b(z2) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposerH.b(z3) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i5 |= gapComposerH.K(interactionSource) ? 16384 : 8192;
        }
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i5 |= gapComposerH.K(paddingValues) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i5 |= gapComposerH.K(textFieldColors) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i5 |= gapComposerH.y(composableLambdaImpl) ? 8388608 : 4194304;
        }
        int i10 = i5;
        if (gapComposerH.p(i4 & 1, ((306783379 & i4) == 306783378 && (i10 & 4793491) == 4793490) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zBooleanValue = ((Boolean) FocusInteractionKt.a(interactionSource, gapComposerH, (i10 >> 12) & 14).getF10755b()).booleanValue();
            if (zBooleanValue) {
                inputPhase = InputPhase.Focused;
            } else {
                inputPhase = charSequence.length() == 0 ? InputPhase.UnfocusedEmpty : InputPhase.UnfocusedNotEmpty;
            }
            if (!z2) {
                j2 = textFieldColors.z;
            } else if (z3) {
                j2 = textFieldColors.A;
            } else {
                j2 = zBooleanValue ? textFieldColors.x : textFieldColors.y;
            }
            Typography typographyB = MaterialTheme.b(gapComposerH);
            TextStyle textStyle3 = typographyB.f7449j;
            final TextStyle textStyle4 = typographyB.l;
            long jB = textStyle3.b();
            Color.f8866b.getClass();
            long j8 = Color.f8871i;
            final boolean z6 = (Color.c(jB, j8) && !Color.c(textStyle4.b(), j8)) || (!Color.c(textStyle3.b(), j8) && Color.c(textStyle4.b(), j8));
            long jB2 = textStyle4.b();
            if (z6 && jB2 == 16) {
                jB2 = j2;
            }
            long jB3 = textStyle3.b();
            long j9 = (z6 && jB3 == 16) ? j2 : jB3;
            long j10 = jB2;
            boolean z7 = (function3 == null || attached.f7376a) ? false : true;
            Transition transitionF = TransitionKt.f(inputPhase, "TextFieldInputState", gapComposerH, 48);
            TransitionState transitionState = transitionF.f3988a;
            final FiniteAnimationSpec finiteAnimationSpecA = MotionSchemeKt.a(MotionSchemeKeyTokens.FastSpatial, gapComposerH);
            boolean z8 = z7;
            Function3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Float>> function6 = new Function3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$TextFieldTransitionScope$labelProgress$1
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    ((Number) obj3).intValue();
                    composer2.L(-709912974);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    composer2.F();
                    return finiteAnimationSpecA;
                }
            };
            TwoWayConverter twoWayConverter = VectorConvertersKt.f4036a;
            InputPhase inputPhase5 = (InputPhase) transitionState.a();
            gapComposerH.L(-1436405362);
            int[] iArr = WhenMappings.f7677b;
            int i11 = iArr[inputPhase5.ordinal()];
            float f7 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            if (i11 == 1) {
                f2 = 1.0f;
            } else {
                if (i11 != 2) {
                    if (i11 != 3) {
                        v40.g();
                        return;
                    }
                } else if (z8) {
                    f2 = 0.0f;
                }
                f2 = 1.0f;
            }
            gapComposerH.Z(false);
            Float fValueOf = Float.valueOf(f2);
            InputPhase inputPhase6 = (InputPhase) transitionF.g();
            gapComposerH.L(-1436405362);
            int i12 = iArr[inputPhase6.ordinal()];
            if (i12 == 1) {
                f3 = 1.0f;
            } else {
                if (i12 != 2) {
                    if (i12 != 3) {
                        v40.g();
                        return;
                    }
                } else if (z8) {
                    f3 = 0.0f;
                }
                f3 = 1.0f;
            }
            gapComposerH.Z(false);
            final Transition.TransitionAnimationState transitionAnimationStateD4 = TransitionKt.d(transitionF, fValueOf, Float.valueOf(f3), (FiniteAnimationSpec) function6.A(transitionF.f(), gapComposerH, 0), twoWayConverter, "LabelProgress", gapComposerH, ImageMetadata.EDGE_MODE);
            MotionSchemeKeyTokens motionSchemeKeyTokens = MotionSchemeKeyTokens.FastEffects;
            final FiniteAnimationSpec finiteAnimationSpecA2 = MotionSchemeKt.a(motionSchemeKeyTokens, gapComposerH);
            final FiniteAnimationSpec finiteAnimationSpecA3 = MotionSchemeKt.a(MotionSchemeKeyTokens.SlowEffects, gapComposerH);
            Function3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Float>> function7 = new Function3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$TextFieldTransitionScope$placeholderOpacity$1
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Transition.Segment segment = (Transition.Segment) obj;
                    Composer composer2 = (Composer) obj2;
                    ((Number) obj3).intValue();
                    composer2.L(-984009111);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    InputPhase inputPhase7 = InputPhase.Focused;
                    InputPhase inputPhase8 = InputPhase.UnfocusedEmpty;
                    boolean zE = segment.e(inputPhase7, inputPhase8);
                    FiniteAnimationSpec finiteAnimationSpec = finiteAnimationSpecA2;
                    if (!zE && (segment.e(inputPhase8, inputPhase7) || segment.e(InputPhase.UnfocusedNotEmpty, inputPhase8))) {
                        finiteAnimationSpec = finiteAnimationSpecA3;
                    }
                    composer2.F();
                    return finiteAnimationSpec;
                }
            };
            InputPhase inputPhase7 = (InputPhase) transitionState.a();
            long j11 = j9;
            gapComposerH.L(-1093194547);
            int i13 = iArr[inputPhase7.ordinal()];
            if (i13 == 1) {
                f4 = 1.0f;
            } else {
                if (i13 != 2) {
                    if (i13 != 3) {
                        v40.g();
                        return;
                    }
                } else if (!z8) {
                    f4 = 1.0f;
                }
                f4 = 0.0f;
            }
            gapComposerH.Z(false);
            Float fValueOf2 = Float.valueOf(f4);
            InputPhase inputPhase8 = (InputPhase) transitionF.g();
            gapComposerH.L(-1093194547);
            int i14 = iArr[inputPhase8.ordinal()];
            if (i14 == 1) {
                f5 = 1.0f;
            } else {
                if (i14 != 2) {
                    if (i14 != 3) {
                        v40.g();
                        return;
                    }
                } else if (!z8) {
                    f5 = 1.0f;
                }
                f5 = 0.0f;
            }
            gapComposerH.Z(false);
            final Transition.TransitionAnimationState transitionAnimationStateD5 = TransitionKt.d(transitionF, fValueOf2, Float.valueOf(f5), (FiniteAnimationSpec) function7.A(transitionF.f(), gapComposerH, 0), twoWayConverter, "PlaceholderOpacity", gapComposerH, ImageMetadata.EDGE_MODE);
            Function3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Float>> function8 = new Function3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$TextFieldTransitionScope$prefixSuffixOpacity$1
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    ((Number) obj3).intValue();
                    composer2.L(2126293195);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    composer2.F();
                    return finiteAnimationSpecA2;
                }
            };
            InputPhase inputPhase9 = (InputPhase) transitionState.a();
            gapComposerH.L(-1258455321);
            int i15 = iArr[inputPhase9.ordinal()];
            if (i15 == 1) {
                f6 = 1.0f;
            } else {
                if (i15 != 2) {
                    if (i15 != 3) {
                        v40.g();
                        return;
                    }
                } else if (z8) {
                    f6 = 0.0f;
                }
                f6 = 1.0f;
            }
            gapComposerH.Z(false);
            Float fValueOf3 = Float.valueOf(f6);
            InputPhase inputPhase10 = (InputPhase) transitionF.g();
            gapComposerH.L(-1258455321);
            int i16 = iArr[inputPhase10.ordinal()];
            if (i16 != 1) {
                if (i16 == 2) {
                    if (!z8) {
                    }
                    gapComposerH.Z(false);
                    transitionAnimationStateD = TransitionKt.d(transitionF, fValueOf3, Float.valueOf(f7), (FiniteAnimationSpec) function8.A(transitionF.f(), gapComposerH, 0), twoWayConverter, "PrefixSuffixOpacity", gapComposerH, ImageMetadata.EDGE_MODE);
                    final FiniteAnimationSpec finiteAnimationSpecA4 = MotionSchemeKt.a(motionSchemeKeyTokens, gapComposerH);
                    Function3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Color>> function9 = new Function3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Color>>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            Composer composer2 = (Composer) obj2;
                            ((Number) obj3).intValue();
                            composer2.L(1954111929);
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            composer2.F();
                            return finiteAnimationSpecA4;
                        }
                    };
                    inputPhase2 = (InputPhase) transitionF.g();
                    gapComposerH.L(-12973394);
                    if (iArr[inputPhase2.ordinal()] == 1) {
                        j3 = j10;
                    } else {
                        j3 = j11;
                    }
                    gapComposerH.Z(false);
                    colorSpaceF = Color.f(j3);
                    zK = gapComposerH.K(colorSpaceF);
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = (TwoWayConverter) ColorVectorConverterKt.f3548a.invoke(colorSpaceF);
                        gapComposerH.q(objX);
                    }
                    TwoWayConverter twoWayConverter2 = (TwoWayConverter) objX;
                    inputPhase3 = (InputPhase) transitionState.a();
                    gapComposerH.L(-12973394);
                    if (iArr[inputPhase3.ordinal()] == 1) {
                        j4 = j10;
                    } else {
                        j4 = j11;
                    }
                    gapComposerH.Z(false);
                    Color color = new Color(j4);
                    inputPhase4 = (InputPhase) transitionF.g();
                    gapComposerH.L(-12973394);
                    if (iArr[inputPhase4.ordinal()] == 1) {
                        j5 = j10;
                    } else {
                        j5 = j11;
                    }
                    i6 = i4;
                    gapComposerH.Z(false);
                    transitionAnimationStateD2 = TransitionKt.d(transitionF, color, new Color(j5), (FiniteAnimationSpec) function9.A(transitionF.f(), gapComposerH, 0), twoWayConverter2, "LabelTextStyleColor", gapComposerH, ImageMetadata.EDGE_MODE);
                    Function3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Color>> function10 = new Function3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Color>>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$TextFieldTransitionScope$labelContentColor$1
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj, Object obj2, Object obj3) {
                            Composer composer2 = (Composer) obj2;
                            ((Number) obj3).intValue();
                            composer2.L(1190923886);
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            composer2.F();
                            return finiteAnimationSpecA4;
                        }
                    };
                    gapComposerH.L(-464752477);
                    gapComposerH.Z(false);
                    colorSpaceF2 = Color.f(j2);
                    zK2 = gapComposerH.K(colorSpaceF2);
                    objX2 = gapComposerH.x();
                    if (zK2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = (TwoWayConverter) ColorVectorConverterKt.f3548a.invoke(colorSpaceF2);
                        gapComposerH.q(objX2);
                    }
                    TwoWayConverter twoWayConverter3 = (TwoWayConverter) objX2;
                    gapComposerH.L(-464752477);
                    gapComposerH.Z(false);
                    Color color2 = new Color(j2);
                    gapComposerH.L(-464752477);
                    gapComposerH.Z(false);
                    transitionAnimationStateD3 = TransitionKt.d(transitionF, color2, new Color(j2), (FiniteAnimationSpec) function10.A(transitionF.f(), gapComposerH, 0), twoWayConverter3, "LabelContentColor", gapComposerH, ImageMetadata.EDGE_MODE);
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1();
                        gapComposerH.q(objX3);
                    }
                    textFieldImplKt$CommonDecorationBox$3$labelScope$1$1 = (TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1) objX3;
                    if (function3 == null) {
                        gapComposerH.L(-1891724857);
                        gapComposerH.Z(false);
                        z4 = false;
                        textStyle2 = textStyle4;
                        composableLambdaImpl3 = null;
                        composableLambdaImpl2 = null;
                    } else {
                        gapComposerH.L(-1891724856);
                        z4 = false;
                        composableLambdaImpl2 = null;
                        textStyle2 = textStyle4;
                        ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1076580032, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                float f8;
                                float f9;
                                Shadow shadowA;
                                PlatformSpanStyle platformSpanStyle;
                                PlatformParagraphStyle platformParagraphStyle;
                                Composer composer2 = (Composer) obj;
                                int iIntValue = ((Number) obj2).intValue();
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    float fFloatValue = ((Number) transitionAnimationStateD4.getF10755b()).floatValue();
                                    TextStyle textStyle5 = textStyle;
                                    SpanStyle spanStyle = textStyle5.f10568a;
                                    TextStyle textStyle6 = textStyle4;
                                    SpanStyle spanStyle2 = textStyle6.f10568a;
                                    TextForegroundStyle textForegroundStyle = SpanStyleKt.d;
                                    TextForegroundStyle textForegroundStyleA = TextDrawStyleKt.a(spanStyle.f10522a, spanStyle2.f10522a, fFloatValue);
                                    FontFamily fontFamily = (FontFamily) SpanStyleKt.b(fFloatValue, spanStyle.fontFamily, spanStyle2.fontFamily);
                                    long jC = SpanStyleKt.c(spanStyle.fontSize, spanStyle2.fontSize, fFloatValue);
                                    FontWeight fontWeight = spanStyle.fontWeight;
                                    if (fontWeight == null) {
                                        FontWeight.f10727c.getClass();
                                        fontWeight = FontWeight.f10730h;
                                    }
                                    FontWeight fontWeight2 = spanStyle2.fontWeight;
                                    if (fontWeight2 == null) {
                                        FontWeight.f10727c.getClass();
                                        fontWeight2 = FontWeight.f10730h;
                                    }
                                    FontWeight fontWeight3 = new FontWeight(RangesKt.d(MathHelpersKt.c(fontWeight.f10734b, fontWeight2.f10734b, fFloatValue), 1, 1000));
                                    FontStyle fontStyle = (FontStyle) SpanStyleKt.b(fFloatValue, spanStyle.fontStyle, spanStyle2.fontStyle);
                                    FontSynthesis fontSynthesis = (FontSynthesis) SpanStyleKt.b(fFloatValue, spanStyle.fontSynthesis, spanStyle2.fontSynthesis);
                                    String str = (String) SpanStyleKt.b(fFloatValue, spanStyle.fontFeatureSettings, spanStyle2.fontFeatureSettings);
                                    long jC2 = SpanStyleKt.c(spanStyle.letterSpacing, spanStyle2.letterSpacing, fFloatValue);
                                    BaselineShift baselineShift = spanStyle.baselineShift;
                                    if (baselineShift != null) {
                                        f8 = baselineShift.f10924a;
                                    } else {
                                        BaselineShift.Companion companion2 = BaselineShift.f10922b;
                                        f8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    }
                                    BaselineShift baselineShift2 = spanStyle2.baselineShift;
                                    if (baselineShift2 != null) {
                                        f9 = baselineShift2.f10924a;
                                    } else {
                                        BaselineShift.Companion companion3 = BaselineShift.f10922b;
                                        f9 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                    }
                                    float fB = MathHelpersKt.b(f8, f9, fFloatValue);
                                    BaselineShift.Companion companion4 = BaselineShift.f10922b;
                                    TextGeometricTransform textGeometricTransform = spanStyle.textGeometricTransform;
                                    if (textGeometricTransform == null) {
                                        TextGeometricTransform.f10975c.getClass();
                                        textGeometricTransform = TextGeometricTransform.d;
                                    }
                                    TextGeometricTransform textGeometricTransform2 = spanStyle2.textGeometricTransform;
                                    if (textGeometricTransform2 == null) {
                                        TextGeometricTransform.f10975c.getClass();
                                        textGeometricTransform2 = TextGeometricTransform.d;
                                    }
                                    TextGeometricTransform textGeometricTransform3 = new TextGeometricTransform(MathHelpersKt.b(textGeometricTransform.f10976a, textGeometricTransform2.f10976a, fFloatValue), MathHelpersKt.b(textGeometricTransform.f10977b, textGeometricTransform2.f10977b, fFloatValue));
                                    LocaleList localeList = (LocaleList) SpanStyleKt.b(fFloatValue, spanStyle.localeList, spanStyle2.localeList);
                                    long jG = ColorKt.g(spanStyle.l, spanStyle2.l, fFloatValue);
                                    TextDecoration textDecoration = (TextDecoration) SpanStyleKt.b(fFloatValue, spanStyle.background, spanStyle2.background);
                                    Shadow shadow = spanStyle.shadow;
                                    Shadow shadow2 = spanStyle2.shadow;
                                    if (shadow == null && shadow2 == null) {
                                        textGeometricTransform3 = textGeometricTransform3;
                                        shadowA = null;
                                    } else if (shadow == null) {
                                        shadow2.getClass();
                                        shadowA = ShadowKt.a(new Shadow(Color.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, shadow2.f8926a), shadow2.f8927b, shadow2.f8928c, null), shadow2, fFloatValue);
                                        textGeometricTransform3 = textGeometricTransform3;
                                    } else {
                                        shadowA = shadow2 == null ? ShadowKt.a(shadow, new Shadow(Color.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, shadow.f8926a), shadow.f8927b, shadow.f8928c, null), fFloatValue) : ShadowKt.a(shadow, shadow2, fFloatValue);
                                    }
                                    PlatformSpanStyle platformSpanStyle2 = spanStyle.platformStyle;
                                    PlatformSpanStyle platformSpanStyle3 = spanStyle2.platformStyle;
                                    if (platformSpanStyle2 == null && platformSpanStyle3 == null) {
                                        platformSpanStyle = null;
                                    } else {
                                        if (platformSpanStyle2 == null) {
                                            PlatformSpanStyle.f10500a.getClass();
                                            platformSpanStyle2 = PlatformSpanStyle.f10501b;
                                        }
                                        if (platformSpanStyle3 == null) {
                                            PlatformSpanStyle.f10500a.getClass();
                                        }
                                        platformSpanStyle = platformSpanStyle2;
                                    }
                                    SpanStyle spanStyle3 = new SpanStyle(textForegroundStyleA, jC, fontWeight3, fontStyle, fontSynthesis, fontFamily, str, jC2, new BaselineShift(fB), textGeometricTransform3, localeList, jG, textDecoration, shadowA, platformSpanStyle, (DrawStyle) SpanStyleKt.b(fFloatValue, spanStyle.drawStyle, spanStyle2.drawStyle), (DefaultConstructorMarker) null);
                                    ParagraphStyle paragraphStyle = textStyle5.f10569b;
                                    ParagraphStyle paragraphStyle2 = textStyle6.f10569b;
                                    int i17 = ParagraphStyleKt.f10487b;
                                    int i18 = ((TextAlign) SpanStyleKt.b(fFloatValue, new TextAlign(paragraphStyle.f10479a), new TextAlign(paragraphStyle2.f10479a))).f10964a;
                                    int i19 = ((TextDirection) SpanStyleKt.b(fFloatValue, new TextDirection(paragraphStyle.f10480b), new TextDirection(paragraphStyle2.f10480b))).f10973a;
                                    long jC3 = SpanStyleKt.c(paragraphStyle.f10481c, paragraphStyle2.f10481c, fFloatValue);
                                    TextIndent textIndent = paragraphStyle.d;
                                    if (textIndent == null) {
                                        TextIndent.f10978c.getClass();
                                        textIndent = TextIndent.d;
                                    }
                                    TextIndent textIndent2 = paragraphStyle2.d;
                                    if (textIndent2 == null) {
                                        TextIndent.f10978c.getClass();
                                        textIndent2 = TextIndent.d;
                                    }
                                    TextIndent textIndent3 = new TextIndent(SpanStyleKt.c(textIndent.f10979a, textIndent2.f10979a, fFloatValue), SpanStyleKt.c(textIndent.f10980b, textIndent2.f10980b, fFloatValue), null);
                                    PlatformParagraphStyle platformParagraphStyle2 = paragraphStyle.f10482e;
                                    PlatformParagraphStyle platformParagraphStyle3 = paragraphStyle2.f10482e;
                                    if (platformParagraphStyle2 == null && platformParagraphStyle3 == null) {
                                        platformParagraphStyle = null;
                                    } else {
                                        if (platformParagraphStyle2 == null) {
                                            PlatformParagraphStyle.f10497c.getClass();
                                            platformParagraphStyle2 = PlatformParagraphStyle.d;
                                        }
                                        if (platformParagraphStyle3 == null) {
                                            PlatformParagraphStyle.f10497c.getClass();
                                            platformParagraphStyle3 = PlatformParagraphStyle.d;
                                        }
                                        platformParagraphStyle = platformParagraphStyle2.f10498a == platformParagraphStyle3.f10498a ? platformParagraphStyle2 : new PlatformParagraphStyle(((EmojiSupportMatch) SpanStyleKt.b(fFloatValue, new EmojiSupportMatch(platformParagraphStyle2.f10499b), new EmojiSupportMatch(platformParagraphStyle3.f10499b))).f10452a, ((Boolean) SpanStyleKt.b(fFloatValue, Boolean.valueOf(platformParagraphStyle2.f10498a), Boolean.valueOf(platformParagraphStyle3.f10498a))).booleanValue(), (DefaultConstructorMarker) null);
                                    }
                                    TextStyle textStyle7 = new TextStyle(spanStyle3, new ParagraphStyle(i18, i19, jC3, textIndent3, platformParagraphStyle, (LineHeightStyle) SpanStyleKt.b(fFloatValue, paragraphStyle.f10483f, paragraphStyle2.f10483f), ((LineBreak) SpanStyleKt.b(fFloatValue, new LineBreak(paragraphStyle.g), new LineBreak(paragraphStyle2.g))).f10933a, ((Hyphens) SpanStyleKt.b(fFloatValue, new Hyphens(paragraphStyle.f10484h), new Hyphens(paragraphStyle2.f10484h))).f10930a, (TextMotion) SpanStyleKt.b(fFloatValue, paragraphStyle.f10485i, paragraphStyle2.f10485i), (DefaultConstructorMarker) null));
                                    if (z6) {
                                        textStyle7 = TextStyle.a(textStyle7, ((Color) transitionAnimationStateD2.getF10755b()).f8872a, 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214);
                                    }
                                    long j12 = ((Color) transitionAnimationStateD3.getF10755b()).f8872a;
                                    final Function3 function11 = function3;
                                    final TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1 textFieldImplKt$CommonDecorationBox$3$labelScope$1$2 = textFieldImplKt$CommonDecorationBox$3$labelScope$1$1;
                                    TextFieldImplKt.b(j12, textStyle7, ComposableLambdaKt.b(1157484991, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1.1
                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(Object obj3, Object obj4) {
                                            Composer composer3 = (Composer) obj3;
                                            int iIntValue2 = ((Number) obj4).intValue();
                                            if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                                function11.A(textFieldImplKt$CommonDecorationBox$3$labelScope$1$2, composer3, 6);
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
                        }, gapComposerH);
                        gapComposerH.Z(false);
                        composableLambdaImpl3 = composableLambdaImplB;
                    }
                    if (z2) {
                        textStyle = textStyle3;
                        textFieldColors2 = textFieldColors;
                        if (z3) {
                            textStyle = textStyle3;
                            j6 = textFieldColors2.E;
                        } else if (zBooleanValue) {
                            j6 = textFieldColors2.B;
                        } else {
                            j6 = textFieldColors2.C;
                        }
                    } else {
                        textStyle = textStyle3;
                        textStyle = textStyle3;
                        textFieldColors2 = textFieldColors;
                        j6 = textFieldColors2.D;
                    }
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        i7 = 3;
                        objX4 = SnapshotStateKt.d(SnapshotStateKt.n(), new lg0(transitionAnimationStateD5, i7));
                        gapComposerH.q(objX4);
                    } else {
                        i7 = 3;
                    }
                    State state = (State) objX4;
                    if (function4 == null && charSequence.length() == 0 && ((Boolean) state.getF10755b()).booleanValue()) {
                        gapComposerH.L(-1890614312);
                        final TextStyle textStyle5 = textStyle;
                        ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(1405547205, new Function3<Modifier, Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedPlaceholder$1
                            @Override // kotlin.jvm.functions.Function3
                            public final Object A(Object obj, Object obj2, Object obj3) {
                                Modifier modifier = (Modifier) obj;
                                Composer composer2 = (Composer) obj2;
                                int iIntValue = ((Number) obj3).intValue();
                                if ((iIntValue & 6) == 0) {
                                    iIntValue |= composer2.K(modifier) ? 4 : 2;
                                }
                                if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    State state2 = transitionAnimationStateD5;
                                    boolean zK4 = composer2.K(state2);
                                    Object objX8 = composer2.x();
                                    if (zK4 || objX8 == Composer.Companion.f7939a) {
                                        objX8 = new ya(state2, 5);
                                        composer2.q(objX8);
                                    }
                                    Modifier modifierA = GraphicsLayerModifierKt.a(modifier, (Function1) objX8);
                                    Alignment.f8582a.getClass();
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iG = composer2.G();
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierA);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function0);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                    Function2 function11 = ComposeUiNode.Companion.g;
                                    if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                                        fc.A(function11, iG, composer2, iG);
                                    }
                                    Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                                    TextFieldImplKt.b(j6, textStyle5, function4, composer2, 0);
                                    composer2.r();
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                        gapComposerH.Z(z4);
                        composableLambdaImpl4 = composableLambdaImplB2;
                    } else {
                        gapComposerH.L(-1890217110);
                        gapComposerH.Z(z4);
                        composableLambdaImpl4 = composableLambdaImpl2;
                    }
                    objX5 = gapComposerH.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = SnapshotStateKt.d(SnapshotStateKt.n(), new lg0(transitionAnimationStateD, 4));
                        gapComposerH.q(objX5);
                    }
                    gapComposerH.L(-1889500886);
                    gapComposerH.Z(z4);
                    gapComposerH.L(-1888924534);
                    gapComposerH.Z(z4);
                    gapComposerH.L(-1888749663);
                    gapComposerH.Z(z4);
                    gapComposerH.L(-1888469888);
                    gapComposerH.Z(z4);
                    if (!z2) {
                        j7 = textFieldColors2.H;
                    } else if (z3) {
                        j7 = textFieldColors2.I;
                    } else if (zBooleanValue) {
                        j7 = textFieldColors2.F;
                    } else {
                        j7 = textFieldColors2.G;
                    }
                    if (function5 == null) {
                        gapComposerH.L(-1888176380);
                        gapComposerH.Z(z4);
                        composableLambdaImpl5 = composableLambdaImpl2;
                    } else {
                        gapComposerH.L(-1888176379);
                        ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(837168720, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedSupporting$1$1
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                Composer composer2 = (Composer) obj;
                                int iIntValue = ((Number) obj2).intValue();
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    TextFieldImplKt.b(j7, textStyle2, function5, composer2, 0);
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                        gapComposerH.Z(z4);
                        composableLambdaImpl5 = composableLambdaImplB3;
                    }
                    i8 = WhenMappings.f7676a[textFieldType.ordinal()];
                    companion = Modifier.Companion.f8607b;
                    if (i8 != 1) {
                        gapComposerH.L(-1887830698);
                        TextFieldKt.a(companion, function2, composableLambdaImpl3, composableLambdaImpl4, composableLambdaImpl2, composableLambdaImpl2, composableLambdaImpl2, composableLambdaImpl2, z, attached, new TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0(new TextFieldImplKt$CommonDecorationBox$3$1(transitionAnimationStateD4, State.class, "value", "getValue()Ljava/lang/Object;", 0)), ComposableLambdaKt.b(-1729858187, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$containerWithId$1
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                Composer composer2 = (Composer) obj;
                                int iIntValue = ((Number) obj2).intValue();
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    Modifier modifierB = LayoutIdKt.b(Modifier.Companion.f8607b, "Container");
                                    Alignment.f8582a.getClass();
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, true);
                                    int iG = composer2.G();
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function0);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                    Function2 function11 = ComposeUiNode.Companion.g;
                                    if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                                        fc.A(function11, iG, composer2, iG);
                                    }
                                    Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                                    composableLambdaImpl.invoke(composer2, 0);
                                    composer2.r();
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), composableLambdaImpl5, paddingValues, gapComposerH, ((i6 >> 3) & 112) | 6 | ((i10 << 21) & 234881024) | ((i6 << 18) & 1879048192), ((i10 >> 6) & 7168) | 48);
                        gapComposer = gapComposerH;
                        gapComposer.Z(false);
                    } else {
                        if (i8 == 2) {
                            throw d21.u(gapComposerH, 493292232, z4);
                        }
                        gapComposerH.L(-1886778186);
                        objX6 = gapComposerH.x();
                        if (objX6 == composer$Companion$Empty$1) {
                            Size.f8820b.getClass();
                            i9 = 234881024;
                            objX6 = SnapshotStateKt.g(new Size(0L));
                            gapComposerH.q(objX6);
                        } else {
                            i9 = 234881024;
                        }
                        mutableState = (MutableState) objX6;
                        int i17 = i9;
                        ComposableLambdaImpl composableLambdaImplB4 = ComposableLambdaKt.b(528115858, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1

                            /* JADX INFO: renamed from: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1$1, reason: invalid class name */
                            @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                            final /* synthetic */ class AnonymousClass1 extends MutablePropertyReference0Impl {
                                @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
                                public final Object get() {
                                    return ((MutableState) this.receiver).getF10755b();
                                }
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                Composer composer2 = (Composer) obj;
                                int iIntValue = ((Number) obj2).intValue();
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    Modifier modifierB = LayoutIdKt.b(Modifier.Companion.f8607b, "Container");
                                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(mutableState, MutableState.class, "value", "getValue()Ljava/lang/Object;", 0);
                                    Alignment.Horizontal horizontalD = TextFieldImplKt.d(attached);
                                    float f8 = OutlinedTextFieldKt.f7123a;
                                    Modifier modifierD = DrawModifierKt.d(modifierB, new jx(anonymousClass1, paddingValues, horizontalD, 27));
                                    Alignment.f8582a.getClass();
                                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, true);
                                    int iG = composer2.G();
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierD);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function0);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                    Function2 function11 = ComposeUiNode.Companion.g;
                                    if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                                        fc.A(function11, iG, composer2, iG);
                                    }
                                    Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                                    composableLambdaImpl.invoke(composer2, 0);
                                    composer2.r();
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH);
                        TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 textFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 = new TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0(new TextFieldImplKt$CommonDecorationBox$3$2(transitionAnimationStateD4, State.class, "value", "getValue()Ljava/lang/Object;", 0));
                        ComposableLambdaImpl composableLambdaImpl6 = composableLambdaImpl4;
                        if ((i6 & 7168) == 2048) {
                            z5 = true;
                        } else {
                            z5 = false;
                        }
                        zK3 = z5 | gapComposerH.K(transitionAnimationStateD4);
                        objX7 = gapComposerH.x();
                        if (zK3 || objX7 == composer$Companion$Empty$1) {
                            objX7 = new cl0(attached, transitionAnimationStateD4, mutableState, 18);
                            gapComposerH.q(objX7);
                        }
                        ComposableLambdaImpl composableLambdaImpl7 = composableLambdaImpl2;
                        OutlinedTextFieldKt.b(companion, function2, composableLambdaImpl6, composableLambdaImpl3, composableLambdaImpl7, composableLambdaImpl2, composableLambdaImpl7, composableLambdaImpl7, z, attached, textFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0, (Function1) objX7, composableLambdaImplB4, composableLambdaImpl5, paddingValues, gapComposerH, ((i6 >> 3) & 112) | 6 | ((i10 << 21) & i17) | ((i6 << 18) & 1879048192), (57344 & (i10 >> 3)) | KyberEngine.KyberPolyBytes);
                        gapComposer = gapComposerH;
                        gapComposer.Z(false);
                    }
                } else if (i16 != 3) {
                    v40.g();
                    return;
                }
            }
            f7 = 1.0f;
            gapComposerH.Z(false);
            transitionAnimationStateD = TransitionKt.d(transitionF, fValueOf3, Float.valueOf(f7), (FiniteAnimationSpec) function8.A(transitionF.f(), gapComposerH, 0), twoWayConverter, "PrefixSuffixOpacity", gapComposerH, ImageMetadata.EDGE_MODE);
            final FiniteAnimationSpec<Color> finiteAnimationSpecA5 = MotionSchemeKt.a(motionSchemeKeyTokens, gapComposerH);
            Function3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Color>> function11 = new Function3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Color>>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$TextFieldTransitionScope$labelTextStyleColor$1
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    ((Number) obj3).intValue();
                    composer2.L(1954111929);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    composer2.F();
                    return finiteAnimationSpecA5;
                }
            };
            inputPhase2 = (InputPhase) transitionF.g();
            gapComposerH.L(-12973394);
            if (iArr[inputPhase2.ordinal()] == 1) {
                j3 = j10;
            } else {
                j3 = j11;
            }
            gapComposerH.Z(false);
            colorSpaceF = Color.f(j3);
            zK = gapComposerH.K(colorSpaceF);
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK) {
                objX = (TwoWayConverter) ColorVectorConverterKt.f3548a.invoke(colorSpaceF);
                gapComposerH.q(objX);
            } else {
                objX = (TwoWayConverter) ColorVectorConverterKt.f3548a.invoke(colorSpaceF);
                gapComposerH.q(objX);
            }
            TwoWayConverter twoWayConverter4 = (TwoWayConverter) objX;
            inputPhase3 = (InputPhase) transitionState.a();
            gapComposerH.L(-12973394);
            if (iArr[inputPhase3.ordinal()] == 1) {
                j4 = j10;
            } else {
                j4 = j11;
            }
            gapComposerH.Z(false);
            Color color3 = new Color(j4);
            inputPhase4 = (InputPhase) transitionF.g();
            gapComposerH.L(-12973394);
            if (iArr[inputPhase4.ordinal()] == 1) {
                j5 = j10;
            } else {
                j5 = j11;
            }
            i6 = i4;
            gapComposerH.Z(false);
            transitionAnimationStateD2 = TransitionKt.d(transitionF, color3, new Color(j5), (FiniteAnimationSpec) function11.A(transitionF.f(), gapComposerH, 0), twoWayConverter4, "LabelTextStyleColor", gapComposerH, ImageMetadata.EDGE_MODE);
            Function3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Color>> function12 = new Function3<Transition.Segment<InputPhase>, Composer, Integer, FiniteAnimationSpec<Color>>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$TextFieldTransitionScope$labelContentColor$1
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    ((Number) obj3).intValue();
                    composer2.L(1190923886);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    composer2.F();
                    return finiteAnimationSpecA5;
                }
            };
            gapComposerH.L(-464752477);
            gapComposerH.Z(false);
            colorSpaceF2 = Color.f(j2);
            zK2 = gapComposerH.K(colorSpaceF2);
            objX2 = gapComposerH.x();
            if (zK2) {
                objX2 = (TwoWayConverter) ColorVectorConverterKt.f3548a.invoke(colorSpaceF2);
                gapComposerH.q(objX2);
            } else {
                objX2 = (TwoWayConverter) ColorVectorConverterKt.f3548a.invoke(colorSpaceF2);
                gapComposerH.q(objX2);
            }
            TwoWayConverter twoWayConverter5 = (TwoWayConverter) objX2;
            gapComposerH.L(-464752477);
            gapComposerH.Z(false);
            Color color4 = new Color(j2);
            gapComposerH.L(-464752477);
            gapComposerH.Z(false);
            transitionAnimationStateD3 = TransitionKt.d(transitionF, color4, new Color(j2), (FiniteAnimationSpec) function12.A(transitionF.f(), gapComposerH, 0), twoWayConverter5, "LabelContentColor", gapComposerH, ImageMetadata.EDGE_MODE);
            objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1();
                gapComposerH.q(objX3);
            }
            textFieldImplKt$CommonDecorationBox$3$labelScope$1$1 = (TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1) objX3;
            if (function3 == null) {
                gapComposerH.L(-1891724857);
                gapComposerH.Z(false);
                z4 = false;
                textStyle2 = textStyle4;
                composableLambdaImpl3 = null;
                composableLambdaImpl2 = null;
            } else {
                gapComposerH.L(-1891724856);
                z4 = false;
                composableLambdaImpl2 = null;
                textStyle2 = textStyle4;
                ComposableLambdaImpl composableLambdaImplB5 = ComposableLambdaKt.b(-1076580032, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        float f8;
                        float f9;
                        Shadow shadowA;
                        PlatformSpanStyle platformSpanStyle;
                        PlatformParagraphStyle platformParagraphStyle;
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            float fFloatValue = ((Number) transitionAnimationStateD4.getF10755b()).floatValue();
                            TextStyle textStyle6 = textStyle;
                            SpanStyle spanStyle = textStyle6.f10568a;
                            TextStyle textStyle7 = textStyle4;
                            SpanStyle spanStyle2 = textStyle7.f10568a;
                            TextForegroundStyle textForegroundStyle = SpanStyleKt.d;
                            TextForegroundStyle textForegroundStyleA = TextDrawStyleKt.a(spanStyle.f10522a, spanStyle2.f10522a, fFloatValue);
                            FontFamily fontFamily = (FontFamily) SpanStyleKt.b(fFloatValue, spanStyle.fontFamily, spanStyle2.fontFamily);
                            long jC = SpanStyleKt.c(spanStyle.fontSize, spanStyle2.fontSize, fFloatValue);
                            FontWeight fontWeight = spanStyle.fontWeight;
                            if (fontWeight == null) {
                                FontWeight.f10727c.getClass();
                                fontWeight = FontWeight.f10730h;
                            }
                            FontWeight fontWeight2 = spanStyle2.fontWeight;
                            if (fontWeight2 == null) {
                                FontWeight.f10727c.getClass();
                                fontWeight2 = FontWeight.f10730h;
                            }
                            FontWeight fontWeight3 = new FontWeight(RangesKt.d(MathHelpersKt.c(fontWeight.f10734b, fontWeight2.f10734b, fFloatValue), 1, 1000));
                            FontStyle fontStyle = (FontStyle) SpanStyleKt.b(fFloatValue, spanStyle.fontStyle, spanStyle2.fontStyle);
                            FontSynthesis fontSynthesis = (FontSynthesis) SpanStyleKt.b(fFloatValue, spanStyle.fontSynthesis, spanStyle2.fontSynthesis);
                            String str = (String) SpanStyleKt.b(fFloatValue, spanStyle.fontFeatureSettings, spanStyle2.fontFeatureSettings);
                            long jC2 = SpanStyleKt.c(spanStyle.letterSpacing, spanStyle2.letterSpacing, fFloatValue);
                            BaselineShift baselineShift = spanStyle.baselineShift;
                            if (baselineShift != null) {
                                f8 = baselineShift.f10924a;
                            } else {
                                BaselineShift.Companion companion2 = BaselineShift.f10922b;
                                f8 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                            }
                            BaselineShift baselineShift2 = spanStyle2.baselineShift;
                            if (baselineShift2 != null) {
                                f9 = baselineShift2.f10924a;
                            } else {
                                BaselineShift.Companion companion3 = BaselineShift.f10922b;
                                f9 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                            }
                            float fB = MathHelpersKt.b(f8, f9, fFloatValue);
                            BaselineShift.Companion companion4 = BaselineShift.f10922b;
                            TextGeometricTransform textGeometricTransform = spanStyle.textGeometricTransform;
                            if (textGeometricTransform == null) {
                                TextGeometricTransform.f10975c.getClass();
                                textGeometricTransform = TextGeometricTransform.d;
                            }
                            TextGeometricTransform textGeometricTransform2 = spanStyle2.textGeometricTransform;
                            if (textGeometricTransform2 == null) {
                                TextGeometricTransform.f10975c.getClass();
                                textGeometricTransform2 = TextGeometricTransform.d;
                            }
                            TextGeometricTransform textGeometricTransform3 = new TextGeometricTransform(MathHelpersKt.b(textGeometricTransform.f10976a, textGeometricTransform2.f10976a, fFloatValue), MathHelpersKt.b(textGeometricTransform.f10977b, textGeometricTransform2.f10977b, fFloatValue));
                            LocaleList localeList = (LocaleList) SpanStyleKt.b(fFloatValue, spanStyle.localeList, spanStyle2.localeList);
                            long jG = ColorKt.g(spanStyle.l, spanStyle2.l, fFloatValue);
                            TextDecoration textDecoration = (TextDecoration) SpanStyleKt.b(fFloatValue, spanStyle.background, spanStyle2.background);
                            Shadow shadow = spanStyle.shadow;
                            Shadow shadow2 = spanStyle2.shadow;
                            if (shadow == null && shadow2 == null) {
                                textGeometricTransform3 = textGeometricTransform3;
                                shadowA = null;
                            } else if (shadow == null) {
                                shadow2.getClass();
                                shadowA = ShadowKt.a(new Shadow(Color.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, shadow2.f8926a), shadow2.f8927b, shadow2.f8928c, null), shadow2, fFloatValue);
                                textGeometricTransform3 = textGeometricTransform3;
                            } else {
                                shadowA = shadow2 == null ? ShadowKt.a(shadow, new Shadow(Color.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, shadow.f8926a), shadow.f8927b, shadow.f8928c, null), fFloatValue) : ShadowKt.a(shadow, shadow2, fFloatValue);
                            }
                            PlatformSpanStyle platformSpanStyle2 = spanStyle.platformStyle;
                            PlatformSpanStyle platformSpanStyle3 = spanStyle2.platformStyle;
                            if (platformSpanStyle2 == null && platformSpanStyle3 == null) {
                                platformSpanStyle = null;
                            } else {
                                if (platformSpanStyle2 == null) {
                                    PlatformSpanStyle.f10500a.getClass();
                                    platformSpanStyle2 = PlatformSpanStyle.f10501b;
                                }
                                if (platformSpanStyle3 == null) {
                                    PlatformSpanStyle.f10500a.getClass();
                                }
                                platformSpanStyle = platformSpanStyle2;
                            }
                            SpanStyle spanStyle3 = new SpanStyle(textForegroundStyleA, jC, fontWeight3, fontStyle, fontSynthesis, fontFamily, str, jC2, new BaselineShift(fB), textGeometricTransform3, localeList, jG, textDecoration, shadowA, platformSpanStyle, (DrawStyle) SpanStyleKt.b(fFloatValue, spanStyle.drawStyle, spanStyle2.drawStyle), (DefaultConstructorMarker) null);
                            ParagraphStyle paragraphStyle = textStyle6.f10569b;
                            ParagraphStyle paragraphStyle2 = textStyle7.f10569b;
                            int i18 = ParagraphStyleKt.f10487b;
                            int i19 = ((TextAlign) SpanStyleKt.b(fFloatValue, new TextAlign(paragraphStyle.f10479a), new TextAlign(paragraphStyle2.f10479a))).f10964a;
                            int i110 = ((TextDirection) SpanStyleKt.b(fFloatValue, new TextDirection(paragraphStyle.f10480b), new TextDirection(paragraphStyle2.f10480b))).f10973a;
                            long jC3 = SpanStyleKt.c(paragraphStyle.f10481c, paragraphStyle2.f10481c, fFloatValue);
                            TextIndent textIndent = paragraphStyle.d;
                            if (textIndent == null) {
                                TextIndent.f10978c.getClass();
                                textIndent = TextIndent.d;
                            }
                            TextIndent textIndent2 = paragraphStyle2.d;
                            if (textIndent2 == null) {
                                TextIndent.f10978c.getClass();
                                textIndent2 = TextIndent.d;
                            }
                            TextIndent textIndent3 = new TextIndent(SpanStyleKt.c(textIndent.f10979a, textIndent2.f10979a, fFloatValue), SpanStyleKt.c(textIndent.f10980b, textIndent2.f10980b, fFloatValue), null);
                            PlatformParagraphStyle platformParagraphStyle2 = paragraphStyle.f10482e;
                            PlatformParagraphStyle platformParagraphStyle3 = paragraphStyle2.f10482e;
                            if (platformParagraphStyle2 == null && platformParagraphStyle3 == null) {
                                platformParagraphStyle = null;
                            } else {
                                if (platformParagraphStyle2 == null) {
                                    PlatformParagraphStyle.f10497c.getClass();
                                    platformParagraphStyle2 = PlatformParagraphStyle.d;
                                }
                                if (platformParagraphStyle3 == null) {
                                    PlatformParagraphStyle.f10497c.getClass();
                                    platformParagraphStyle3 = PlatformParagraphStyle.d;
                                }
                                platformParagraphStyle = platformParagraphStyle2.f10498a == platformParagraphStyle3.f10498a ? platformParagraphStyle2 : new PlatformParagraphStyle(((EmojiSupportMatch) SpanStyleKt.b(fFloatValue, new EmojiSupportMatch(platformParagraphStyle2.f10499b), new EmojiSupportMatch(platformParagraphStyle3.f10499b))).f10452a, ((Boolean) SpanStyleKt.b(fFloatValue, Boolean.valueOf(platformParagraphStyle2.f10498a), Boolean.valueOf(platformParagraphStyle3.f10498a))).booleanValue(), (DefaultConstructorMarker) null);
                            }
                            TextStyle textStyle8 = new TextStyle(spanStyle3, new ParagraphStyle(i19, i110, jC3, textIndent3, platformParagraphStyle, (LineHeightStyle) SpanStyleKt.b(fFloatValue, paragraphStyle.f10483f, paragraphStyle2.f10483f), ((LineBreak) SpanStyleKt.b(fFloatValue, new LineBreak(paragraphStyle.g), new LineBreak(paragraphStyle2.g))).f10933a, ((Hyphens) SpanStyleKt.b(fFloatValue, new Hyphens(paragraphStyle.f10484h), new Hyphens(paragraphStyle2.f10484h))).f10930a, (TextMotion) SpanStyleKt.b(fFloatValue, paragraphStyle.f10485i, paragraphStyle2.f10485i), (DefaultConstructorMarker) null));
                            if (z6) {
                                textStyle8 = TextStyle.a(textStyle8, ((Color) transitionAnimationStateD2.getF10755b()).f8872a, 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214);
                            }
                            long j12 = ((Color) transitionAnimationStateD3.getF10755b()).f8872a;
                            final Function3 function13 = function3;
                            final TextFieldImplKt$CommonDecorationBox$3$labelScope$1$1 textFieldImplKt$CommonDecorationBox$3$labelScope$1$2 = textFieldImplKt$CommonDecorationBox$3$labelScope$1$1;
                            TextFieldImplKt.b(j12, textStyle8, ComposableLambdaKt.b(1157484991, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedLabel$1$1.1
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Number) obj4).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        function13.A(textFieldImplKt$CommonDecorationBox$3$labelScope$1$2, composer3, 6);
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
                }, gapComposerH);
                gapComposerH.Z(false);
                composableLambdaImpl3 = composableLambdaImplB5;
            }
            if (z2) {
                textStyle = textStyle3;
                textStyle = textStyle3;
                textFieldColors2 = textFieldColors;
                j6 = textFieldColors2.D;
            } else {
                textStyle = textStyle3;
                textFieldColors2 = textFieldColors;
                if (z3) {
                    textStyle = textStyle3;
                    j6 = textFieldColors2.E;
                } else if (zBooleanValue) {
                    j6 = textFieldColors2.B;
                } else {
                    j6 = textFieldColors2.C;
                }
            }
            objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                i7 = 3;
                objX4 = SnapshotStateKt.d(SnapshotStateKt.n(), new lg0(transitionAnimationStateD5, i7));
                gapComposerH.q(objX4);
            } else {
                i7 = 3;
            }
            State state2 = (State) objX4;
            if (function4 == null) {
                gapComposerH.L(-1890217110);
                gapComposerH.Z(z4);
                composableLambdaImpl4 = composableLambdaImpl2;
            } else {
                gapComposerH.L(-1890217110);
                gapComposerH.Z(z4);
                composableLambdaImpl4 = composableLambdaImpl2;
            }
            objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = SnapshotStateKt.d(SnapshotStateKt.n(), new lg0(transitionAnimationStateD, 4));
                gapComposerH.q(objX5);
            }
            gapComposerH.L(-1889500886);
            gapComposerH.Z(z4);
            gapComposerH.L(-1888924534);
            gapComposerH.Z(z4);
            gapComposerH.L(-1888749663);
            gapComposerH.Z(z4);
            gapComposerH.L(-1888469888);
            gapComposerH.Z(z4);
            if (!z2) {
                j7 = textFieldColors2.H;
            } else if (z3) {
                j7 = textFieldColors2.I;
            } else if (zBooleanValue) {
                j7 = textFieldColors2.F;
            } else {
                j7 = textFieldColors2.G;
            }
            if (function5 == null) {
                gapComposerH.L(-1888176380);
                gapComposerH.Z(z4);
                composableLambdaImpl5 = composableLambdaImpl2;
            } else {
                gapComposerH.L(-1888176379);
                ComposableLambdaImpl composableLambdaImplB6 = ComposableLambdaKt.b(837168720, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$decoratedSupporting$1$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            TextFieldImplKt.b(j7, textStyle2, function5, composer2, 0);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH);
                gapComposerH.Z(z4);
                composableLambdaImpl5 = composableLambdaImplB6;
            }
            i8 = WhenMappings.f7676a[textFieldType.ordinal()];
            companion = Modifier.Companion.f8607b;
            if (i8 != 1) {
                gapComposerH.L(-1887830698);
                TextFieldKt.a(companion, function2, composableLambdaImpl3, composableLambdaImpl4, composableLambdaImpl2, composableLambdaImpl2, composableLambdaImpl2, composableLambdaImpl2, z, attached, new TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0(new TextFieldImplKt$CommonDecorationBox$3$1(transitionAnimationStateD4, State.class, "value", "getValue()Ljava/lang/Object;", 0)), ComposableLambdaKt.b(-1729858187, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$containerWithId$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            Modifier modifierB = LayoutIdKt.b(Modifier.Companion.f8607b, "Container");
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, true);
                            int iG = composer2.G();
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                            ComposeUiNode.b0.getClass();
                            Function0 function0 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function0);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Function2 function13 = ComposeUiNode.Companion.g;
                            if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                                fc.A(function13, iG, composer2, iG);
                            }
                            Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                            composableLambdaImpl.invoke(composer2, 0);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), composableLambdaImpl5, paddingValues, gapComposerH, ((i6 >> 3) & 112) | 6 | ((i10 << 21) & 234881024) | ((i6 << 18) & 1879048192), ((i10 >> 6) & 7168) | 48);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            } else {
                if (i8 == 2) {
                    throw d21.u(gapComposerH, 493292232, z4);
                }
                gapComposerH.L(-1886778186);
                objX6 = gapComposerH.x();
                if (objX6 == composer$Companion$Empty$1) {
                    Size.f8820b.getClass();
                    i9 = 234881024;
                    objX6 = SnapshotStateKt.g(new Size(0L));
                    gapComposerH.q(objX6);
                } else {
                    i9 = 234881024;
                }
                mutableState = (MutableState) objX6;
                int i18 = i9;
                ComposableLambdaImpl composableLambdaImplB7 = ComposableLambdaKt.b(528115858, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1

                    /* JADX INFO: renamed from: androidx.compose.material3.internal.TextFieldImplKt$CommonDecorationBox$3$borderContainerWithId$1$1, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                    final /* synthetic */ class AnonymousClass1 extends MutablePropertyReference0Impl {
                        @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
                        public final Object get() {
                            return ((MutableState) this.receiver).getF10755b();
                        }
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            Modifier modifierB = LayoutIdKt.b(Modifier.Companion.f8607b, "Container");
                            AnonymousClass1 anonymousClass1 = new AnonymousClass1(mutableState, MutableState.class, "value", "getValue()Ljava/lang/Object;", 0);
                            Alignment.Horizontal horizontalD = TextFieldImplKt.d(attached);
                            float f8 = OutlinedTextFieldKt.f7123a;
                            Modifier modifierD = DrawModifierKt.d(modifierB, new jx(anonymousClass1, paddingValues, horizontalD, 27));
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, true);
                            int iG = composer2.G();
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, modifierD);
                            ComposeUiNode.b0.getClass();
                            Function0 function0 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function0);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Function2 function13 = ComposeUiNode.Companion.g;
                            if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                                fc.A(function13, iG, composer2, iG);
                            }
                            Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                            composableLambdaImpl.invoke(composer2, 0);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH);
                TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0 textFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$1 = new TextFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$0(new TextFieldImplKt$CommonDecorationBox$3$2(transitionAnimationStateD4, State.class, "value", "getValue()Ljava/lang/Object;", 0));
                ComposableLambdaImpl composableLambdaImpl8 = composableLambdaImpl4;
                if ((i6 & 7168) == 2048) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                zK3 = z5 | gapComposerH.K(transitionAnimationStateD4);
                objX7 = gapComposerH.x();
                if (zK3) {
                    objX7 = new cl0(attached, transitionAnimationStateD4, mutableState, 18);
                    gapComposerH.q(objX7);
                } else {
                    objX7 = new cl0(attached, transitionAnimationStateD4, mutableState, 18);
                    gapComposerH.q(objX7);
                }
                ComposableLambdaImpl composableLambdaImpl9 = composableLambdaImpl2;
                OutlinedTextFieldKt.b(companion, function2, composableLambdaImpl8, composableLambdaImpl3, composableLambdaImpl9, composableLambdaImpl2, composableLambdaImpl9, composableLambdaImpl9, z, attached, textFieldImplKt$sam$androidx_compose_material3_internal_FloatProducer$1, (Function1) objX7, composableLambdaImplB7, composableLambdaImpl5, paddingValues, gapComposerH, ((i6 >> 3) & 112) | 6 | ((i10 << 21) & i18) | ((i6 << 18) & 1879048192), (57344 & (i10 >> 3)) | KyberEngine.KyberPolyBytes);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: y21
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    TextFieldImplKt.a(textFieldType, charSequence, function2, attached, function3, function4, function5, z, z2, z3, interactionSource, paddingValues, textFieldColors, composableLambdaImpl, (Composer) obj, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(long j2, TextStyle textStyle, Function2 function2, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(396611577);
        int i3 = (gapComposerH.e(j2) ? 4 : 2) | i2 | (gapComposerH.K(textStyle) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function2) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ProvideContentColorTextStyleKt.a(j2, textStyle, function2, gapComposerH, i3 & 1022);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qq0(j2, textStyle, function2, i2, 1);
        }
    }

    public static final Alignment.Horizontal c(TextFieldLabelPosition textFieldLabelPosition) {
        if (textFieldLabelPosition instanceof TextFieldLabelPosition.Above) {
            return ((TextFieldLabelPosition.Above) textFieldLabelPosition).f7375a;
        }
        if (textFieldLabelPosition instanceof TextFieldLabelPosition.Attached) {
            return ((TextFieldLabelPosition.Attached) textFieldLabelPosition).f7378c;
        }
        az.m(textFieldLabelPosition, "Unknown position: ");
        return null;
    }

    public static final Alignment.Horizontal d(TextFieldLabelPosition textFieldLabelPosition) {
        if (textFieldLabelPosition instanceof TextFieldLabelPosition.Above) {
            return ((TextFieldLabelPosition.Above) textFieldLabelPosition).f7375a;
        }
        if (textFieldLabelPosition instanceof TextFieldLabelPosition.Attached) {
            return ((TextFieldLabelPosition.Attached) textFieldLabelPosition).f7377b;
        }
        az.m(textFieldLabelPosition, "Unknown position: ");
        return null;
    }

    public static final float e(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        long j2 = MaterialTheme.b(composer).l.f10569b.f10481c;
        long j3 = TypeScaleTokens.l;
        if ((1095216660480L & j2) != 4294967296L) {
            j2 = j3;
        }
        float fZ = ((Density) composer.k(CompositionLocalsKt.f10031h)).Z(j2) / 2.0f;
        Dp.Companion companion = Dp.f11004c;
        return fZ;
    }

    public static final float f(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        float f2 = ((Dp) composer.k(InteractiveComponentSizeKt.f7013c)).f11006b;
        if (Float.isNaN(f2)) {
            f2 = 0.0f;
        }
        float f3 = (f2 - SmallIconButtonTokens.d) / 2.0f;
        return f3 < Call.Parameters.DEFAULT_CAMERA_ZOOM ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f3;
    }
}
