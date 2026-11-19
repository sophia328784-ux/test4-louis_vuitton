package com.vuitton.android.presentation.common.editorial.components.carouselm;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.components.LVFreeCarouselWithHintKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import defpackage.a;
import defpackage.ai;
import defpackage.d21;
import defpackage.jh;
import defpackage.n00;
import defpackage.rd;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CarouselMKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50744a;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f50744a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x018a  */
    /* JADX WARN: Code duplicated, block: B:102:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:105:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:107:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:108:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:110:0x0206  */
    /* JADX WARN: Code duplicated, block: B:114:0x029c  */
    /* JADX WARN: Code duplicated, block: B:116:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:119:0x02af  */
    /* JADX WARN: Code duplicated, block: B:121:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x0098  */
    /* JADX WARN: Code duplicated, block: B:52:0x009e  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:66:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:71:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:75:0x00da A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:76:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:78:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:81:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:82:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:85:0x0103  */
    /* JADX WARN: Code duplicated, block: B:86:0x0105  */
    /* JADX WARN: Code duplicated, block: B:90:0x0112  */
    /* JADX WARN: Code duplicated, block: B:93:0x0147  */
    /* JADX WARN: Code duplicated, block: B:95:0x014e  */
    /* JADX WARN: Code duplicated, block: B:96:0x0152  */
    /* JADX WARN: Code duplicated, block: B:99:0x0174  */
    public static final void a(Modifier modifier, String str, List list, LVColorScheme lVColorScheme, boolean z, boolean z2, Function2 function2, Function0 function0, Composer composer, int i2, int i3) {
        int i4;
        boolean z3;
        boolean z4;
        Function2 function3;
        Modifier modifier2;
        boolean z5;
        RecomposeScopeImpl recomposeScopeImplB0;
        LazyListState lazyListStateA;
        boolean z6;
        boolean z7;
        boolean z8;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function1;
        Object objX2;
        int i5;
        boolean z9;
        long j2;
        LazyListState lazyListState;
        int i6;
        boolean z10;
        String str2;
        int i7;
        int i8;
        int i9;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "CarouselM");
        }
        list.getClass();
        lVColorScheme.getClass();
        function2.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(200654300);
        int i10 = i3 & 1;
        if (i10 != 0) {
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
            i4 |= gapComposerH.y(list) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.d(lVColorScheme.ordinal()) ? 2048 : 1024;
        }
        int i11 = i3 & 16;
        if (i11 == 0) {
            if ((i2 & 24576) == 0) {
                z3 = z;
                i4 |= gapComposerH.b(z3) ? 16384 : 8192;
            }
            if ((196608 & i2) == 0) {
                if (gapComposerH.b(z2)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i4 |= i9;
            }
            if ((1572864 & i2) == 0) {
                if (gapComposerH.y(function2)) {
                    i8 = 1048576;
                } else {
                    i8 = 524288;
                }
                i4 |= i8;
            }
            if ((12582912 & i2) == 0) {
                if (gapComposerH.y(function0)) {
                    i7 = 8388608;
                } else {
                    i7 = 4194304;
                }
                i4 |= i7;
            }
            if ((4793491 & i4) != 4793490) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i4 & 1, z4)) {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("CarouselM");
                }
                if (i11 != 0) {
                    z3 = false;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                Boolean boolValueOf = Boolean.valueOf(z2);
                if ((458752 & i4) == 131072) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                boolean zK = z6 | gapComposerH.K(lazyListStateA);
                if ((29360128 & i4) == 8388608) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                z8 = zK | z7;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (z8 || objX == composer$Companion$Empty$1) {
                    objX = new CarouselMKt$CarouselM$1$1(z2, lazyListStateA, function0, null);
                    gapComposerH.q(objX);
                }
                EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX);
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                ComposeUiNode.b0.getClass();
                function1 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                if (str == null) {
                    gapComposerH.L(1047356101);
                    gapComposerH.Z(false);
                    str2 = "CarouselM";
                    lazyListState = lazyListStateA;
                    i6 = i4;
                    z10 = z3;
                } else {
                    Modifier modifierE = ModifierExtKt.e(PaddingKt.m(PaddingKt.k(n00.i(gapComposerH, 1047356102, "CarouselM"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), "carousel_main_title_text");
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new jh(8);
                        gapComposerH.q(objX2);
                    }
                    Modifier modifierB = SemanticsModifierKt.b(modifierE, false, (Function1) objX2);
                    TextOverflow.f10989a.getClass();
                    boolean z11 = z3;
                    int i12 = TextOverflow.f10991c;
                    TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48426f;
                    i5 = WhenMappings.f50744a[lVColorScheme.ordinal()];
                    if (i5 != 1) {
                        z9 = false;
                        gapComposerH.L(-1941091464);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                        gapComposerH.Z(false);
                    } else {
                        if (i5 == 2) {
                            throw d21.u(gapComposerH, -1941094331, false);
                        }
                        gapComposerH.L(-1941088366);
                        j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                        z9 = false;
                        gapComposerH.Z(false);
                    }
                    lazyListState = lazyListStateA;
                    i6 = i4;
                    z10 = z11;
                    str2 = "CarouselM";
                    TextKt.c(str, modifierB, j2, 0L, null, 0L, null, null, 0L, i12, false, 2, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                }
                function3 = function2;
                z3 = z10;
                LVFreeCarouselWithHintKt.a(n00.g(str2, "carousel_container_view"), lazyListState, list, 1, 0.55f, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, ComposableLambdaKt.b(176730689, new rd(lVColorScheme, z3, function3, list), gapComposerH), gapComposerH, (i6 & 896) | 12610560, 0);
                gapComposerH.Z(true);
                modifier2 = dTFunctionNameModifier;
            } else {
                function3 = function2;
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
            }
            z5 = z3;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new ai(modifier2, str, list, lVColorScheme, z5, z2, function3, function0, i2, i3, 1);
            }
        }
        i4 |= 24576;
        z3 = z;
        if ((196608 & i2) == 0) {
            if (gapComposerH.b(z2)) {
                i9 = 131072;
            } else {
                i9 = 65536;
            }
            i4 |= i9;
        }
        if ((1572864 & i2) == 0) {
            if (gapComposerH.y(function2)) {
                i8 = 1048576;
            } else {
                i8 = 524288;
            }
            i4 |= i8;
        }
        if ((12582912 & i2) == 0) {
            if (gapComposerH.y(function0)) {
                i7 = 8388608;
            } else {
                i7 = 4194304;
            }
            i4 |= i7;
        }
        if ((4793491 & i4) != 4793490) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (gapComposerH.p(i4 & 1, z4)) {
            if (i10 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("CarouselM");
            }
            if (i11 != 0) {
                z3 = false;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            Boolean boolValueOf2 = Boolean.valueOf(z2);
            if ((458752 & i4) == 131072) {
                z6 = true;
            } else {
                z6 = false;
            }
            boolean zK2 = z6 | gapComposerH.K(lazyListStateA);
            if ((29360128 & i4) == 8388608) {
                z7 = true;
            } else {
                z7 = false;
            }
            z8 = zK2 | z7;
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z8) {
                objX = new CarouselMKt$CarouselM$1$1(z2, lazyListStateA, function0, null);
                gapComposerH.q(objX);
            } else {
                objX = new CarouselMKt$CarouselM$1$1(z2, lazyListStateA, function0, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, boolValueOf2, (Function2) objX);
            Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, gapComposerH, 0);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            if (str == null) {
                gapComposerH.L(1047356101);
                gapComposerH.Z(false);
                str2 = "CarouselM";
                lazyListState = lazyListStateA;
                i6 = i4;
                z10 = z3;
            } else {
                Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(PaddingKt.k(n00.i(gapComposerH, 1047356102, "CarouselM"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), "carousel_main_title_text");
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new jh(8);
                    gapComposerH.q(objX2);
                }
                Modifier modifierB2 = SemanticsModifierKt.b(modifierE2, false, (Function1) objX2);
                TextOverflow.f10989a.getClass();
                boolean z12 = z3;
                int i13 = TextOverflow.f10991c;
                TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).f48426f;
                i5 = WhenMappings.f50744a[lVColorScheme.ordinal()];
                if (i5 != 1) {
                    z9 = false;
                    gapComposerH.L(-1941091464);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                    gapComposerH.Z(false);
                } else {
                    if (i5 == 2) {
                        throw d21.u(gapComposerH, -1941094331, false);
                    }
                    gapComposerH.L(-1941088366);
                    j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    z9 = false;
                    gapComposerH.Z(false);
                }
                lazyListState = lazyListStateA;
                i6 = i4;
                z10 = z12;
                str2 = "CarouselM";
                TextKt.c(str, modifierB2, j2, 0L, null, 0L, null, null, 0L, i13, false, 2, 0, null, textStyle2, gapComposerH, 0, 24960, 110584);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
            function3 = function2;
            z3 = z10;
            LVFreeCarouselWithHintKt.a(n00.g(str2, "carousel_container_view"), lazyListState, list, 1, 0.55f, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48415c, ComposableLambdaKt.b(176730689, new rd(lVColorScheme, z3, function3, list), gapComposerH), gapComposerH, (i6 & 896) | 12610560, 0);
            gapComposerH.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            function3 = function2;
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
        }
        z5 = z3;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ai(modifier2, str, list, lVColorScheme, z5, z2, function3, function0, i2, i3, 1);
        }
    }
}
