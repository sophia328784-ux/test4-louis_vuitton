package com.vuitton.android.designkit.ui.theme.molecules.topbar;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import defpackage.d21;
import defpackage.k40;
import defpackage.n00;
import defpackage.o60;
import defpackage.sd;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function4;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVFloatingTopBarKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48743a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f48744b;

        static {
            int[] iArr = new int[FloatingTopBarType.values().length];
            try {
                iArr[FloatingTopBarType.Close.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FloatingTopBarType.Back.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f48743a = iArr;
            int[] iArr2 = new int[LVColorScheme.values().length];
            try {
                iArr2[LVColorScheme.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[LVColorScheme.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f48744b = iArr2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x011d  */
    /* JADX WARN: Code duplicated, block: B:102:0x0121  */
    /* JADX WARN: Code duplicated, block: B:104:0x0129  */
    /* JADX WARN: Code duplicated, block: B:106:0x0136  */
    /* JADX WARN: Code duplicated, block: B:108:0x0139  */
    /* JADX WARN: Code duplicated, block: B:109:0x0141  */
    /* JADX WARN: Code duplicated, block: B:113:0x0192  */
    /* JADX WARN: Code duplicated, block: B:115:0x0199  */
    /* JADX WARN: Code duplicated, block: B:116:0x019d  */
    /* JADX WARN: Code duplicated, block: B:119:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:121:0x01db  */
    /* JADX WARN: Code duplicated, block: B:123:0x01de  */
    /* JADX WARN: Code duplicated, block: B:124:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:126:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:128:0x0226  */
    /* JADX WARN: Code duplicated, block: B:130:0x0260  */
    /* JADX WARN: Code duplicated, block: B:132:0x0265  */
    /* JADX WARN: Code duplicated, block: B:135:0x0277  */
    /* JADX WARN: Code duplicated, block: B:137:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:71:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:73:0x00be  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:76:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:83:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:84:0x00df  */
    /* JADX WARN: Code duplicated, block: B:87:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:93:0x010a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:94:0x010c  */
    /* JADX WARN: Code duplicated, block: B:96:0x0113  */
    /* JADX WARN: Code duplicated, block: B:97:0x0116  */
    /* JADX WARN: Code duplicated, block: B:99:0x011a  */
    public static final void a(Modifier modifier, FloatingTopBarType floatingTopBarType, FloatingTopBarStyle floatingTopBarStyle, LVColorScheme lVColorScheme, String str, Function0 function0, Function4 function4, WindowInsets windowInsets, Composer composer, int i2, int i3) {
        int i4;
        Function0 function1;
        int i5;
        Function4 function5;
        int i6;
        boolean z;
        FloatingTopBarStyle floatingTopBarStyle2;
        LVColorScheme lVColorScheme2;
        WindowInsets windowInsets2;
        Modifier modifier2;
        Function0 function2;
        Function4 function6;
        RecomposeScopeImpl recomposeScopeImplB0;
        LVColorScheme lVColorScheme3;
        Function0 function3;
        Function4 function7;
        Function0 function8;
        int i7;
        Modifier modifier3;
        WindowInsets windowInsetsC;
        Object objX;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function9;
        int i8;
        int i9;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "LVFloatingTopBar");
        }
        floatingTopBarType.getClass();
        str.getClass();
        GapComposer gapComposerH = composer.h(-1712613995);
        int i10 = i3 & 1;
        if (i10 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.d(floatingTopBarType.ordinal()) ? 32 : 16;
        }
        int i11 = i3 & 4;
        if (i11 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.d(floatingTopBarStyle == null ? -1 : floatingTopBarStyle.ordinal()) ? 256 : 128;
        }
        int i12 = i3 & 8;
        if (i12 != 0) {
            i4 |= 3072;
        } else if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.d(lVColorScheme != null ? lVColorScheme.ordinal() : -1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= gapComposerH.K(str) ? 16384 : 8192;
        }
        int i13 = i3 & 32;
        if (i13 == 0) {
            if ((196608 & i2) == 0) {
                function1 = function0;
                i4 |= gapComposerH.y(function1) ? 131072 : 65536;
            }
            i5 = i3 & 64;
            if (i5 != 0) {
                if ((1572864 & i2) == 0) {
                    function5 = function4;
                    if (gapComposerH.y(function5)) {
                        i6 = 1048576;
                    } else {
                        i6 = 524288;
                    }
                    i4 |= i6;
                }
                if ((12582912 & i2) == 0) {
                    i4 |= 4194304;
                }
                if ((4793491 & i4) != 4793490) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i4 & 1, z)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0 || gapComposerH.h0()) {
                        if (i10 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVFloatingTopBar");
                        }
                        if (i11 != 0) {
                            floatingTopBarStyle2 = FloatingTopBarStyle.Primary;
                        } else {
                            floatingTopBarStyle2 = floatingTopBarStyle;
                        }
                        if (i12 != 0) {
                            lVColorScheme3 = LVColorScheme.DEFAULT;
                        } else {
                            lVColorScheme3 = lVColorScheme;
                        }
                        if (i13 != 0) {
                            objX = gapComposerH.x();
                            if (objX == Composer.Companion.f7939a) {
                                objX = new k40(17);
                                gapComposerH.q(objX);
                            }
                            function3 = (Function0) objX;
                        } else {
                            function3 = function1;
                        }
                        if (i5 != 0) {
                            ComposableSingletons$LVFloatingTopBarKt.f48730a.getClass();
                            function7 = ComposableSingletons$LVFloatingTopBarKt.f48731b;
                        } else {
                            function7 = function5;
                        }
                        function8 = function3;
                        i7 = i4 & (-29360129);
                        modifier3 = dTFunctionNameModifier;
                        windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                    } else {
                        gapComposerH.D();
                        int i14 = i4 & (-29360129);
                        lVColorScheme3 = lVColorScheme;
                        modifier3 = dTFunctionNameModifier;
                        i7 = i14;
                        function8 = function1;
                        function7 = function5;
                        floatingTopBarStyle2 = floatingTopBarStyle;
                        windowInsetsC = windowInsets;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Color.f8866b.getClass();
                    Modifier modifierD = WindowInsetsPaddingKt.d(BackgroundKt.b(modifier3, Color.f8870h, RectangleShapeKt.f8913a), windowInsetsC);
                    Dp.Companion companion = Dp.f11004c;
                    Modifier modifierI = PaddingKt.i(modifierD, 16.0f);
                    Alignment.f8582a.getClass();
                    rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
                    ComposeUiNode.b0.getClass();
                    function9 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function9);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    if (floatingTopBarType != FloatingTopBarType.None) {
                        Modifier modifierD2 = n00.d(gapComposerH, 773347011, "LVFloatingTopBar", "header_navigation_button");
                        ConfigurationIconButton configurationIconButtonB = b(lVColorScheme3, floatingTopBarStyle2, gapComposerH);
                        i8 = WhenMappings.f48743a[floatingTopBarType.ordinal()];
                        if (i8 != 1) {
                            gapComposerH.L(1410428566);
                            i9 = LVAppDesignKitTheme.g(gapComposerH).q;
                            gapComposerH.Z(false);
                        } else {
                            if (i8 == 2) {
                                throw d21.u(gapComposerH, 1410425941, false);
                            }
                            gapComposerH.L(1410431100);
                            i9 = LVAppDesignKitTheme.g(gapComposerH).H;
                            gapComposerH.Z(false);
                        }
                        LVIconButtonKt.b(modifierD2, configurationIconButtonB, i9, null, str, false, 0, false, false, function8, gapComposerH, i7 & 57344, (i7 >> 15) & 14, 1000);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(773862417);
                        gapComposerH.Z(false);
                    }
                    SpacerKt.a(gapComposerH, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("LVFloatingTopBar"), 1.0f, true));
                    function7.g(FloatingTopBarActionScopeInstance.f48742a, lVColorScheme3, gapComposerH, Integer.valueOf(((i7 >> 6) & 112) | 6 | ((i7 >> 12) & 896)));
                    gapComposerH.Z(true);
                    modifier2 = modifier3;
                    lVColorScheme2 = lVColorScheme3;
                    function6 = function7;
                    function2 = function8;
                    windowInsets2 = windowInsetsC;
                } else {
                    gapComposerH.D();
                    floatingTopBarStyle2 = floatingTopBarStyle;
                    lVColorScheme2 = lVColorScheme;
                    windowInsets2 = windowInsets;
                    modifier2 = dTFunctionNameModifier;
                    function2 = function1;
                    function6 = function5;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new sd(modifier2, floatingTopBarType, floatingTopBarStyle2, lVColorScheme2, str, function2, function6, windowInsets2, i2, i3, 1);
                }
            }
            i4 |= 1572864;
            function5 = function4;
            if ((12582912 & i2) == 0) {
                i4 |= 4194304;
            }
            if ((4793491 & i4) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVFloatingTopBar");
                    }
                    if (i11 != 0) {
                        floatingTopBarStyle2 = FloatingTopBarStyle.Primary;
                    } else {
                        floatingTopBarStyle2 = floatingTopBarStyle;
                    }
                    if (i12 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i13 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = new k40(17);
                            gapComposerH.q(objX);
                        }
                        function3 = (Function0) objX;
                    } else {
                        function3 = function1;
                    }
                    if (i5 != 0) {
                        ComposableSingletons$LVFloatingTopBarKt.f48730a.getClass();
                        function7 = ComposableSingletons$LVFloatingTopBarKt.f48731b;
                    } else {
                        function7 = function5;
                    }
                    function8 = function3;
                    i7 = i4 & (-29360129);
                    modifier3 = dTFunctionNameModifier;
                    windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                } else {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVFloatingTopBar");
                    }
                    if (i11 != 0) {
                        floatingTopBarStyle2 = FloatingTopBarStyle.Primary;
                    } else {
                        floatingTopBarStyle2 = floatingTopBarStyle;
                    }
                    if (i12 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i13 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = new k40(17);
                            gapComposerH.q(objX);
                        }
                        function3 = (Function0) objX;
                    } else {
                        function3 = function1;
                    }
                    if (i5 != 0) {
                        ComposableSingletons$LVFloatingTopBarKt.f48730a.getClass();
                        function7 = ComposableSingletons$LVFloatingTopBarKt.f48731b;
                    } else {
                        function7 = function5;
                    }
                    function8 = function3;
                    i7 = i4 & (-29360129);
                    modifier3 = dTFunctionNameModifier;
                    windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Color.f8866b.getClass();
                Modifier modifierD3 = WindowInsetsPaddingKt.d(BackgroundKt.b(modifier3, Color.f8870h, RectangleShapeKt.f8913a), windowInsetsC);
                Dp.Companion companion2 = Dp.f11004c;
                Modifier modifierI2 = PaddingKt.i(modifierD3, 16.0f);
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierI2);
                ComposeUiNode.b0.getClass();
                function9 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function9);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                if (floatingTopBarType != FloatingTopBarType.None) {
                    Modifier modifierD4 = n00.d(gapComposerH, 773347011, "LVFloatingTopBar", "header_navigation_button");
                    ConfigurationIconButton configurationIconButtonB2 = b(lVColorScheme3, floatingTopBarStyle2, gapComposerH);
                    i8 = WhenMappings.f48743a[floatingTopBarType.ordinal()];
                    if (i8 != 1) {
                        gapComposerH.L(1410428566);
                        i9 = LVAppDesignKitTheme.g(gapComposerH).q;
                        gapComposerH.Z(false);
                    } else {
                        if (i8 == 2) {
                            throw d21.u(gapComposerH, 1410425941, false);
                        }
                        gapComposerH.L(1410431100);
                        i9 = LVAppDesignKitTheme.g(gapComposerH).H;
                        gapComposerH.Z(false);
                    }
                    LVIconButtonKt.b(modifierD4, configurationIconButtonB2, i9, null, str, false, 0, false, false, function8, gapComposerH, i7 & 57344, (i7 >> 15) & 14, 1000);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(773862417);
                    gapComposerH.Z(false);
                }
                SpacerKt.a(gapComposerH, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("LVFloatingTopBar"), 1.0f, true));
                function7.g(FloatingTopBarActionScopeInstance.f48742a, lVColorScheme3, gapComposerH, Integer.valueOf(((i7 >> 6) & 112) | 6 | ((i7 >> 12) & 896)));
                gapComposerH.Z(true);
                modifier2 = modifier3;
                lVColorScheme2 = lVColorScheme3;
                function6 = function7;
                function2 = function8;
                windowInsets2 = windowInsetsC;
            } else {
                gapComposerH.D();
                floatingTopBarStyle2 = floatingTopBarStyle;
                lVColorScheme2 = lVColorScheme;
                windowInsets2 = windowInsets;
                modifier2 = dTFunctionNameModifier;
                function2 = function1;
                function6 = function5;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new sd(modifier2, floatingTopBarType, floatingTopBarStyle2, lVColorScheme2, str, function2, function6, windowInsets2, i2, i3, 1);
            }
        }
        i4 |= ImageMetadata.EDGE_MODE;
        function1 = function0;
        i5 = i3 & 64;
        if (i5 != 0) {
            if ((1572864 & i2) == 0) {
                function5 = function4;
                if (gapComposerH.y(function5)) {
                    i6 = 1048576;
                } else {
                    i6 = 524288;
                }
                i4 |= i6;
            }
            if ((12582912 & i2) == 0) {
                i4 |= 4194304;
            }
            if ((4793491 & i4) != 4793490) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVFloatingTopBar");
                    }
                    if (i11 != 0) {
                        floatingTopBarStyle2 = FloatingTopBarStyle.Primary;
                    } else {
                        floatingTopBarStyle2 = floatingTopBarStyle;
                    }
                    if (i12 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i13 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = new k40(17);
                            gapComposerH.q(objX);
                        }
                        function3 = (Function0) objX;
                    } else {
                        function3 = function1;
                    }
                    if (i5 != 0) {
                        ComposableSingletons$LVFloatingTopBarKt.f48730a.getClass();
                        function7 = ComposableSingletons$LVFloatingTopBarKt.f48731b;
                    } else {
                        function7 = function5;
                    }
                    function8 = function3;
                    i7 = i4 & (-29360129);
                    modifier3 = dTFunctionNameModifier;
                    windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                } else {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVFloatingTopBar");
                    }
                    if (i11 != 0) {
                        floatingTopBarStyle2 = FloatingTopBarStyle.Primary;
                    } else {
                        floatingTopBarStyle2 = floatingTopBarStyle;
                    }
                    if (i12 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                    if (i13 != 0) {
                        objX = gapComposerH.x();
                        if (objX == Composer.Companion.f7939a) {
                            objX = new k40(17);
                            gapComposerH.q(objX);
                        }
                        function3 = (Function0) objX;
                    } else {
                        function3 = function1;
                    }
                    if (i5 != 0) {
                        ComposableSingletons$LVFloatingTopBarKt.f48730a.getClass();
                        function7 = ComposableSingletons$LVFloatingTopBarKt.f48731b;
                    } else {
                        function7 = function5;
                    }
                    function8 = function3;
                    i7 = i4 & (-29360129);
                    modifier3 = dTFunctionNameModifier;
                    windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                Color.f8866b.getClass();
                Modifier modifierD5 = WindowInsetsPaddingKt.d(BackgroundKt.b(modifier3, Color.f8870h, RectangleShapeKt.f8913a), windowInsetsC);
                Dp.Companion companion3 = Dp.f11004c;
                Modifier modifierI3 = PaddingKt.i(modifierD5, 16.0f);
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierI3);
                ComposeUiNode.b0.getClass();
                function9 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function9);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                if (floatingTopBarType != FloatingTopBarType.None) {
                    Modifier modifierD6 = n00.d(gapComposerH, 773347011, "LVFloatingTopBar", "header_navigation_button");
                    ConfigurationIconButton configurationIconButtonB3 = b(lVColorScheme3, floatingTopBarStyle2, gapComposerH);
                    i8 = WhenMappings.f48743a[floatingTopBarType.ordinal()];
                    if (i8 != 1) {
                        gapComposerH.L(1410428566);
                        i9 = LVAppDesignKitTheme.g(gapComposerH).q;
                        gapComposerH.Z(false);
                    } else {
                        if (i8 == 2) {
                            throw d21.u(gapComposerH, 1410425941, false);
                        }
                        gapComposerH.L(1410431100);
                        i9 = LVAppDesignKitTheme.g(gapComposerH).H;
                        gapComposerH.Z(false);
                    }
                    LVIconButtonKt.b(modifierD6, configurationIconButtonB3, i9, null, str, false, 0, false, false, function8, gapComposerH, i7 & 57344, (i7 >> 15) & 14, 1000);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(773862417);
                    gapComposerH.Z(false);
                }
                SpacerKt.a(gapComposerH, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("LVFloatingTopBar"), 1.0f, true));
                function7.g(FloatingTopBarActionScopeInstance.f48742a, lVColorScheme3, gapComposerH, Integer.valueOf(((i7 >> 6) & 112) | 6 | ((i7 >> 12) & 896)));
                gapComposerH.Z(true);
                modifier2 = modifier3;
                lVColorScheme2 = lVColorScheme3;
                function6 = function7;
                function2 = function8;
                windowInsets2 = windowInsetsC;
            } else {
                gapComposerH.D();
                floatingTopBarStyle2 = floatingTopBarStyle;
                lVColorScheme2 = lVColorScheme;
                windowInsets2 = windowInsets;
                modifier2 = dTFunctionNameModifier;
                function2 = function1;
                function6 = function5;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new sd(modifier2, floatingTopBarType, floatingTopBarStyle2, lVColorScheme2, str, function2, function6, windowInsets2, i2, i3, 1);
            }
        }
        i4 |= 1572864;
        function5 = function4;
        if ((12582912 & i2) == 0) {
            i4 |= 4194304;
        }
        if ((4793491 & i4) != 4793490) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i4 & 1, z)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVFloatingTopBar");
                }
                if (i11 != 0) {
                    floatingTopBarStyle2 = FloatingTopBarStyle.Primary;
                } else {
                    floatingTopBarStyle2 = floatingTopBarStyle;
                }
                if (i12 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i13 != 0) {
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = new k40(17);
                        gapComposerH.q(objX);
                    }
                    function3 = (Function0) objX;
                } else {
                    function3 = function1;
                }
                if (i5 != 0) {
                    ComposableSingletons$LVFloatingTopBarKt.f48730a.getClass();
                    function7 = ComposableSingletons$LVFloatingTopBarKt.f48731b;
                } else {
                    function7 = function5;
                }
                function8 = function3;
                i7 = i4 & (-29360129);
                modifier3 = dTFunctionNameModifier;
                windowInsetsC = TopAppBarDefaults.c(gapComposerH);
            } else {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVFloatingTopBar");
                }
                if (i11 != 0) {
                    floatingTopBarStyle2 = FloatingTopBarStyle.Primary;
                } else {
                    floatingTopBarStyle2 = floatingTopBarStyle;
                }
                if (i12 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
                if (i13 != 0) {
                    objX = gapComposerH.x();
                    if (objX == Composer.Companion.f7939a) {
                        objX = new k40(17);
                        gapComposerH.q(objX);
                    }
                    function3 = (Function0) objX;
                } else {
                    function3 = function1;
                }
                if (i5 != 0) {
                    ComposableSingletons$LVFloatingTopBarKt.f48730a.getClass();
                    function7 = ComposableSingletons$LVFloatingTopBarKt.f48731b;
                } else {
                    function7 = function5;
                }
                function8 = function3;
                i7 = i4 & (-29360129);
                modifier3 = dTFunctionNameModifier;
                windowInsetsC = TopAppBarDefaults.c(gapComposerH);
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            Color.f8866b.getClass();
            Modifier modifierD7 = WindowInsetsPaddingKt.d(BackgroundKt.b(modifier3, Color.f8870h, RectangleShapeKt.f8913a), windowInsetsC);
            Dp.Companion companion4 = Dp.f11004c;
            Modifier modifierI4 = PaddingKt.i(modifierD7, 16.0f);
            Alignment.f8582a.getClass();
            rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierI4);
            ComposeUiNode.b0.getClass();
            function9 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function9);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            if (floatingTopBarType != FloatingTopBarType.None) {
                Modifier modifierD8 = n00.d(gapComposerH, 773347011, "LVFloatingTopBar", "header_navigation_button");
                ConfigurationIconButton configurationIconButtonB4 = b(lVColorScheme3, floatingTopBarStyle2, gapComposerH);
                i8 = WhenMappings.f48743a[floatingTopBarType.ordinal()];
                if (i8 != 1) {
                    gapComposerH.L(1410428566);
                    i9 = LVAppDesignKitTheme.g(gapComposerH).q;
                    gapComposerH.Z(false);
                } else {
                    if (i8 == 2) {
                        throw d21.u(gapComposerH, 1410425941, false);
                    }
                    gapComposerH.L(1410431100);
                    i9 = LVAppDesignKitTheme.g(gapComposerH).H;
                    gapComposerH.Z(false);
                }
                LVIconButtonKt.b(modifierD8, configurationIconButtonB4, i9, null, str, false, 0, false, false, function8, gapComposerH, i7 & 57344, (i7 >> 15) & 14, 1000);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(773862417);
                gapComposerH.Z(false);
            }
            SpacerKt.a(gapComposerH, RowScopeInstance.f5040a.a(new DTFunctionNameModifier("LVFloatingTopBar"), 1.0f, true));
            function7.g(FloatingTopBarActionScopeInstance.f48742a, lVColorScheme3, gapComposerH, Integer.valueOf(((i7 >> 6) & 112) | 6 | ((i7 >> 12) & 896)));
            gapComposerH.Z(true);
            modifier2 = modifier3;
            lVColorScheme2 = lVColorScheme3;
            function6 = function7;
            function2 = function8;
            windowInsets2 = windowInsetsC;
        } else {
            gapComposerH.D();
            floatingTopBarStyle2 = floatingTopBarStyle;
            lVColorScheme2 = lVColorScheme;
            windowInsets2 = windowInsets;
            modifier2 = dTFunctionNameModifier;
            function2 = function1;
            function6 = function5;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new sd(modifier2, floatingTopBarType, floatingTopBarStyle2, lVColorScheme2, str, function2, function6, windowInsets2, i2, i3, 1);
        }
    }

    public static final ConfigurationIconButton b(LVColorScheme lVColorScheme, FloatingTopBarStyle floatingTopBarStyle, Composer composer) {
        ConfigurationIconButton configurationIconButton;
        ConfigurationIconButton configurationIconButton2;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        int i2 = WhenMappings.f48744b[lVColorScheme.ordinal()];
        if (i2 == 1) {
            composer.L(59513984);
            if (floatingTopBarStyle == FloatingTopBarStyle.Primary) {
                composer.L(59561383);
                configurationIconButton = LVAppDesignKitTheme.f(composer).f48477a;
                composer.F();
            } else {
                composer.L(59630079);
                configurationIconButton = LVAppDesignKitTheme.f(composer).g;
                composer.F();
            }
            composer.F();
            return configurationIconButton;
        }
        if (i2 != 2) {
            throw o60.v(composer, 140465830);
        }
        composer.L(59740532);
        if (floatingTopBarStyle == FloatingTopBarStyle.Primary) {
            composer.L(59787745);
            configurationIconButton2 = LVAppDesignKitTheme.f(composer).f48478b;
            composer.F();
        } else {
            composer.L(59862393);
            configurationIconButton2 = LVAppDesignKitTheme.f(composer).f48482h;
            composer.F();
        }
        composer.F();
        return configurationIconButton2;
    }
}
