package androidx.compose.material3;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.BottomSheetScaffoldKt;
import androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1;
import androidx.compose.material3.BottomSheetScaffoldState;
import androidx.compose.material3.internal.AnchoredDraggableKt;
import androidx.compose.material3.internal.AnchoredDraggableState;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.material3.tokens.SheetBottomTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicy;
import androidx.compose.ui.layout.MultiContentMeasurePolicyImpl;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import defpackage.eh;
import defpackage.fc;
import defpackage.fh;
import defpackage.ih;
import defpackage.jh;
import defpackage.lh;
import defpackage.n00;
import defpackage.nh;
import defpackage.u1;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class BottomSheetScaffoldKt {

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6628a;

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
            f6628a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0162  */
    /* JADX WARN: Code duplicated, block: B:102:0x0166  */
    /* JADX WARN: Code duplicated, block: B:103:0x016e  */
    /* JADX WARN: Code duplicated, block: B:106:0x0176  */
    /* JADX WARN: Code duplicated, block: B:107:0x017f  */
    /* JADX WARN: Code duplicated, block: B:111:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:113:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:114:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:117:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:119:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:121:0x0248  */
    /* JADX WARN: Code duplicated, block: B:123:0x024c  */
    /* JADX WARN: Code duplicated, block: B:126:0x0268  */
    /* JADX WARN: Code duplicated, block: B:128:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:0x006d  */
    /* JADX WARN: Code duplicated, block: B:32:0x0070  */
    /* JADX WARN: Code duplicated, block: B:35:0x007c  */
    /* JADX WARN: Code duplicated, block: B:36:0x0082  */
    /* JADX WARN: Code duplicated, block: B:38:0x008a  */
    /* JADX WARN: Code duplicated, block: B:39:0x008d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0097  */
    /* JADX WARN: Code duplicated, block: B:45:0x009e  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:50:0x00af  */
    /* JADX WARN: Code duplicated, block: B:54:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:56:0x00be  */
    /* JADX WARN: Code duplicated, block: B:58:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:60:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:64:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:66:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:69:0x00e3 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:72:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:75:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:79:0x0107  */
    /* JADX WARN: Code duplicated, block: B:82:0x0110  */
    /* JADX WARN: Code duplicated, block: B:84:0x0117  */
    /* JADX WARN: Code duplicated, block: B:88:0x0137 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:89:0x0139  */
    /* JADX WARN: Code duplicated, block: B:90:0x013f  */
    /* JADX WARN: Code duplicated, block: B:93:0x0147  */
    /* JADX WARN: Code duplicated, block: B:94:0x0152  */
    /* JADX WARN: Code duplicated, block: B:97:0x015d  */
    /* JADX WARN: Code duplicated, block: B:99:0x0160  */
    public static final void a(final ComposableLambdaImpl composableLambdaImpl, Modifier modifier, final BottomSheetScaffoldState bottomSheetScaffoldState, final float f2, float f3, Shape shape, final long j2, long j3, float f4, final Function2 function2, boolean z, Function2 function3, Function3 function4, long j4, long j5, final ComposableLambdaImpl composableLambdaImpl2, Composer composer, final int i2, final int i3, final int i4) throws Throwable {
        int i5;
        Shape shape2;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z2;
        int i10;
        int i11;
        int i12;
        Modifier modifier2;
        int i13;
        int i14;
        int i15;
        boolean z3;
        GapComposer gapComposer;
        final float f5;
        final long j6;
        final float f6;
        final Function2 function5;
        final long j7;
        final boolean z4;
        final Shape shape3;
        final Modifier modifier3;
        final Function3 function6;
        final long j8;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        Shape shapeA;
        Function2 function7;
        Function3 function8;
        Throwable th;
        long j9;
        Modifier modifier4;
        long j10;
        float f7;
        Function2 function9;
        boolean z5;
        final Shape shape4;
        final float f8;
        final long j11;
        long j12;
        final Function2 function10;
        Modifier modifier5;
        long j13;
        MeasurePolicy measurePolicyD;
        int iG;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        float f9;
        Function0 function0;
        final boolean z6;
        Function2 function11;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "BottomSheetScaffold-sdMYb0k");
        }
        GapComposer gapComposerH = composer.h(920075480);
        int i16 = i4 & 2;
        if (i16 != 0) {
            i5 = i2 | 48;
        } else {
            i5 = i2 | (gapComposerH.K(modifierE) ? 32 : 16);
        }
        int i17 = i5 | (gapComposerH.K(bottomSheetScaffoldState) ? 256 : 128) | (gapComposerH.c(f2) ? 2048 : 1024) | 24576;
        if ((i4 & 32) == 0) {
            shape2 = shape;
            if (gapComposerH.K(shape2)) {
                i6 = 131072;
            }
            int i18 = i17 | i6;
            if (gapComposerH.e(j2)) {
                i7 = 1048576;
            } else {
                i7 = 524288;
            }
            i8 = i18 | i7 | 910163968;
            i9 = i4 & 2048;
            if (i9 != 0) {
                i11 = i3 | 48;
                z2 = z;
            } else {
                z2 = z;
                if (gapComposerH.b(z2)) {
                    i10 = 32;
                } else {
                    i10 = 16;
                }
                i11 = i3 | i10;
            }
            i12 = i4 & 4096;
            if (i12 != 0) {
                modifier2 = modifierE;
                if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
                    if (gapComposerH.y(function3)) {
                        i13 = 256;
                    } else {
                        i13 = 128;
                    }
                    i11 |= i13;
                }
                i14 = i4 & 8192;
                if (i14 != 0) {
                    i15 = i14;
                    if ((i3 & 3072) == 0) {
                        i11 |= gapComposerH.y(function4) ? 2048 : 1024;
                    }
                    if ((i3 & 24576) != 0) {
                        i11 |= ((i4 & 16384) == 0 || !gapComposerH.e(j4)) ? 8192 : 16384;
                    }
                    int i19 = i11 | 65536;
                    if ((i8 & 306783379) == 306783378 || (599187 & i19) != 599186) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (gapComposerH.p(i8 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i2 & 1) != 0 || gapComposerH.h0()) {
                            if (i16 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("BottomSheetScaffold-sdMYb0k");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            float f10 = BottomSheetDefaults.f6577c;
                            if ((i4 & 32) != 0) {
                                BottomSheetDefaults bottomSheetDefaults = BottomSheetDefaults.f6575a;
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                shapeA = ShapesKt.a(SheetBottomTokens.f7849a, gapComposerH);
                            } else {
                                shapeA = shape2;
                            }
                            long jB = ColorSchemeKt.b(j2, gapComposerH);
                            Dp.Companion companion = Dp.f11004c;
                            float f11 = BottomSheetDefaults.f6576b;
                            if (i9 != 0) {
                                z2 = true;
                            }
                            if (i12 != 0) {
                                function7 = null;
                            } else {
                                function7 = function3;
                            }
                            if (i15 != 0) {
                                ComposableSingletons$BottomSheetScaffoldKt.f6706a.getClass();
                                function8 = ComposableSingletons$BottomSheetScaffoldKt.f6707b;
                            } else {
                                function8 = function4;
                            }
                            th = null;
                            if ((i4 & 16384) != 0) {
                                j9 = MaterialTheme.a(gapComposerH).p;
                            } else {
                                j9 = j4;
                            }
                            long jB2 = ColorSchemeKt.b(j9, gapComposerH);
                            modifier4 = dTFunctionNameModifier;
                            j10 = j9;
                            f7 = f10;
                            function9 = function7;
                            z5 = z2;
                            shape4 = shapeA;
                            f8 = f11;
                            j11 = jB;
                            function6 = function8;
                            j12 = jB2;
                        } else {
                            gapComposerH.D();
                            f7 = f3;
                            j11 = j3;
                            f8 = f4;
                            function9 = function3;
                            j10 = j4;
                            j12 = j5;
                            z5 = z2;
                            shape4 = shape2;
                            modifier4 = modifier2;
                            th = null;
                            function6 = function4;
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        function10 = function9;
                        modifier5 = modifier4;
                        Modifier modifierB = BackgroundKt.b(modifier4.o(SizeKt.f5052c), j10, RectangleShapeKt.f8913a);
                        Alignment.f8582a.getClass();
                        j13 = j10;
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        iG = gapComposerH.G();
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
                        ComposeUiNode.b0.getClass();
                        f9 = f7;
                        function0 = ComposeUiNode.Companion.f9641b;
                        z6 = z5;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw th;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function0);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        function11 = ComposeUiNode.Companion.g;
                        if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                            defpackage.a.t(iG, gapComposerH, iG, function11);
                        }
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        f5 = f9;
                        long j14 = j12;
                        gapComposer = gapComposerH;
                        CompositionLocalKt.a(defpackage.a.d(j12, ContentColorKt.f6730a), ComposableLambdaKt.b(999829022, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                Composer composer2 = (Composer) obj;
                                int iIntValue = ((Number) obj2).intValue();
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    final BottomSheetScaffoldState bottomSheetScaffoldState2 = bottomSheetScaffoldState;
                                    SheetState sheetState = bottomSheetScaffoldState2.f6629a;
                                    final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
                                    final float f12 = f2;
                                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-519581786, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.1
                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(Object obj3, Object obj4) {
                                            Composer composer3 = (Composer) obj3;
                                            int iIntValue2 = ((Number) obj4).intValue();
                                            if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                                composableLambdaImpl3.A(PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f12, 7), composer3, 0);
                                            } else {
                                                composer3.D();
                                            }
                                            return Unit.f71739a;
                                        }
                                    }, composer2);
                                    final Function2 function12 = function2;
                                    final ComposableLambdaImpl composableLambdaImpl4 = composableLambdaImpl;
                                    final BottomSheetScaffoldState bottomSheetScaffoldState3 = bottomSheetScaffoldState;
                                    final float f13 = f2;
                                    final float f14 = f5;
                                    final boolean z7 = z6;
                                    final Shape shape5 = shape4;
                                    final long j15 = j2;
                                    final long j16 = j11;
                                    final float f15 = f8;
                                    ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-815624571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.2
                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(Object obj3, Object obj4) {
                                            Composer composer3 = (Composer) obj3;
                                            int iIntValue2 = ((Number) obj4).intValue();
                                            if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                                BottomSheetScaffoldKt.c(bottomSheetScaffoldState3.f6629a, f13, f14, z7, shape5, j15, j16, f15, function12, composableLambdaImpl4, composer3, 0);
                                            } else {
                                                composer3.D();
                                            }
                                            return Unit.f71739a;
                                        }
                                    }, composer2);
                                    final Function3 function13 = function6;
                                    ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(-1111667356, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.3
                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(Object obj3, Object obj4) {
                                            Composer composer3 = (Composer) obj3;
                                            int iIntValue2 = ((Number) obj4).intValue();
                                            if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                                function13.A(bottomSheetScaffoldState2.f6630b, composer3, 0);
                                            } else {
                                                composer3.D();
                                            }
                                            return Unit.f71739a;
                                        }
                                    }, composer2);
                                    boolean zK = composer2.K(bottomSheetScaffoldState2);
                                    Object objX = composer2.x();
                                    if (zK || objX == Composer.Companion.f7939a) {
                                        objX = new lh(bottomSheetScaffoldState2, 0);
                                        composer2.q(objX);
                                    }
                                    BottomSheetScaffoldKt.b(function10, composableLambdaImplB, composableLambdaImplB2, composableLambdaImplB3, (Function0) objX, sheetState, composer2, 3504);
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposer), gapComposer, 56);
                        gapComposer.Z(true);
                        function5 = function10;
                        z4 = z6;
                        shape3 = shape4;
                        j6 = j11;
                        f6 = f8;
                        modifier3 = modifier5;
                        j7 = j13;
                        j8 = j14;
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        f5 = f3;
                        j6 = j3;
                        f6 = f4;
                        function5 = function3;
                        j7 = j4;
                        z4 = z2;
                        shape3 = shape2;
                        modifier3 = modifier2;
                        function6 = function4;
                        j8 = j5;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2(modifier3, bottomSheetScaffoldState, f2, f5, shape3, j2, j6, f6, function2, z4, function5, function6, j7, j8, composableLambdaImpl2, i2, i3, i4) { // from class: kh

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public final /* synthetic */ Modifier f71649c;
                            public final /* synthetic */ BottomSheetScaffoldState d;

                            /* JADX INFO: renamed from: e, reason: collision with root package name */
                            public final /* synthetic */ float f71650e;

                            /* JADX INFO: renamed from: f, reason: collision with root package name */
                            public final /* synthetic */ float f71651f;
                            public final /* synthetic */ Shape g;

                            /* JADX INFO: renamed from: h, reason: collision with root package name */
                            public final /* synthetic */ long f71652h;

                            /* JADX INFO: renamed from: i, reason: collision with root package name */
                            public final /* synthetic */ long f71653i;

                            /* JADX INFO: renamed from: j, reason: collision with root package name */
                            public final /* synthetic */ float f71654j;

                            /* JADX INFO: renamed from: k, reason: collision with root package name */
                            public final /* synthetic */ Function2 f71655k;
                            public final /* synthetic */ boolean l;
                            public final /* synthetic */ Function2 m;
                            public final /* synthetic */ Function3 n;
                            public final /* synthetic */ long o;
                            public final /* synthetic */ long p;
                            public final /* synthetic */ ComposableLambdaImpl q;
                            public final /* synthetic */ int r;
                            public final /* synthetic */ int s;

                            {
                                this.r = i3;
                                this.s = i4;
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) throws Throwable {
                                ((Integer) obj2).getClass();
                                int iA = RecomposeScopeImplKt.a(7);
                                int iA2 = RecomposeScopeImplKt.a(this.r);
                                BottomSheetScaffoldKt.a(this.f71648b, this.f71649c, this.d, this.f71650e, this.f71651f, this.g, this.f71652h, this.f71653i, this.f71654j, this.f71655k, this.l, this.m, this.n, this.o, this.p, this.q, (Composer) obj, iA, iA2, this.s);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i11 |= 3072;
                i15 = i14;
                if ((i3 & 24576) != 0) {
                    i11 |= ((i4 & 16384) == 0 || !gapComposerH.e(j4)) ? 8192 : 16384;
                }
                int i110 = i11 | 65536;
                if ((i8 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i8 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i16 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("BottomSheetScaffold-sdMYb0k");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        float f12 = BottomSheetDefaults.f6577c;
                        if ((i4 & 32) != 0) {
                            BottomSheetDefaults bottomSheetDefaults2 = BottomSheetDefaults.f6575a;
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            shapeA = ShapesKt.a(SheetBottomTokens.f7849a, gapComposerH);
                        } else {
                            shapeA = shape2;
                        }
                        long jB3 = ColorSchemeKt.b(j2, gapComposerH);
                        Dp.Companion companion2 = Dp.f11004c;
                        float f13 = BottomSheetDefaults.f6576b;
                        if (i9 != 0) {
                            z2 = true;
                        }
                        if (i12 != 0) {
                            function7 = null;
                        } else {
                            function7 = function3;
                        }
                        if (i15 != 0) {
                            ComposableSingletons$BottomSheetScaffoldKt.f6706a.getClass();
                            function8 = ComposableSingletons$BottomSheetScaffoldKt.f6707b;
                        } else {
                            function8 = function4;
                        }
                        th = null;
                        if ((i4 & 16384) != 0) {
                            j9 = MaterialTheme.a(gapComposerH).p;
                        } else {
                            j9 = j4;
                        }
                        long jB4 = ColorSchemeKt.b(j9, gapComposerH);
                        modifier4 = dTFunctionNameModifier;
                        j10 = j9;
                        f7 = f12;
                        function9 = function7;
                        z5 = z2;
                        shape4 = shapeA;
                        f8 = f13;
                        j11 = jB3;
                        function6 = function8;
                        j12 = jB4;
                    } else {
                        if (i16 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("BottomSheetScaffold-sdMYb0k");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        float f14 = BottomSheetDefaults.f6577c;
                        if ((i4 & 32) != 0) {
                            BottomSheetDefaults bottomSheetDefaults3 = BottomSheetDefaults.f6575a;
                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                            shapeA = ShapesKt.a(SheetBottomTokens.f7849a, gapComposerH);
                        } else {
                            shapeA = shape2;
                        }
                        long jB5 = ColorSchemeKt.b(j2, gapComposerH);
                        Dp.Companion companion3 = Dp.f11004c;
                        float f15 = BottomSheetDefaults.f6576b;
                        if (i9 != 0) {
                            z2 = true;
                        }
                        if (i12 != 0) {
                            function7 = null;
                        } else {
                            function7 = function3;
                        }
                        if (i15 != 0) {
                            ComposableSingletons$BottomSheetScaffoldKt.f6706a.getClass();
                            function8 = ComposableSingletons$BottomSheetScaffoldKt.f6707b;
                        } else {
                            function8 = function4;
                        }
                        th = null;
                        if ((i4 & 16384) != 0) {
                            j9 = MaterialTheme.a(gapComposerH).p;
                        } else {
                            j9 = j4;
                        }
                        long jB6 = ColorSchemeKt.b(j9, gapComposerH);
                        modifier4 = dTFunctionNameModifier;
                        j10 = j9;
                        f7 = f14;
                        function9 = function7;
                        z5 = z2;
                        shape4 = shapeA;
                        f8 = f15;
                        j11 = jB5;
                        function6 = function8;
                        j12 = jB6;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    function10 = function9;
                    modifier5 = modifier4;
                    Modifier modifierB2 = BackgroundKt.b(modifier4.o(SizeKt.f5052c), j10, RectangleShapeKt.f8913a);
                    Alignment.f8582a.getClass();
                    j13 = j10;
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    iG = gapComposerH.G();
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
                    ComposeUiNode.b0.getClass();
                    f9 = f7;
                    function0 = ComposeUiNode.Companion.f9641b;
                    z6 = z5;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw th;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    function11 = ComposeUiNode.Companion.g;
                    if (gapComposerH.S) {
                        defpackage.a.t(iG, gapComposerH, iG, function11);
                    } else {
                        defpackage.a.t(iG, gapComposerH, iG, function11);
                    }
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    f5 = f9;
                    long j15 = j12;
                    gapComposer = gapComposerH;
                    CompositionLocalKt.a(defpackage.a.d(j12, ContentColorKt.f6730a), ComposableLambdaKt.b(999829022, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue = ((Number) obj2).intValue();
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                final BottomSheetScaffoldState bottomSheetScaffoldState2 = bottomSheetScaffoldState;
                                SheetState sheetState = bottomSheetScaffoldState2.f6629a;
                                final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
                                final float f16 = f2;
                                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-519581786, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.1
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj3, Object obj4) {
                                        Composer composer3 = (Composer) obj3;
                                        int iIntValue2 = ((Number) obj4).intValue();
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                            OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                            composableLambdaImpl3.A(PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f16, 7), composer3, 0);
                                        } else {
                                            composer3.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }, composer2);
                                final Function2 function12 = function2;
                                final ComposableLambdaImpl composableLambdaImpl4 = composableLambdaImpl;
                                final BottomSheetScaffoldState bottomSheetScaffoldState3 = bottomSheetScaffoldState;
                                final float f17 = f2;
                                final float f18 = f5;
                                final boolean z7 = z6;
                                final Shape shape5 = shape4;
                                final long j16 = j2;
                                final long j17 = j11;
                                final float f19 = f8;
                                ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-815624571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.2
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj3, Object obj4) {
                                        Composer composer3 = (Composer) obj3;
                                        int iIntValue2 = ((Number) obj4).intValue();
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                            OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                            BottomSheetScaffoldKt.c(bottomSheetScaffoldState3.f6629a, f17, f18, z7, shape5, j16, j17, f19, function12, composableLambdaImpl4, composer3, 0);
                                        } else {
                                            composer3.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }, composer2);
                                final Function3 function13 = function6;
                                ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(-1111667356, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.3
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj3, Object obj4) {
                                        Composer composer3 = (Composer) obj3;
                                        int iIntValue2 = ((Number) obj4).intValue();
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                            OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                                            function13.A(bottomSheetScaffoldState2.f6630b, composer3, 0);
                                        } else {
                                            composer3.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }, composer2);
                                boolean zK = composer2.K(bottomSheetScaffoldState2);
                                Object objX = composer2.x();
                                if (zK || objX == Composer.Companion.f7939a) {
                                    objX = new lh(bottomSheetScaffoldState2, 0);
                                    composer2.q(objX);
                                }
                                BottomSheetScaffoldKt.b(function10, composableLambdaImplB, composableLambdaImplB2, composableLambdaImplB3, (Function0) objX, sheetState, composer2, 3504);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposer), gapComposer, 56);
                    gapComposer.Z(true);
                    function5 = function10;
                    z4 = z6;
                    shape3 = shape4;
                    j6 = j11;
                    f6 = f8;
                    modifier3 = modifier5;
                    j7 = j13;
                    j8 = j15;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    f5 = f3;
                    j6 = j3;
                    f6 = f4;
                    function5 = function3;
                    j7 = j4;
                    z4 = z2;
                    shape3 = shape2;
                    modifier3 = modifier2;
                    function6 = function4;
                    j8 = j5;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2(modifier3, bottomSheetScaffoldState, f2, f5, shape3, j2, j6, f6, function2, z4, function5, function6, j7, j8, composableLambdaImpl2, i2, i3, i4) { // from class: kh

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ Modifier f71649c;
                        public final /* synthetic */ BottomSheetScaffoldState d;

                        /* JADX INFO: renamed from: e, reason: collision with root package name */
                        public final /* synthetic */ float f71650e;

                        /* JADX INFO: renamed from: f, reason: collision with root package name */
                        public final /* synthetic */ float f71651f;
                        public final /* synthetic */ Shape g;

                        /* JADX INFO: renamed from: h, reason: collision with root package name */
                        public final /* synthetic */ long f71652h;

                        /* JADX INFO: renamed from: i, reason: collision with root package name */
                        public final /* synthetic */ long f71653i;

                        /* JADX INFO: renamed from: j, reason: collision with root package name */
                        public final /* synthetic */ float f71654j;

                        /* JADX INFO: renamed from: k, reason: collision with root package name */
                        public final /* synthetic */ Function2 f71655k;
                        public final /* synthetic */ boolean l;
                        public final /* synthetic */ Function2 m;
                        public final /* synthetic */ Function3 n;
                        public final /* synthetic */ long o;
                        public final /* synthetic */ long p;
                        public final /* synthetic */ ComposableLambdaImpl q;
                        public final /* synthetic */ int r;
                        public final /* synthetic */ int s;

                        {
                            this.r = i3;
                            this.s = i4;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) throws Throwable {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(7);
                            int iA2 = RecomposeScopeImplKt.a(this.r);
                            BottomSheetScaffoldKt.a(this.f71648b, this.f71649c, this.d, this.f71650e, this.f71651f, this.g, this.f71652h, this.f71653i, this.f71654j, this.f71655k, this.l, this.m, this.n, this.o, this.p, this.q, (Composer) obj, iA, iA2, this.s);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i11 |= KyberEngine.KyberPolyBytes;
            modifier2 = modifierE;
            i14 = i4 & 8192;
            if (i14 != 0) {
                i15 = i14;
                if ((i3 & 3072) == 0) {
                    i11 |= gapComposerH.y(function4) ? 2048 : 1024;
                }
                if ((i3 & 24576) != 0) {
                    i11 |= ((i4 & 16384) == 0 || !gapComposerH.e(j4)) ? 8192 : 16384;
                }
                int i111 = i11 | 65536;
                if ((i8 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i8 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i16 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("BottomSheetScaffold-sdMYb0k");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        float f16 = BottomSheetDefaults.f6577c;
                        if ((i4 & 32) != 0) {
                            BottomSheetDefaults bottomSheetDefaults4 = BottomSheetDefaults.f6575a;
                            OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                            shapeA = ShapesKt.a(SheetBottomTokens.f7849a, gapComposerH);
                        } else {
                            shapeA = shape2;
                        }
                        long jB7 = ColorSchemeKt.b(j2, gapComposerH);
                        Dp.Companion companion4 = Dp.f11004c;
                        float f17 = BottomSheetDefaults.f6576b;
                        if (i9 != 0) {
                            z2 = true;
                        }
                        if (i12 != 0) {
                            function7 = null;
                        } else {
                            function7 = function3;
                        }
                        if (i15 != 0) {
                            ComposableSingletons$BottomSheetScaffoldKt.f6706a.getClass();
                            function8 = ComposableSingletons$BottomSheetScaffoldKt.f6707b;
                        } else {
                            function8 = function4;
                        }
                        th = null;
                        if ((i4 & 16384) != 0) {
                            j9 = MaterialTheme.a(gapComposerH).p;
                        } else {
                            j9 = j4;
                        }
                        long jB8 = ColorSchemeKt.b(j9, gapComposerH);
                        modifier4 = dTFunctionNameModifier;
                        j10 = j9;
                        f7 = f16;
                        function9 = function7;
                        z5 = z2;
                        shape4 = shapeA;
                        f8 = f17;
                        j11 = jB7;
                        function6 = function8;
                        j12 = jB8;
                    } else {
                        if (i16 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("BottomSheetScaffold-sdMYb0k");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        float f18 = BottomSheetDefaults.f6577c;
                        if ((i4 & 32) != 0) {
                            BottomSheetDefaults bottomSheetDefaults5 = BottomSheetDefaults.f6575a;
                            OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                            shapeA = ShapesKt.a(SheetBottomTokens.f7849a, gapComposerH);
                        } else {
                            shapeA = shape2;
                        }
                        long jB9 = ColorSchemeKt.b(j2, gapComposerH);
                        Dp.Companion companion5 = Dp.f11004c;
                        float f19 = BottomSheetDefaults.f6576b;
                        if (i9 != 0) {
                            z2 = true;
                        }
                        if (i12 != 0) {
                            function7 = null;
                        } else {
                            function7 = function3;
                        }
                        if (i15 != 0) {
                            ComposableSingletons$BottomSheetScaffoldKt.f6706a.getClass();
                            function8 = ComposableSingletons$BottomSheetScaffoldKt.f6707b;
                        } else {
                            function8 = function4;
                        }
                        th = null;
                        if ((i4 & 16384) != 0) {
                            j9 = MaterialTheme.a(gapComposerH).p;
                        } else {
                            j9 = j4;
                        }
                        long jB10 = ColorSchemeKt.b(j9, gapComposerH);
                        modifier4 = dTFunctionNameModifier;
                        j10 = j9;
                        f7 = f18;
                        function9 = function7;
                        z5 = z2;
                        shape4 = shapeA;
                        f8 = f19;
                        j11 = jB9;
                        function6 = function8;
                        j12 = jB10;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    function10 = function9;
                    modifier5 = modifier4;
                    Modifier modifierB3 = BackgroundKt.b(modifier4.o(SizeKt.f5052c), j10, RectangleShapeKt.f8913a);
                    Alignment.f8582a.getClass();
                    j13 = j10;
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    iG = gapComposerH.G();
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierB3);
                    ComposeUiNode.b0.getClass();
                    f9 = f7;
                    function0 = ComposeUiNode.Companion.f9641b;
                    z6 = z5;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw th;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    function11 = ComposeUiNode.Companion.g;
                    if (gapComposerH.S) {
                        defpackage.a.t(iG, gapComposerH, iG, function11);
                    } else {
                        defpackage.a.t(iG, gapComposerH, iG, function11);
                    }
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    f5 = f9;
                    long j16 = j12;
                    gapComposer = gapComposerH;
                    CompositionLocalKt.a(defpackage.a.d(j12, ContentColorKt.f6730a), ComposableLambdaKt.b(999829022, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue = ((Number) obj2).intValue();
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                                final BottomSheetScaffoldState bottomSheetScaffoldState2 = bottomSheetScaffoldState;
                                SheetState sheetState = bottomSheetScaffoldState2.f6629a;
                                final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
                                final float f110 = f2;
                                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-519581786, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.1
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj3, Object obj4) {
                                        Composer composer3 = (Composer) obj3;
                                        int iIntValue2 = ((Number) obj4).intValue();
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                            OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                                            composableLambdaImpl3.A(PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f110, 7), composer3, 0);
                                        } else {
                                            composer3.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }, composer2);
                                final Function2 function12 = function2;
                                final ComposableLambdaImpl composableLambdaImpl4 = composableLambdaImpl;
                                final BottomSheetScaffoldState bottomSheetScaffoldState3 = bottomSheetScaffoldState;
                                final float f111 = f2;
                                final float f112 = f5;
                                final boolean z7 = z6;
                                final Shape shape5 = shape4;
                                final long j17 = j2;
                                final long j18 = j11;
                                final float f113 = f8;
                                ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-815624571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.2
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj3, Object obj4) {
                                        Composer composer3 = (Composer) obj3;
                                        int iIntValue2 = ((Number) obj4).intValue();
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                            OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                                            BottomSheetScaffoldKt.c(bottomSheetScaffoldState3.f6629a, f111, f112, z7, shape5, j17, j18, f113, function12, composableLambdaImpl4, composer3, 0);
                                        } else {
                                            composer3.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }, composer2);
                                final Function3 function13 = function6;
                                ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(-1111667356, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.3
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj3, Object obj4) {
                                        Composer composer3 = (Composer) obj3;
                                        int iIntValue2 = ((Number) obj4).intValue();
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                            OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                                            function13.A(bottomSheetScaffoldState2.f6630b, composer3, 0);
                                        } else {
                                            composer3.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }, composer2);
                                boolean zK = composer2.K(bottomSheetScaffoldState2);
                                Object objX = composer2.x();
                                if (zK || objX == Composer.Companion.f7939a) {
                                    objX = new lh(bottomSheetScaffoldState2, 0);
                                    composer2.q(objX);
                                }
                                BottomSheetScaffoldKt.b(function10, composableLambdaImplB, composableLambdaImplB2, composableLambdaImplB3, (Function0) objX, sheetState, composer2, 3504);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposer), gapComposer, 56);
                    gapComposer.Z(true);
                    function5 = function10;
                    z4 = z6;
                    shape3 = shape4;
                    j6 = j11;
                    f6 = f8;
                    modifier3 = modifier5;
                    j7 = j13;
                    j8 = j16;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    f5 = f3;
                    j6 = j3;
                    f6 = f4;
                    function5 = function3;
                    j7 = j4;
                    z4 = z2;
                    shape3 = shape2;
                    modifier3 = modifier2;
                    function6 = function4;
                    j8 = j5;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2(modifier3, bottomSheetScaffoldState, f2, f5, shape3, j2, j6, f6, function2, z4, function5, function6, j7, j8, composableLambdaImpl2, i2, i3, i4) { // from class: kh

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ Modifier f71649c;
                        public final /* synthetic */ BottomSheetScaffoldState d;

                        /* JADX INFO: renamed from: e, reason: collision with root package name */
                        public final /* synthetic */ float f71650e;

                        /* JADX INFO: renamed from: f, reason: collision with root package name */
                        public final /* synthetic */ float f71651f;
                        public final /* synthetic */ Shape g;

                        /* JADX INFO: renamed from: h, reason: collision with root package name */
                        public final /* synthetic */ long f71652h;

                        /* JADX INFO: renamed from: i, reason: collision with root package name */
                        public final /* synthetic */ long f71653i;

                        /* JADX INFO: renamed from: j, reason: collision with root package name */
                        public final /* synthetic */ float f71654j;

                        /* JADX INFO: renamed from: k, reason: collision with root package name */
                        public final /* synthetic */ Function2 f71655k;
                        public final /* synthetic */ boolean l;
                        public final /* synthetic */ Function2 m;
                        public final /* synthetic */ Function3 n;
                        public final /* synthetic */ long o;
                        public final /* synthetic */ long p;
                        public final /* synthetic */ ComposableLambdaImpl q;
                        public final /* synthetic */ int r;
                        public final /* synthetic */ int s;

                        {
                            this.r = i3;
                            this.s = i4;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) throws Throwable {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(7);
                            int iA2 = RecomposeScopeImplKt.a(this.r);
                            BottomSheetScaffoldKt.a(this.f71648b, this.f71649c, this.d, this.f71650e, this.f71651f, this.g, this.f71652h, this.f71653i, this.f71654j, this.f71655k, this.l, this.m, this.n, this.o, this.p, this.q, (Composer) obj, iA, iA2, this.s);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i11 |= 3072;
            i15 = i14;
            if ((i3 & 24576) != 0) {
                i11 |= ((i4 & 16384) == 0 || !gapComposerH.e(j4)) ? 8192 : 16384;
            }
            int i112 = i11 | 65536;
            if ((i8 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i8 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i16 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("BottomSheetScaffold-sdMYb0k");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    float f110 = BottomSheetDefaults.f6577c;
                    if ((i4 & 32) != 0) {
                        BottomSheetDefaults bottomSheetDefaults6 = BottomSheetDefaults.f6575a;
                        OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                        shapeA = ShapesKt.a(SheetBottomTokens.f7849a, gapComposerH);
                    } else {
                        shapeA = shape2;
                    }
                    long jB11 = ColorSchemeKt.b(j2, gapComposerH);
                    Dp.Companion companion6 = Dp.f11004c;
                    float f111 = BottomSheetDefaults.f6576b;
                    if (i9 != 0) {
                        z2 = true;
                    }
                    if (i12 != 0) {
                        function7 = null;
                    } else {
                        function7 = function3;
                    }
                    if (i15 != 0) {
                        ComposableSingletons$BottomSheetScaffoldKt.f6706a.getClass();
                        function8 = ComposableSingletons$BottomSheetScaffoldKt.f6707b;
                    } else {
                        function8 = function4;
                    }
                    th = null;
                    if ((i4 & 16384) != 0) {
                        j9 = MaterialTheme.a(gapComposerH).p;
                    } else {
                        j9 = j4;
                    }
                    long jB12 = ColorSchemeKt.b(j9, gapComposerH);
                    modifier4 = dTFunctionNameModifier;
                    j10 = j9;
                    f7 = f110;
                    function9 = function7;
                    z5 = z2;
                    shape4 = shapeA;
                    f8 = f111;
                    j11 = jB11;
                    function6 = function8;
                    j12 = jB12;
                } else {
                    if (i16 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("BottomSheetScaffold-sdMYb0k");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    float f112 = BottomSheetDefaults.f6577c;
                    if ((i4 & 32) != 0) {
                        BottomSheetDefaults bottomSheetDefaults7 = BottomSheetDefaults.f6575a;
                        OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                        shapeA = ShapesKt.a(SheetBottomTokens.f7849a, gapComposerH);
                    } else {
                        shapeA = shape2;
                    }
                    long jB13 = ColorSchemeKt.b(j2, gapComposerH);
                    Dp.Companion companion7 = Dp.f11004c;
                    float f113 = BottomSheetDefaults.f6576b;
                    if (i9 != 0) {
                        z2 = true;
                    }
                    if (i12 != 0) {
                        function7 = null;
                    } else {
                        function7 = function3;
                    }
                    if (i15 != 0) {
                        ComposableSingletons$BottomSheetScaffoldKt.f6706a.getClass();
                        function8 = ComposableSingletons$BottomSheetScaffoldKt.f6707b;
                    } else {
                        function8 = function4;
                    }
                    th = null;
                    if ((i4 & 16384) != 0) {
                        j9 = MaterialTheme.a(gapComposerH).p;
                    } else {
                        j9 = j4;
                    }
                    long jB14 = ColorSchemeKt.b(j9, gapComposerH);
                    modifier4 = dTFunctionNameModifier;
                    j10 = j9;
                    f7 = f112;
                    function9 = function7;
                    z5 = z2;
                    shape4 = shapeA;
                    f8 = f113;
                    j11 = jB13;
                    function6 = function8;
                    j12 = jB14;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                function10 = function9;
                modifier5 = modifier4;
                Modifier modifierB4 = BackgroundKt.b(modifier4.o(SizeKt.f5052c), j10, RectangleShapeKt.f8913a);
                Alignment.f8582a.getClass();
                j13 = j10;
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                iG = gapComposerH.G();
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB4);
                ComposeUiNode.b0.getClass();
                f9 = f7;
                function0 = ComposeUiNode.Companion.f9641b;
                z6 = z5;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw th;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                function11 = ComposeUiNode.Companion.g;
                if (gapComposerH.S) {
                    defpackage.a.t(iG, gapComposerH, iG, function11);
                } else {
                    defpackage.a.t(iG, gapComposerH, iG, function11);
                }
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                f5 = f9;
                long j17 = j12;
                gapComposer = gapComposerH;
                CompositionLocalKt.a(defpackage.a.d(j12, ContentColorKt.f6730a), ComposableLambdaKt.b(999829022, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                            final BottomSheetScaffoldState bottomSheetScaffoldState2 = bottomSheetScaffoldState;
                            SheetState sheetState = bottomSheetScaffoldState2.f6629a;
                            final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
                            final float f114 = f2;
                            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-519581786, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.1
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Number) obj4).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                                        composableLambdaImpl3.A(PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f114, 7), composer3, 0);
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2);
                            final Function2 function12 = function2;
                            final ComposableLambdaImpl composableLambdaImpl4 = composableLambdaImpl;
                            final BottomSheetScaffoldState bottomSheetScaffoldState3 = bottomSheetScaffoldState;
                            final float f115 = f2;
                            final float f116 = f5;
                            final boolean z7 = z6;
                            final Shape shape5 = shape4;
                            final long j18 = j2;
                            final long j19 = j11;
                            final float f117 = f8;
                            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-815624571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.2
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Number) obj4).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                                        BottomSheetScaffoldKt.c(bottomSheetScaffoldState3.f6629a, f115, f116, z7, shape5, j18, j19, f117, function12, composableLambdaImpl4, composer3, 0);
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2);
                            final Function3 function13 = function6;
                            ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(-1111667356, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.3
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Number) obj4).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                                        function13.A(bottomSheetScaffoldState2.f6630b, composer3, 0);
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2);
                            boolean zK = composer2.K(bottomSheetScaffoldState2);
                            Object objX = composer2.x();
                            if (zK || objX == Composer.Companion.f7939a) {
                                objX = new lh(bottomSheetScaffoldState2, 0);
                                composer2.q(objX);
                            }
                            BottomSheetScaffoldKt.b(function10, composableLambdaImplB, composableLambdaImplB2, composableLambdaImplB3, (Function0) objX, sheetState, composer2, 3504);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposer), gapComposer, 56);
                gapComposer.Z(true);
                function5 = function10;
                z4 = z6;
                shape3 = shape4;
                j6 = j11;
                f6 = f8;
                modifier3 = modifier5;
                j7 = j13;
                j8 = j17;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                f5 = f3;
                j6 = j3;
                f6 = f4;
                function5 = function3;
                j7 = j4;
                z4 = z2;
                shape3 = shape2;
                modifier3 = modifier2;
                function6 = function4;
                j8 = j5;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2(modifier3, bottomSheetScaffoldState, f2, f5, shape3, j2, j6, f6, function2, z4, function5, function6, j7, j8, composableLambdaImpl2, i2, i3, i4) { // from class: kh

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ Modifier f71649c;
                    public final /* synthetic */ BottomSheetScaffoldState d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ float f71650e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    public final /* synthetic */ float f71651f;
                    public final /* synthetic */ Shape g;

                    /* JADX INFO: renamed from: h, reason: collision with root package name */
                    public final /* synthetic */ long f71652h;

                    /* JADX INFO: renamed from: i, reason: collision with root package name */
                    public final /* synthetic */ long f71653i;

                    /* JADX INFO: renamed from: j, reason: collision with root package name */
                    public final /* synthetic */ float f71654j;

                    /* JADX INFO: renamed from: k, reason: collision with root package name */
                    public final /* synthetic */ Function2 f71655k;
                    public final /* synthetic */ boolean l;
                    public final /* synthetic */ Function2 m;
                    public final /* synthetic */ Function3 n;
                    public final /* synthetic */ long o;
                    public final /* synthetic */ long p;
                    public final /* synthetic */ ComposableLambdaImpl q;
                    public final /* synthetic */ int r;
                    public final /* synthetic */ int s;

                    {
                        this.r = i3;
                        this.s = i4;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) throws Throwable {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(7);
                        int iA2 = RecomposeScopeImplKt.a(this.r);
                        BottomSheetScaffoldKt.a(this.f71648b, this.f71649c, this.d, this.f71650e, this.f71651f, this.g, this.f71652h, this.f71653i, this.f71654j, this.f71655k, this.l, this.m, this.n, this.o, this.p, this.q, (Composer) obj, iA, iA2, this.s);
                        return Unit.f71739a;
                    }
                };
            }
        }
        shape2 = shape;
        i6 = 65536;
        int i113 = i17 | i6;
        if (gapComposerH.e(j2)) {
            i7 = 1048576;
        } else {
            i7 = 524288;
        }
        i8 = i113 | i7 | 910163968;
        i9 = i4 & 2048;
        if (i9 != 0) {
            i11 = i3 | 48;
            z2 = z;
        } else {
            z2 = z;
            if (gapComposerH.b(z2)) {
                i10 = 32;
            } else {
                i10 = 16;
            }
            i11 = i3 | i10;
        }
        i12 = i4 & 4096;
        if (i12 != 0) {
            modifier2 = modifierE;
            if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
                if (gapComposerH.y(function3)) {
                    i13 = 256;
                } else {
                    i13 = 128;
                }
                i11 |= i13;
            }
            i14 = i4 & 8192;
            if (i14 != 0) {
                i15 = i14;
                if ((i3 & 3072) == 0) {
                    i11 |= gapComposerH.y(function4) ? 2048 : 1024;
                }
                if ((i3 & 24576) != 0) {
                    i11 |= ((i4 & 16384) == 0 || !gapComposerH.e(j4)) ? 8192 : 16384;
                }
                int i114 = i11 | 65536;
                if ((i8 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i8 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i16 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("BottomSheetScaffold-sdMYb0k");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        float f114 = BottomSheetDefaults.f6577c;
                        if ((i4 & 32) != 0) {
                            BottomSheetDefaults bottomSheetDefaults8 = BottomSheetDefaults.f6575a;
                            OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                            shapeA = ShapesKt.a(SheetBottomTokens.f7849a, gapComposerH);
                        } else {
                            shapeA = shape2;
                        }
                        long jB15 = ColorSchemeKt.b(j2, gapComposerH);
                        Dp.Companion companion8 = Dp.f11004c;
                        float f115 = BottomSheetDefaults.f6576b;
                        if (i9 != 0) {
                            z2 = true;
                        }
                        if (i12 != 0) {
                            function7 = null;
                        } else {
                            function7 = function3;
                        }
                        if (i15 != 0) {
                            ComposableSingletons$BottomSheetScaffoldKt.f6706a.getClass();
                            function8 = ComposableSingletons$BottomSheetScaffoldKt.f6707b;
                        } else {
                            function8 = function4;
                        }
                        th = null;
                        if ((i4 & 16384) != 0) {
                            j9 = MaterialTheme.a(gapComposerH).p;
                        } else {
                            j9 = j4;
                        }
                        long jB16 = ColorSchemeKt.b(j9, gapComposerH);
                        modifier4 = dTFunctionNameModifier;
                        j10 = j9;
                        f7 = f114;
                        function9 = function7;
                        z5 = z2;
                        shape4 = shapeA;
                        f8 = f115;
                        j11 = jB15;
                        function6 = function8;
                        j12 = jB16;
                    } else {
                        if (i16 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("BottomSheetScaffold-sdMYb0k");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        float f116 = BottomSheetDefaults.f6577c;
                        if ((i4 & 32) != 0) {
                            BottomSheetDefaults bottomSheetDefaults9 = BottomSheetDefaults.f6575a;
                            OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                            shapeA = ShapesKt.a(SheetBottomTokens.f7849a, gapComposerH);
                        } else {
                            shapeA = shape2;
                        }
                        long jB17 = ColorSchemeKt.b(j2, gapComposerH);
                        Dp.Companion companion9 = Dp.f11004c;
                        float f117 = BottomSheetDefaults.f6576b;
                        if (i9 != 0) {
                            z2 = true;
                        }
                        if (i12 != 0) {
                            function7 = null;
                        } else {
                            function7 = function3;
                        }
                        if (i15 != 0) {
                            ComposableSingletons$BottomSheetScaffoldKt.f6706a.getClass();
                            function8 = ComposableSingletons$BottomSheetScaffoldKt.f6707b;
                        } else {
                            function8 = function4;
                        }
                        th = null;
                        if ((i4 & 16384) != 0) {
                            j9 = MaterialTheme.a(gapComposerH).p;
                        } else {
                            j9 = j4;
                        }
                        long jB18 = ColorSchemeKt.b(j9, gapComposerH);
                        modifier4 = dTFunctionNameModifier;
                        j10 = j9;
                        f7 = f116;
                        function9 = function7;
                        z5 = z2;
                        shape4 = shapeA;
                        f8 = f117;
                        j11 = jB17;
                        function6 = function8;
                        j12 = jB18;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    function10 = function9;
                    modifier5 = modifier4;
                    Modifier modifierB5 = BackgroundKt.b(modifier4.o(SizeKt.f5052c), j10, RectangleShapeKt.f8913a);
                    Alignment.f8582a.getClass();
                    j13 = j10;
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    iG = gapComposerH.G();
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierB5);
                    ComposeUiNode.b0.getClass();
                    f9 = f7;
                    function0 = ComposeUiNode.Companion.f9641b;
                    z6 = z5;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw th;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    function11 = ComposeUiNode.Companion.g;
                    if (gapComposerH.S) {
                        defpackage.a.t(iG, gapComposerH, iG, function11);
                    } else {
                        defpackage.a.t(iG, gapComposerH, iG, function11);
                    }
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    f5 = f9;
                    long j18 = j12;
                    gapComposer = gapComposerH;
                    CompositionLocalKt.a(defpackage.a.d(j12, ContentColorKt.f6730a), ComposableLambdaKt.b(999829022, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue = ((Number) obj2).intValue();
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                                final BottomSheetScaffoldState bottomSheetScaffoldState2 = bottomSheetScaffoldState;
                                SheetState sheetState = bottomSheetScaffoldState2.f6629a;
                                final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
                                final float f118 = f2;
                                ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-519581786, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.1
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj3, Object obj4) {
                                        Composer composer3 = (Composer) obj3;
                                        int iIntValue2 = ((Number) obj4).intValue();
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                                            composableLambdaImpl3.A(PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f118, 7), composer3, 0);
                                        } else {
                                            composer3.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }, composer2);
                                final Function2 function12 = function2;
                                final ComposableLambdaImpl composableLambdaImpl4 = composableLambdaImpl;
                                final BottomSheetScaffoldState bottomSheetScaffoldState3 = bottomSheetScaffoldState;
                                final float f119 = f2;
                                final float f1110 = f5;
                                final boolean z7 = z6;
                                final Shape shape5 = shape4;
                                final long j19 = j2;
                                final long j110 = j11;
                                final float f1111 = f8;
                                ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-815624571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.2
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj3, Object obj4) {
                                        Composer composer3 = (Composer) obj3;
                                        int iIntValue2 = ((Number) obj4).intValue();
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                                            BottomSheetScaffoldKt.c(bottomSheetScaffoldState3.f6629a, f119, f1110, z7, shape5, j19, j110, f1111, function12, composableLambdaImpl4, composer3, 0);
                                        } else {
                                            composer3.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }, composer2);
                                final Function3 function13 = function6;
                                ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(-1111667356, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.3
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj3, Object obj4) {
                                        Composer composer3 = (Composer) obj3;
                                        int iIntValue2 = ((Number) obj4).intValue();
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                            OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                                            function13.A(bottomSheetScaffoldState2.f6630b, composer3, 0);
                                        } else {
                                            composer3.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }, composer2);
                                boolean zK = composer2.K(bottomSheetScaffoldState2);
                                Object objX = composer2.x();
                                if (zK || objX == Composer.Companion.f7939a) {
                                    objX = new lh(bottomSheetScaffoldState2, 0);
                                    composer2.q(objX);
                                }
                                BottomSheetScaffoldKt.b(function10, composableLambdaImplB, composableLambdaImplB2, composableLambdaImplB3, (Function0) objX, sheetState, composer2, 3504);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposer), gapComposer, 56);
                    gapComposer.Z(true);
                    function5 = function10;
                    z4 = z6;
                    shape3 = shape4;
                    j6 = j11;
                    f6 = f8;
                    modifier3 = modifier5;
                    j7 = j13;
                    j8 = j18;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    f5 = f3;
                    j6 = j3;
                    f6 = f4;
                    function5 = function3;
                    j7 = j4;
                    z4 = z2;
                    shape3 = shape2;
                    modifier3 = modifier2;
                    function6 = function4;
                    j8 = j5;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2(modifier3, bottomSheetScaffoldState, f2, f5, shape3, j2, j6, f6, function2, z4, function5, function6, j7, j8, composableLambdaImpl2, i2, i3, i4) { // from class: kh

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ Modifier f71649c;
                        public final /* synthetic */ BottomSheetScaffoldState d;

                        /* JADX INFO: renamed from: e, reason: collision with root package name */
                        public final /* synthetic */ float f71650e;

                        /* JADX INFO: renamed from: f, reason: collision with root package name */
                        public final /* synthetic */ float f71651f;
                        public final /* synthetic */ Shape g;

                        /* JADX INFO: renamed from: h, reason: collision with root package name */
                        public final /* synthetic */ long f71652h;

                        /* JADX INFO: renamed from: i, reason: collision with root package name */
                        public final /* synthetic */ long f71653i;

                        /* JADX INFO: renamed from: j, reason: collision with root package name */
                        public final /* synthetic */ float f71654j;

                        /* JADX INFO: renamed from: k, reason: collision with root package name */
                        public final /* synthetic */ Function2 f71655k;
                        public final /* synthetic */ boolean l;
                        public final /* synthetic */ Function2 m;
                        public final /* synthetic */ Function3 n;
                        public final /* synthetic */ long o;
                        public final /* synthetic */ long p;
                        public final /* synthetic */ ComposableLambdaImpl q;
                        public final /* synthetic */ int r;
                        public final /* synthetic */ int s;

                        {
                            this.r = i3;
                            this.s = i4;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) throws Throwable {
                            ((Integer) obj2).getClass();
                            int iA = RecomposeScopeImplKt.a(7);
                            int iA2 = RecomposeScopeImplKt.a(this.r);
                            BottomSheetScaffoldKt.a(this.f71648b, this.f71649c, this.d, this.f71650e, this.f71651f, this.g, this.f71652h, this.f71653i, this.f71654j, this.f71655k, this.l, this.m, this.n, this.o, this.p, this.q, (Composer) obj, iA, iA2, this.s);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i11 |= 3072;
            i15 = i14;
            if ((i3 & 24576) != 0) {
                i11 |= ((i4 & 16384) == 0 || !gapComposerH.e(j4)) ? 8192 : 16384;
            }
            int i115 = i11 | 65536;
            if ((i8 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i8 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i16 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("BottomSheetScaffold-sdMYb0k");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    float f118 = BottomSheetDefaults.f6577c;
                    if ((i4 & 32) != 0) {
                        BottomSheetDefaults bottomSheetDefaults10 = BottomSheetDefaults.f6575a;
                        OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                        shapeA = ShapesKt.a(SheetBottomTokens.f7849a, gapComposerH);
                    } else {
                        shapeA = shape2;
                    }
                    long jB19 = ColorSchemeKt.b(j2, gapComposerH);
                    Dp.Companion companion10 = Dp.f11004c;
                    float f119 = BottomSheetDefaults.f6576b;
                    if (i9 != 0) {
                        z2 = true;
                    }
                    if (i12 != 0) {
                        function7 = null;
                    } else {
                        function7 = function3;
                    }
                    if (i15 != 0) {
                        ComposableSingletons$BottomSheetScaffoldKt.f6706a.getClass();
                        function8 = ComposableSingletons$BottomSheetScaffoldKt.f6707b;
                    } else {
                        function8 = function4;
                    }
                    th = null;
                    if ((i4 & 16384) != 0) {
                        j9 = MaterialTheme.a(gapComposerH).p;
                    } else {
                        j9 = j4;
                    }
                    long jB110 = ColorSchemeKt.b(j9, gapComposerH);
                    modifier4 = dTFunctionNameModifier;
                    j10 = j9;
                    f7 = f118;
                    function9 = function7;
                    z5 = z2;
                    shape4 = shapeA;
                    f8 = f119;
                    j11 = jB19;
                    function6 = function8;
                    j12 = jB110;
                } else {
                    if (i16 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("BottomSheetScaffold-sdMYb0k");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    float f1110 = BottomSheetDefaults.f6577c;
                    if ((i4 & 32) != 0) {
                        BottomSheetDefaults bottomSheetDefaults11 = BottomSheetDefaults.f6575a;
                        OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                        shapeA = ShapesKt.a(SheetBottomTokens.f7849a, gapComposerH);
                    } else {
                        shapeA = shape2;
                    }
                    long jB111 = ColorSchemeKt.b(j2, gapComposerH);
                    Dp.Companion companion11 = Dp.f11004c;
                    float f1111 = BottomSheetDefaults.f6576b;
                    if (i9 != 0) {
                        z2 = true;
                    }
                    if (i12 != 0) {
                        function7 = null;
                    } else {
                        function7 = function3;
                    }
                    if (i15 != 0) {
                        ComposableSingletons$BottomSheetScaffoldKt.f6706a.getClass();
                        function8 = ComposableSingletons$BottomSheetScaffoldKt.f6707b;
                    } else {
                        function8 = function4;
                    }
                    th = null;
                    if ((i4 & 16384) != 0) {
                        j9 = MaterialTheme.a(gapComposerH).p;
                    } else {
                        j9 = j4;
                    }
                    long jB112 = ColorSchemeKt.b(j9, gapComposerH);
                    modifier4 = dTFunctionNameModifier;
                    j10 = j9;
                    f7 = f1110;
                    function9 = function7;
                    z5 = z2;
                    shape4 = shapeA;
                    f8 = f1111;
                    j11 = jB111;
                    function6 = function8;
                    j12 = jB112;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                function10 = function9;
                modifier5 = modifier4;
                Modifier modifierB6 = BackgroundKt.b(modifier4.o(SizeKt.f5052c), j10, RectangleShapeKt.f8913a);
                Alignment.f8582a.getClass();
                j13 = j10;
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                iG = gapComposerH.G();
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB6);
                ComposeUiNode.b0.getClass();
                f9 = f7;
                function0 = ComposeUiNode.Companion.f9641b;
                z6 = z5;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw th;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                function11 = ComposeUiNode.Companion.g;
                if (gapComposerH.S) {
                    defpackage.a.t(iG, gapComposerH, iG, function11);
                } else {
                    defpackage.a.t(iG, gapComposerH, iG, function11);
                }
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                f5 = f9;
                long j19 = j12;
                gapComposer = gapComposerH;
                CompositionLocalKt.a(defpackage.a.d(j12, ContentColorKt.f6730a), ComposableLambdaKt.b(999829022, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                            final BottomSheetScaffoldState bottomSheetScaffoldState2 = bottomSheetScaffoldState;
                            SheetState sheetState = bottomSheetScaffoldState2.f6629a;
                            final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
                            final float f1112 = f2;
                            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-519581786, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.1
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Number) obj4).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                                        composableLambdaImpl3.A(PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f1112, 7), composer3, 0);
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2);
                            final Function2 function12 = function2;
                            final ComposableLambdaImpl composableLambdaImpl4 = composableLambdaImpl;
                            final BottomSheetScaffoldState bottomSheetScaffoldState3 = bottomSheetScaffoldState;
                            final float f1113 = f2;
                            final float f1114 = f5;
                            final boolean z7 = z6;
                            final Shape shape5 = shape4;
                            final long j110 = j2;
                            final long j111 = j11;
                            final float f1115 = f8;
                            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-815624571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.2
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Number) obj4).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                                        BottomSheetScaffoldKt.c(bottomSheetScaffoldState3.f6629a, f1113, f1114, z7, shape5, j110, j111, f1115, function12, composableLambdaImpl4, composer3, 0);
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2);
                            final Function3 function13 = function6;
                            ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(-1111667356, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.3
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Number) obj4).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                                        function13.A(bottomSheetScaffoldState2.f6630b, composer3, 0);
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2);
                            boolean zK = composer2.K(bottomSheetScaffoldState2);
                            Object objX = composer2.x();
                            if (zK || objX == Composer.Companion.f7939a) {
                                objX = new lh(bottomSheetScaffoldState2, 0);
                                composer2.q(objX);
                            }
                            BottomSheetScaffoldKt.b(function10, composableLambdaImplB, composableLambdaImplB2, composableLambdaImplB3, (Function0) objX, sheetState, composer2, 3504);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposer), gapComposer, 56);
                gapComposer.Z(true);
                function5 = function10;
                z4 = z6;
                shape3 = shape4;
                j6 = j11;
                f6 = f8;
                modifier3 = modifier5;
                j7 = j13;
                j8 = j19;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                f5 = f3;
                j6 = j3;
                f6 = f4;
                function5 = function3;
                j7 = j4;
                z4 = z2;
                shape3 = shape2;
                modifier3 = modifier2;
                function6 = function4;
                j8 = j5;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2(modifier3, bottomSheetScaffoldState, f2, f5, shape3, j2, j6, f6, function2, z4, function5, function6, j7, j8, composableLambdaImpl2, i2, i3, i4) { // from class: kh

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ Modifier f71649c;
                    public final /* synthetic */ BottomSheetScaffoldState d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ float f71650e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    public final /* synthetic */ float f71651f;
                    public final /* synthetic */ Shape g;

                    /* JADX INFO: renamed from: h, reason: collision with root package name */
                    public final /* synthetic */ long f71652h;

                    /* JADX INFO: renamed from: i, reason: collision with root package name */
                    public final /* synthetic */ long f71653i;

                    /* JADX INFO: renamed from: j, reason: collision with root package name */
                    public final /* synthetic */ float f71654j;

                    /* JADX INFO: renamed from: k, reason: collision with root package name */
                    public final /* synthetic */ Function2 f71655k;
                    public final /* synthetic */ boolean l;
                    public final /* synthetic */ Function2 m;
                    public final /* synthetic */ Function3 n;
                    public final /* synthetic */ long o;
                    public final /* synthetic */ long p;
                    public final /* synthetic */ ComposableLambdaImpl q;
                    public final /* synthetic */ int r;
                    public final /* synthetic */ int s;

                    {
                        this.r = i3;
                        this.s = i4;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) throws Throwable {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(7);
                        int iA2 = RecomposeScopeImplKt.a(this.r);
                        BottomSheetScaffoldKt.a(this.f71648b, this.f71649c, this.d, this.f71650e, this.f71651f, this.g, this.f71652h, this.f71653i, this.f71654j, this.f71655k, this.l, this.m, this.n, this.o, this.p, this.q, (Composer) obj, iA, iA2, this.s);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i11 |= KyberEngine.KyberPolyBytes;
        modifier2 = modifierE;
        i14 = i4 & 8192;
        if (i14 != 0) {
            i15 = i14;
            if ((i3 & 3072) == 0) {
                i11 |= gapComposerH.y(function4) ? 2048 : 1024;
            }
            if ((i3 & 24576) != 0) {
                i11 |= ((i4 & 16384) == 0 || !gapComposerH.e(j4)) ? 8192 : 16384;
            }
            int i116 = i11 | 65536;
            if ((i8 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i8 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i16 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("BottomSheetScaffold-sdMYb0k");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    float f1112 = BottomSheetDefaults.f6577c;
                    if ((i4 & 32) != 0) {
                        BottomSheetDefaults bottomSheetDefaults12 = BottomSheetDefaults.f6575a;
                        OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                        shapeA = ShapesKt.a(SheetBottomTokens.f7849a, gapComposerH);
                    } else {
                        shapeA = shape2;
                    }
                    long jB113 = ColorSchemeKt.b(j2, gapComposerH);
                    Dp.Companion companion12 = Dp.f11004c;
                    float f1113 = BottomSheetDefaults.f6576b;
                    if (i9 != 0) {
                        z2 = true;
                    }
                    if (i12 != 0) {
                        function7 = null;
                    } else {
                        function7 = function3;
                    }
                    if (i15 != 0) {
                        ComposableSingletons$BottomSheetScaffoldKt.f6706a.getClass();
                        function8 = ComposableSingletons$BottomSheetScaffoldKt.f6707b;
                    } else {
                        function8 = function4;
                    }
                    th = null;
                    if ((i4 & 16384) != 0) {
                        j9 = MaterialTheme.a(gapComposerH).p;
                    } else {
                        j9 = j4;
                    }
                    long jB114 = ColorSchemeKt.b(j9, gapComposerH);
                    modifier4 = dTFunctionNameModifier;
                    j10 = j9;
                    f7 = f1112;
                    function9 = function7;
                    z5 = z2;
                    shape4 = shapeA;
                    f8 = f1113;
                    j11 = jB113;
                    function6 = function8;
                    j12 = jB114;
                } else {
                    if (i16 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("BottomSheetScaffold-sdMYb0k");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    float f1114 = BottomSheetDefaults.f6577c;
                    if ((i4 & 32) != 0) {
                        BottomSheetDefaults bottomSheetDefaults13 = BottomSheetDefaults.f6575a;
                        OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                        shapeA = ShapesKt.a(SheetBottomTokens.f7849a, gapComposerH);
                    } else {
                        shapeA = shape2;
                    }
                    long jB115 = ColorSchemeKt.b(j2, gapComposerH);
                    Dp.Companion companion13 = Dp.f11004c;
                    float f1115 = BottomSheetDefaults.f6576b;
                    if (i9 != 0) {
                        z2 = true;
                    }
                    if (i12 != 0) {
                        function7 = null;
                    } else {
                        function7 = function3;
                    }
                    if (i15 != 0) {
                        ComposableSingletons$BottomSheetScaffoldKt.f6706a.getClass();
                        function8 = ComposableSingletons$BottomSheetScaffoldKt.f6707b;
                    } else {
                        function8 = function4;
                    }
                    th = null;
                    if ((i4 & 16384) != 0) {
                        j9 = MaterialTheme.a(gapComposerH).p;
                    } else {
                        j9 = j4;
                    }
                    long jB116 = ColorSchemeKt.b(j9, gapComposerH);
                    modifier4 = dTFunctionNameModifier;
                    j10 = j9;
                    f7 = f1114;
                    function9 = function7;
                    z5 = z2;
                    shape4 = shapeA;
                    f8 = f1115;
                    j11 = jB115;
                    function6 = function8;
                    j12 = jB116;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey110 = ComposerKt.f7940a;
                function10 = function9;
                modifier5 = modifier4;
                Modifier modifierB7 = BackgroundKt.b(modifier4.o(SizeKt.f5052c), j10, RectangleShapeKt.f8913a);
                Alignment.f8582a.getClass();
                j13 = j10;
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                iG = gapComposerH.G();
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB7);
                ComposeUiNode.b0.getClass();
                f9 = f7;
                function0 = ComposeUiNode.Companion.f9641b;
                z6 = z5;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw th;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                function11 = ComposeUiNode.Companion.g;
                if (gapComposerH.S) {
                    defpackage.a.t(iG, gapComposerH, iG, function11);
                } else {
                    defpackage.a.t(iG, gapComposerH, iG, function11);
                }
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                f5 = f9;
                long j110 = j12;
                gapComposer = gapComposerH;
                CompositionLocalKt.a(defpackage.a.d(j12, ContentColorKt.f6730a), ComposableLambdaKt.b(999829022, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey111 = ComposerKt.f7940a;
                            final BottomSheetScaffoldState bottomSheetScaffoldState2 = bottomSheetScaffoldState;
                            SheetState sheetState = bottomSheetScaffoldState2.f6629a;
                            final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
                            final float f1116 = f2;
                            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-519581786, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.1
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Number) obj4).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey112 = ComposerKt.f7940a;
                                        composableLambdaImpl3.A(PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f1116, 7), composer3, 0);
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2);
                            final Function2 function12 = function2;
                            final ComposableLambdaImpl composableLambdaImpl4 = composableLambdaImpl;
                            final BottomSheetScaffoldState bottomSheetScaffoldState3 = bottomSheetScaffoldState;
                            final float f1117 = f2;
                            final float f1118 = f5;
                            final boolean z7 = z6;
                            final Shape shape5 = shape4;
                            final long j111 = j2;
                            final long j112 = j11;
                            final float f1119 = f8;
                            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-815624571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.2
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Number) obj4).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey112 = ComposerKt.f7940a;
                                        BottomSheetScaffoldKt.c(bottomSheetScaffoldState3.f6629a, f1117, f1118, z7, shape5, j111, j112, f1119, function12, composableLambdaImpl4, composer3, 0);
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2);
                            final Function3 function13 = function6;
                            ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(-1111667356, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.3
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Number) obj4).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey112 = ComposerKt.f7940a;
                                        function13.A(bottomSheetScaffoldState2.f6630b, composer3, 0);
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2);
                            boolean zK = composer2.K(bottomSheetScaffoldState2);
                            Object objX = composer2.x();
                            if (zK || objX == Composer.Companion.f7939a) {
                                objX = new lh(bottomSheetScaffoldState2, 0);
                                composer2.q(objX);
                            }
                            BottomSheetScaffoldKt.b(function10, composableLambdaImplB, composableLambdaImplB2, composableLambdaImplB3, (Function0) objX, sheetState, composer2, 3504);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposer), gapComposer, 56);
                gapComposer.Z(true);
                function5 = function10;
                z4 = z6;
                shape3 = shape4;
                j6 = j11;
                f6 = f8;
                modifier3 = modifier5;
                j7 = j13;
                j8 = j110;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                f5 = f3;
                j6 = j3;
                f6 = f4;
                function5 = function3;
                j7 = j4;
                z4 = z2;
                shape3 = shape2;
                modifier3 = modifier2;
                function6 = function4;
                j8 = j5;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2(modifier3, bottomSheetScaffoldState, f2, f5, shape3, j2, j6, f6, function2, z4, function5, function6, j7, j8, composableLambdaImpl2, i2, i3, i4) { // from class: kh

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ Modifier f71649c;
                    public final /* synthetic */ BottomSheetScaffoldState d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ float f71650e;

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    public final /* synthetic */ float f71651f;
                    public final /* synthetic */ Shape g;

                    /* JADX INFO: renamed from: h, reason: collision with root package name */
                    public final /* synthetic */ long f71652h;

                    /* JADX INFO: renamed from: i, reason: collision with root package name */
                    public final /* synthetic */ long f71653i;

                    /* JADX INFO: renamed from: j, reason: collision with root package name */
                    public final /* synthetic */ float f71654j;

                    /* JADX INFO: renamed from: k, reason: collision with root package name */
                    public final /* synthetic */ Function2 f71655k;
                    public final /* synthetic */ boolean l;
                    public final /* synthetic */ Function2 m;
                    public final /* synthetic */ Function3 n;
                    public final /* synthetic */ long o;
                    public final /* synthetic */ long p;
                    public final /* synthetic */ ComposableLambdaImpl q;
                    public final /* synthetic */ int r;
                    public final /* synthetic */ int s;

                    {
                        this.r = i3;
                        this.s = i4;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) throws Throwable {
                        ((Integer) obj2).getClass();
                        int iA = RecomposeScopeImplKt.a(7);
                        int iA2 = RecomposeScopeImplKt.a(this.r);
                        BottomSheetScaffoldKt.a(this.f71648b, this.f71649c, this.d, this.f71650e, this.f71651f, this.g, this.f71652h, this.f71653i, this.f71654j, this.f71655k, this.l, this.m, this.n, this.o, this.p, this.q, (Composer) obj, iA, iA2, this.s);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i11 |= 3072;
        i15 = i14;
        if ((i3 & 24576) != 0) {
            i11 |= ((i4 & 16384) == 0 || !gapComposerH.e(j4)) ? 8192 : 16384;
        }
        int i117 = i11 | 65536;
        if ((i8 & 306783379) == 306783378) {
            z3 = true;
        } else {
            z3 = true;
        }
        if (gapComposerH.p(i8 & 1, z3)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i16 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("BottomSheetScaffold-sdMYb0k");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                float f1116 = BottomSheetDefaults.f6577c;
                if ((i4 & 32) != 0) {
                    BottomSheetDefaults bottomSheetDefaults14 = BottomSheetDefaults.f6575a;
                    OpaqueKey opaqueKey111 = ComposerKt.f7940a;
                    shapeA = ShapesKt.a(SheetBottomTokens.f7849a, gapComposerH);
                } else {
                    shapeA = shape2;
                }
                long jB117 = ColorSchemeKt.b(j2, gapComposerH);
                Dp.Companion companion14 = Dp.f11004c;
                float f1117 = BottomSheetDefaults.f6576b;
                if (i9 != 0) {
                    z2 = true;
                }
                if (i12 != 0) {
                    function7 = null;
                } else {
                    function7 = function3;
                }
                if (i15 != 0) {
                    ComposableSingletons$BottomSheetScaffoldKt.f6706a.getClass();
                    function8 = ComposableSingletons$BottomSheetScaffoldKt.f6707b;
                } else {
                    function8 = function4;
                }
                th = null;
                if ((i4 & 16384) != 0) {
                    j9 = MaterialTheme.a(gapComposerH).p;
                } else {
                    j9 = j4;
                }
                long jB118 = ColorSchemeKt.b(j9, gapComposerH);
                modifier4 = dTFunctionNameModifier;
                j10 = j9;
                f7 = f1116;
                function9 = function7;
                z5 = z2;
                shape4 = shapeA;
                f8 = f1117;
                j11 = jB117;
                function6 = function8;
                j12 = jB118;
            } else {
                if (i16 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("BottomSheetScaffold-sdMYb0k");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                float f1118 = BottomSheetDefaults.f6577c;
                if ((i4 & 32) != 0) {
                    BottomSheetDefaults bottomSheetDefaults15 = BottomSheetDefaults.f6575a;
                    OpaqueKey opaqueKey112 = ComposerKt.f7940a;
                    shapeA = ShapesKt.a(SheetBottomTokens.f7849a, gapComposerH);
                } else {
                    shapeA = shape2;
                }
                long jB119 = ColorSchemeKt.b(j2, gapComposerH);
                Dp.Companion companion15 = Dp.f11004c;
                float f1119 = BottomSheetDefaults.f6576b;
                if (i9 != 0) {
                    z2 = true;
                }
                if (i12 != 0) {
                    function7 = null;
                } else {
                    function7 = function3;
                }
                if (i15 != 0) {
                    ComposableSingletons$BottomSheetScaffoldKt.f6706a.getClass();
                    function8 = ComposableSingletons$BottomSheetScaffoldKt.f6707b;
                } else {
                    function8 = function4;
                }
                th = null;
                if ((i4 & 16384) != 0) {
                    j9 = MaterialTheme.a(gapComposerH).p;
                } else {
                    j9 = j4;
                }
                long jB1110 = ColorSchemeKt.b(j9, gapComposerH);
                modifier4 = dTFunctionNameModifier;
                j10 = j9;
                f7 = f1118;
                function9 = function7;
                z5 = z2;
                shape4 = shapeA;
                f8 = f1119;
                j11 = jB119;
                function6 = function8;
                j12 = jB1110;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey113 = ComposerKt.f7940a;
            function10 = function9;
            modifier5 = modifier4;
            Modifier modifierB8 = BackgroundKt.b(modifier4.o(SizeKt.f5052c), j10, RectangleShapeKt.f8913a);
            Alignment.f8582a.getClass();
            j13 = j10;
            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            iG = gapComposerH.G();
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierB8);
            ComposeUiNode.b0.getClass();
            f9 = f7;
            function0 = ComposeUiNode.Companion.f9641b;
            z6 = z5;
            if (gapComposerH.f7976a != null) {
                ComposablesKt.b();
                throw th;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            function11 = ComposeUiNode.Companion.g;
            if (gapComposerH.S) {
                defpackage.a.t(iG, gapComposerH, iG, function11);
            } else {
                defpackage.a.t(iG, gapComposerH, iG, function11);
            }
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            f5 = f9;
            long j111 = j12;
            gapComposer = gapComposerH;
            CompositionLocalKt.a(defpackage.a.d(j12, ContentColorKt.f6730a), ComposableLambdaKt.b(999829022, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey114 = ComposerKt.f7940a;
                        final BottomSheetScaffoldState bottomSheetScaffoldState2 = bottomSheetScaffoldState;
                        SheetState sheetState = bottomSheetScaffoldState2.f6629a;
                        final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
                        final float f11110 = f2;
                        ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-519581786, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.1
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                Composer composer3 = (Composer) obj3;
                                int iIntValue2 = ((Number) obj4).intValue();
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                    OpaqueKey opaqueKey115 = ComposerKt.f7940a;
                                    composableLambdaImpl3.A(PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f11110, 7), composer3, 0);
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2);
                        final Function2 function12 = function2;
                        final ComposableLambdaImpl composableLambdaImpl4 = composableLambdaImpl;
                        final BottomSheetScaffoldState bottomSheetScaffoldState3 = bottomSheetScaffoldState;
                        final float f11111 = f2;
                        final float f11112 = f5;
                        final boolean z7 = z6;
                        final Shape shape5 = shape4;
                        final long j112 = j2;
                        final long j113 = j11;
                        final float f11113 = f8;
                        ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-815624571, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.2
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                Composer composer3 = (Composer) obj3;
                                int iIntValue2 = ((Number) obj4).intValue();
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                    OpaqueKey opaqueKey115 = ComposerKt.f7940a;
                                    BottomSheetScaffoldKt.c(bottomSheetScaffoldState3.f6629a, f11111, f11112, z7, shape5, j112, j113, f11113, function12, composableLambdaImpl4, composer3, 0);
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2);
                        final Function3 function13 = function6;
                        ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(-1111667356, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffold$1$1.3
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                Composer composer3 = (Composer) obj3;
                                int iIntValue2 = ((Number) obj4).intValue();
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                    OpaqueKey opaqueKey115 = ComposerKt.f7940a;
                                    function13.A(bottomSheetScaffoldState2.f6630b, composer3, 0);
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2);
                        boolean zK = composer2.K(bottomSheetScaffoldState2);
                        Object objX = composer2.x();
                        if (zK || objX == Composer.Companion.f7939a) {
                            objX = new lh(bottomSheetScaffoldState2, 0);
                            composer2.q(objX);
                        }
                        BottomSheetScaffoldKt.b(function10, composableLambdaImplB, composableLambdaImplB2, composableLambdaImplB3, (Function0) objX, sheetState, composer2, 3504);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposer), gapComposer, 56);
            gapComposer.Z(true);
            function5 = function10;
            z4 = z6;
            shape3 = shape4;
            j6 = j11;
            f6 = f8;
            modifier3 = modifier5;
            j7 = j13;
            j8 = j111;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            f5 = f3;
            j6 = j3;
            f6 = f4;
            function5 = function3;
            j7 = j4;
            z4 = z2;
            shape3 = shape2;
            modifier3 = modifier2;
            function6 = function4;
            j8 = j5;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(modifier3, bottomSheetScaffoldState, f2, f5, shape3, j2, j6, f6, function2, z4, function5, function6, j7, j8, composableLambdaImpl2, i2, i3, i4) { // from class: kh

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Modifier f71649c;
                public final /* synthetic */ BottomSheetScaffoldState d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ float f71650e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ float f71651f;
                public final /* synthetic */ Shape g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ long f71652h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ long f71653i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ float f71654j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function2 f71655k;
                public final /* synthetic */ boolean l;
                public final /* synthetic */ Function2 m;
                public final /* synthetic */ Function3 n;
                public final /* synthetic */ long o;
                public final /* synthetic */ long p;
                public final /* synthetic */ ComposableLambdaImpl q;
                public final /* synthetic */ int r;
                public final /* synthetic */ int s;

                {
                    this.r = i3;
                    this.s = i4;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) throws Throwable {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(7);
                    int iA2 = RecomposeScopeImplKt.a(this.r);
                    BottomSheetScaffoldKt.a(this.f71648b, this.f71649c, this.d, this.f71650e, this.f71651f, this.g, this.f71652h, this.f71653i, this.f71654j, this.f71655k, this.l, this.m, this.n, this.o, this.p, this.q, (Composer) obj, iA, iA2, this.s);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(Function2 function2, ComposableLambdaImpl composableLambdaImpl, ComposableLambdaImpl composableLambdaImpl2, ComposableLambdaImpl composableLambdaImpl3, final Function0 function0, final SheetState sheetState, Composer composer, int i2) {
        Function2 function3;
        GapComposer gapComposerH = composer.h(-1217723575);
        int i3 = i2 | (gapComposerH.y(function2) ? 4 : 2) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.K(sheetState) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (function2 == null) {
                ComposableSingletons$BottomSheetScaffoldKt.f6706a.getClass();
                function3 = ComposableSingletons$BottomSheetScaffoldKt.f6708c;
            } else {
                function3 = function2;
            }
            List listP = CollectionsKt.P(function3, composableLambdaImpl, composableLambdaImpl2, composableLambdaImpl3);
            boolean z = ((i3 & 57344) == 16384) | ((458752 & i3) == 131072);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z || objX == composer$Companion$Empty$1) {
                objX = new MultiContentMeasurePolicy() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1

                    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                    public /* synthetic */ class WhenMappings {

                        /* JADX INFO: renamed from: a, reason: collision with root package name */
                        public static final /* synthetic */ int[] f6603a;

                        static {
                            int[] iArr = new int[SheetValue.values().length];
                            try {
                                iArr[SheetValue.PartiallyExpanded.ordinal()] = 1;
                            } catch (NoSuchFieldError unused) {
                            }
                            try {
                                iArr[SheetValue.Expanded.ordinal()] = 2;
                            } catch (NoSuchFieldError unused2) {
                            }
                            try {
                                iArr[SheetValue.Hidden.ordinal()] = 3;
                            } catch (NoSuchFieldError unused3) {
                            }
                            f6603a = iArr;
                        }
                    }

                    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
                    /* JADX INFO: renamed from: measure-3p2s80s */
                    public final MeasureResult mo2measure3p2s80s(MeasureScope measureScope, List list, long j2) {
                        Integer numValueOf;
                        ArrayList arrayList = (ArrayList) list;
                        List list2 = (List) arrayList.get(0);
                        int i4 = 1;
                        List list3 = (List) arrayList.get(1);
                        List list4 = (List) arrayList.get(2);
                        List list5 = (List) arrayList.get(3);
                        final int iH = Constraints.h(j2);
                        final int iG = Constraints.g(j2);
                        long jA = Constraints.a(j2, 0, 0, 0, 0, 10);
                        final ArrayList arrayList2 = new ArrayList(list4.size());
                        int size = list4.size();
                        for (int i5 = 0; i5 < size; i5++) {
                            arrayList2.add(((Measurable) list4.get(i5)).T(jA));
                        }
                        final ArrayList arrayList3 = new ArrayList(list2.size());
                        int size2 = list2.size();
                        for (int i6 = 0; i6 < size2; i6++) {
                            arrayList3.add(((Measurable) list2.get(i6)).T(jA));
                        }
                        if (!arrayList3.isEmpty()) {
                            numValueOf = Integer.valueOf(((Placeable) arrayList3.get(0)).f9549c);
                            int size3 = arrayList3.size() - 1;
                            if (1 <= size3) {
                                while (true) {
                                    Integer numValueOf2 = Integer.valueOf(((Placeable) arrayList3.get(i4)).f9549c);
                                    if (numValueOf2.compareTo(numValueOf) > 0) {
                                        numValueOf = numValueOf2;
                                    }
                                    if (i4 == size3) {
                                        break;
                                    }
                                    i4++;
                                }
                            }
                        } else {
                            numValueOf = null;
                        }
                        final int iIntValue = numValueOf != null ? numValueOf.intValue() : 0;
                        long jA2 = Constraints.a(jA, 0, 0, 0, iG - iIntValue, 7);
                        final ArrayList arrayList4 = new ArrayList(list3.size());
                        int size4 = list3.size();
                        for (int i7 = 0; i7 < size4; i7++) {
                            arrayList4.add(((Measurable) list3.get(i7)).T(jA2));
                        }
                        final ArrayList arrayList5 = new ArrayList(list5.size());
                        int size5 = list5.size();
                        for (int i8 = 0; i8 < size5; i8++) {
                            arrayList5.add(((Measurable) list5.get(i8)).T(jA));
                        }
                        final SheetState sheetState2 = sheetState;
                        final Function0 function1 = function0;
                        return measureScope.V0(iH, iG, MapsKt.c(), new Function1() { // from class: mh
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                Integer numValueOf3;
                                Integer numValueOf4;
                                Integer numValueOf5;
                                int iC;
                                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                                ArrayList arrayList6 = arrayList2;
                                if (!arrayList6.isEmpty()) {
                                    numValueOf3 = Integer.valueOf(((Placeable) arrayList6.get(0)).f9548b);
                                    int size6 = arrayList6.size() - 1;
                                    if (1 <= size6) {
                                        int i9 = 1;
                                        while (true) {
                                            Integer numValueOf6 = Integer.valueOf(((Placeable) arrayList6.get(i9)).f9548b);
                                            if (numValueOf6.compareTo(numValueOf3) > 0) {
                                                numValueOf3 = numValueOf6;
                                            }
                                            if (i9 == size6) {
                                                break;
                                            }
                                            i9++;
                                        }
                                    }
                                } else {
                                    numValueOf3 = null;
                                }
                                int iIntValue2 = numValueOf3 != null ? numValueOf3.intValue() : 0;
                                int i10 = iH;
                                int iMax = Math.max(0, (i10 - iIntValue2) / 2);
                                ArrayList arrayList7 = arrayList5;
                                if (!arrayList7.isEmpty()) {
                                    numValueOf4 = Integer.valueOf(((Placeable) arrayList7.get(0)).f9548b);
                                    int size7 = arrayList7.size() - 1;
                                    if (1 <= size7) {
                                        int i11 = 1;
                                        while (true) {
                                            Integer numValueOf7 = Integer.valueOf(((Placeable) arrayList7.get(i11)).f9548b);
                                            if (numValueOf7.compareTo(numValueOf4) > 0) {
                                                numValueOf4 = numValueOf7;
                                            }
                                            if (i11 == size7) {
                                                break;
                                            }
                                            i11++;
                                        }
                                    }
                                } else {
                                    numValueOf4 = null;
                                }
                                int iIntValue3 = numValueOf4 != null ? numValueOf4.intValue() : 0;
                                if (!arrayList7.isEmpty()) {
                                    numValueOf5 = Integer.valueOf(((Placeable) arrayList7.get(0)).f9549c);
                                    int size8 = arrayList7.size() - 1;
                                    if (1 <= size8) {
                                        int i12 = 1;
                                        while (true) {
                                            Integer numValueOf8 = Integer.valueOf(((Placeable) arrayList7.get(i12)).f9549c);
                                            if (numValueOf8.compareTo(numValueOf5) > 0) {
                                                numValueOf5 = numValueOf8;
                                            }
                                            if (i12 == size8) {
                                                break;
                                            }
                                            i12++;
                                        }
                                    }
                                } else {
                                    numValueOf5 = null;
                                }
                                int iIntValue4 = numValueOf5 != null ? numValueOf5.intValue() : 0;
                                int i13 = (i10 - iIntValue3) / 2;
                                int i14 = BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1.WhenMappings.f6603a[sheetState2.c().ordinal()];
                                if (i14 == 1) {
                                    iC = MathKt.c(((Number) function1.mo47invoke()).floatValue());
                                } else {
                                    if (i14 != 2 && i14 != 3) {
                                        v40.g();
                                        return null;
                                    }
                                    iC = iG;
                                }
                                int i15 = iC - iIntValue4;
                                ArrayList arrayList8 = arrayList4;
                                int size9 = arrayList8.size();
                                for (int i16 = 0; i16 < size9; i16++) {
                                    Placeable.PlacementScope.y(placementScope, (Placeable) arrayList8.get(i16), 0, iIntValue);
                                }
                                ArrayList arrayList9 = arrayList3;
                                int size10 = arrayList9.size();
                                for (int i17 = 0; i17 < size10; i17++) {
                                    Placeable.PlacementScope.y(placementScope, (Placeable) arrayList9.get(i17), 0, 0);
                                }
                                int size11 = arrayList6.size();
                                for (int i18 = 0; i18 < size11; i18++) {
                                    Placeable.PlacementScope.y(placementScope, (Placeable) arrayList6.get(i18), iMax, 0);
                                }
                                int size12 = arrayList7.size();
                                for (int i19 = 0; i19 < size12; i19++) {
                                    Placeable.PlacementScope.y(placementScope, (Placeable) arrayList7.get(i19), i13, i15);
                                }
                                return Unit.f71739a;
                            }
                        });
                    }
                };
                gapComposerH.q(objX);
            }
            MultiContentMeasurePolicy multiContentMeasurePolicy = (MultiContentMeasurePolicy) objX;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BottomSheetScaffoldLayout");
            ComposableLambdaImpl composableLambdaImplB = LayoutKt.b(listP);
            boolean zK = gapComposerH.K(multiContentMeasurePolicy);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new MultiContentMeasurePolicyImpl(multiContentMeasurePolicy);
                gapComposerH.q(objX2);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) objX2;
            int iG = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicy, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Function2 function4 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function4);
            }
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            composableLambdaImplB.invoke(gapComposerH, 0);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u1(function2, composableLambdaImpl, composableLambdaImpl2, composableLambdaImpl3, function0, sheetState, i2, 6);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void c(final SheetState sheetState, final float f2, final float f3, final boolean z, final Shape shape, final long j2, final long j3, final float f4, final Function2 function2, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2) {
        GapComposer gapComposer;
        Modifier modifierJ;
        boolean z2;
        GapComposer gapComposerH = composer.h(-2108849428);
        int i3 = i2 | (gapComposerH.K(sheetState) ? 4 : 2) | (gapComposerH.c(f2) ? 32 : 16) | (gapComposerH.c(f3) ? 256 : 128) | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.K(shape) ? 16384 : 8192) | (gapComposerH.e(j2) ? 131072 : 65536) | (gapComposerH.e(j3) ? 1048576 : 524288) | (gapComposerH.c(Call.Parameters.DEFAULT_CAMERA_ZOOM) ? 8388608 : 4194304) | (gapComposerH.c(f4) ? 67108864 : 33554432) | (gapComposerH.y(function2) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && ((gapComposerH.y(composableLambdaImpl) ? (char) 4 : (char) 2) & 3) == 2) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MotionSchemeKeyTokens motionSchemeKeyTokens = MotionSchemeKeyTokens.DefaultSpatial;
            FiniteAnimationSpec finiteAnimationSpecA = MotionSchemeKt.a(motionSchemeKeyTokens, gapComposerH);
            FiniteAnimationSpec finiteAnimationSpecA2 = MotionSchemeKt.a(motionSchemeKeyTokens, gapComposerH);
            FiniteAnimationSpec finiteAnimationSpecA3 = MotionSchemeKt.a(MotionSchemeKeyTokens.FastEffects, gapComposerH);
            int i4 = i3 & 14;
            boolean zY = (i4 == 4) | gapComposerH.y(finiteAnimationSpecA2) | gapComposerH.y(finiteAnimationSpecA3) | gapComposerH.y(finiteAnimationSpecA);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new eh(sheetState, finiteAnimationSpecA2, finiteAnimationSpecA3, finiteAnimationSpecA, 0);
                gapComposerH.q(objX);
            }
            EffectsKt.i((Function0) objX, gapComposerH);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX2);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) objX2;
            Orientation orientation = Orientation.Vertical;
            float fU1 = ((Density) gapComposerH.k(CompositionLocalsKt.f10031h)).u1(f2);
            if (z) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, 2049456610, "StandardBottomSheet-w7I5h1o");
                boolean zK = gapComposerH.K(sheetState.f7211e);
                Object objX3 = gapComposerH.x();
                if (zK || objX3 == composer$Companion$Empty$1) {
                    z2 = false;
                    a aVar = new a(coroutineScope, sheetState, 0 == true ? 1 : 0);
                    float f5 = SheetDefaultsKt.f7201a;
                    SheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1 sheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1 = new SheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1(sheetState, aVar, orientation);
                    gapComposerH.q(sheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1);
                    objX3 = sheetDefaultsKt$ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection$1;
                } else {
                    z2 = false;
                }
                modifierJ = NestedScrollModifierKt.a(dTFunctionNameModifierI, (NestedScrollConnection) objX3, null);
                gapComposerH.Z(z2);
            } else {
                modifierJ = n00.j(gapComposerH, 2049851798, false, "StandardBottomSheet-w7I5h1o");
            }
            Modifier modifierO = SizeKt.j(SizeKt.d(SizeKt.u(new DTFunctionNameModifier("StandardBottomSheet-w7I5h1o"), Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, 1), 1.0f), f2).o(modifierJ);
            AnchoredDraggableState anchoredDraggableState = sheetState.f7211e;
            boolean zC = gapComposerH.c(fU1) | (i4 == 4);
            Object objX4 = gapComposerH.x();
            if (zC || objX4 == composer$Companion$Empty$1) {
                objX4 = new fh(sheetState, fU1);
                gapComposerH.q(objX4);
            }
            int i5 = i3 >> 9;
            gapComposer = gapComposerH;
            SurfaceKt.a(GraphicsLayerModifierKt.a(AnchoredDraggableKt.c(AnchoredDraggableKt.d(modifierO, anchoredDraggableState, orientation, (Function2) objX4), sheetState.f7211e, orientation, z), new ih(sheetState, 0)), shape, j2, j3, Call.Parameters.DEFAULT_CAMERA_ZOOM, f4, ComposableLambdaKt.b(1508311921, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$3
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierA = GraphicsLayerModifierKt.a(SizeKt.d(Modifier.Companion.f8607b, 1.0f), new ih(sheetState, 1));
                        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
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
                        Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Function2 function3 = ComposeUiNode.Companion.g;
                        if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                            fc.A(function3, iG, composer2, iG);
                        }
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        final Function2 function4 = function2;
                        if (function4 != null) {
                            composer2.L(-1044068159);
                            int i6 = Strings.f7646a;
                            final String strA = Strings_androidKt.a(composer2, R.string.m3c_bottom_sheet_collapse_description);
                            final String strA2 = Strings_androidKt.a(composer2, R.string.m3c_bottom_sheet_dismiss_description);
                            final String strA3 = Strings_androidKt.a(composer2, R.string.m3c_bottom_sheet_expand_description);
                            final SheetState sheetState2 = sheetState;
                            final CoroutineScope coroutineScope2 = coroutineScope;
                            final boolean z3 = z;
                            SheetDefaultsKt.a(ComposableLambdaKt.b(-511691176, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$3$1$1

                                @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                                public /* synthetic */ class WhenMappings {

                                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                                    public static final /* synthetic */ int[] f6625a;

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
                                        f6625a = iArr;
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
                                        CoroutineScope coroutineScope3 = coroutineScope2;
                                        boolean zY2 = zK2 | composer3.y(coroutineScope3);
                                        Object objX5 = composer3.x();
                                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                        if (zY2 || objX5 == composer$Companion$Empty$2) {
                                            objX5 = new b(sheetState3, coroutineScope3, 0);
                                            composer3.q(objX5);
                                        }
                                        Modifier modifierC2 = ClickableKt.c((Function0) objX5);
                                        boolean zK3 = composer3.K(sheetState3) | composer3.b(z3) | composer3.K(strA3) | composer3.y(coroutineScope3) | composer3.K(strA) | composer3.K(strA2);
                                        Object objX6 = composer3.x();
                                        if (zK3 || objX6 == composer$Companion$Empty$2) {
                                            nh nhVar = new nh(0, sheetState2, strA3, strA, strA2, coroutineScope2, z3);
                                            composer3.q(nhVar);
                                            objX6 = nhVar;
                                        }
                                        Modifier modifierB = SemanticsModifierKt.b(modifierC2, true, (Function1) objX6);
                                        Alignment.f8582a.getClass();
                                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                        int iG2 = composer3.G();
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                                        Modifier modifierC3 = ComposedModifierKt.c(composer3, modifierB);
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
                                        Updater.c(composer3, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                        Updater.c(composer3, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                                        Function2 function5 = ComposeUiNode.Companion.g;
                                        if (composer3.getS() || !Intrinsics.c(composer3.x(), Integer.valueOf(iG2))) {
                                            fc.A(function5, iG2, composer3, iG2);
                                        }
                                        Updater.c(composer3, modifierC3, ComposeUiNode.Companion.d);
                                        function4.invoke(composer3, 0);
                                        composer3.r();
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2), composer2, 54);
                            composer2.F();
                        } else {
                            composer2.L(-1040260677);
                            composer2.F();
                        }
                        composableLambdaImpl.A(ColumnScopeInstance.f4944a, composer2, 6);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, (i5 & 112) | 12582912 | (i5 & 896) | (i5 & 7168) | (57344 & i5) | (i5 & ImageMetadata.JPEG_GPS_COORDINATES), 64);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(f2, f3, z, shape, j2, j3, f4, function2, composableLambdaImpl, i2) { // from class: gh

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ float f69404c;
                public final /* synthetic */ float d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f69405e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Shape f69406f;
                public final /* synthetic */ long g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ long f69407h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ float f69408i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function2 f69409j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ ComposableLambdaImpl f69410k;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    BottomSheetScaffoldKt.c(this.f69403b, this.f69404c, this.d, this.f69405e, this.f69406f, this.g, this.f69407h, this.f69408i, this.f69409j, this.f69410k, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final BottomSheetScaffoldState d(SheetState sheetState, Composer composer, int i2) {
        if ((i2 & 1) != 0) {
            sheetState = e(null, composer, 0, 7);
        }
        Object objX = composer.x();
        Object obj = Composer.Companion.f7939a;
        if (objX == obj) {
            objX = new SnackbarHostState();
            composer.q(objX);
        }
        SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        boolean zK = composer.K(sheetState) | composer.K(snackbarHostState);
        Object objX2 = composer.x();
        if (zK || objX2 == obj) {
            objX2 = new BottomSheetScaffoldState(sheetState, snackbarHostState);
            composer.q(objX2);
        }
        return (BottomSheetScaffoldState) objX2;
    }

    public static final SheetState e(SheetValue sheetValue, Composer composer, int i2, int i3) {
        if ((i3 & 1) != 0) {
            sheetValue = SheetValue.PartiallyExpanded;
        }
        SheetValue sheetValue2 = sheetValue;
        Object objX = composer.x();
        if (objX == Composer.Companion.f7939a) {
            objX = new jh(0);
            composer.q(objX);
        }
        Function1 function1 = (Function1) objX;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return SheetDefaultsKt.b(false, function1, sheetValue2, true, composer, (i2 & 112) | ((i2 << 6) & 896) | ((i2 << 3) & 7168), 49);
    }
}
