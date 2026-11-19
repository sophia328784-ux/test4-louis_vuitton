package com.vuitton.android.designkit.ui.theme.molecules.topbar;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarActionScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScope;", "", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface TopBarActionScope {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class ComposeDefaultImpls {
        /* JADX WARN: Code duplicated, block: B:101:0x0129  */
        /* JADX WARN: Code duplicated, block: B:102:0x012d  */
        /* JADX WARN: Code duplicated, block: B:104:0x0131  */
        /* JADX WARN: Code duplicated, block: B:105:0x0134  */
        /* JADX WARN: Code duplicated, block: B:107:0x0137  */
        /* JADX WARN: Code duplicated, block: B:108:0x013a  */
        /* JADX WARN: Code duplicated, block: B:110:0x014f  */
        /* JADX WARN: Code duplicated, block: B:113:0x015f  */
        /* JADX WARN: Code duplicated, block: B:115:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:72:0x00cc  */
        /* JADX WARN: Code duplicated, block: B:74:0x00d0  */
        /* JADX WARN: Code duplicated, block: B:76:0x00d3  */
        /* JADX WARN: Code duplicated, block: B:78:0x00db  */
        /* JADX WARN: Code duplicated, block: B:79:0x00de  */
        /* JADX WARN: Code duplicated, block: B:83:0x00e8  */
        /* JADX WARN: Code duplicated, block: B:85:0x00ee  */
        /* JADX WARN: Code duplicated, block: B:86:0x00f3  */
        /* JADX WARN: Code duplicated, block: B:88:0x00f9  */
        /* JADX WARN: Code duplicated, block: B:89:0x00fc  */
        /* JADX WARN: Code duplicated, block: B:93:0x0110  */
        /* JADX WARN: Code duplicated, block: B:94:0x0113  */
        /* JADX WARN: Code duplicated, block: B:97:0x011c A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:98:0x011e  */
        /* JADX WARN: Code duplicated, block: B:99:0x0125  */
        public static final void a(Modifier modifier, final int i2, final String str, final Function0 function0, final LVColorScheme lVColorScheme, FloatingTopBarStyle floatingTopBarStyle, String str2, boolean z, final TopBarActionScope topBarActionScope, Composer composer, final int i3, final int i4) {
            int i5;
            int i6;
            String str3;
            int i7;
            boolean z2;
            int i8;
            Modifier modifier2;
            boolean z3;
            GapComposer gapComposer;
            final Modifier dTFunctionNameModifier;
            final FloatingTopBarStyle floatingTopBarStyle2;
            final String str4;
            final boolean z4;
            RecomposeScopeImpl recomposeScopeImplB0;
            boolean zY;
            int i9;
            Modifier modifierE = modifier;
            if (modifierE != null) {
                modifierE = defpackage.a.e(modifierE, "TopBarAction$default");
            }
            function0.getClass();
            lVColorScheme.getClass();
            topBarActionScope.getClass();
            GapComposer gapComposerH = composer.h(1123286320);
            int i10 = i4 & 1;
            if (i10 != 0) {
                i5 = i3 | 6;
            } else if ((i3 & 6) == 0) {
                i5 = (gapComposerH.K(modifierE) ? 4 : 2) | i3;
            } else {
                i5 = i3;
            }
            if ((i3 & 48) == 0) {
                i6 = i2;
                i5 |= gapComposerH.d(i6) ? 32 : 16;
            } else {
                i6 = i2;
            }
            if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
                i5 |= gapComposerH.K(str) ? 256 : 128;
            }
            if ((i3 & 3072) == 0) {
                i5 |= gapComposerH.y(function0) ? 2048 : 1024;
            }
            if ((i3 & 24576) == 0) {
                i5 |= gapComposerH.d(lVColorScheme.ordinal()) ? 16384 : 8192;
            }
            int i11 = i4 & 32;
            int i12 = ImageMetadata.EDGE_MODE;
            if (i11 != 0) {
                i5 |= i12;
            } else if ((196608 & i3) == 0) {
                i12 = gapComposerH.d(floatingTopBarStyle == null ? -1 : floatingTopBarStyle.ordinal()) ? 131072 : 65536;
                i5 |= i12;
            }
            int i13 = i4 & 64;
            if (i13 == 0) {
                if ((1572864 & i3) == 0) {
                    str3 = str2;
                    i5 |= gapComposerH.K(str3) ? 1048576 : 524288;
                }
                i7 = i4 & 128;
                if (i7 != 0) {
                    if ((12582912 & i3) == 0) {
                        z2 = z;
                        if (gapComposerH.b(z2)) {
                            i8 = 8388608;
                        } else {
                            i8 = 4194304;
                        }
                        i5 |= i8;
                    }
                    if ((i3 & 100663296) == 0) {
                        if ((i3 & 134217728) == 0) {
                            zY = gapComposerH.K(topBarActionScope);
                        } else {
                            zY = gapComposerH.y(topBarActionScope);
                        }
                        if (zY) {
                            i9 = 67108864;
                        } else {
                            i9 = 33554432;
                        }
                        i5 |= i9;
                    }
                    modifier2 = modifierE;
                    if ((i5 & 38347923) != 38347922) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (gapComposerH.p(i5 & 1, z3)) {
                        if (i10 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("TopBarAction$default");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i11 != 0) {
                            floatingTopBarStyle2 = FloatingTopBarStyle.Primary;
                        } else {
                            floatingTopBarStyle2 = floatingTopBarStyle;
                        }
                        if (i13 != 0) {
                            str4 = null;
                        } else {
                            str4 = str3;
                        }
                        if (i7 != 0) {
                            z4 = true;
                        } else {
                            z4 = z2;
                        }
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        gapComposer = gapComposerH;
                        topBarActionScope.a(dTFunctionNameModifier, i6, str, function0, lVColorScheme, floatingTopBarStyle2, str4, z4, gapComposer, i5 & 268435454);
                    } else {
                        gapComposer = gapComposerH;
                        gapComposer.D();
                        dTFunctionNameModifier = modifier2;
                        floatingTopBarStyle2 = floatingTopBarStyle;
                        str4 = str3;
                        z4 = z2;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new Function2() { // from class: h41
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                ((Integer) obj2).getClass();
                                TopBarActionScope.ComposeDefaultImpls.a(dTFunctionNameModifier, i2, str, function0, lVColorScheme, floatingTopBarStyle2, str4, z4, topBarActionScope, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i5 |= 12582912;
                z2 = z;
                if ((i3 & 100663296) == 0) {
                    if ((i3 & 134217728) == 0) {
                        zY = gapComposerH.K(topBarActionScope);
                    } else {
                        zY = gapComposerH.y(topBarActionScope);
                    }
                    if (zY) {
                        i9 = 67108864;
                    } else {
                        i9 = 33554432;
                    }
                    i5 |= i9;
                }
                modifier2 = modifierE;
                if ((i5 & 38347923) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i5 & 1, z3)) {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("TopBarAction$default");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i11 != 0) {
                        floatingTopBarStyle2 = FloatingTopBarStyle.Primary;
                    } else {
                        floatingTopBarStyle2 = floatingTopBarStyle;
                    }
                    if (i13 != 0) {
                        str4 = null;
                    } else {
                        str4 = str3;
                    }
                    if (i7 != 0) {
                        z4 = true;
                    } else {
                        z4 = z2;
                    }
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    gapComposer = gapComposerH;
                    topBarActionScope.a(dTFunctionNameModifier, i6, str, function0, lVColorScheme, floatingTopBarStyle2, str4, z4, gapComposer, i5 & 268435454);
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    dTFunctionNameModifier = modifier2;
                    floatingTopBarStyle2 = floatingTopBarStyle;
                    str4 = str3;
                    z4 = z2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: h41
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            TopBarActionScope.ComposeDefaultImpls.a(dTFunctionNameModifier, i2, str, function0, lVColorScheme, floatingTopBarStyle2, str4, z4, topBarActionScope, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i5 |= 1572864;
            str3 = str2;
            i7 = i4 & 128;
            if (i7 != 0) {
                if ((12582912 & i3) == 0) {
                    z2 = z;
                    if (gapComposerH.b(z2)) {
                        i8 = 8388608;
                    } else {
                        i8 = 4194304;
                    }
                    i5 |= i8;
                }
                if ((i3 & 100663296) == 0) {
                    if ((i3 & 134217728) == 0) {
                        zY = gapComposerH.K(topBarActionScope);
                    } else {
                        zY = gapComposerH.y(topBarActionScope);
                    }
                    if (zY) {
                        i9 = 67108864;
                    } else {
                        i9 = 33554432;
                    }
                    i5 |= i9;
                }
                modifier2 = modifierE;
                if ((i5 & 38347923) != 38347922) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (gapComposerH.p(i5 & 1, z3)) {
                    if (i10 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("TopBarAction$default");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i11 != 0) {
                        floatingTopBarStyle2 = FloatingTopBarStyle.Primary;
                    } else {
                        floatingTopBarStyle2 = floatingTopBarStyle;
                    }
                    if (i13 != 0) {
                        str4 = null;
                    } else {
                        str4 = str3;
                    }
                    if (i7 != 0) {
                        z4 = true;
                    } else {
                        z4 = z2;
                    }
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    gapComposer = gapComposerH;
                    topBarActionScope.a(dTFunctionNameModifier, i6, str, function0, lVColorScheme, floatingTopBarStyle2, str4, z4, gapComposer, i5 & 268435454);
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.D();
                    dTFunctionNameModifier = modifier2;
                    floatingTopBarStyle2 = floatingTopBarStyle;
                    str4 = str3;
                    z4 = z2;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: h41
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            TopBarActionScope.ComposeDefaultImpls.a(dTFunctionNameModifier, i2, str, function0, lVColorScheme, floatingTopBarStyle2, str4, z4, topBarActionScope, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i5 |= 12582912;
            z2 = z;
            if ((i3 & 100663296) == 0) {
                if ((i3 & 134217728) == 0) {
                    zY = gapComposerH.K(topBarActionScope);
                } else {
                    zY = gapComposerH.y(topBarActionScope);
                }
                if (zY) {
                    i9 = 67108864;
                } else {
                    i9 = 33554432;
                }
                i5 |= i9;
            }
            modifier2 = modifierE;
            if ((i5 & 38347923) != 38347922) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i5 & 1, z3)) {
                if (i10 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("TopBarAction$default");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i11 != 0) {
                    floatingTopBarStyle2 = FloatingTopBarStyle.Primary;
                } else {
                    floatingTopBarStyle2 = floatingTopBarStyle;
                }
                if (i13 != 0) {
                    str4 = null;
                } else {
                    str4 = str3;
                }
                if (i7 != 0) {
                    z4 = true;
                } else {
                    z4 = z2;
                }
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                gapComposer = gapComposerH;
                topBarActionScope.a(dTFunctionNameModifier, i6, str, function0, lVColorScheme, floatingTopBarStyle2, str4, z4, gapComposer, i5 & 268435454);
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                dTFunctionNameModifier = modifier2;
                floatingTopBarStyle2 = floatingTopBarStyle;
                str4 = str3;
                z4 = z2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: h41
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        TopBarActionScope.ComposeDefaultImpls.a(dTFunctionNameModifier, i2, str, function0, lVColorScheme, floatingTopBarStyle2, str4, z4, topBarActionScope, (Composer) obj, RecomposeScopeImplKt.a(i3 | 1), i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
    }

    void a(Modifier modifier, int i2, String str, Function0 function0, LVColorScheme lVColorScheme, FloatingTopBarStyle floatingTopBarStyle, String str2, boolean z, Composer composer, int i3);
}
