package androidx.compose.material3;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.internal.DropdownMenuPositionProvider;
import androidx.compose.material3.tokens.MenuTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupProperties;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.r1;
import defpackage.v5;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class AndroidMenu_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PopupProperties f6554a = new PopupProperties(true, false, false, false, 14, (DefaultConstructorMarker) null);

    public static final void a(final boolean z, final Function0 function0, Modifier modifier, final long j2, ScrollState scrollState, PopupProperties popupProperties, final Shape shape, long j3, float f2, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2, final int i3) {
        int i4;
        final long jD;
        final ScrollState scrollState2;
        final float f3;
        final PopupProperties popupProperties2;
        ScrollState scrollStateB;
        int i5;
        PopupProperties popupProperties3;
        final long j4;
        final float f4;
        boolean z2;
        ScrollState scrollState3;
        GapComposer gapComposer;
        PopupProperties popupProperties4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "DropdownMenu-IlH_yew");
        }
        final Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1725609375);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.b(z) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(function0) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.K(modifier2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.e(j2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i4 |= 8192;
        }
        int i6 = i4 | ImageMetadata.EDGE_MODE;
        if ((1572864 & i2) == 0) {
            i6 |= gapComposerH.K(shape) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            jD = j3;
            i6 |= ((i3 & 128) == 0 && gapComposerH.e(jD)) ? 8388608 : 4194304;
        } else {
            jD = j3;
        }
        int i7 = i6 | 905969664;
        if (gapComposerH.p(i7 & 1, (306783379 & i7) != 306783378)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                scrollStateB = ScrollKt.b(gapComposerH);
                int i8 = i7 & (-57345);
                if ((i3 & 128) != 0) {
                    float f5 = MenuDefaults.f7020a;
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    jD = ColorSchemeKt.d(MenuTokens.f7808a, gapComposerH);
                    i5 = i7 & (-29417473);
                } else {
                    i5 = i8;
                }
                float f6 = MenuDefaults.f7020a;
                popupProperties3 = f6554a;
                j4 = jD;
                f4 = f6;
            } else {
                gapComposerH.D();
                int i9 = i7 & (-57345);
                if ((i3 & 128) != 0) {
                    i9 = i7 & (-29417473);
                }
                popupProperties3 = popupProperties;
                i5 = i9;
                j4 = jD;
                scrollStateB = scrollState;
                f4 = f2;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new MutableTransitionState(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            final MutableTransitionState mutableTransitionState = (MutableTransitionState) objX;
            mutableTransitionState.g(Boolean.valueOf(z));
            if (((Boolean) ((SnapshotMutableStateImpl) mutableTransitionState.f3906b).getF10755b()).booleanValue() || ((Boolean) ((SnapshotMutableStateImpl) mutableTransitionState.f3907c).getF10755b()).booleanValue()) {
                gapComposerH.L(1165905588);
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    TransformOrigin.f8941b.getClass();
                    objX2 = SnapshotStateKt.g(new TransformOrigin(TransformOrigin.f8942c));
                    gapComposerH.q(objX2);
                }
                final MutableState mutableState = (MutableState) objX2;
                Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
                int i10 = i5;
                boolean zK = ((i5 & 7168) == 2048) | gapComposerH.K(density);
                Object objX3 = gapComposerH.x();
                if (zK || objX3 == composer$Companion$Empty$1) {
                    z2 = false;
                    objX3 = new DropdownMenuPositionProvider(j2, density, 0, new r1(3, mutableState), 4, null);
                    gapComposerH.q(objX3);
                } else {
                    z2 = false;
                }
                boolean z3 = z2;
                final ScrollState scrollState4 = scrollStateB;
                modifier2 = modifier2;
                scrollState3 = scrollState4;
                gapComposer = gapComposerH;
                popupProperties4 = popupProperties3;
                AndroidPopup_androidKt.a((DropdownMenuPositionProvider) objX3, function0, popupProperties4, ComposableLambdaKt.b(-917492520, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AndroidMenu_androidKt$DropdownMenu$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            MenuKt.a(modifier2, mutableTransitionState, mutableState, scrollState4, shape, j4, f4, composableLambdaImpl, composer2, KyberEngine.KyberPolyBytes);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposer, (i10 & 112) | 3072 | ((i10 >> 9) & 896), 0);
                gapComposer.Z(z3);
            } else {
                gapComposerH.L(1166965571);
                gapComposerH.Z(false);
                scrollState3 = scrollStateB;
                popupProperties4 = popupProperties3;
                gapComposer = gapComposerH;
            }
            scrollState2 = scrollState3;
            gapComposerH = gapComposer;
            f3 = f4;
            jD = j4;
            popupProperties2 = popupProperties4;
        } else {
            gapComposerH.D();
            scrollState2 = scrollState;
            f3 = f2;
            popupProperties2 = popupProperties;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier3 = modifier2;
            recomposeScopeImplB0.d = new Function2() { // from class: w5
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    AndroidMenu_androidKt.a(z, function0, modifier3, j2, scrollState2, popupProperties2, shape, jD, f3, composableLambdaImpl, (Composer) obj, iA, i3);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0055  */
    /* JADX WARN: Code duplicated, block: B:31:0x005a  */
    /* JADX WARN: Code duplicated, block: B:33:0x0062  */
    /* JADX WARN: Code duplicated, block: B:34:0x0065  */
    /* JADX WARN: Code duplicated, block: B:38:0x006c  */
    /* JADX WARN: Code duplicated, block: B:39:0x0072  */
    /* JADX WARN: Code duplicated, block: B:41:0x007a  */
    /* JADX WARN: Code duplicated, block: B:42:0x007d  */
    /* JADX WARN: Code duplicated, block: B:46:0x0084  */
    /* JADX WARN: Code duplicated, block: B:48:0x008c  */
    /* JADX WARN: Code duplicated, block: B:49:0x008f  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:54:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:67:0x00d0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:68:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:71:0x00da  */
    /* JADX WARN: Code duplicated, block: B:73:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:75:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:78:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:81:0x0113  */
    /* JADX WARN: Code duplicated, block: B:84:0x0125  */
    /* JADX WARN: Code duplicated, block: B:86:? A[RETURN, SYNTHETIC] */
    public static final void b(Function2 function2, Function0 function0, Modifier modifier, Function2 function3, Function2 function4, boolean z, MenuItemColors menuItemColors, PaddingValues paddingValues, Composer composer, int i2, int i3) {
        int i4;
        Function2 function5;
        int i5;
        Function2 function6;
        int i6;
        int i7;
        int i8;
        boolean z2;
        int i9;
        int i10;
        MenuItemColors menuItemColorsA;
        int i11;
        boolean z3;
        GapComposer gapComposer;
        Modifier modifier2;
        Function2 function7;
        Function2 function8;
        boolean z4;
        MenuItemColors menuItemColors2;
        PaddingValues paddingValues2;
        RecomposeScopeImpl recomposeScopeImplB0;
        PaddingValues paddingValues3;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "DropdownMenuItem");
        }
        GapComposer gapComposerH = composer.h(-532959117);
        int i12 = (gapComposerH.y(function0) ? 32 : 16) | i2;
        int i13 = i3 & 4;
        if (i13 != 0) {
            i4 = i12 | KyberEngine.KyberPolyBytes;
        } else {
            i4 = i12 | (gapComposerH.K(dTFunctionNameModifier) ? 256 : 128);
        }
        int i14 = i3 & 8;
        if (i14 == 0) {
            if ((i2 & 3072) == 0) {
                function5 = function3;
                i4 |= gapComposerH.y(function5) ? 2048 : 1024;
            }
            i5 = i3 & 16;
            if (i5 != 0) {
                i7 = i4 | 24576;
                function6 = function4;
            } else {
                function6 = function4;
                if (gapComposerH.y(function6)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i7 = i4 | i6;
            }
            i8 = i3 & 32;
            if (i8 != 0) {
                i10 = i7 | ImageMetadata.EDGE_MODE;
                z2 = z;
            } else {
                z2 = z;
                if (gapComposerH.b(z2)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i10 = i7 | i9;
            }
            if ((i3 & 64) == 0) {
                menuItemColorsA = menuItemColors;
                int i15 = gapComposerH.K(menuItemColorsA) ? 1048576 : 524288;
                i11 = i10 | i15 | 113246208;
                if ((38347923 & i11) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i11 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0 || gapComposerH.h0()) {
                        if (i13 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("DropdownMenuItem");
                        }
                        if (i14 != 0) {
                            function5 = null;
                        }
                        if (i5 != 0) {
                            function6 = null;
                        }
                        if (i8 != 0) {
                            z2 = true;
                        }
                        if ((i3 & 64) != 0) {
                            float f2 = MenuDefaults.f7020a;
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            i11 &= -3670017;
                            menuItemColorsA = MenuDefaults.a(MaterialTheme.a(gapComposerH));
                        }
                        paddingValues3 = MenuDefaults.f7021b;
                    } else {
                        gapComposerH.D();
                        if ((i3 & 64) != 0) {
                            i11 &= -3670017;
                        }
                        paddingValues3 = paddingValues;
                    }
                    Function2 function9 = function6;
                    boolean z5 = z2;
                    MenuItemColors menuItemColors3 = menuItemColorsA;
                    Modifier modifier3 = dTFunctionNameModifier;
                    Function2 function10 = function5;
                    gapComposerH.a0();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    gapComposer = gapComposerH;
                    MenuKt.b(function2, function0, modifier3, function10, function9, z5, menuItemColors3, paddingValues3, gapComposer, i11 & 268435454);
                    modifier2 = modifier3;
                    function7 = function10;
                    function8 = function9;
                    z4 = z5;
                    menuItemColors2 = menuItemColors3;
                    paddingValues2 = paddingValues3;
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    modifier2 = dTFunctionNameModifier;
                    function7 = function5;
                    function8 = function6;
                    z4 = z2;
                    menuItemColors2 = menuItemColorsA;
                    paddingValues2 = paddingValues;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new v5(function2, function0, modifier2, function7, function8, z4, menuItemColors2, paddingValues2, i2, i3);
                }
            }
            menuItemColorsA = menuItemColors;
            i11 = i10 | i15 | 113246208;
            if ((38347923 & i11) != 38347922) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i11 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i13 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("DropdownMenuItem");
                    }
                    if (i14 != 0) {
                        function5 = null;
                    }
                    if (i5 != 0) {
                        function6 = null;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if ((i3 & 64) != 0) {
                        float f3 = MenuDefaults.f7020a;
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        i11 &= -3670017;
                        menuItemColorsA = MenuDefaults.a(MaterialTheme.a(gapComposerH));
                    }
                    paddingValues3 = MenuDefaults.f7021b;
                } else {
                    if (i13 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("DropdownMenuItem");
                    }
                    if (i14 != 0) {
                        function5 = null;
                    }
                    if (i5 != 0) {
                        function6 = null;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if ((i3 & 64) != 0) {
                        float f4 = MenuDefaults.f7020a;
                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                        i11 &= -3670017;
                        menuItemColorsA = MenuDefaults.a(MaterialTheme.a(gapComposerH));
                    }
                    paddingValues3 = MenuDefaults.f7021b;
                }
                Function2 function11 = function6;
                boolean z6 = z2;
                MenuItemColors menuItemColors4 = menuItemColorsA;
                Modifier modifier4 = dTFunctionNameModifier;
                Function2 function12 = function5;
                gapComposerH.a0();
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                gapComposer = gapComposerH;
                MenuKt.b(function2, function0, modifier4, function12, function11, z6, menuItemColors4, paddingValues3, gapComposer, i11 & 268435454);
                modifier2 = modifier4;
                function7 = function12;
                function8 = function11;
                z4 = z6;
                menuItemColors2 = menuItemColors4;
                paddingValues2 = paddingValues3;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                modifier2 = dTFunctionNameModifier;
                function7 = function5;
                function8 = function6;
                z4 = z2;
                menuItemColors2 = menuItemColorsA;
                paddingValues2 = paddingValues;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new v5(function2, function0, modifier2, function7, function8, z4, menuItemColors2, paddingValues2, i2, i3);
            }
        }
        i4 |= 3072;
        function5 = function3;
        i5 = i3 & 16;
        if (i5 != 0) {
            i7 = i4 | 24576;
            function6 = function4;
        } else {
            function6 = function4;
            if (gapComposerH.y(function6)) {
                i6 = 16384;
            } else {
                i6 = 8192;
            }
            i7 = i4 | i6;
        }
        i8 = i3 & 32;
        if (i8 != 0) {
            i10 = i7 | ImageMetadata.EDGE_MODE;
            z2 = z;
        } else {
            z2 = z;
            if (gapComposerH.b(z2)) {
                i9 = 131072;
            } else {
                i9 = 65536;
            }
            i10 = i7 | i9;
        }
        if ((i3 & 64) == 0) {
            menuItemColorsA = menuItemColors;
            if (gapComposerH.K(menuItemColorsA)) {
            }
            i11 = i10 | i15 | 113246208;
            if ((38347923 & i11) != 38347922) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i11 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i13 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("DropdownMenuItem");
                    }
                    if (i14 != 0) {
                        function5 = null;
                    }
                    if (i5 != 0) {
                        function6 = null;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if ((i3 & 64) != 0) {
                        float f5 = MenuDefaults.f7020a;
                        OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                        i11 &= -3670017;
                        menuItemColorsA = MenuDefaults.a(MaterialTheme.a(gapComposerH));
                    }
                    paddingValues3 = MenuDefaults.f7021b;
                } else {
                    if (i13 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("DropdownMenuItem");
                    }
                    if (i14 != 0) {
                        function5 = null;
                    }
                    if (i5 != 0) {
                        function6 = null;
                    }
                    if (i8 != 0) {
                        z2 = true;
                    }
                    if ((i3 & 64) != 0) {
                        float f6 = MenuDefaults.f7020a;
                        OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                        i11 &= -3670017;
                        menuItemColorsA = MenuDefaults.a(MaterialTheme.a(gapComposerH));
                    }
                    paddingValues3 = MenuDefaults.f7021b;
                }
                Function2 function13 = function6;
                boolean z7 = z2;
                MenuItemColors menuItemColors5 = menuItemColorsA;
                Modifier modifier5 = dTFunctionNameModifier;
                Function2 function14 = function5;
                gapComposerH.a0();
                OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                gapComposer = gapComposerH;
                MenuKt.b(function2, function0, modifier5, function14, function13, z7, menuItemColors5, paddingValues3, gapComposer, i11 & 268435454);
                modifier2 = modifier5;
                function7 = function14;
                function8 = function13;
                z4 = z7;
                menuItemColors2 = menuItemColors5;
                paddingValues2 = paddingValues3;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                modifier2 = dTFunctionNameModifier;
                function7 = function5;
                function8 = function6;
                z4 = z2;
                menuItemColors2 = menuItemColorsA;
                paddingValues2 = paddingValues;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new v5(function2, function0, modifier2, function7, function8, z4, menuItemColors2, paddingValues2, i2, i3);
            }
        }
        menuItemColorsA = menuItemColors;
        i11 = i10 | i15 | 113246208;
        if ((38347923 & i11) != 38347922) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i11 & 1, z3)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i13 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("DropdownMenuItem");
                }
                if (i14 != 0) {
                    function5 = null;
                }
                if (i5 != 0) {
                    function6 = null;
                }
                if (i8 != 0) {
                    z2 = true;
                }
                if ((i3 & 64) != 0) {
                    float f7 = MenuDefaults.f7020a;
                    OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                    i11 &= -3670017;
                    menuItemColorsA = MenuDefaults.a(MaterialTheme.a(gapComposerH));
                }
                paddingValues3 = MenuDefaults.f7021b;
            } else {
                if (i13 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("DropdownMenuItem");
                }
                if (i14 != 0) {
                    function5 = null;
                }
                if (i5 != 0) {
                    function6 = null;
                }
                if (i8 != 0) {
                    z2 = true;
                }
                if ((i3 & 64) != 0) {
                    float f8 = MenuDefaults.f7020a;
                    OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                    i11 &= -3670017;
                    menuItemColorsA = MenuDefaults.a(MaterialTheme.a(gapComposerH));
                }
                paddingValues3 = MenuDefaults.f7021b;
            }
            Function2 function15 = function6;
            boolean z8 = z2;
            MenuItemColors menuItemColors6 = menuItemColorsA;
            Modifier modifier6 = dTFunctionNameModifier;
            Function2 function16 = function5;
            gapComposerH.a0();
            OpaqueKey opaqueKey11 = ComposerKt.f7940a;
            gapComposer = gapComposerH;
            MenuKt.b(function2, function0, modifier6, function16, function15, z8, menuItemColors6, paddingValues3, gapComposer, i11 & 268435454);
            modifier2 = modifier6;
            function7 = function16;
            function8 = function15;
            z4 = z8;
            menuItemColors2 = menuItemColors6;
            paddingValues2 = paddingValues3;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = dTFunctionNameModifier;
            function7 = function5;
            function8 = function6;
            z4 = z2;
            menuItemColors2 = menuItemColorsA;
            paddingValues2 = paddingValues;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v5(function2, function0, modifier2, function7, function8, z4, menuItemColors2, paddingValues2, i2, i3);
        }
    }
}
