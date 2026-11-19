package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.internal.AnchoredDraggableKt;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.material3.internal.AnchoredDraggableState$draggableState$1;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.ScrimTokens;
import androidx.compose.material3.tokens.SheetBottomTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.util.MathHelpersKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import defpackage.ba0;
import defpackage.cd0;
import defpackage.eh;
import defpackage.fc;
import defpackage.ih;
import defpackage.k60;
import defpackage.kg;
import defpackage.lt;
import defpackage.n00;
import defpackage.s1;
import defpackage.sa;
import defpackage.t50;
import defpackage.w20;
import defpackage.y2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "alpha", "material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class ModalBottomSheetKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f7058a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f7059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final long f7060c;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7105a;

        static {
            int[] iArr = new int[SheetValue.values().length];
            try {
                iArr[SheetValue.Hidden.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SheetValue.PartiallyExpanded.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[SheetValue.Expanded.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f7105a = iArr;
        }
    }

    static {
        Dp.Companion companion = Dp.f11004c;
        f7058a = 48.0f;
        f7059b = 24.0f;
        f7060c = TransformOriginKt.a(0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
    }

    /* JADX WARN: Code duplicated, block: B:133:0x0207  */
    /* JADX WARN: Code duplicated, block: B:134:0x020a  */
    /* JADX WARN: Code duplicated, block: B:138:0x0214  */
    /* JADX WARN: Code duplicated, block: B:141:0x0224  */
    /* JADX WARN: Code duplicated, block: B:148:0x023e  */
    /* JADX WARN: Code duplicated, block: B:150:0x0244 A[PHI: r36
      0x0244: PHI (r36v3 kotlin.jvm.functions.Function1) = (r36v1 kotlin.jvm.functions.Function1), (r36v4 kotlin.jvm.functions.Function1) binds: [B:149:0x0242, B:147:0x023b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:151:0x0247  */
    /* JADX WARN: Code duplicated, block: B:154:0x0257  */
    /* JADX WARN: Code duplicated, block: B:155:0x025a  */
    /* JADX WARN: Code duplicated, block: B:158:0x0262 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:159:0x0264  */
    /* JADX WARN: Code duplicated, block: B:162:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:164:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:166:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:172:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:174:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:176:0x02f7  */
    public static final void a(final Function0 function0, Modifier modifier, SheetState sheetState, float f2, boolean z, Shape shape, final long j2, long j3, long j4, final Function2 function2, final Function2 function3, final ModalBottomSheetProperties modalBottomSheetProperties, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2, final int i3) {
        int i4;
        int i5;
        Modifier modifier2;
        SheetState sheetState2;
        GapComposer gapComposer;
        final float f3;
        final boolean z2;
        final Shape shape2;
        final long j5;
        final long j6;
        float f4;
        final long jB;
        int i6;
        long jB2;
        final Shape shape3;
        boolean z3;
        Object ehVar;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        final SheetState sheetState3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        Object objX;
        Function1 function1;
        Object objX2;
        final Animatable animatable;
        Function1 function4;
        boolean z8;
        boolean z9;
        boolean z10;
        Object objX3;
        int i7;
        boolean z11;
        Object objX4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ModalBottomSheet-YbuCTN8");
        }
        GapComposer gapComposerH = composer.h(1904798512);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(modifierE) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(sheetState) ? 256 : 128;
        }
        int i8 = i4 | 27648;
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i8 = 93184 | i4;
        }
        if ((1572864 & i2) == 0) {
            i8 |= gapComposerH.e(j2) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i8 |= 4194304;
        }
        int i9 = 100663296 | i8;
        if ((i2 & 805306368) == 0) {
            i9 = 369098752 | i8;
        }
        if ((i3 & 6) == 0) {
            i5 = (gapComposerH.y(function2) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.y(function3) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.K(modalBottomSheetProperties) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i5 |= gapComposerH.y(composableLambdaImpl) ? 2048 : 1024;
        }
        if (gapComposerH.p(i9 & 1, ((i9 & 306783379) == 306783378 && (i5 & 1171) == 1170) ? false : true)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                f4 = BottomSheetDefaults.f6577c;
                BottomSheetDefaults bottomSheetDefaults = BottomSheetDefaults.f6575a;
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Shape shapeA = ShapesKt.a(SheetBottomTokens.f7849a, gapComposerH);
                jB = ColorSchemeKt.b(j2, gapComposerH);
                Dp.Companion companion = Dp.f11004c;
                i6 = i9 & (-1908867073);
                jB2 = Color.b(0.32f, ColorSchemeKt.d(ScrimTokens.f7839a, gapComposerH));
                shape3 = shapeA;
                z3 = true;
            } else {
                gapComposerH.D();
                i6 = i9 & (-1908867073);
                f4 = f2;
                z3 = z;
                shape3 = shape;
                jB = j3;
                jB2 = j4;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            MotionSchemeKeyTokens motionSchemeKeyTokens = MotionSchemeKeyTokens.DefaultSpatial;
            FiniteAnimationSpec finiteAnimationSpecA = MotionSchemeKt.a(motionSchemeKeyTokens, gapComposerH);
            FiniteAnimationSpec finiteAnimationSpecA2 = MotionSchemeKt.a(motionSchemeKeyTokens, gapComposerH);
            FiniteAnimationSpec finiteAnimationSpecA3 = MotionSchemeKt.a(MotionSchemeKeyTokens.FastEffects, gapComposerH);
            int i10 = (i6 & 896) ^ KyberEngine.KyberPolyBytes;
            final Modifier modifier3 = modifierE;
            boolean zY = ((i10 > 256 && gapComposerH.K(sheetState)) || (i6 & KyberEngine.KyberPolyBytes) == 256) | gapComposerH.y(finiteAnimationSpecA2) | gapComposerH.y(finiteAnimationSpecA3) | gapComposerH.y(finiteAnimationSpecA);
            Object objX5 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (zY || objX5 == composer$Companion$Empty$2) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                sheetState3 = sheetState;
                ehVar = new eh(sheetState3, finiteAnimationSpecA2, finiteAnimationSpecA3, finiteAnimationSpecA, 1);
                gapComposerH.q(ehVar);
            } else {
                ehVar = objX5;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                sheetState3 = sheetState;
            }
            EffectsKt.i((Function0) ehVar, gapComposerH);
            Object objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX6);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) objX6;
            int i11 = i6 & 14;
            boolean zY2 = gapComposerH.y(coroutineScope) | ((r21 > 256 && gapComposerH.K(sheetState3)) || (i6 & KyberEngine.KyberPolyBytes) == 256) | (i11 == 4);
            Object objX7 = gapComposerH.x();
            if (zY2 || objX7 == composer$Companion$Empty$1) {
                objX7 = new l(sheetState3, coroutineScope, function0, 0);
                gapComposerH.q(objX7);
            }
            final Function0 function5 = (Function0) objX7;
            boolean zY3 = gapComposerH.y(coroutineScope);
            if (r21 <= 256 || !gapComposerH.K(sheetState3)) {
                z4 = zY3;
                if ((i6 & KyberEngine.KyberPolyBytes) != 256) {
                    z5 = false;
                }
                boolean z12 = z4 | z5;
                if (i11 == 4) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = z12 | z6;
                objX = gapComposerH.x();
                if (z7 || objX == composer$Companion$Empty$1) {
                    objX = new Function1() { // from class: androidx.compose.material3.m
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            float fFloatValue = ((Float) obj).floatValue();
                            float f5 = ModalBottomSheetKt.f7058a;
                            SheetState sheetState4 = sheetState3;
                            BuildersKt.c(coroutineScope, null, null, new ModalBottomSheetKt$ModalBottomSheet$settleToDismiss$1$1$1(sheetState4, fFloatValue, null), 3).invokeOnCompletion(new cd0(sheetState4, function0, 1));
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX);
                }
                function1 = (Function1) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = AnimatableKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                    gapComposerH.q(objX2);
                }
                animatable = (Animatable) objX2;
                if (r21 > 256 || !gapComposerH.K(sheetState3)) {
                    function4 = function1;
                    if ((i6 & KyberEngine.KyberPolyBytes) != 256) {
                        z8 = false;
                    }
                    boolean zY4 = z8 | gapComposerH.y(coroutineScope) | gapComposerH.y(animatable);
                    if (i11 == 4) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    z10 = z9 | zY4;
                    objX3 = gapComposerH.x();
                    if (z10 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new Function0() { // from class: androidx.compose.material3.n
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                float f5 = ModalBottomSheetKt.f7058a;
                                SheetState sheetState4 = sheetState3;
                                SheetValue sheetValueC = sheetState4.c();
                                SheetValue sheetValue = SheetValue.Expanded;
                                CoroutineScope coroutineScope2 = coroutineScope;
                                if (sheetValueC == sheetValue && sheetState4.f7211e.e().d(SheetValue.PartiallyExpanded)) {
                                    BuildersKt.c(coroutineScope2, null, null, new ModalBottomSheetKt$ModalBottomSheet$3$1$1(animatable, null), 3);
                                    BuildersKt.c(coroutineScope2, null, null, new ModalBottomSheetKt$ModalBottomSheet$3$1$2(sheetState4, null), 3);
                                } else {
                                    BuildersKt.c(coroutineScope2, null, null, new ModalBottomSheetKt$ModalBottomSheet$3$1$3(sheetState4, null), 3).invokeOnCompletion(new y2(function0, 20));
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX3);
                    }
                    Function0 function6 = (Function0) objX3;
                    Composer$Companion$Empty$1 composer$Companion$Empty$3 = composer$Companion$Empty$1;
                    final Function1 function7 = function4;
                    final SheetState sheetState4 = sheetState3;
                    gapComposer = gapComposerH;
                    final float f5 = f4;
                    final boolean z13 = z3;
                    final long j7 = jB2;
                    i7 = i6;
                    Function2<Composer, Integer, Unit> function8 = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$4
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue = ((Number) obj2).intValue();
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                Modifier modifierA = WindowInsetsPadding_androidKt.a(SizeKt.f5052c);
                                Object objX8 = composer2.x();
                                if (objX8 == Composer.Companion.f7939a) {
                                    objX8 = new ba0(8);
                                    composer2.q(objX8);
                                }
                                Modifier modifierB = SemanticsModifierKt.b(modifierA, false, (Function1) objX8);
                                Alignment.f8582a.getClass();
                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                int iG = composer2.G();
                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                                ComposeUiNode.b0.getClass();
                                Function0 function9 = ComposeUiNode.Companion.f9641b;
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function9);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                Function2 function10 = ComposeUiNode.Companion.g;
                                if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                                    fc.A(function10, iG, composer2, iG);
                                }
                                Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                                SheetState sheetState5 = sheetState4;
                                boolean z14 = ((SheetValue) sheetState5.f7211e.f7521h.getF10755b()) != SheetValue.Hidden;
                                boolean z15 = modalBottomSheetProperties.f7108c;
                                long j8 = j7;
                                Function0 function11 = function5;
                                ModalBottomSheetKt.c(j8, function11, z14, z15, composer2, 0);
                                ModalBottomSheetKt.b(animatable, coroutineScope, function11, function7, modifier3, sheetState5, f5, z13, shape3, j2, jB, Call.Parameters.DEFAULT_CAMERA_ZOOM, function2, function3, composableLambdaImpl, composer2, 70);
                                composer2.r();
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    };
                    modifier2 = modifier3;
                    sheetState2 = sheetState4;
                    ModalBottomSheet_androidKt.a(function6, jB, modalBottomSheetProperties, animatable, ComposableLambdaKt.b(1010026864, function8, gapComposer), gapComposer, (i5 & 896) | 28672);
                    if (sheetState2.f7211e.e().d(SheetValue.Expanded)) {
                        gapComposer.L(748459762);
                        z11 = (i10 <= 256 && gapComposer.K(sheetState2)) || (i7 & KyberEngine.KyberPolyBytes) == 256;
                        objX4 = gapComposer.x();
                        if (z11 || objX4 == composer$Companion$Empty$3) {
                            objX4 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetState2, null);
                            gapComposer.q(objX4);
                        }
                        EffectsKt.e(gapComposer, sheetState2, (Function2) objX4);
                        gapComposer.Z(false);
                    } else {
                        gapComposer.L(748521266);
                        gapComposer.Z(false);
                    }
                    f3 = f5;
                    z2 = z13;
                    shape2 = shape3;
                    j6 = j7;
                    j5 = jB;
                } else {
                    function4 = function1;
                }
                z8 = true;
                boolean zY5 = z8 | gapComposerH.y(coroutineScope) | gapComposerH.y(animatable);
                if (i11 == 4) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                z10 = z9 | zY5;
                objX3 = gapComposerH.x();
                if (z10) {
                    objX3 = new Function0() { // from class: androidx.compose.material3.n
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            float f6 = ModalBottomSheetKt.f7058a;
                            SheetState sheetState5 = sheetState3;
                            SheetValue sheetValueC = sheetState5.c();
                            SheetValue sheetValue = SheetValue.Expanded;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            if (sheetValueC == sheetValue && sheetState5.f7211e.e().d(SheetValue.PartiallyExpanded)) {
                                BuildersKt.c(coroutineScope2, null, null, new ModalBottomSheetKt$ModalBottomSheet$3$1$1(animatable, null), 3);
                                BuildersKt.c(coroutineScope2, null, null, new ModalBottomSheetKt$ModalBottomSheet$3$1$2(sheetState5, null), 3);
                            } else {
                                BuildersKt.c(coroutineScope2, null, null, new ModalBottomSheetKt$ModalBottomSheet$3$1$3(sheetState5, null), 3).invokeOnCompletion(new y2(function0, 20));
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX3);
                } else {
                    objX3 = new Function0() { // from class: androidx.compose.material3.n
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            float f6 = ModalBottomSheetKt.f7058a;
                            SheetState sheetState5 = sheetState3;
                            SheetValue sheetValueC = sheetState5.c();
                            SheetValue sheetValue = SheetValue.Expanded;
                            CoroutineScope coroutineScope2 = coroutineScope;
                            if (sheetValueC == sheetValue && sheetState5.f7211e.e().d(SheetValue.PartiallyExpanded)) {
                                BuildersKt.c(coroutineScope2, null, null, new ModalBottomSheetKt$ModalBottomSheet$3$1$1(animatable, null), 3);
                                BuildersKt.c(coroutineScope2, null, null, new ModalBottomSheetKt$ModalBottomSheet$3$1$2(sheetState5, null), 3);
                            } else {
                                BuildersKt.c(coroutineScope2, null, null, new ModalBottomSheetKt$ModalBottomSheet$3$1$3(sheetState5, null), 3).invokeOnCompletion(new y2(function0, 20));
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX3);
                }
                Function0 function9 = (Function0) objX3;
                Composer$Companion$Empty$1 composer$Companion$Empty$4 = composer$Companion$Empty$1;
                final Function1 function10 = function4;
                final SheetState sheetState5 = sheetState3;
                gapComposer = gapComposerH;
                final float f6 = f4;
                final boolean z14 = z3;
                final long j8 = jB2;
                i7 = i6;
                Function2<Composer, Integer, Unit> function11 = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$4
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            Modifier modifierA = WindowInsetsPadding_androidKt.a(SizeKt.f5052c);
                            Object objX8 = composer2.x();
                            if (objX8 == Composer.Companion.f7939a) {
                                objX8 = new ba0(8);
                                composer2.q(objX8);
                            }
                            Modifier modifierB = SemanticsModifierKt.b(modifierA, false, (Function1) objX8);
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iG = composer2.G();
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                            ComposeUiNode.b0.getClass();
                            Function0 function12 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function12);
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
                            SheetState sheetState6 = sheetState5;
                            boolean z15 = ((SheetValue) sheetState6.f7211e.f7521h.getF10755b()) != SheetValue.Hidden;
                            boolean z16 = modalBottomSheetProperties.f7108c;
                            long j9 = j8;
                            Function0 function14 = function5;
                            ModalBottomSheetKt.c(j9, function14, z15, z16, composer2, 0);
                            ModalBottomSheetKt.b(animatable, coroutineScope, function14, function10, modifier3, sheetState6, f6, z14, shape3, j2, jB, Call.Parameters.DEFAULT_CAMERA_ZOOM, function2, function3, composableLambdaImpl, composer2, 70);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                };
                modifier2 = modifier3;
                sheetState2 = sheetState5;
                ModalBottomSheet_androidKt.a(function9, jB, modalBottomSheetProperties, animatable, ComposableLambdaKt.b(1010026864, function11, gapComposer), gapComposer, (i5 & 896) | 28672);
                if (sheetState2.f7211e.e().d(SheetValue.Expanded)) {
                    gapComposer.L(748459762);
                    if (i10 <= 256) {
                    }
                    objX4 = gapComposer.x();
                    if (z11) {
                        objX4 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetState2, null);
                        gapComposer.q(objX4);
                    } else {
                        objX4 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetState2, null);
                        gapComposer.q(objX4);
                    }
                    EffectsKt.e(gapComposer, sheetState2, (Function2) objX4);
                    gapComposer.Z(false);
                } else {
                    gapComposer.L(748521266);
                    gapComposer.Z(false);
                }
                f3 = f6;
                z2 = z14;
                shape2 = shape3;
                j6 = j8;
                j5 = jB;
            } else {
                z4 = zY3;
            }
            z5 = true;
            boolean z15 = z4 | z5;
            if (i11 == 4) {
                z6 = true;
            } else {
                z6 = false;
            }
            z7 = z15 | z6;
            objX = gapComposerH.x();
            if (z7) {
                objX = new Function1() { // from class: androidx.compose.material3.m
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        float fFloatValue = ((Float) obj).floatValue();
                        float f7 = ModalBottomSheetKt.f7058a;
                        SheetState sheetState6 = sheetState3;
                        BuildersKt.c(coroutineScope, null, null, new ModalBottomSheetKt$ModalBottomSheet$settleToDismiss$1$1$1(sheetState6, fFloatValue, null), 3).invokeOnCompletion(new cd0(sheetState6, function0, 1));
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX);
            } else {
                objX = new Function1() { // from class: androidx.compose.material3.m
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        float fFloatValue = ((Float) obj).floatValue();
                        float f7 = ModalBottomSheetKt.f7058a;
                        SheetState sheetState6 = sheetState3;
                        BuildersKt.c(coroutineScope, null, null, new ModalBottomSheetKt$ModalBottomSheet$settleToDismiss$1$1$1(sheetState6, fFloatValue, null), 3).invokeOnCompletion(new cd0(sheetState6, function0, 1));
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX);
            }
            function1 = (Function1) objX;
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = AnimatableKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                gapComposerH.q(objX2);
            }
            animatable = (Animatable) objX2;
            if (r21 > 256) {
                function4 = function1;
                if ((i6 & KyberEngine.KyberPolyBytes) != 256) {
                    z8 = true;
                } else {
                    z8 = false;
                }
            } else {
                function4 = function1;
                if ((i6 & KyberEngine.KyberPolyBytes) != 256) {
                    z8 = true;
                } else {
                    z8 = false;
                }
            }
            boolean zY6 = z8 | gapComposerH.y(coroutineScope) | gapComposerH.y(animatable);
            if (i11 == 4) {
                z9 = true;
            } else {
                z9 = false;
            }
            z10 = z9 | zY6;
            objX3 = gapComposerH.x();
            if (z10) {
                objX3 = new Function0() { // from class: androidx.compose.material3.n
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        float f7 = ModalBottomSheetKt.f7058a;
                        SheetState sheetState6 = sheetState3;
                        SheetValue sheetValueC = sheetState6.c();
                        SheetValue sheetValue = SheetValue.Expanded;
                        CoroutineScope coroutineScope2 = coroutineScope;
                        if (sheetValueC == sheetValue && sheetState6.f7211e.e().d(SheetValue.PartiallyExpanded)) {
                            BuildersKt.c(coroutineScope2, null, null, new ModalBottomSheetKt$ModalBottomSheet$3$1$1(animatable, null), 3);
                            BuildersKt.c(coroutineScope2, null, null, new ModalBottomSheetKt$ModalBottomSheet$3$1$2(sheetState6, null), 3);
                        } else {
                            BuildersKt.c(coroutineScope2, null, null, new ModalBottomSheetKt$ModalBottomSheet$3$1$3(sheetState6, null), 3).invokeOnCompletion(new y2(function0, 20));
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX3);
            } else {
                objX3 = new Function0() { // from class: androidx.compose.material3.n
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        float f7 = ModalBottomSheetKt.f7058a;
                        SheetState sheetState6 = sheetState3;
                        SheetValue sheetValueC = sheetState6.c();
                        SheetValue sheetValue = SheetValue.Expanded;
                        CoroutineScope coroutineScope2 = coroutineScope;
                        if (sheetValueC == sheetValue && sheetState6.f7211e.e().d(SheetValue.PartiallyExpanded)) {
                            BuildersKt.c(coroutineScope2, null, null, new ModalBottomSheetKt$ModalBottomSheet$3$1$1(animatable, null), 3);
                            BuildersKt.c(coroutineScope2, null, null, new ModalBottomSheetKt$ModalBottomSheet$3$1$2(sheetState6, null), 3);
                        } else {
                            BuildersKt.c(coroutineScope2, null, null, new ModalBottomSheetKt$ModalBottomSheet$3$1$3(sheetState6, null), 3).invokeOnCompletion(new y2(function0, 20));
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX3);
            }
            Function0 function12 = (Function0) objX3;
            Composer$Companion$Empty$1 composer$Companion$Empty$5 = composer$Companion$Empty$1;
            final Function1 function13 = function4;
            final SheetState sheetState6 = sheetState3;
            gapComposer = gapComposerH;
            final float f7 = f4;
            final boolean z16 = z3;
            final long j9 = jB2;
            i7 = i6;
            Function2<Composer, Integer, Unit> function14 = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheet$4
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        Modifier modifierA = WindowInsetsPadding_androidKt.a(SizeKt.f5052c);
                        Object objX8 = composer2.x();
                        if (objX8 == Composer.Companion.f7939a) {
                            objX8 = new ba0(8);
                            composer2.q(objX8);
                        }
                        Modifier modifierB = SemanticsModifierKt.b(modifierA, false, (Function1) objX8);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iG = composer2.G();
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                        ComposeUiNode.b0.getClass();
                        Function0 function15 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function15);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Function2 function16 = ComposeUiNode.Companion.g;
                        if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                            fc.A(function16, iG, composer2, iG);
                        }
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        SheetState sheetState7 = sheetState6;
                        boolean z17 = ((SheetValue) sheetState7.f7211e.f7521h.getF10755b()) != SheetValue.Hidden;
                        boolean z18 = modalBottomSheetProperties.f7108c;
                        long j10 = j9;
                        Function0 function17 = function5;
                        ModalBottomSheetKt.c(j10, function17, z17, z18, composer2, 0);
                        ModalBottomSheetKt.b(animatable, coroutineScope, function17, function13, modifier3, sheetState7, f7, z16, shape3, j2, jB, Call.Parameters.DEFAULT_CAMERA_ZOOM, function2, function3, composableLambdaImpl, composer2, 70);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            };
            modifier2 = modifier3;
            sheetState2 = sheetState6;
            ModalBottomSheet_androidKt.a(function12, jB, modalBottomSheetProperties, animatable, ComposableLambdaKt.b(1010026864, function14, gapComposer), gapComposer, (i5 & 896) | 28672);
            if (sheetState2.f7211e.e().d(SheetValue.Expanded)) {
                gapComposer.L(748459762);
                if (i10 <= 256) {
                }
                objX4 = gapComposer.x();
                if (z11) {
                    objX4 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetState2, null);
                    gapComposer.q(objX4);
                } else {
                    objX4 = new ModalBottomSheetKt$ModalBottomSheet$5$1(sheetState2, null);
                    gapComposer.q(objX4);
                }
                EffectsKt.e(gapComposer, sheetState2, (Function2) objX4);
                gapComposer.Z(false);
            } else {
                gapComposer.L(748521266);
                gapComposer.Z(false);
            }
            f3 = f7;
            z2 = z16;
            shape2 = shape3;
            j6 = j9;
            j5 = jB;
        } else {
            modifier2 = modifierE;
            sheetState2 = sheetState;
            gapComposer = gapComposerH;
            gapComposer.D();
            f3 = f2;
            z2 = z;
            shape2 = shape;
            j5 = j3;
            j6 = j4;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final SheetState sheetState7 = sheetState2;
            final Modifier modifier4 = modifier2;
            recomposeScopeImplB0.d = new Function2() { // from class: bd0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    ModalBottomSheetKt.a(function0, modifier4, sheetState7, f3, z2, shape2, j2, j5, j6, function2, function3, modalBottomSheetProperties, composableLambdaImpl, (Composer) obj, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:108:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:114:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:117:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:118:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:121:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:122:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:126:0x0202  */
    /* JADX WARN: Code duplicated, block: B:130:0x0229  */
    /* JADX WARN: Code duplicated, block: B:133:0x0245  */
    /* JADX WARN: Code duplicated, block: B:148:0x0271  */
    /* JADX WARN: Code duplicated, block: B:152:0x027d  */
    public static final void b(final Animatable animatable, final CoroutineScope coroutineScope, final Function0 function0, final Function1 function1, Modifier modifier, final SheetState sheetState, final float f2, final boolean z, final Shape shape, final long j2, final long j3, final float f3, final Function2 function2, final Function2 function3, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2) {
        Modifier modifier2;
        GapComposer gapComposer;
        Modifier modifierJ;
        boolean z2;
        Object objX;
        boolean z3;
        boolean z4;
        boolean z5;
        Object objX2;
        boolean zK;
        Object objX3;
        int iA;
        boolean z6;
        boolean z7;
        Object objX4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ModalBottomSheetContent-7---e2Q");
        }
        Modifier modifier3 = modifierE;
        GapComposer gapComposerH = composer.h(-37400432);
        int i3 = i2 | (gapComposerH.y(animatable) ? 32 : 16) | (gapComposerH.y(coroutineScope) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.K(modifier3) ? 131072 : 65536) | (gapComposerH.K(sheetState) ? 1048576 : 524288) | (gapComposerH.c(f2) ? 8388608 : 4194304) | (gapComposerH.b(z) ? 67108864 : 33554432) | (gapComposerH.K(shape) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i4 = (gapComposerH.e(j2) ? 4 : 2) | (gapComposerH.e(j3) ? 32 : 16) | (gapComposerH.c(f3) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192) | (gapComposerH.y(composableLambdaImpl) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (i4 & 74899) == 74898) ? false : true)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i5 = Strings.f7646a;
            String strA = Strings_androidKt.a(gapComposerH, R.string.m3c_bottom_sheet_pane_title);
            Alignment.f8582a.getClass();
            Modifier modifierD = SizeKt.d(SizeKt.u(BoxScopeInstance.f4938a.g(modifier3, Alignment.Companion.f8585c), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1), 1.0f);
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -1582035383, "ModalBottomSheetContent-7---e2Q");
                boolean z8 = (((i3 & 3670016) ^ 1572864) > 1048576 && gapComposerH.K(sheetState)) || (i3 & 1572864) == 1048576;
                Object objX5 = gapComposerH.x();
                if (z8 || objX5 == composer$Companion$Empty$1) {
                    Orientation orientation = Orientation.Vertical;
                    float f4 = SheetDefaultsKt.f7201a;
                    objX5 = new SheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1(sheetState, function1, orientation);
                    gapComposerH.q(objX5);
                }
                modifierJ = NestedScrollModifierKt.a(dTFunctionNameModifierI, (NestedScrollConnection) objX5, null);
                gapComposerH.Z(false);
            } else {
                modifierJ = n00.j(gapComposerH, -1582020872, false, "ModalBottomSheetContent-7---e2Q");
            }
            Modifier modifierO = modifierD.o(modifierJ);
            AnchoredDraggableState anchoredDraggableState = sheetState.f7211e;
            AnchoredDraggableState anchoredDraggableState2 = sheetState.f7211e;
            Orientation orientation2 = Orientation.Vertical;
            int i6 = (i3 & 3670016) ^ 1572864;
            if (i6 <= 1048576 || !gapComposerH.K(sheetState)) {
                modifier2 = modifier3;
                if ((i3 & 1572864) != 1048576) {
                    z2 = false;
                }
                objX = gapComposerH.x();
                if (z2 || objX == composer$Companion$Empty$1) {
                    objX = new w20(sheetState, 11);
                    gapComposerH.q(objX);
                }
                Modifier modifierD2 = AnchoredDraggableKt.d(modifierO, anchoredDraggableState, orientation2, (Function2) objX);
                AnchoredDraggableState$draggableState$1 anchoredDraggableState$draggableState$1 = anchoredDraggableState2.f7520f;
                if (z || !sheetState.e()) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (((SnapshotMutableStateImpl) anchoredDraggableState2.m).getF10755b() != null) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if ((i3 & 57344) == 16384) {
                    z5 = true;
                } else {
                    z5 = false;
                }
                objX2 = gapComposerH.x();
                if (z5 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(null, function1);
                    gapComposerH.q(objX2);
                }
                Modifier modifierA = DraggableKt.a(modifierD2, anchoredDraggableState$draggableState$1, orientation2, z3, null, z4, (Function3) objX2, false, 168);
                zK = gapComposerH.K(strA);
                objX3 = gapComposerH.x();
                if (zK || objX3 == composer$Companion$Empty$1) {
                    objX3 = new lt(strA, 22);
                    gapComposerH.q(objX3);
                }
                Modifier modifierB = SemanticsModifierKt.b(modifierA, false, (Function1) objX3);
                iA = (int) ((SnapshotMutableFloatStateImpl) anchoredDraggableState2.f7523j).a();
                if (iA < 0) {
                    iA = 0;
                }
                Modifier modifierB2 = WindowInsetsPaddingKt.b(modifierB, WindowInsetsKt.b(iA, 13));
                boolean z9 = (i6 <= 1048576 && gapComposerH.K(sheetState)) || (i3 & 1572864) == 1048576;
                if ((i3 & 112) != 32 || gapComposerH.y(animatable)) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                z7 = z9 | z6;
                objX4 = gapComposerH.x();
                if (z7 || objX4 == composer$Companion$Empty$1) {
                    objX4 = new k60(sheetState, animatable, 10);
                    gapComposerH.q(objX4);
                }
                int i7 = i4 << 6;
                int i8 = ((i3 >> 24) & 112) | 12582912 | (i7 & 896) | (i7 & 7168) | (i7 & 57344);
                gapComposer = gapComposerH;
                SurfaceKt.a(GraphicsLayerModifierKt.a(GraphicsLayerModifierKt.a(modifierB2, (Function1) objX4), new ih(sheetState, 0)), shape, j2, j3, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(728743275, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7
                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                     */
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        int i9 = 1;
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            Modifier modifierD3 = WindowInsetsPaddingKt.d(SizeKt.d(Modifier.Companion.f8607b, 1.0f), (WindowInsets) function3.invoke(composer2, 0));
                            Animatable animatable2 = animatable;
                            boolean zY = composer2.y(animatable2);
                            Object objX6 = composer2.x();
                            if (zY || objX6 == Composer.Companion.f7939a) {
                                objX6 = new sa(animatable2, i9);
                                composer2.q(objX6);
                            }
                            Modifier modifierA2 = GraphicsLayerModifierKt.a(modifierD3, (Function1) objX6);
                            final SheetState sheetState2 = sheetState;
                            Modifier modifierA3 = GraphicsLayerModifierKt.a(modifierA2, new ih(sheetState2, 1));
                            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                            Alignment.f8582a.getClass();
                            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                            int iG = composer2.G();
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, modifierA3);
                            ComposeUiNode.b0.getClass();
                            Function0 function4 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function4);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Function2 function5 = ComposeUiNode.Companion.g;
                            if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                                fc.A(function5, iG, composer2, iG);
                            }
                            Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                            final Function2 function6 = function2;
                            if (function6 != null) {
                                composer2.L(1352934765);
                                int i10 = Strings.f7646a;
                                final String strA2 = Strings_androidKt.a(composer2, R.string.m3c_bottom_sheet_collapse_description);
                                final String strA3 = Strings_androidKt.a(composer2, R.string.m3c_bottom_sheet_dismiss_description);
                                final String strA4 = Strings_androidKt.a(composer2, R.string.m3c_bottom_sheet_expand_description);
                                final Function0 function7 = function0;
                                final CoroutineScope coroutineScope2 = coroutineScope;
                                final boolean z10 = z;
                                SheetDefaultsKt.a(ComposableLambdaKt.b(2000500644, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1

                                    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                                    public /* synthetic */ class WhenMappings {

                                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                                        public static final /* synthetic */ int[] f7103a;

                                        static {
                                            int[] iArr = new int[SheetValue.values().length];
                                            try {
                                                iArr[SheetValue.Expanded.ordinal()] = 1;
                                            } catch (NoSuchFieldError unused) {
                                            }
                                            try {
                                                iArr[SheetValue.PartiallyExpanded.ordinal()] = 2;
                                            } catch (NoSuchFieldError unused2) {
                                            }
                                            f7103a = iArr;
                                        }
                                    }

                                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                                     */
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj3, Object obj4) {
                                        Composer composer3 = (Composer) obj3;
                                        int iIntValue2 = ((Number) obj4).intValue();
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                            SheetState sheetState3 = sheetState2;
                                            boolean zK2 = composer3.K(sheetState3);
                                            Function0 function8 = function7;
                                            boolean zK3 = zK2 | composer3.K(function8);
                                            CoroutineScope coroutineScope3 = coroutineScope2;
                                            boolean zY2 = zK3 | composer3.y(coroutineScope3);
                                            Object objX7 = composer3.x();
                                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                            if (zY2 || objX7 == composer$Companion$Empty$2) {
                                                objX7 = new l(sheetState3, function8, coroutineScope3);
                                                composer3.q(objX7);
                                            }
                                            Modifier modifierC2 = ClickableKt.c((Function0) objX7);
                                            boolean zK4 = composer3.K(function8) | composer3.b(z10) | composer3.K(sheetState3) | composer3.K(strA3) | composer3.K(strA4) | composer3.y(coroutineScope3) | composer3.K(strA2);
                                            Object objX8 = composer3.x();
                                            if (zK4 || objX8 == composer$Companion$Empty$2) {
                                                kg kgVar = new kg(z10, sheetState3, strA3, strA4, strA2, function7, coroutineScope2);
                                                composer3.q(kgVar);
                                                objX8 = kgVar;
                                            }
                                            Modifier modifierB3 = SemanticsModifierKt.b(modifierC2, true, (Function1) objX8);
                                            Alignment.f8582a.getClass();
                                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                            int iG2 = composer3.G();
                                            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                                            Modifier modifierC3 = ComposedModifierKt.c(composer3, modifierB3);
                                            ComposeUiNode.b0.getClass();
                                            Function0 function9 = ComposeUiNode.Companion.f9641b;
                                            if (composer3.getF7976a() == null) {
                                                ComposablesKt.b();
                                                throw null;
                                            }
                                            composer3.B();
                                            if (composer3.getS()) {
                                                composer3.C(function9);
                                            } else {
                                                composer3.o();
                                            }
                                            Updater.c(composer3, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                            Updater.c(composer3, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                                            Function2 function10 = ComposeUiNode.Companion.g;
                                            if (composer3.getS() || !Intrinsics.c(composer3.x(), Integer.valueOf(iG2))) {
                                                fc.A(function10, iG2, composer3, iG2);
                                            }
                                            Updater.c(composer3, modifierC3, ComposeUiNode.Companion.d);
                                            function6.invoke(composer3, 0);
                                            composer3.r();
                                        } else {
                                            composer3.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }, composer2), composer2, 54);
                                composer2.F();
                            } else {
                                composer2.L(1356009965);
                                composer2.F();
                            }
                            composableLambdaImpl.A(ColumnScopeInstance.f4944a, composer2, 6);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposer, i8, 96);
            } else {
                modifier2 = modifier3;
            }
            z2 = true;
            objX = gapComposerH.x();
            if (z2) {
                objX = new w20(sheetState, 11);
                gapComposerH.q(objX);
            } else {
                objX = new w20(sheetState, 11);
                gapComposerH.q(objX);
            }
            Modifier modifierD3 = AnchoredDraggableKt.d(modifierO, anchoredDraggableState, orientation2, (Function2) objX);
            AnchoredDraggableState$draggableState$1 anchoredDraggableState$draggableState$2 = anchoredDraggableState2.f7520f;
            if (z) {
                z3 = false;
            } else {
                z3 = false;
            }
            if (((SnapshotMutableStateImpl) anchoredDraggableState2.m).getF10755b() != null) {
                z4 = true;
            } else {
                z4 = false;
            }
            if ((i3 & 57344) == 16384) {
                z5 = true;
            } else {
                z5 = false;
            }
            objX2 = gapComposerH.x();
            if (z5) {
                objX2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(null, function1);
                gapComposerH.q(objX2);
            } else {
                objX2 = new ModalBottomSheetKt$ModalBottomSheetContent$4$1(null, function1);
                gapComposerH.q(objX2);
            }
            Modifier modifierA2 = DraggableKt.a(modifierD3, anchoredDraggableState$draggableState$2, orientation2, z3, null, z4, (Function3) objX2, false, 168);
            zK = gapComposerH.K(strA);
            objX3 = gapComposerH.x();
            if (zK) {
                objX3 = new lt(strA, 22);
                gapComposerH.q(objX3);
            } else {
                objX3 = new lt(strA, 22);
                gapComposerH.q(objX3);
            }
            Modifier modifierB3 = SemanticsModifierKt.b(modifierA2, false, (Function1) objX3);
            iA = (int) ((SnapshotMutableFloatStateImpl) anchoredDraggableState2.f7523j).a();
            if (iA < 0) {
                iA = 0;
            }
            Modifier modifierB4 = WindowInsetsPaddingKt.b(modifierB3, WindowInsetsKt.b(iA, 13));
            if (i6 <= 1048576) {
            }
            if ((i3 & 112) != 32) {
                z6 = true;
            } else {
                z6 = true;
            }
            z7 = z9 | z6;
            objX4 = gapComposerH.x();
            if (z7) {
                objX4 = new k60(sheetState, animatable, 10);
                gapComposerH.q(objX4);
            } else {
                objX4 = new k60(sheetState, animatable, 10);
                gapComposerH.q(objX4);
            }
            int i9 = i4 << 6;
            int i10 = ((i3 >> 24) & 112) | 12582912 | (i9 & 896) | (i9 & 7168) | (i9 & 57344);
            gapComposer = gapComposerH;
            SurfaceKt.a(GraphicsLayerModifierKt.a(GraphicsLayerModifierKt.a(modifierB4, (Function1) objX4), new ih(sheetState, 0)), shape, j2, j3, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(728743275, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7
                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                 */
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    int i11 = 1;
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierD4 = WindowInsetsPaddingKt.d(SizeKt.d(Modifier.Companion.f8607b, 1.0f), (WindowInsets) function3.invoke(composer2, 0));
                        Animatable animatable2 = animatable;
                        boolean zY = composer2.y(animatable2);
                        Object objX6 = composer2.x();
                        if (zY || objX6 == Composer.Companion.f7939a) {
                            objX6 = new sa(animatable2, i11);
                            composer2.q(objX6);
                        }
                        Modifier modifierA3 = GraphicsLayerModifierKt.a(modifierD4, (Function1) objX6);
                        final SheetState sheetState2 = sheetState;
                        Modifier modifierA4 = GraphicsLayerModifierKt.a(modifierA3, new ih(sheetState2, 1));
                        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                        int iG = composer2.G();
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierA4);
                        ComposeUiNode.b0.getClass();
                        Function0 function4 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function4);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Function2 function5 = ComposeUiNode.Companion.g;
                        if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                            fc.A(function5, iG, composer2, iG);
                        }
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        final Function2 function6 = function2;
                        if (function6 != null) {
                            composer2.L(1352934765);
                            int i12 = Strings.f7646a;
                            final String strA2 = Strings_androidKt.a(composer2, R.string.m3c_bottom_sheet_collapse_description);
                            final String strA3 = Strings_androidKt.a(composer2, R.string.m3c_bottom_sheet_dismiss_description);
                            final String strA4 = Strings_androidKt.a(composer2, R.string.m3c_bottom_sheet_expand_description);
                            final Function0 function7 = function0;
                            final CoroutineScope coroutineScope2 = coroutineScope;
                            final boolean z10 = z;
                            SheetDefaultsKt.a(ComposableLambdaKt.b(2000500644, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetKt$ModalBottomSheetContent$7$2$1

                                @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                                public /* synthetic */ class WhenMappings {

                                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                                    public static final /* synthetic */ int[] f7103a;

                                    static {
                                        int[] iArr = new int[SheetValue.values().length];
                                        try {
                                            iArr[SheetValue.Expanded.ordinal()] = 1;
                                        } catch (NoSuchFieldError unused) {
                                        }
                                        try {
                                            iArr[SheetValue.PartiallyExpanded.ordinal()] = 2;
                                        } catch (NoSuchFieldError unused2) {
                                        }
                                        f7103a = iArr;
                                    }
                                }

                                /* JADX WARN: Type inference fix 'apply assigned field type' failed
                                java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                                	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                                	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                                	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                                	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                                 */
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Number) obj4).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        SheetState sheetState3 = sheetState2;
                                        boolean zK2 = composer3.K(sheetState3);
                                        Function0 function8 = function7;
                                        boolean zK3 = zK2 | composer3.K(function8);
                                        CoroutineScope coroutineScope3 = coroutineScope2;
                                        boolean zY2 = zK3 | composer3.y(coroutineScope3);
                                        Object objX7 = composer3.x();
                                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                        if (zY2 || objX7 == composer$Companion$Empty$2) {
                                            objX7 = new l(sheetState3, function8, coroutineScope3);
                                            composer3.q(objX7);
                                        }
                                        Modifier modifierC2 = ClickableKt.c((Function0) objX7);
                                        boolean zK4 = composer3.K(function8) | composer3.b(z10) | composer3.K(sheetState3) | composer3.K(strA3) | composer3.K(strA4) | composer3.y(coroutineScope3) | composer3.K(strA2);
                                        Object objX8 = composer3.x();
                                        if (zK4 || objX8 == composer$Companion$Empty$2) {
                                            kg kgVar = new kg(z10, sheetState3, strA3, strA4, strA2, function7, coroutineScope2);
                                            composer3.q(kgVar);
                                            objX8 = kgVar;
                                        }
                                        Modifier modifierB5 = SemanticsModifierKt.b(modifierC2, true, (Function1) objX8);
                                        Alignment.f8582a.getClass();
                                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                        int iG2 = composer3.G();
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                                        Modifier modifierC3 = ComposedModifierKt.c(composer3, modifierB5);
                                        ComposeUiNode.b0.getClass();
                                        Function0 function9 = ComposeUiNode.Companion.f9641b;
                                        if (composer3.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer3.B();
                                        if (composer3.getS()) {
                                            composer3.C(function9);
                                        } else {
                                            composer3.o();
                                        }
                                        Updater.c(composer3, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                        Updater.c(composer3, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                                        Function2 function10 = ComposeUiNode.Companion.g;
                                        if (composer3.getS() || !Intrinsics.c(composer3.x(), Integer.valueOf(iG2))) {
                                            fc.A(function10, iG2, composer3, iG2);
                                        }
                                        Updater.c(composer3, modifierC3, ComposeUiNode.Companion.d);
                                        function6.invoke(composer3, 0);
                                        composer3.r();
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2), composer2, 54);
                            composer2.F();
                        } else {
                            composer2.L(1356009965);
                            composer2.F();
                        }
                        composableLambdaImpl.A(ColumnScopeInstance.f4944a, composer2, 6);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, i10, 96);
        } else {
            modifier2 = modifier3;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier4 = modifier2;
            recomposeScopeImplB0.d = new Function2(coroutineScope, function0, function1, modifier4, sheetState, f2, z, shape, j2, j3, f3, function2, function3, composableLambdaImpl, i2) { // from class: ad0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ CoroutineScope f482c;
                public final /* synthetic */ Function0 d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function1 f483e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Modifier f484f;
                public final /* synthetic */ SheetState g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ float f485h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ boolean f486i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Shape f487j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ long f488k;
                public final /* synthetic */ long l;
                public final /* synthetic */ float m;
                public final /* synthetic */ Function2 n;
                public final /* synthetic */ Function2 o;
                public final /* synthetic */ ComposableLambdaImpl p;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA2 = RecomposeScopeImplKt.a(71);
                    ModalBottomSheetKt.b(this.f481b, this.f482c, this.d, this.f483e, this.f484f, this.g, this.f485h, this.f486i, this.f487j, this.f488k, this.l, this.m, this.n, this.o, this.p, (Composer) obj, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void c(final long j2, final Function0 function0, final boolean z, final boolean z2, Composer composer, final int i2) {
        Modifier modifierJ;
        GapComposer gapComposerH = composer.h(-391613911);
        int i3 = 2;
        int i4 = i2 | (gapComposerH.e(j2) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.b(z2) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (j2 != 16) {
                gapComposerH.L(-1438582326);
                boolean z3 = true;
                State stateB = AnimateAsStateKt.b(z ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM, MotionSchemeKt.a(MotionSchemeKeyTokens.DefaultEffects, gapComposerH), null, gapComposerH, 0, 28);
                int i5 = Strings.f7646a;
                String strA = Strings_androidKt.a(gapComposerH, R.string.close_sheet);
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (z2) {
                    DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -1438283579, "Scrim-KTwxG1Y");
                    int i6 = i4 & 112;
                    boolean z4 = i6 == 32;
                    Object objX = gapComposerH.x();
                    if (z4 || objX == composer$Companion$Empty$1) {
                        objX = new PointerInputEventHandler() { // from class: androidx.compose.material3.ModalBottomSheetKt$Scrim$dismissSheet$1$1
                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new y2(function0, 21), continuation, 7);
                                return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX);
                    }
                    Modifier modifierA = SuspendingPointerInputFilterKt.a(dTFunctionNameModifierI, function0, (PointerInputEventHandler) objX);
                    boolean zK = gapComposerH.K(strA) | (i6 == 32);
                    Object objX2 = gapComposerH.x();
                    if (zK || objX2 == composer$Companion$Empty$1) {
                        objX2 = new t50(i3, strA, function0);
                        gapComposerH.q(objX2);
                    }
                    z3 = true;
                    modifierJ = SemanticsModifierKt.b(modifierA, true, (Function1) objX2);
                    gapComposerH.Z(false);
                } else {
                    modifierJ = n00.j(gapComposerH, -1437857391, false, "Scrim-KTwxG1Y");
                }
                Modifier modifierO = new DTFunctionNameModifier("Scrim-KTwxG1Y").o(SizeKt.f5052c).o(modifierJ);
                if ((i4 & 14) != 4) {
                    z3 = false;
                }
                boolean zK2 = gapComposerH.K(stateB) | z3;
                Object objX3 = gapComposerH.x();
                if (zK2 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new s1(j2, stateB);
                    gapComposerH.q(objX3);
                }
                CanvasKt.a(modifierO, (Function1) objX3, gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1437676103);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(j2, function0, z, z2, i2) { // from class: zc0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ long f81596b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Function0 f81597c;
                public final /* synthetic */ boolean d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f81598e;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    ModalBottomSheetKt.c(this.f81596b, this.f81597c, this.d, this.f81598e, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final float d(GraphicsLayerScope graphicsLayerScope, float f2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (graphicsLayerScope.getS() >> 32));
        if (Float.isNaN(fIntBitsToFloat) || fIntBitsToFloat == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return 1.0f;
        }
        return 1.0f - (MathHelpersKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(graphicsLayerScope.u1(f7058a), fIntBitsToFloat), f2) / fIntBitsToFloat);
    }

    public static final float e(GraphicsLayerScope graphicsLayerScope, float f2) {
        float fIntBitsToFloat = Float.intBitsToFloat((int) (graphicsLayerScope.getS() & BodyPartID.bodyIdMax));
        if (Float.isNaN(fIntBitsToFloat) || fIntBitsToFloat == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return 1.0f;
        }
        return 1.0f - (MathHelpersKt.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(graphicsLayerScope.u1(f7059b), fIntBitsToFloat), f2) / fIntBitsToFloat);
    }

    public static final SheetState f(int i2, int i3, Composer composer, Function1 function1) {
        boolean z = (i3 & 1) == 0;
        if ((i3 & 2) != 0) {
            Object objX = composer.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new ba0(7);
                composer.q(objX);
            }
            function1 = (Function1) objX;
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return SheetDefaultsKt.b(z, function1, SheetValue.Hidden, false, composer, 384 | (i2 & 112), 56);
    }
}
