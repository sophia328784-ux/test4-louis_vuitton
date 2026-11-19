package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/animation/EnterTransition;", "activeEnter", "Landroidx/compose/animation/ExitTransition;", "activeExit", "animation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class EnterExitTransitionKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TwoWayConverter f3579a = VectorConvertersKt.a(EnterExitTransitionKt$TransformOriginVectorConverter$1.f3583c, EnterExitTransitionKt$TransformOriginVectorConverter$2.f3584c);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SpringSpec f3580b = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 5, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final SpringSpec f3581c = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 5, null);
    public static final SpringSpec d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final SpringSpec f3582e;

    static {
        IntOffset.Companion companion = IntOffset.f11012b;
        Rect rect = VisibilityThresholdsKt.f4089a;
        d = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntOffset(4294967297L));
        f3582e = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntSize(4294967297L));
    }

    public static final Modifier a(final Transition transition, EnterTransition enterTransition, ExitTransition exitTransition, Function0 function0, String str, Composer composer, int i2, int i3) {
        final Function0 function1;
        EnterTransition enterTransitionY;
        ExitTransition exitTransitionZ;
        Transition.DeferredAnimation deferredAnimation;
        Transition.DeferredAnimation deferredAnimation2;
        Transition.DeferredAnimation deferredAnimation3;
        ChangeSize changeSize;
        ColorSpace colorSpaceF;
        Transition transition2;
        String str2;
        Modifier dTFunctionNameModifier;
        Transition.DeferredAnimation deferredAnimation4;
        Transition.DeferredAnimation deferredAnimation5;
        Transition transition3;
        Composer composer2;
        final EnterTransition enterTransition2;
        final ExitTransition exitTransition2;
        boolean z = (i3 & 4) != 0;
        int i4 = i3 & 8;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (i4 != 0) {
            Object objX = composer.x();
            if (objX == composer$Companion$Empty$1) {
                objX = EnterExitTransitionKt$createModifier$1$1.f3597c;
                composer.q(objX);
            }
            function1 = (Function0) objX;
        } else {
            function1 = function0;
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        if (z) {
            composer.L(-167965831);
            enterTransitionY = y(transition, enterTransition, composer, 0);
        } else {
            enterTransitionY = enterTransition;
            composer.L(-167964673);
        }
        composer.F();
        EnterTransition enterTransition3 = enterTransitionY;
        if (z) {
            composer.L(-167962954);
            exitTransitionZ = z(transition, exitTransition, composer, 0);
        } else {
            exitTransitionZ = exitTransition;
            composer.L(-167961890);
        }
        composer.F();
        ExitTransition exitTransition3 = exitTransitionZ;
        boolean z2 = (enterTransition3.getF3628c().f3756e == null && exitTransition3.getD().f3756e == null) ? false : true;
        boolean z3 = (enterTransition3.getF3628c().f3754b == null && exitTransition3.getD().f3754b == null) ? false : true;
        boolean z4 = (enterTransition3.getF3628c().f3755c == null && exitTransition3.getD().f3755c == null) ? false : true;
        Transition.DeferredAnimation deferredAnimationC = null;
        if (z3) {
            composer.L(-911488127);
            IntOffset.Companion companion = IntOffset.f11012b;
            TwoWayConverter twoWayConverter = VectorConvertersKt.g;
            Object objX2 = composer.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = str.concat(" slide");
                composer.q(objX2);
            }
            Transition.DeferredAnimation deferredAnimationC2 = androidx.compose.animation.core.TransitionKt.c(transition, twoWayConverter, (String) objX2, composer, KyberEngine.KyberPolyBytes, 0);
            composer.F();
            deferredAnimation = deferredAnimationC2;
        } else {
            composer.L(-911382324);
            composer.F();
            deferredAnimation = null;
        }
        if (z4) {
            composer.L(-911290533);
            IntSize.Companion companion2 = IntSize.f11020b;
            TwoWayConverter twoWayConverter2 = VectorConvertersKt.f4041h;
            Object objX3 = composer.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = str.concat(" shrink/expand");
                composer.q(objX3);
            }
            Transition.DeferredAnimation deferredAnimationC3 = androidx.compose.animation.core.TransitionKt.c(transition, twoWayConverter2, (String) objX3, composer, KyberEngine.KyberPolyBytes, 0);
            composer.F();
            deferredAnimation2 = deferredAnimationC3;
        } else {
            composer.L(-911179709);
            composer.F();
            deferredAnimation2 = null;
        }
        if (z4) {
            composer.L(-911106083);
            IntOffset.Companion companion3 = IntOffset.f11012b;
            TwoWayConverter twoWayConverter3 = VectorConvertersKt.g;
            Object objX4 = composer.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = str.concat(" InterruptionHandlingOffset");
                composer.q(objX4);
            }
            Transition.DeferredAnimation deferredAnimationC4 = androidx.compose.animation.core.TransitionKt.c(transition, twoWayConverter3, (String) objX4, composer, KyberEngine.KyberPolyBytes, 0);
            composer.F();
            deferredAnimation3 = deferredAnimationC4;
        } else {
            composer.L(-910935677);
            composer.F();
            deferredAnimation3 = null;
        }
        ChangeSize changeSize2 = enterTransition3.getF3628c().f3755c;
        final boolean z5 = ((changeSize2 == null || changeSize2.d) && ((changeSize = exitTransition3.getD().f3755c) == null || changeSize.d) && z4) ? false : true;
        Veil veil = enterTransition3.getF3628c().f3756e;
        if (veil == null || (colorSpaceF = Color.f(veil.f3758a)) == null) {
            Veil veil2 = enterTransition3.getF3628c().f3756e;
            if (veil2 != null) {
                colorSpaceF = Color.f(veil2.f3759b);
            } else {
                Veil veil3 = exitTransition3.getD().f3756e;
                colorSpaceF = veil3 != null ? Color.f(veil3.f3758a) : null;
                if (colorSpaceF == null) {
                    Veil veil4 = exitTransition3.getD().f3756e;
                    colorSpaceF = veil4 != null ? Color.f(veil4.f3759b) : null;
                    if (colorSpaceF == null) {
                        colorSpaceF = ColorSpaces.f8958e;
                    }
                }
            }
        }
        if (z2) {
            composer.L(-910409203);
            Color.Companion companion4 = Color.f8866b;
            TwoWayConverter twoWayConverter4 = (TwoWayConverter) ((ColorVectorConverterKt$ColorToVector$1) ColorVectorConverterKt.f3548a).invoke(colorSpaceF);
            Object objX5 = composer.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = str.concat(" veil");
                composer.q(objX5);
            }
            str2 = "createModifier";
            transition2 = transition;
            dTFunctionNameModifier = new VeilModifierElement(transition2, androidx.compose.animation.core.TransitionKt.c(transition2, twoWayConverter4, (String) objX5, composer, KyberEngine.KyberPolyBytes, 0), enterTransition3, exitTransition3);
            composer.F();
        } else {
            transition2 = transition;
            str2 = "createModifier";
            composer.L(-910130296);
            composer.F();
            dTFunctionNameModifier = new DTFunctionNameModifier(str2);
        }
        Modifier modifier = dTFunctionNameModifier;
        Veil veil5 = enterTransition3.getF3628c().f3756e;
        boolean z6 = (veil5 == null && (veil5 = exitTransition3.getD().f3756e) == null) ? false : veil5.d;
        boolean z7 = (enterTransition3.getF3628c().f3753a == null && exitTransition3.getD().f3753a == null) ? false : true;
        boolean z8 = (enterTransition3.getF3628c().d == null && exitTransition3.getD().d == null) ? false : true;
        if (z7) {
            composer.L(-703879421);
            TwoWayConverter twoWayConverter5 = VectorConvertersKt.f4036a;
            Object objX6 = composer.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = str.concat(" alpha");
                composer.q(objX6);
            }
            Transition.DeferredAnimation deferredAnimationC5 = androidx.compose.animation.core.TransitionKt.c(transition2, twoWayConverter5, (String) objX6, composer, KyberEngine.KyberPolyBytes, 0);
            composer.F();
            deferredAnimation4 = deferredAnimationC5;
        } else {
            composer.L(-703709976);
            composer.F();
            deferredAnimation4 = null;
        }
        if (z8) {
            composer.L(-703642333);
            TwoWayConverter twoWayConverter6 = VectorConvertersKt.f4036a;
            Object objX7 = composer.x();
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = str.concat(" scale");
                composer.q(objX7);
            }
            Transition.DeferredAnimation deferredAnimationC6 = androidx.compose.animation.core.TransitionKt.c(transition, twoWayConverter6, (String) objX7, composer, KyberEngine.KyberPolyBytes, 0);
            composer.F();
            deferredAnimation5 = deferredAnimationC6;
        } else {
            composer.L(-703472888);
            composer.F();
            deferredAnimation5 = null;
        }
        if (z8) {
            composer.L(-703395232);
            transition3 = transition;
            deferredAnimationC = androidx.compose.animation.core.TransitionKt.c(transition3, f3579a, "TransformOriginInterruptionHandling", composer, KyberEngine.KyberPolyBytes, 0);
            composer2 = composer;
            composer2.F();
        } else {
            transition3 = transition;
            composer2 = composer;
            composer2.L(-703222904);
            composer2.F();
        }
        boolean zY = composer2.y(deferredAnimation4) | composer2.K(enterTransition3) | composer2.K(exitTransition3) | composer2.y(deferredAnimation5) | composer2.K(transition3) | composer2.y(deferredAnimationC);
        Object objX8 = composer2.x();
        if (zY || objX8 == composer$Companion$Empty$1) {
            final Transition.DeferredAnimation deferredAnimation6 = deferredAnimation5;
            final Transition.DeferredAnimation deferredAnimation7 = deferredAnimation4;
            enterTransition2 = enterTransition3;
            exitTransition2 = exitTransition3;
            final Transition.DeferredAnimation deferredAnimation8 = deferredAnimationC;
            GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit = new GraphicsLayerBlockForEnterExit() { // from class: androidx.compose.animation.a
                /* JADX WARN: Code duplicated, block: B:18:0x005b  */
                @Override // androidx.compose.animation.GraphicsLayerBlockForEnterExit
                public final Function1 init() {
                    final TransformOrigin transformOrigin;
                    TwoWayConverter twoWayConverter7 = EnterExitTransitionKt.f3579a;
                    Transition.DeferredAnimation deferredAnimation9 = deferredAnimation7;
                    final EnterTransition enterTransition4 = enterTransition2;
                    final ExitTransition exitTransition4 = exitTransition2;
                    final Transition.DeferredAnimation.DeferredAnimationData deferredAnimationDataA = deferredAnimation9 != null ? deferredAnimation9.a(new Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            FiniteAnimationSpec finiteAnimationSpec;
                            FiniteAnimationSpec finiteAnimationSpec2;
                            Transition.Segment segment = (Transition.Segment) obj;
                            EnterExitState enterExitState = EnterExitState.PreEnter;
                            EnterExitState enterExitState2 = EnterExitState.Visible;
                            if (segment.e(enterExitState, enterExitState2)) {
                                Fade fade = enterTransition4.getF3628c().f3753a;
                                return (fade == null || (finiteAnimationSpec2 = fade.f3633b) == null) ? EnterExitTransitionKt.f3580b : finiteAnimationSpec2;
                            }
                            if (!segment.e(enterExitState2, EnterExitState.PostExit)) {
                                return EnterExitTransitionKt.f3580b;
                            }
                            Fade fade2 = exitTransition4.getD().f3753a;
                            return (fade2 == null || (finiteAnimationSpec = fade2.f3633b) == null) ? EnterExitTransitionKt.f3580b : finiteAnimationSpec;
                        }
                    }, new Function1<EnterExitState, Float>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2

                        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                        public static final /* synthetic */ class WhenMappings {

                            /* JADX INFO: renamed from: a, reason: collision with root package name */
                            public static final /* synthetic */ int[] f3587a;

                            static {
                                int[] iArr = new int[EnterExitState.values().length];
                                try {
                                    iArr[EnterExitState.Visible.ordinal()] = 1;
                                } catch (NoSuchFieldError unused) {
                                }
                                try {
                                    iArr[EnterExitState.PreEnter.ordinal()] = 2;
                                } catch (NoSuchFieldError unused2) {
                                }
                                try {
                                    iArr[EnterExitState.PostExit.ordinal()] = 3;
                                } catch (NoSuchFieldError unused3) {
                                }
                                f3587a = iArr;
                            }
                        }

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            int i5 = WhenMappings.f3587a[((EnterExitState) obj).ordinal()];
                            float f2 = 1.0f;
                            if (i5 != 1) {
                                if (i5 == 2) {
                                    Fade fade = enterTransition4.getF3628c().f3753a;
                                    if (fade != null) {
                                        f2 = fade.f3632a;
                                    }
                                } else {
                                    if (i5 != 3) {
                                        v40.g();
                                        return null;
                                    }
                                    Fade fade2 = exitTransition4.getD().f3753a;
                                    if (fade2 != null) {
                                        f2 = fade2.f3632a;
                                    }
                                }
                            }
                            return Float.valueOf(f2);
                        }
                    }) : null;
                    Transition.DeferredAnimation deferredAnimation10 = deferredAnimation6;
                    final Transition.DeferredAnimation.DeferredAnimationData deferredAnimationDataA2 = deferredAnimation10 != null ? deferredAnimation10.a(new Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            FiniteAnimationSpec finiteAnimationSpec;
                            FiniteAnimationSpec finiteAnimationSpec2;
                            Transition.Segment segment = (Transition.Segment) obj;
                            EnterExitState enterExitState = EnterExitState.PreEnter;
                            EnterExitState enterExitState2 = EnterExitState.Visible;
                            if (segment.e(enterExitState, enterExitState2)) {
                                Scale scale = enterTransition4.getF3628c().d;
                                return (scale == null || (finiteAnimationSpec2 = scale.f3644c) == null) ? EnterExitTransitionKt.f3580b : finiteAnimationSpec2;
                            }
                            if (!segment.e(enterExitState2, EnterExitState.PostExit)) {
                                return EnterExitTransitionKt.f3580b;
                            }
                            Scale scale2 = exitTransition4.getD().d;
                            return (scale2 == null || (finiteAnimationSpec = scale2.f3644c) == null) ? EnterExitTransitionKt.f3580b : finiteAnimationSpec;
                        }
                    }, new Function1<EnterExitState, Float>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$2

                        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                        public static final /* synthetic */ class WhenMappings {

                            /* JADX INFO: renamed from: a, reason: collision with root package name */
                            public static final /* synthetic */ int[] f3592a;

                            static {
                                int[] iArr = new int[EnterExitState.values().length];
                                try {
                                    iArr[EnterExitState.Visible.ordinal()] = 1;
                                } catch (NoSuchFieldError unused) {
                                }
                                try {
                                    iArr[EnterExitState.PreEnter.ordinal()] = 2;
                                } catch (NoSuchFieldError unused2) {
                                }
                                try {
                                    iArr[EnterExitState.PostExit.ordinal()] = 3;
                                } catch (NoSuchFieldError unused3) {
                                }
                                f3592a = iArr;
                            }
                        }

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            int i5 = WhenMappings.f3592a[((EnterExitState) obj).ordinal()];
                            float f2 = 1.0f;
                            if (i5 != 1) {
                                if (i5 == 2) {
                                    Scale scale = enterTransition4.getF3628c().d;
                                    if (scale != null) {
                                        f2 = scale.f3642a;
                                    }
                                } else {
                                    if (i5 != 3) {
                                        v40.g();
                                        return null;
                                    }
                                    Scale scale2 = exitTransition4.getD().d;
                                    if (scale2 != null) {
                                        f2 = scale2.f3642a;
                                    }
                                }
                            }
                            return Float.valueOf(f2);
                        }
                    }) : null;
                    if (transition.f3988a.a() == EnterExitState.PreEnter) {
                        Scale scale = enterTransition4.getF3628c().d;
                        if (scale != null) {
                            transformOrigin = new TransformOrigin(scale.f3643b);
                        } else {
                            Scale scale2 = exitTransition4.getD().d;
                            if (scale2 != null) {
                                transformOrigin = new TransformOrigin(scale2.f3643b);
                            } else {
                                transformOrigin = null;
                            }
                        }
                    } else {
                        Scale scale3 = exitTransition4.getD().d;
                        if (scale3 != null) {
                            transformOrigin = new TransformOrigin(scale3.f3643b);
                        } else {
                            Scale scale4 = enterTransition4.getF3628c().d;
                            if (scale4 != null) {
                                transformOrigin = new TransformOrigin(scale4.f3643b);
                            } else {
                                transformOrigin = null;
                            }
                        }
                    }
                    Transition.DeferredAnimation deferredAnimation11 = deferredAnimation8;
                    final Transition.DeferredAnimation.DeferredAnimationData deferredAnimationDataA3 = deferredAnimation11 != null ? deferredAnimation11.a(EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$1.f3593c, new Function1<EnterExitState, TransformOrigin>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2

                        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
                        public static final /* synthetic */ class WhenMappings {

                            /* JADX INFO: renamed from: a, reason: collision with root package name */
                            public static final /* synthetic */ int[] f3596a;

                            static {
                                int[] iArr = new int[EnterExitState.values().length];
                                try {
                                    iArr[EnterExitState.Visible.ordinal()] = 1;
                                } catch (NoSuchFieldError unused) {
                                }
                                try {
                                    iArr[EnterExitState.PreEnter.ordinal()] = 2;
                                } catch (NoSuchFieldError unused2) {
                                }
                                try {
                                    iArr[EnterExitState.PostExit.ordinal()] = 3;
                                } catch (NoSuchFieldError unused3) {
                                }
                                f3596a = iArr;
                            }
                        }

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            TransformOrigin transformOrigin2;
                            long j2;
                            int i5 = WhenMappings.f3596a[((EnterExitState) obj).ordinal()];
                            if (i5 != 1) {
                                transformOrigin2 = null;
                                EnterTransition enterTransition5 = enterTransition4;
                                ExitTransition exitTransition5 = exitTransition4;
                                if (i5 == 2) {
                                    Scale scale5 = enterTransition5.getF3628c().d;
                                    if (scale5 != null) {
                                        transformOrigin2 = new TransformOrigin(scale5.f3643b);
                                    } else {
                                        Scale scale6 = exitTransition5.getD().d;
                                        if (scale6 != null) {
                                            transformOrigin2 = new TransformOrigin(scale6.f3643b);
                                        }
                                    }
                                } else {
                                    if (i5 != 3) {
                                        v40.g();
                                        return null;
                                    }
                                    Scale scale7 = exitTransition5.getD().d;
                                    if (scale7 != null) {
                                        transformOrigin2 = new TransformOrigin(scale7.f3643b);
                                    } else {
                                        Scale scale8 = enterTransition5.getF3628c().d;
                                        if (scale8 != null) {
                                            transformOrigin2 = new TransformOrigin(scale8.f3643b);
                                        }
                                    }
                                }
                            } else {
                                transformOrigin2 = transformOrigin;
                            }
                            if (transformOrigin2 != null) {
                                j2 = transformOrigin2.f8943a;
                            } else {
                                TransformOrigin.f8941b.getClass();
                                j2 = TransformOrigin.f8942c;
                            }
                            return new TransformOrigin(j2);
                        }
                    }) : null;
                    return new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            long j2;
                            GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                            State state = deferredAnimationDataA;
                            graphicsLayerScope.d(state != null ? ((Number) state.getF10755b()).floatValue() : 1.0f);
                            State state2 = deferredAnimationDataA2;
                            graphicsLayerScope.m(state2 != null ? ((Number) state2.getF10755b()).floatValue() : 1.0f);
                            graphicsLayerScope.x(state2 != null ? ((Number) state2.getF10755b()).floatValue() : 1.0f);
                            State state3 = deferredAnimationDataA3;
                            if (state3 != null) {
                                j2 = ((TransformOrigin) state3.getF10755b()).f8943a;
                            } else {
                                TransformOrigin.f8941b.getClass();
                                j2 = TransformOrigin.f8942c;
                            }
                            graphicsLayerScope.C0(j2);
                            return Unit.f71739a;
                        }
                    };
                }
            };
            composer2.q(graphicsLayerBlockForEnterExit);
            objX8 = graphicsLayerBlockForEnterExit;
        } else {
            enterTransition2 = enterTransition3;
            exitTransition2 = exitTransition3;
        }
        GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit2 = (GraphicsLayerBlockForEnterExit) objX8;
        Modifier dTFunctionNameModifier2 = z6 ? modifier : new DTFunctionNameModifier(str2);
        DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier(str2);
        boolean zB = composer2.b(z5) | composer2.K(function1);
        Object objX9 = composer2.x();
        if (zB || objX9 == composer$Companion$Empty$1) {
            objX9 = new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createModifier$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    ((GraphicsLayerScope) obj).o(!z5 && ((Boolean) function1.mo47invoke()).booleanValue());
                    return Unit.f71739a;
                }
            };
            composer2.q(objX9);
        }
        return dTFunctionNameModifier2.o(GraphicsLayerModifierKt.a(dTFunctionNameModifier3, (Function1) objX9)).o(new EnterExitTransitionElement(transition, deferredAnimation2, deferredAnimation3, deferredAnimation, enterTransition2, exitTransition2, function1, graphicsLayerBlockForEnterExit2)).o(!z6 ? modifier : new DTFunctionNameModifier(str2));
    }

    public static EnterTransition b(TweenSpec tweenSpec, Alignment.Horizontal horizontal, final Function1 function1, int i2) {
        FiniteAnimationSpec finiteAnimationSpecB = tweenSpec;
        if ((i2 & 1) != 0) {
            IntSize.Companion companion = IntSize.f11020b;
            Rect rect = VisibilityThresholdsKt.f4089a;
            finiteAnimationSpecB = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntSize(4294967297L));
        }
        if ((i2 & 2) != 0) {
            Alignment.f8582a.getClass();
            horizontal = Alignment.Companion.p;
        }
        boolean z = (i2 & 4) != 0;
        if ((i2 & 8) != 0) {
            function1 = EnterExitTransitionKt$expandHorizontally$1.f3599c;
        }
        return c(finiteAnimationSpecB, w(horizontal), z, new Function1<IntSize, IntSize>() { // from class: androidx.compose.animation.EnterExitTransitionKt$expandHorizontally$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                long j2 = ((IntSize) obj).f11021a;
                return new IntSize((((long) ((Number) function1.invoke(Integer.valueOf((int) (j2 >> 32)))).intValue()) << 32) | (((long) ((int) (j2 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax));
            }
        });
    }

    public static final EnterTransition c(FiniteAnimationSpec finiteAnimationSpec, BiasAlignment biasAlignment, boolean z, Function1 function1) {
        return new EnterTransitionImpl(new TransitionData(null, null, new ChangeSize(biasAlignment, function1, finiteAnimationSpec, z), null, null, false, null, 123, null));
    }

    public static EnterTransition d(FiniteAnimationSpec finiteAnimationSpec, Alignment.Vertical vertical, final Function1 function1, int i2) {
        if ((i2 & 1) != 0) {
            IntSize.Companion companion = IntSize.f11020b;
            Rect rect = VisibilityThresholdsKt.f4089a;
            finiteAnimationSpec = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntSize(4294967297L));
        }
        if ((i2 & 2) != 0) {
            Alignment.f8582a.getClass();
            vertical = Alignment.Companion.m;
        }
        if ((i2 & 8) != 0) {
            function1 = EnterExitTransitionKt$expandVertically$1.f3602c;
        }
        return c(finiteAnimationSpec, x(vertical), true, new Function1<IntSize, IntSize>() { // from class: androidx.compose.animation.EnterExitTransitionKt$expandVertically$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                long j2 = ((IntSize) obj).f11021a;
                int i3 = (int) (j2 >> 32);
                return new IntSize((((long) ((Number) function1.invoke(Integer.valueOf((int) (j2 & BodyPartID.bodyIdMax)))).intValue()) & BodyPartID.bodyIdMax) | (((long) i3) << 32));
            }
        });
    }

    public static final EnterTransition e(float f2, FiniteAnimationSpec finiteAnimationSpec) {
        return new EnterTransitionImpl(new TransitionData(new Fade(f2, finiteAnimationSpec), null, null, null, null, false, null, 126, null));
    }

    public static /* synthetic */ EnterTransition f(FiniteAnimationSpec finiteAnimationSpec, float f2, int i2) {
        if ((i2 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 5, null);
        }
        if ((i2 & 2) != 0) {
            f2 = 0.0f;
        }
        return e(f2, finiteAnimationSpec);
    }

    public static final ExitTransition g(float f2, FiniteAnimationSpec finiteAnimationSpec) {
        return new ExitTransitionImpl(new TransitionData(new Fade(f2, finiteAnimationSpec), null, null, null, null, false, null, 126, null));
    }

    public static /* synthetic */ ExitTransition h(FiniteAnimationSpec finiteAnimationSpec, int i2) {
        if ((i2 & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 5, null);
        }
        return g(Call.Parameters.DEFAULT_CAMERA_ZOOM, finiteAnimationSpec);
    }

    public static EnterTransition i(TweenSpec tweenSpec, float f2, int i2) {
        FiniteAnimationSpec finiteAnimationSpecB = (i2 & 1) != 0 ? AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 5, null) : tweenSpec;
        float f3 = (i2 & 2) != 0 ? 0.0f : f2;
        TransformOrigin.f8941b.getClass();
        return new EnterTransitionImpl(new TransitionData(null, null, null, new Scale(f3, TransformOrigin.f8942c, finiteAnimationSpecB, null), null, false, null, 119, null));
    }

    public static ExitTransition j(TweenSpec tweenSpec, float f2, int i2) {
        FiniteAnimationSpec finiteAnimationSpecB = (i2 & 1) != 0 ? AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 5, null) : tweenSpec;
        float f3 = (i2 & 2) != 0 ? 0.0f : f2;
        TransformOrigin.f8941b.getClass();
        return new ExitTransitionImpl(new TransitionData(null, null, null, new Scale(f3, TransformOrigin.f8942c, finiteAnimationSpecB, null), null, false, null, 119, null));
    }

    public static ExitTransition k(TweenSpec tweenSpec, Alignment.Horizontal horizontal, final Function1 function1, int i2) {
        FiniteAnimationSpec finiteAnimationSpecB = tweenSpec;
        if ((i2 & 1) != 0) {
            IntSize.Companion companion = IntSize.f11020b;
            Rect rect = VisibilityThresholdsKt.f4089a;
            finiteAnimationSpecB = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntSize(4294967297L));
        }
        if ((i2 & 2) != 0) {
            Alignment.f8582a.getClass();
            horizontal = Alignment.Companion.p;
        }
        boolean z = (i2 & 4) != 0;
        if ((i2 & 8) != 0) {
            function1 = EnterExitTransitionKt$shrinkHorizontally$1.f3604c;
        }
        return l(finiteAnimationSpecB, w(horizontal), z, new Function1<IntSize, IntSize>() { // from class: androidx.compose.animation.EnterExitTransitionKt$shrinkHorizontally$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                long j2 = ((IntSize) obj).f11021a;
                return new IntSize((((long) ((Number) function1.invoke(Integer.valueOf((int) (j2 >> 32)))).intValue()) << 32) | (((long) ((int) (j2 & BodyPartID.bodyIdMax))) & BodyPartID.bodyIdMax));
            }
        });
    }

    public static final ExitTransition l(FiniteAnimationSpec finiteAnimationSpec, BiasAlignment biasAlignment, boolean z, Function1 function1) {
        return new ExitTransitionImpl(new TransitionData(null, null, new ChangeSize(biasAlignment, function1, finiteAnimationSpec, z), null, null, false, null, 123, null));
    }

    public static ExitTransition m() {
        IntSize.Companion companion = IntSize.f11020b;
        Rect rect = VisibilityThresholdsKt.f4089a;
        SpringSpec springSpecB = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntSize(4294967297L));
        Alignment.f8582a.getClass();
        return l(springSpecB, Alignment.Companion.f8590j, true, EnterExitTransitionKt$shrinkOut$1.f3606c);
    }

    public static ExitTransition n(FiniteAnimationSpec finiteAnimationSpec, Alignment.Vertical vertical, final Function1 function1, int i2) {
        if ((i2 & 1) != 0) {
            IntSize.Companion companion = IntSize.f11020b;
            Rect rect = VisibilityThresholdsKt.f4089a;
            finiteAnimationSpec = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntSize(4294967297L));
        }
        if ((i2 & 2) != 0) {
            Alignment.f8582a.getClass();
            vertical = Alignment.Companion.m;
        }
        if ((i2 & 8) != 0) {
            function1 = EnterExitTransitionKt$shrinkVertically$1.f3607c;
        }
        return l(finiteAnimationSpec, x(vertical), true, new Function1<IntSize, IntSize>() { // from class: androidx.compose.animation.EnterExitTransitionKt$shrinkVertically$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                long j2 = ((IntSize) obj).f11021a;
                int i3 = (int) (j2 >> 32);
                return new IntSize((((long) ((Number) function1.invoke(Integer.valueOf((int) (j2 & BodyPartID.bodyIdMax)))).intValue()) & BodyPartID.bodyIdMax) | (((long) i3) << 32));
            }
        });
    }

    public static final EnterTransition o(final Function1 function1, FiniteAnimationSpec finiteAnimationSpec) {
        return new EnterTransitionImpl(new TransitionData(null, new Slide(new Function1<IntSize, IntOffset>() { // from class: androidx.compose.animation.EnterExitTransitionKt$slideInHorizontally$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return new IntOffset(((long) ((Number) function1.invoke(Integer.valueOf((int) (((IntSize) obj).f11021a >> 32)))).intValue()) << 32);
            }
        }, finiteAnimationSpec), null, null, null, false, null, 125, null));
    }

    public static EnterTransition p(Function1 function1) {
        IntOffset.Companion companion = IntOffset.f11012b;
        Rect rect = VisibilityThresholdsKt.f4089a;
        return o(function1, AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntOffset(4294967297L)));
    }

    public static final EnterTransition q(final Function1 function1, FiniteAnimationSpec finiteAnimationSpec) {
        return new EnterTransitionImpl(new TransitionData(null, new Slide(new Function1<IntSize, IntOffset>() { // from class: androidx.compose.animation.EnterExitTransitionKt$slideInVertically$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return new IntOffset(((long) ((Number) function1.invoke(Integer.valueOf((int) (((IntSize) obj).f11021a & BodyPartID.bodyIdMax)))).intValue()) & BodyPartID.bodyIdMax);
            }
        }, finiteAnimationSpec), null, null, null, false, null, 125, null));
    }

    public static EnterTransition r(Function1 function1) {
        IntOffset.Companion companion = IntOffset.f11012b;
        Rect rect = VisibilityThresholdsKt.f4089a;
        return q(function1, AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntOffset(4294967297L)));
    }

    public static final ExitTransition s(final Function1 function1, FiniteAnimationSpec finiteAnimationSpec) {
        return new ExitTransitionImpl(new TransitionData(null, new Slide(new Function1<IntSize, IntOffset>() { // from class: androidx.compose.animation.EnterExitTransitionKt$slideOutHorizontally$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return new IntOffset(((long) ((Number) function1.invoke(Integer.valueOf((int) (((IntSize) obj).f11021a >> 32)))).intValue()) << 32);
            }
        }, finiteAnimationSpec), null, null, null, false, null, 125, null));
    }

    public static ExitTransition t(Function1 function1) {
        IntOffset.Companion companion = IntOffset.f11012b;
        Rect rect = VisibilityThresholdsKt.f4089a;
        return s(function1, AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntOffset(4294967297L)));
    }

    public static final ExitTransition u(final Function1 function1, FiniteAnimationSpec finiteAnimationSpec) {
        return new ExitTransitionImpl(new TransitionData(null, new Slide(new Function1<IntSize, IntOffset>() { // from class: androidx.compose.animation.EnterExitTransitionKt$slideOutVertically$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return new IntOffset(((long) ((Number) function1.invoke(Integer.valueOf((int) (((IntSize) obj).f11021a & BodyPartID.bodyIdMax)))).intValue()) & BodyPartID.bodyIdMax);
            }
        }, finiteAnimationSpec), null, null, null, false, null, 125, null));
    }

    public static ExitTransition v(int i2, Function1 function1) {
        IntOffset.Companion companion = IntOffset.f11012b;
        Rect rect = VisibilityThresholdsKt.f4089a;
        SpringSpec springSpecB = AnimationSpecKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 400.0f, 1, new IntOffset(4294967297L));
        if ((i2 & 2) != 0) {
            function1 = EnterExitTransitionKt$slideOutVertically$1.f3612c;
        }
        return u(function1, springSpecB);
    }

    public static final BiasAlignment w(Alignment.Horizontal horizontal) {
        Alignment.f8582a.getClass();
        if (Intrinsics.c(horizontal, Alignment.Companion.n)) {
            return Alignment.Companion.f8586e;
        }
        return Intrinsics.c(horizontal, Alignment.Companion.p) ? Alignment.Companion.g : Alignment.Companion.f8587f;
    }

    public static final BiasAlignment x(Alignment.Vertical vertical) {
        Alignment.f8582a.getClass();
        if (Intrinsics.c(vertical, Alignment.Companion.f8591k)) {
            return Alignment.Companion.f8585c;
        }
        return Intrinsics.c(vertical, Alignment.Companion.m) ? Alignment.Companion.f8589i : Alignment.Companion.f8587f;
    }

    public static final EnterTransition y(Transition transition, EnterTransition enterTransition, Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean z = (((i2 & 14) ^ 6) > 4 && composer.K(transition)) || (i2 & 6) == 4;
        Object objX = composer.x();
        if (z || objX == Composer.Companion.f7939a) {
            objX = SnapshotStateKt.g(enterTransition);
            composer.q(objX);
        }
        MutableState mutableState = (MutableState) objX;
        TransitionState transitionState = transition.f3988a;
        SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) transition.d;
        if (transitionState.a() == snapshotMutableStateImpl.getF10755b() && transition.f3988a.a() == EnterExitState.Visible) {
            if (transition.i()) {
                mutableState.setValue(enterTransition);
            } else {
                EnterTransition.f3626a.getClass();
                mutableState.setValue(EnterTransition.f3627b);
            }
        } else if (snapshotMutableStateImpl.getF10755b() == EnterExitState.Visible) {
            mutableState.setValue(((EnterTransition) mutableState.getF10755b()).b(enterTransition));
        }
        return (EnterTransition) mutableState.getF10755b();
    }

    public static final ExitTransition z(Transition transition, ExitTransition exitTransition, Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean z = (((i2 & 14) ^ 6) > 4 && composer.K(transition)) || (i2 & 6) == 4;
        Object objX = composer.x();
        if (z || objX == Composer.Companion.f7939a) {
            objX = SnapshotStateKt.g(exitTransition);
            composer.q(objX);
        }
        MutableState mutableState = (MutableState) objX;
        TransitionState transitionState = transition.f3988a;
        SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) transition.d;
        if (transitionState.a() == snapshotMutableStateImpl.getF10755b() && transition.f3988a.a() == EnterExitState.Visible) {
            if (transition.i()) {
                mutableState.setValue(exitTransition);
            } else {
                ExitTransition.f3629a.getClass();
                mutableState.setValue(ExitTransition.f3630b);
            }
        } else if (snapshotMutableStateImpl.getF10755b() != EnterExitState.Visible) {
            mutableState.setValue(((ExitTransition) mutableState.getF10755b()).b(exitTransition));
        }
        return (ExitTransition) mutableState.getF10755b();
    }
}
