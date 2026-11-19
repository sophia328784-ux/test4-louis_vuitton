package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Center$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.internal.FloatProducer;
import androidx.compose.material3.internal.ProvideContentColorTextStyleKt;
import androidx.compose.material3.tokens.AppBarSmallTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
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
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.g5;
import defpackage.md;
import defpackage.v6;
import defpackage.w6;
import defpackage.x6;
import defpackage.y2;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$FloatRef;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"", "touchExplorationServiceEnabled", "material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class AppBarKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DynamicProvidableCompositionLocal f6561a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f6562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f6563c;

    static {
        Dp.Companion companion = Dp.f11004c;
        f6561a = CompositionLocalKt.c(new g5(5));
        CompositionLocalKt.c(new g5(6));
        new CubicBezierEasing(0.8f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.8f, 0.15f);
        f6562b = 4.0f;
        f6563c = 12.0f;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004f  */
    /* JADX WARN: Code duplicated, block: B:27:0x0052  */
    /* JADX WARN: Code duplicated, block: B:30:0x0061  */
    /* JADX WARN: Code duplicated, block: B:31:0x0063  */
    /* JADX WARN: Code duplicated, block: B:34:0x006c  */
    /* JADX WARN: Code duplicated, block: B:41:0x008a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x008c  */
    /* JADX WARN: Code duplicated, block: B:44:0x0093  */
    /* JADX WARN: Code duplicated, block: B:52:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:57:0x0110  */
    /* JADX WARN: Code duplicated, block: B:59:? A[RETURN, SYNTHETIC] */
    public static final void a(Function2 function2, Modifier modifier, Function2 function3, Function3 function4, float f2, WindowInsets windowInsets, TopAppBarColors topAppBarColors, Composer composer, int i2, int i3) {
        int i4;
        Function3 function5;
        int i5;
        int i6;
        boolean z;
        GapComposer gapComposer;
        float f3;
        Modifier modifier2;
        Function3 function6;
        WindowInsets windowInsets2;
        RecomposeScopeImpl recomposeScopeImplB0;
        float f4;
        int i7;
        WindowInsets windowInsetsC;
        float f5;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "CenterAlignedTopAppBar-GHTll3U");
        }
        GapComposer gapComposerH = composer.h(-302230691);
        int i8 = i3 & 2;
        if (i8 != 0) {
            i4 = i2 | 48;
        } else {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 32 : 16) | i2;
        }
        int i9 = i3 & 8;
        if (i9 == 0) {
            if ((i2 & 3072) == 0) {
                function5 = function4;
                i4 |= gapComposerH.y(function5) ? 2048 : 1024;
            }
            int i10 = i4 | 90112;
            if (gapComposerH.K(topAppBarColors)) {
                i5 = 1048576;
            } else {
                i5 = 524288;
            }
            i6 = i10 | i5 | 12582912;
            if ((4793491 & i6) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i6 & 1, z)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0 || gapComposerH.h0()) {
                    if (i8 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("CenterAlignedTopAppBar-GHTll3U");
                    }
                    if (i9 != 0) {
                        ComposableSingletons$AppBarKt.f6674a.getClass();
                        function5 = ComposableSingletons$AppBarKt.f6675b;
                    }
                    f4 = TopAppBarDefaults.f7433a;
                    i7 = i6 & (-458753);
                    windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                } else {
                    gapComposerH.D();
                    windowInsetsC = windowInsets;
                    i7 = i6 & (-458753);
                    f4 = f2;
                }
                Modifier modifier3 = dTFunctionNameModifier;
                Function3 function7 = function5;
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                TextStyle textStyleA = TypographyKt.a(AppBarSmallTokens.f7736b, gapComposerH);
                TextStyle.d.getClass();
                TextStyle textStyle = TextStyle.f10567e;
                Alignment.f8582a.getClass();
                BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
                Dp.f11004c.getClass();
                if (!Dp.b(f4, Dp.f11005e) || Dp.b(f4, Dp.d)) {
                    f5 = TopAppBarDefaults.f7433a;
                } else {
                    f5 = f4;
                }
                gapComposer = gapComposerH;
                b(modifier3, function2, textStyleA, textStyle, horizontal, function3, function7, f5, windowInsetsC, topAppBarColors, gapComposer, ((i7 >> 3) & 14) | 1797168 | ((i7 << 12) & 29360128), (i7 >> 18) & 126);
                f3 = f4;
                modifier2 = modifier3;
                function6 = function7;
                windowInsets2 = windowInsetsC;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                f3 = f2;
                modifier2 = dTFunctionNameModifier;
                function6 = function5;
                windowInsets2 = windowInsets;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new x6(function2, modifier2, function3, function6, f3, windowInsets2, topAppBarColors, i2, i3, 0);
            }
        }
        i4 |= 3072;
        function5 = function4;
        int i11 = i4 | 90112;
        if (gapComposerH.K(topAppBarColors)) {
            i5 = 1048576;
        } else {
            i5 = 524288;
        }
        i6 = i11 | i5 | 12582912;
        if ((4793491 & i6) != 4793490) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i6 & 1, z)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i8 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("CenterAlignedTopAppBar-GHTll3U");
                }
                if (i9 != 0) {
                    ComposableSingletons$AppBarKt.f6674a.getClass();
                    function5 = ComposableSingletons$AppBarKt.f6675b;
                }
                f4 = TopAppBarDefaults.f7433a;
                i7 = i6 & (-458753);
                windowInsetsC = TopAppBarDefaults.c(gapComposerH);
            } else {
                if (i8 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("CenterAlignedTopAppBar-GHTll3U");
                }
                if (i9 != 0) {
                    ComposableSingletons$AppBarKt.f6674a.getClass();
                    function5 = ComposableSingletons$AppBarKt.f6675b;
                }
                f4 = TopAppBarDefaults.f7433a;
                i7 = i6 & (-458753);
                windowInsetsC = TopAppBarDefaults.c(gapComposerH);
            }
            Modifier modifier4 = dTFunctionNameModifier;
            Function3 function8 = function5;
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            TextStyle textStyleA2 = TypographyKt.a(AppBarSmallTokens.f7736b, gapComposerH);
            TextStyle.d.getClass();
            TextStyle textStyle2 = TextStyle.f10567e;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal2 = Alignment.Companion.o;
            Dp.f11004c.getClass();
            if (Dp.b(f4, Dp.f11005e)) {
                f5 = TopAppBarDefaults.f7433a;
            } else {
                f5 = TopAppBarDefaults.f7433a;
            }
            gapComposer = gapComposerH;
            b(modifier4, function2, textStyleA2, textStyle2, horizontal2, function3, function8, f5, windowInsetsC, topAppBarColors, gapComposer, ((i7 >> 3) & 14) | 1797168 | ((i7 << 12) & 29360128), (i7 >> 18) & 126);
            f3 = f4;
            modifier2 = modifier4;
            function6 = function8;
            windowInsets2 = windowInsetsC;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            f3 = f2;
            modifier2 = dTFunctionNameModifier;
            function6 = function5;
            windowInsets2 = windowInsets;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x6(function2, modifier2, function3, function6, f3, windowInsets2, topAppBarColors, i2, i3, 0);
        }
    }

    public static final void b(Modifier modifier, final Function2 function2, final TextStyle textStyle, final TextStyle textStyle2, final Alignment.Horizontal horizontal, final Function2 function3, final Function3 function4, final float f2, final WindowInsets windowInsets, final TopAppBarColors topAppBarColors, Composer composer, final int i2, final int i3) {
        int i4;
        TextStyle textStyle3;
        Alignment.Horizontal horizontal2;
        Function2 function5;
        Function3 function6;
        int i5;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "SingleRowTopAppBar-wn8IZOc");
        }
        final Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-2033800111);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(function2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(textStyle) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(null) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            textStyle3 = textStyle2;
            i4 |= gapComposerH.K(textStyle3) ? 16384 : 8192;
        } else {
            textStyle3 = textStyle2;
        }
        if ((196608 & i2) == 0) {
            horizontal2 = horizontal;
            i4 |= gapComposerH.K(horizontal2) ? 131072 : 65536;
        } else {
            horizontal2 = horizontal;
        }
        if ((1572864 & i2) == 0) {
            function5 = function3;
            i4 |= gapComposerH.y(function5) ? 1048576 : 524288;
        } else {
            function5 = function3;
        }
        if ((12582912 & i2) == 0) {
            function6 = function4;
            i4 |= gapComposerH.y(function6) ? 8388608 : 4194304;
        } else {
            function6 = function4;
        }
        if ((100663296 & i2) == 0) {
            i4 |= gapComposerH.c(f2) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i4 |= gapComposerH.K(windowInsets) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i5 = i3 | (gapComposerH.K(topAppBarColors) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.K(null) ? 32 : 16;
        }
        if (gapComposerH.p(i4 & 1, ((306783379 & i4) == 306783378 && (i5 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ((SingleRowTopAppBarOverride) gapComposerH.k(f6561a)).a(new SingleRowTopAppBarOverrideScope(modifier2, function2, textStyle, null, textStyle3, horizontal2, function5, function6, f2, windowInsets, topAppBarColors, null, null), gapComposerH, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: y6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    AppBarKt.b(modifier2, function2, textStyle, textStyle2, horizontal, function3, function4, f2, windowInsets, topAppBarColors, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), RecomposeScopeImplKt.a(i3));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void c(Function2 function2, Modifier modifier, Function2 function3, Function3 function4, float f2, WindowInsets windowInsets, TopAppBarColors topAppBarColors, Composer composer, int i2, int i3) {
        int i4;
        GapComposer gapComposer;
        float f3;
        float f4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "TopAppBar-GHTll3U");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1784421840);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.y(function2) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.K(modifier2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(function3) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(function4) ? 2048 : 1024;
        }
        int i5 = i4 | 24576;
        if ((196608 & i2) == 0) {
            i5 |= gapComposerH.K(windowInsets) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i5 |= gapComposerH.K(topAppBarColors) ? 1048576 : 524288;
        }
        if ((i3 & 128) != 0) {
            i5 |= 12582912;
        } else if ((i2 & 12582912) == 0) {
            i5 |= gapComposerH.K(null) ? 8388608 : 4194304;
        }
        if (gapComposerH.p(i5 & 1, (4793491 & i5) != 4793490)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                f4 = TopAppBarDefaults.f7433a;
            } else {
                gapComposerH.D();
                f4 = f2;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            TextStyle textStyleA = TypographyKt.a(AppBarSmallTokens.f7736b, gapComposerH);
            TextStyle.d.getClass();
            TextStyle textStyle = TextStyle.f10567e;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            Dp.f11004c.getClass();
            int i6 = i5 << 12;
            gapComposer = gapComposerH;
            b(modifier2, function2, textStyleA, textStyle, horizontal, function3, function4, (Dp.b(f4, Dp.f11005e) || Dp.b(f4, Dp.d)) ? TopAppBarDefaults.f7433a : f4, windowInsets, topAppBarColors, gapComposer, ((i5 >> 3) & 14) | 224256 | ((i5 << 3) & 112) | (i6 & 3670016) | (i6 & 29360128) | (i6 & 1879048192), (i5 >> 18) & 126);
            f3 = f4;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            f3 = f2;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x6(function2, modifier2, function3, function4, f3, windowInsets, topAppBarColors, i2, i3, 1);
        }
    }

    public static final void d(Modifier modifier, final FloatProducer floatProducer, final long j2, final long j3, final long j4, long j5, final Function2 function2, final TextStyle textStyle, final Function2 function3, final TextStyle textStyle2, Function0 function0, final Alignment.Horizontal horizontal, final Function2 function4, ComposableLambdaImpl composableLambdaImpl, final float f2, Composer composer, final int i2) {
        Function0 function1;
        ComposableLambdaImpl composableLambdaImpl2;
        GapComposer gapComposer;
        Function2 function5;
        BiasAlignment biasAlignment;
        Function2 function6;
        float f3;
        boolean z;
        Function0 function7;
        Modifier modifierE = modifier;
        final long j6 = j5;
        Arrangement$Center$1 arrangement$Center$1 = Arrangement.f4921e;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "TopAppBarLayout-lyUyIHI");
        }
        GapComposer gapComposerH = composer.h(126395868);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(floatProducer) ? 32 : 16) | (gapComposerH.e(j2) ? 256 : 128) | (gapComposerH.e(j3) ? 2048 : 1024) | (gapComposerH.e(j4) ? 16384 : 8192) | (gapComposerH.e(j6) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288) | (gapComposerH.K(textStyle) ? 8388608 : 4194304) | (gapComposerH.y(function3) ? 67108864 : 33554432) | (gapComposerH.K(textStyle2) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i4 = 1600566 | (gapComposerH.K(horizontal) ? 256 : 128) | (gapComposerH.y(function4) ? 131072 : 65536) | (gapComposerH.c(f2) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (4793491 & i4) == 4793490) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i5 = i4 & 896;
            boolean z2 = ((29360128 & i4) == 8388608) | ((i3 & 112) == 32) | (i5 == 256);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$1) {
                TopAppBarMeasurePolicy topAppBarMeasurePolicy = new TopAppBarMeasurePolicy(floatProducer, arrangement$Center$1, horizontal, 0, f2, null);
                gapComposerH.q(topAppBarMeasurePolicy);
                objX = topAppBarMeasurePolicy;
            }
            TopAppBarMeasurePolicy topAppBarMeasurePolicy2 = (TopAppBarMeasurePolicy) objX;
            int iG = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
            ComposeUiNode.b0.getClass();
            Function0 function8 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function8);
            } else {
                gapComposerH.o();
            }
            Function2 function9 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, topAppBarMeasurePolicy2, function9);
            Function2 function10 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function10);
            Function2 function11 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function11);
            }
            Function2 function12 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function12);
            Modifier modifierB = LayoutIdKt.b(new DTFunctionNameModifier("TopAppBarLayout-lyUyIHI"), "navigationIcon");
            float f4 = f6562b;
            Modifier modifierM = PaddingKt.m(modifierB, f4, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
            Alignment.f8582a.getClass();
            BiasAlignment biasAlignment2 = Alignment.Companion.f8584b;
            MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment2, false);
            int iG2 = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function8);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function9);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function10);
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG2))) {
                defpackage.a.t(iG2, gapComposerH, iG2, function11);
            }
            Updater.c(gapComposerH, modifierC2, function12);
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = ContentColorKt.f6730a;
            CompositionLocalKt.a(defpackage.a.d(j2, dynamicProvidableCompositionLocal), function4, gapComposerH, ((i4 >> 12) & 112) | 8);
            gapComposerH.Z(true);
            if (function3 != null) {
                gapComposerH.L(-1360720648);
                int i6 = 2;
                Modifier modifierK = PaddingKt.k(LayoutIdKt.b(new DTFunctionNameModifier("TopAppBarLayout-lyUyIHI"), "title"), f4, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                gapComposerH.L(510305197);
                gapComposerH.Z(false);
                Modifier modifierO = modifierK.o(new DTFunctionNameModifier("TopAppBarLayout-lyUyIHI"));
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    function7 = function0;
                    objX2 = new y2(function7, i6);
                    gapComposerH.q(objX2);
                } else {
                    function7 = function0;
                }
                Modifier modifierA = GraphicsLayerModifierKt.a(modifierO, (Function1) objX2);
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, horizontal, gapComposerH, (i5 >> 3) & 112);
                int iG3 = gapComposerH.G();
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierA);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function8);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, function9);
                Updater.c(gapComposerH, persistentCompositionLocalMapU3, function10);
                if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG3))) {
                    defpackage.a.t(iG3, gapComposerH, iG3, function11);
                }
                Updater.c(gapComposerH, modifierC3, function12);
                int i7 = i3 >> 18;
                int i8 = i3 >> 12;
                ProvideContentColorTextStyleKt.a(j3, textStyle, function2, gapComposerH, ((i3 >> 9) & 14) | (i7 & 112) | (i8 & 896));
                int i9 = (i8 & 14) | ((i3 >> 24) & 112) | (i7 & 896);
                function6 = function9;
                function5 = function11;
                gapComposer = gapComposerH;
                biasAlignment = biasAlignment2;
                ProvideContentColorTextStyleKt.a(j4, textStyle2, function3, gapComposer, i9);
                gapComposer.Z(true);
                gapComposer.Z(false);
                z = false;
                function1 = function7;
                f3 = f4;
            } else {
                function5 = function11;
                biasAlignment = biasAlignment2;
                int i10 = 3;
                function1 = function0;
                gapComposer = gapComposerH;
                function6 = function9;
                gapComposer.L(-1359701523);
                f3 = f4;
                Modifier modifierK2 = PaddingKt.k(LayoutIdKt.b(new DTFunctionNameModifier("TopAppBarLayout-lyUyIHI"), "title"), f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                gapComposer.L(510340109);
                gapComposer.Z(false);
                Modifier modifierO2 = modifierK2.o(new DTFunctionNameModifier("TopAppBarLayout-lyUyIHI"));
                Object objX3 = gapComposer.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new y2(function1, i10);
                    gapComposer.q(objX3);
                }
                Modifier modifierA2 = GraphicsLayerModifierKt.a(modifierO2, (Function1) objX3);
                MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
                int iG4 = gapComposer.G();
                PersistentCompositionLocalMap persistentCompositionLocalMapU4 = gapComposer.U();
                Modifier modifierC4 = ComposedModifierKt.c(gapComposer, modifierA2);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function8);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, measurePolicyD2, function6);
                Updater.c(gapComposer, persistentCompositionLocalMapU4, function10);
                if (gapComposer.S || !Intrinsics.c(gapComposer.x(), Integer.valueOf(iG4))) {
                    defpackage.a.t(iG4, gapComposer, iG4, function5);
                }
                Updater.c(gapComposer, modifierC4, function12);
                ProvideContentColorTextStyleKt.a(j3, textStyle, function2, gapComposer, ((i3 >> 9) & 14) | ((i3 >> 18) & 112) | ((i3 >> 12) & 896));
                gapComposer.Z(true);
                z = false;
                gapComposer.Z(false);
            }
            Modifier modifierM2 = PaddingKt.m(LayoutIdKt.b(new DTFunctionNameModifier("TopAppBarLayout-lyUyIHI"), "actionIcons"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
            MeasurePolicy measurePolicyD3 = BoxKt.d(biasAlignment, z);
            int iG5 = gapComposer.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU5 = gapComposer.U();
            Modifier modifierC5 = ComposedModifierKt.c(gapComposer, modifierM2);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposer.B();
            if (gapComposer.S) {
                gapComposer.C(function8);
            } else {
                gapComposer.o();
            }
            Updater.c(gapComposer, measurePolicyD3, function6);
            Updater.c(gapComposer, persistentCompositionLocalMapU5, function10);
            if (gapComposer.S || !Intrinsics.c(gapComposer.x(), Integer.valueOf(iG5))) {
                defpackage.a.t(iG5, gapComposer, iG5, function5);
            }
            Updater.c(gapComposer, modifierC5, function12);
            j6 = j5;
            composableLambdaImpl2 = composableLambdaImpl;
            CompositionLocalKt.a(dynamicProvidableCompositionLocal.c(new Color(j6)), composableLambdaImpl2, gapComposer, 56);
            gapComposer.Z(true);
            gapComposer.Z(true);
        } else {
            function1 = function0;
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
            final Function0 function13 = function1;
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2(modifier2, floatProducer, j2, j3, j4, j6, function2, textStyle, function3, textStyle2, function13, horizontal, function4, composableLambdaImpl3, f2, i2) { // from class: z6

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ Modifier f81543b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ FloatProducer f81544c;
                public final /* synthetic */ long d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ long f81545e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ long f81546f;
                public final /* synthetic */ long g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function2 f81547h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ TextStyle f81548i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function2 f81549j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ TextStyle f81550k;
                public final /* synthetic */ Function0 l;
                public final /* synthetic */ Alignment.Horizontal m;
                public final /* synthetic */ Function2 n;
                public final /* synthetic */ ComposableLambdaImpl o;
                public final /* synthetic */ float p;

                {
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    AppBarKt.d(this.f81543b, this.f81544c, this.d, this.f81545e, this.f81546f, this.g, this.f81547h, this.f81548i, this.f81549j, this.f81550k, this.l, this.m, this.n, this.o, this.p, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    public static final Object e(TopAppBarState topAppBarState, float f2, DecayAnimationSpec decayAnimationSpec, AnimationSpec animationSpec, ContinuationImpl continuationImpl) {
        AppBarKt$settleAppBar$1 appBarKt$settleAppBar$1;
        Ref$FloatRef ref$FloatRef;
        Ref$FloatRef ref$FloatRef2;
        if (continuationImpl instanceof AppBarKt$settleAppBar$1) {
            appBarKt$settleAppBar$1 = (AppBarKt$settleAppBar$1) continuationImpl;
            int i2 = appBarKt$settleAppBar$1.f6567f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appBarKt$settleAppBar$1.f6567f = i2 - Integer.MIN_VALUE;
            } else {
                appBarKt$settleAppBar$1 = new AppBarKt$settleAppBar$1(continuationImpl);
            }
        } else {
            appBarKt$settleAppBar$1 = new AppBarKt$settleAppBar$1(continuationImpl);
        }
        AppBarKt$settleAppBar$1 appBarKt$settleAppBar$2 = appBarKt$settleAppBar$1;
        Object obj = appBarKt$settleAppBar$2.f6566e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appBarKt$settleAppBar$2.f6567f;
        int i4 = 0;
        if (i3 != 0) {
            if (i3 == 1) {
                Ref$FloatRef ref$FloatRef3 = appBarKt$settleAppBar$2.d;
                animationSpec = appBarKt$settleAppBar$2.f6565c;
                TopAppBarState topAppBarState2 = (TopAppBarState) appBarKt$settleAppBar$2.f6564b;
                ResultKt.b(obj);
                ref$FloatRef = ref$FloatRef3;
                topAppBarState = topAppBarState2;
            } else {
                if (i3 != 2) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ref$FloatRef2 = (Ref$FloatRef) appBarKt$settleAppBar$2.f6564b;
                ResultKt.b(obj);
            }
            ref$FloatRef = ref$FloatRef2;
            return new Velocity(VelocityKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, ref$FloatRef.f71918b));
        }
        ResultKt.b(obj);
        if (topAppBarState.a() < 0.01f || topAppBarState.a() == 1.0f) {
            Velocity.f11029b.getClass();
            return new Velocity(0L);
        }
        ref$FloatRef = new Ref$FloatRef();
        ref$FloatRef.f71918b = f2;
        if (decayAnimationSpec != null && Math.abs(f2) > 1.0f) {
            Ref$FloatRef ref$FloatRef4 = new Ref$FloatRef();
            AnimationState animationStateA = AnimationStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 28);
            v6 v6Var = new v6(ref$FloatRef4, topAppBarState, ref$FloatRef, i4);
            appBarKt$settleAppBar$2.f6564b = topAppBarState;
            appBarKt$settleAppBar$2.f6565c = animationSpec;
            appBarKt$settleAppBar$2.d = ref$FloatRef;
            appBarKt$settleAppBar$2.f6567f = 1;
            if (SuspendAnimationKt.e(animationStateA, decayAnimationSpec, false, v6Var, appBarKt$settleAppBar$2) != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        return new Velocity(VelocityKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, ref$FloatRef.f71918b));
        if (animationSpec != null && topAppBarState.b() < Call.Parameters.DEFAULT_CAMERA_ZOOM && topAppBarState.b() > topAppBarState.f7439a) {
            AnimationState animationStateA2 = AnimationStateKt.a(topAppBarState.b(), Call.Parameters.DEFAULT_CAMERA_ZOOM, 30);
            Float f3 = new Float(topAppBarState.a() < 0.5f ? 0.0f : topAppBarState.f7439a);
            w6 w6Var = new w6(topAppBarState, i4);
            appBarKt$settleAppBar$2.f6564b = ref$FloatRef;
            appBarKt$settleAppBar$2.f6565c = null;
            appBarKt$settleAppBar$2.d = null;
            appBarKt$settleAppBar$2.f6567f = 2;
            if (SuspendAnimationKt.g(animationStateA2, f3, animationSpec, false, w6Var, appBarKt$settleAppBar$2, 4) != coroutineSingletons) {
                ref$FloatRef2 = ref$FloatRef;
                ref$FloatRef = ref$FloatRef2;
            }
            return coroutineSingletons;
        }
        return new Velocity(VelocityKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, ref$FloatRef.f71918b));
    }
}
