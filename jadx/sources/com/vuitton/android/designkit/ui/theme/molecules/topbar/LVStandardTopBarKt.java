package com.vuitton.android.designkit.ui.theme.molecules.topbar;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.TopAppBarColors;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.RippleKt;
import defpackage.d21;
import defpackage.j60;
import defpackage.wc;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVStandardTopBarKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f48755a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f48756b;

        static {
            int[] iArr = new int[LVColorScheme.values().length];
            try {
                iArr[LVColorScheme.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LVColorScheme.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f48755a = iArr;
            int[] iArr2 = new int[TopBarNavIcon.values().length];
            try {
                iArr2[TopBarNavIcon.BACK.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[TopBarNavIcon.CLOSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            f48756b = iArr2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0118  */
    /* JADX WARN: Code duplicated, block: B:105:0x0124  */
    /* JADX WARN: Code duplicated, block: B:106:0x012d  */
    /* JADX WARN: Code duplicated, block: B:108:0x0131  */
    /* JADX WARN: Code duplicated, block: B:110:0x013b  */
    /* JADX WARN: Code duplicated, block: B:111:0x013e  */
    /* JADX WARN: Code duplicated, block: B:113:0x0143  */
    /* JADX WARN: Code duplicated, block: B:116:0x014d  */
    /* JADX WARN: Code duplicated, block: B:118:0x0154  */
    /* JADX WARN: Code duplicated, block: B:120:0x0158  */
    /* JADX WARN: Code duplicated, block: B:122:0x0162  */
    /* JADX WARN: Code duplicated, block: B:123:0x0165  */
    /* JADX WARN: Code duplicated, block: B:127:0x0176  */
    /* JADX WARN: Code duplicated, block: B:131:0x017f  */
    /* JADX WARN: Code duplicated, block: B:134:0x0188  */
    /* JADX WARN: Code duplicated, block: B:136:0x018f  */
    /* JADX WARN: Code duplicated, block: B:140:0x01ad A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:141:0x01af  */
    /* JADX WARN: Code duplicated, block: B:142:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:144:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:145:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:147:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:150:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:151:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:153:0x01ca  */
    /* JADX WARN: Code duplicated, block: B:154:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:156:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:158:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:161:0x01df  */
    /* JADX WARN: Code duplicated, block: B:162:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:164:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:165:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:167:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:169:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:172:0x0213  */
    /* JADX WARN: Code duplicated, block: B:174:0x0216  */
    /* JADX WARN: Code duplicated, block: B:175:0x0243  */
    /* JADX WARN: Code duplicated, block: B:177:0x024c  */
    /* JADX WARN: Code duplicated, block: B:179:0x027a  */
    /* JADX WARN: Code duplicated, block: B:181:0x0284  */
    /* JADX WARN: Code duplicated, block: B:184:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:187:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:189:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:0x0070  */
    /* JADX WARN: Code duplicated, block: B:44:0x0078  */
    /* JADX WARN: Code duplicated, block: B:45:0x007b  */
    /* JADX WARN: Code duplicated, block: B:47:0x0080  */
    /* JADX WARN: Code duplicated, block: B:50:0x0086  */
    /* JADX WARN: Code duplicated, block: B:52:0x008b  */
    /* JADX WARN: Code duplicated, block: B:54:0x008f  */
    /* JADX WARN: Code duplicated, block: B:56:0x0097  */
    /* JADX WARN: Code duplicated, block: B:57:0x009a  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ab A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:66:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:77:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:79:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:84:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:85:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:87:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:90:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:94:0x0100  */
    /* JADX WARN: Code duplicated, block: B:96:0x0106  */
    /* JADX WARN: Code duplicated, block: B:99:0x0111 A[ADDED_TO_REGION] */
    public static final void a(Modifier modifier, LVColorScheme lVColorScheme, boolean z, String str, String str2, TopBarNavIcon topBarNavIcon, Function0 function0, Function4 function4, WindowInsets windowInsets, String str3, String str4, Composer composer, int i2, int i3, int i4) {
        int i5;
        boolean z2;
        String str5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        Function0 function1;
        int i11;
        int i12;
        Function4 function5;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        boolean z3;
        final LVColorScheme lVColorScheme2;
        TopBarNavIcon topBarNavIcon2;
        String str6;
        String str7;
        Function4 function6;
        Function0 function2;
        Modifier modifier2;
        String str8;
        WindowInsets windowInsets2;
        boolean z4;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        String str9;
        TopBarNavIcon topBarNavIcon3;
        WindowInsets windowInsetsC;
        String str10;
        final String str11;
        final Function4 function7;
        final String str12;
        final TopBarNavIcon topBarNavIcon4;
        final WindowInsets windowInsets3;
        final Function0 function3;
        final String str13;
        int i20;
        StandardTopBarConfig standardTopBarConfig;
        long j2;
        int i21;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVStandardTopBar");
        }
        str.getClass();
        GapComposer gapComposerH = composer.h(-102998289);
        int i22 = i4 & 1;
        if (i22 != 0) {
            i5 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i5 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i5 = i2;
        }
        int i23 = i4 & 2;
        if (i23 != 0) {
            i5 |= 48;
        } else if ((i2 & 48) == 0) {
            i5 |= gapComposerH.d(lVColorScheme == null ? -1 : lVColorScheme.ordinal()) ? 32 : 16;
        }
        int i24 = i4 & 4;
        if (i24 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                z2 = z;
                i5 |= gapComposerH.b(z2) ? 256 : 128;
            }
            if ((i2 & 3072) == 0) {
                str5 = str;
                if (gapComposerH.K(str5)) {
                    i21 = 2048;
                } else {
                    i21 = 1024;
                }
                i5 |= i21;
            } else {
                str5 = str;
            }
            i6 = i4 & 16;
            if (i6 != 0) {
                if ((i2 & 24576) == 0) {
                    if (gapComposerH.K(str2)) {
                        i7 = 16384;
                    } else {
                        i7 = 8192;
                    }
                    i5 |= i7;
                }
                i8 = i4 & 32;
                if (i8 != 0) {
                    i5 |= ImageMetadata.EDGE_MODE;
                } else if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.d(topBarNavIcon != null ? topBarNavIcon.ordinal() : -1)) {
                        i9 = 131072;
                    } else {
                        i9 = 65536;
                    }
                    i5 |= i9;
                }
                i10 = i4 & 64;
                if (i10 != 0) {
                    i5 |= 1572864;
                    function1 = function0;
                } else {
                    function1 = function0;
                    if ((i2 & 1572864) == 0) {
                        if (gapComposerH.y(function1)) {
                            i11 = 1048576;
                        } else {
                            i11 = 524288;
                        }
                        i5 |= i11;
                    }
                }
                i12 = i4 & 128;
                if (i12 != 0) {
                    i5 |= 12582912;
                    function5 = function4;
                } else {
                    function5 = function4;
                    if ((i2 & 12582912) == 0) {
                        if (gapComposerH.y(function5)) {
                            i13 = 8388608;
                        } else {
                            i13 = 4194304;
                        }
                        i5 |= i13;
                    }
                }
                if ((i2 & 100663296) != 0) {
                    i5 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
                }
                i14 = i5 | 805306368;
                i15 = i4 & 1024;
                if (i15 != 0) {
                    i16 = i3 | 6;
                } else if ((i3 & 6) == 0) {
                    if (gapComposerH.K(str3)) {
                        i17 = 4;
                    } else {
                        i17 = 2;
                    }
                    i16 = i3 | i17;
                } else {
                    i16 = i3;
                }
                i18 = i4 & 2048;
                if (i18 != 0) {
                    if ((i3 & 48) == 0) {
                        if (gapComposerH.K(str4)) {
                            i19 = 32;
                        } else {
                            i19 = 16;
                        }
                        i16 |= i19;
                    }
                    if ((i14 & 306783379) == 306783378 || (i16 & 19) != 18) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (gapComposerH.p(i14 & 1, z3)) {
                        gapComposerH.y0();
                        if ((i2 & 1) != 0 || gapComposerH.h0()) {
                            if (i22 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("LVStandardTopBar");
                            }
                            if (i23 != 0) {
                                dTFunctionNameModifier = modifierE;
                                lVColorScheme2 = LVColorScheme.DEFAULT;
                            } else {
                                dTFunctionNameModifier = modifierE;
                                lVColorScheme2 = lVColorScheme;
                            }
                            if (i24 != 0) {
                                z2 = false;
                            }
                            if (i6 != 0) {
                                str9 = null;
                            } else {
                                str9 = str2;
                            }
                            if (i8 != 0) {
                                topBarNavIcon3 = TopBarNavIcon.BACK;
                            } else {
                                topBarNavIcon3 = topBarNavIcon;
                            }
                            if (i10 != 0) {
                                function1 = null;
                            }
                            if (i12 != 0) {
                                ComposableSingletons$LVStandardTopBarKt.f48739a.getClass();
                                function5 = ComposableSingletons$LVStandardTopBarKt.f48740b;
                            }
                            if ((i4 & 256) != 0) {
                                windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                            } else {
                                windowInsetsC = windowInsets;
                            }
                            if (i15 != 0) {
                                str10 = null;
                            } else {
                                str10 = str3;
                            }
                            if (i18 != 0) {
                                str11 = null;
                            } else {
                                str11 = str4;
                            }
                            function7 = function5;
                            str12 = str9;
                            topBarNavIcon4 = topBarNavIcon3;
                            windowInsets3 = windowInsetsC;
                            function3 = function1;
                            str13 = str10;
                        } else {
                            gapComposerH.D();
                            lVColorScheme2 = lVColorScheme;
                            str12 = str2;
                            topBarNavIcon4 = topBarNavIcon;
                            str13 = str3;
                            str11 = str4;
                            function7 = function5;
                            function3 = function1;
                            dTFunctionNameModifier = modifierE;
                            windowInsets3 = windowInsets;
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        i20 = WhenMappings.f48755a[lVColorScheme2.ordinal()];
                        if (i20 != 1) {
                            gapComposerH.L(-78168617);
                            standardTopBarConfig = new StandardTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, RippleKt.a(gapComposerH), null);
                            gapComposerH.Z(false);
                        } else {
                            if (i20 == 2) {
                                throw d21.u(gapComposerH, -78169805, false);
                            }
                            gapComposerH.L(-78157624);
                            standardTopBarConfig = new StandardTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48378f, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, LVAppDesignKitTheme.c(gapComposerH).f48361b.n, RippleKt.b(gapComposerH), null);
                            gapComposerH.Z(false);
                        }
                        if (z2) {
                            Color.f8866b.getClass();
                            j2 = Color.f8870h;
                        } else {
                            j2 = standardTopBarConfig.f48760a;
                        }
                        final long j3 = j2;
                        final Modifier modifier3 = dTFunctionNameModifier;
                        final StandardTopBarConfig standardTopBarConfig2 = standardTopBarConfig;
                        final String str14 = str5;
                        CompositionLocalKt.a(androidx.compose.material3.RippleKt.f7164a.c(standardTopBarConfig.d), ComposableLambdaKt.b(894829103, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.e
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                Composer composer2 = (Composer) obj;
                                int iIntValue = ((Integer) obj2).intValue();
                                Modifier modifierE2 = modifier3;
                                if (modifierE2 != null) {
                                    modifierE2 = defpackage.a.e(modifierE2, "LVStandardTopBar$lambda$0");
                                }
                                int i25 = 1;
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    TopAppBarColors topAppBarColorsD = TopAppBarDefaults.d(j3, 0L, composer2, 62);
                                    String str15 = str14;
                                    String str16 = str12;
                                    StandardTopBarConfig standardTopBarConfig3 = standardTopBarConfig2;
                                    AppBarKt.c(ComposableLambdaKt.b(-752236557, new f(str15, str16, standardTopBarConfig3, str13), composer2), modifierE2, ComposableLambdaKt.b(1692968693, new f(function3, str11, topBarNavIcon4, standardTopBarConfig3), composer2), ComposableLambdaKt.b(2067529246, new j60(function7, lVColorScheme2, i25), composer2), Call.Parameters.DEFAULT_CAMERA_ZOOM, windowInsets3, topAppBarColorsD, composer2, 3462, 16);
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }, gapComposerH), gapComposerH, 56);
                        modifier2 = modifier3;
                        windowInsets2 = windowInsets3;
                        str8 = str12;
                        str6 = str13;
                        function2 = function3;
                        str7 = str11;
                        topBarNavIcon2 = topBarNavIcon4;
                        function6 = function7;
                    } else {
                        gapComposerH.D();
                        lVColorScheme2 = lVColorScheme;
                        topBarNavIcon2 = topBarNavIcon;
                        str6 = str3;
                        str7 = str4;
                        function6 = function5;
                        function2 = function1;
                        modifier2 = modifierE;
                        str8 = str2;
                        windowInsets2 = windowInsets;
                    }
                    z4 = z2;
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        recomposeScopeImplB0.d = new wc(modifier2, lVColorScheme2, z4, str, str8, topBarNavIcon2, function2, function6, windowInsets2, str6, str7, i2, i3, i4);
                    }
                }
                i16 |= 48;
                if ((i14 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i14 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVStandardTopBar");
                        }
                        if (i23 != 0) {
                            dTFunctionNameModifier = modifierE;
                            lVColorScheme2 = LVColorScheme.DEFAULT;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            lVColorScheme2 = lVColorScheme;
                        }
                        if (i24 != 0) {
                            z2 = false;
                        }
                        if (i6 != 0) {
                            str9 = null;
                        } else {
                            str9 = str2;
                        }
                        if (i8 != 0) {
                            topBarNavIcon3 = TopBarNavIcon.BACK;
                        } else {
                            topBarNavIcon3 = topBarNavIcon;
                        }
                        if (i10 != 0) {
                            function1 = null;
                        }
                        if (i12 != 0) {
                            ComposableSingletons$LVStandardTopBarKt.f48739a.getClass();
                            function5 = ComposableSingletons$LVStandardTopBarKt.f48740b;
                        }
                        if ((i4 & 256) != 0) {
                            windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                        } else {
                            windowInsetsC = windowInsets;
                        }
                        if (i15 != 0) {
                            str10 = null;
                        } else {
                            str10 = str3;
                        }
                        if (i18 != 0) {
                            str11 = null;
                        } else {
                            str11 = str4;
                        }
                        function7 = function5;
                        str12 = str9;
                        topBarNavIcon4 = topBarNavIcon3;
                        windowInsets3 = windowInsetsC;
                        function3 = function1;
                        str13 = str10;
                    } else {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVStandardTopBar");
                        }
                        if (i23 != 0) {
                            dTFunctionNameModifier = modifierE;
                            lVColorScheme2 = LVColorScheme.DEFAULT;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            lVColorScheme2 = lVColorScheme;
                        }
                        if (i24 != 0) {
                            z2 = false;
                        }
                        if (i6 != 0) {
                            str9 = null;
                        } else {
                            str9 = str2;
                        }
                        if (i8 != 0) {
                            topBarNavIcon3 = TopBarNavIcon.BACK;
                        } else {
                            topBarNavIcon3 = topBarNavIcon;
                        }
                        if (i10 != 0) {
                            function1 = null;
                        }
                        if (i12 != 0) {
                            ComposableSingletons$LVStandardTopBarKt.f48739a.getClass();
                            function5 = ComposableSingletons$LVStandardTopBarKt.f48740b;
                        }
                        if ((i4 & 256) != 0) {
                            windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                        } else {
                            windowInsetsC = windowInsets;
                        }
                        if (i15 != 0) {
                            str10 = null;
                        } else {
                            str10 = str3;
                        }
                        if (i18 != 0) {
                            str11 = null;
                        } else {
                            str11 = str4;
                        }
                        function7 = function5;
                        str12 = str9;
                        topBarNavIcon4 = topBarNavIcon3;
                        windowInsets3 = windowInsetsC;
                        function3 = function1;
                        str13 = str10;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    i20 = WhenMappings.f48755a[lVColorScheme2.ordinal()];
                    if (i20 != 1) {
                        gapComposerH.L(-78168617);
                        standardTopBarConfig = new StandardTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, RippleKt.a(gapComposerH), null);
                        gapComposerH.Z(false);
                    } else {
                        if (i20 == 2) {
                            throw d21.u(gapComposerH, -78169805, false);
                        }
                        gapComposerH.L(-78157624);
                        standardTopBarConfig = new StandardTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48378f, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, LVAppDesignKitTheme.c(gapComposerH).f48361b.n, RippleKt.b(gapComposerH), null);
                        gapComposerH.Z(false);
                    }
                    if (z2) {
                        Color.f8866b.getClass();
                        j2 = Color.f8870h;
                    } else {
                        j2 = standardTopBarConfig.f48760a;
                    }
                    final long j4 = j2;
                    final Modifier modifier4 = dTFunctionNameModifier;
                    final StandardTopBarConfig standardTopBarConfig3 = standardTopBarConfig;
                    final String str15 = str5;
                    CompositionLocalKt.a(androidx.compose.material3.RippleKt.f7164a.c(standardTopBarConfig.d), ComposableLambdaKt.b(894829103, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.e
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue = ((Integer) obj2).intValue();
                            Modifier modifierE2 = modifier4;
                            if (modifierE2 != null) {
                                modifierE2 = defpackage.a.e(modifierE2, "LVStandardTopBar$lambda$0");
                            }
                            int i25 = 1;
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                TopAppBarColors topAppBarColorsD = TopAppBarDefaults.d(j4, 0L, composer2, 62);
                                String str16 = str15;
                                String str17 = str12;
                                StandardTopBarConfig standardTopBarConfig4 = standardTopBarConfig3;
                                AppBarKt.c(ComposableLambdaKt.b(-752236557, new f(str16, str17, standardTopBarConfig4, str13), composer2), modifierE2, ComposableLambdaKt.b(1692968693, new f(function3, str11, topBarNavIcon4, standardTopBarConfig4), composer2), ComposableLambdaKt.b(2067529246, new j60(function7, lVColorScheme2, i25), composer2), Call.Parameters.DEFAULT_CAMERA_ZOOM, windowInsets3, topAppBarColorsD, composer2, 3462, 16);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 56);
                    modifier2 = modifier4;
                    windowInsets2 = windowInsets3;
                    str8 = str12;
                    str6 = str13;
                    function2 = function3;
                    str7 = str11;
                    topBarNavIcon2 = topBarNavIcon4;
                    function6 = function7;
                } else {
                    gapComposerH.D();
                    lVColorScheme2 = lVColorScheme;
                    topBarNavIcon2 = topBarNavIcon;
                    str6 = str3;
                    str7 = str4;
                    function6 = function5;
                    function2 = function1;
                    modifier2 = modifierE;
                    str8 = str2;
                    windowInsets2 = windowInsets;
                }
                z4 = z2;
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new wc(modifier2, lVColorScheme2, z4, str, str8, topBarNavIcon2, function2, function6, windowInsets2, str6, str7, i2, i3, i4);
                }
            }
            i5 |= 24576;
            i8 = i4 & 32;
            if (i8 != 0) {
                i5 |= ImageMetadata.EDGE_MODE;
            } else if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.d(topBarNavIcon != null ? topBarNavIcon.ordinal() : -1)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i5 |= i9;
            }
            i10 = i4 & 64;
            if (i10 != 0) {
                i5 |= 1572864;
                function1 = function0;
            } else {
                function1 = function0;
                if ((i2 & 1572864) == 0) {
                    if (gapComposerH.y(function1)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i5 |= i11;
                }
            }
            i12 = i4 & 128;
            if (i12 != 0) {
                i5 |= 12582912;
                function5 = function4;
            } else {
                function5 = function4;
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.y(function5)) {
                        i13 = 8388608;
                    } else {
                        i13 = 4194304;
                    }
                    i5 |= i13;
                }
            }
            if ((i2 & 100663296) != 0) {
                i5 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
            }
            i14 = i5 | 805306368;
            i15 = i4 & 1024;
            if (i15 != 0) {
                i16 = i3 | 6;
            } else if ((i3 & 6) == 0) {
                if (gapComposerH.K(str3)) {
                    i17 = 4;
                } else {
                    i17 = 2;
                }
                i16 = i3 | i17;
            } else {
                i16 = i3;
            }
            i18 = i4 & 2048;
            if (i18 != 0) {
                if ((i3 & 48) == 0) {
                    if (gapComposerH.K(str4)) {
                        i19 = 32;
                    } else {
                        i19 = 16;
                    }
                    i16 |= i19;
                }
                if ((i14 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i14 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVStandardTopBar");
                        }
                        if (i23 != 0) {
                            dTFunctionNameModifier = modifierE;
                            lVColorScheme2 = LVColorScheme.DEFAULT;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            lVColorScheme2 = lVColorScheme;
                        }
                        if (i24 != 0) {
                            z2 = false;
                        }
                        if (i6 != 0) {
                            str9 = null;
                        } else {
                            str9 = str2;
                        }
                        if (i8 != 0) {
                            topBarNavIcon3 = TopBarNavIcon.BACK;
                        } else {
                            topBarNavIcon3 = topBarNavIcon;
                        }
                        if (i10 != 0) {
                            function1 = null;
                        }
                        if (i12 != 0) {
                            ComposableSingletons$LVStandardTopBarKt.f48739a.getClass();
                            function5 = ComposableSingletons$LVStandardTopBarKt.f48740b;
                        }
                        if ((i4 & 256) != 0) {
                            windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                        } else {
                            windowInsetsC = windowInsets;
                        }
                        if (i15 != 0) {
                            str10 = null;
                        } else {
                            str10 = str3;
                        }
                        if (i18 != 0) {
                            str11 = null;
                        } else {
                            str11 = str4;
                        }
                        function7 = function5;
                        str12 = str9;
                        topBarNavIcon4 = topBarNavIcon3;
                        windowInsets3 = windowInsetsC;
                        function3 = function1;
                        str13 = str10;
                    } else {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVStandardTopBar");
                        }
                        if (i23 != 0) {
                            dTFunctionNameModifier = modifierE;
                            lVColorScheme2 = LVColorScheme.DEFAULT;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            lVColorScheme2 = lVColorScheme;
                        }
                        if (i24 != 0) {
                            z2 = false;
                        }
                        if (i6 != 0) {
                            str9 = null;
                        } else {
                            str9 = str2;
                        }
                        if (i8 != 0) {
                            topBarNavIcon3 = TopBarNavIcon.BACK;
                        } else {
                            topBarNavIcon3 = topBarNavIcon;
                        }
                        if (i10 != 0) {
                            function1 = null;
                        }
                        if (i12 != 0) {
                            ComposableSingletons$LVStandardTopBarKt.f48739a.getClass();
                            function5 = ComposableSingletons$LVStandardTopBarKt.f48740b;
                        }
                        if ((i4 & 256) != 0) {
                            windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                        } else {
                            windowInsetsC = windowInsets;
                        }
                        if (i15 != 0) {
                            str10 = null;
                        } else {
                            str10 = str3;
                        }
                        if (i18 != 0) {
                            str11 = null;
                        } else {
                            str11 = str4;
                        }
                        function7 = function5;
                        str12 = str9;
                        topBarNavIcon4 = topBarNavIcon3;
                        windowInsets3 = windowInsetsC;
                        function3 = function1;
                        str13 = str10;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    i20 = WhenMappings.f48755a[lVColorScheme2.ordinal()];
                    if (i20 != 1) {
                        gapComposerH.L(-78168617);
                        standardTopBarConfig = new StandardTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, RippleKt.a(gapComposerH), null);
                        gapComposerH.Z(false);
                    } else {
                        if (i20 == 2) {
                            throw d21.u(gapComposerH, -78169805, false);
                        }
                        gapComposerH.L(-78157624);
                        standardTopBarConfig = new StandardTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48378f, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, LVAppDesignKitTheme.c(gapComposerH).f48361b.n, RippleKt.b(gapComposerH), null);
                        gapComposerH.Z(false);
                    }
                    if (z2) {
                        Color.f8866b.getClass();
                        j2 = Color.f8870h;
                    } else {
                        j2 = standardTopBarConfig.f48760a;
                    }
                    final long j5 = j2;
                    final Modifier modifier5 = dTFunctionNameModifier;
                    final StandardTopBarConfig standardTopBarConfig4 = standardTopBarConfig;
                    final String str16 = str5;
                    CompositionLocalKt.a(androidx.compose.material3.RippleKt.f7164a.c(standardTopBarConfig.d), ComposableLambdaKt.b(894829103, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.e
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue = ((Integer) obj2).intValue();
                            Modifier modifierE2 = modifier5;
                            if (modifierE2 != null) {
                                modifierE2 = defpackage.a.e(modifierE2, "LVStandardTopBar$lambda$0");
                            }
                            int i25 = 1;
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                TopAppBarColors topAppBarColorsD = TopAppBarDefaults.d(j5, 0L, composer2, 62);
                                String str17 = str16;
                                String str18 = str12;
                                StandardTopBarConfig standardTopBarConfig5 = standardTopBarConfig4;
                                AppBarKt.c(ComposableLambdaKt.b(-752236557, new f(str17, str18, standardTopBarConfig5, str13), composer2), modifierE2, ComposableLambdaKt.b(1692968693, new f(function3, str11, topBarNavIcon4, standardTopBarConfig5), composer2), ComposableLambdaKt.b(2067529246, new j60(function7, lVColorScheme2, i25), composer2), Call.Parameters.DEFAULT_CAMERA_ZOOM, windowInsets3, topAppBarColorsD, composer2, 3462, 16);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 56);
                    modifier2 = modifier5;
                    windowInsets2 = windowInsets3;
                    str8 = str12;
                    str6 = str13;
                    function2 = function3;
                    str7 = str11;
                    topBarNavIcon2 = topBarNavIcon4;
                    function6 = function7;
                } else {
                    gapComposerH.D();
                    lVColorScheme2 = lVColorScheme;
                    topBarNavIcon2 = topBarNavIcon;
                    str6 = str3;
                    str7 = str4;
                    function6 = function5;
                    function2 = function1;
                    modifier2 = modifierE;
                    str8 = str2;
                    windowInsets2 = windowInsets;
                }
                z4 = z2;
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new wc(modifier2, lVColorScheme2, z4, str, str8, topBarNavIcon2, function2, function6, windowInsets2, str6, str7, i2, i3, i4);
                }
            }
            i16 |= 48;
            if ((i14 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i14 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i22 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVStandardTopBar");
                    }
                    if (i23 != 0) {
                        dTFunctionNameModifier = modifierE;
                        lVColorScheme2 = LVColorScheme.DEFAULT;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        lVColorScheme2 = lVColorScheme;
                    }
                    if (i24 != 0) {
                        z2 = false;
                    }
                    if (i6 != 0) {
                        str9 = null;
                    } else {
                        str9 = str2;
                    }
                    if (i8 != 0) {
                        topBarNavIcon3 = TopBarNavIcon.BACK;
                    } else {
                        topBarNavIcon3 = topBarNavIcon;
                    }
                    if (i10 != 0) {
                        function1 = null;
                    }
                    if (i12 != 0) {
                        ComposableSingletons$LVStandardTopBarKt.f48739a.getClass();
                        function5 = ComposableSingletons$LVStandardTopBarKt.f48740b;
                    }
                    if ((i4 & 256) != 0) {
                        windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                    } else {
                        windowInsetsC = windowInsets;
                    }
                    if (i15 != 0) {
                        str10 = null;
                    } else {
                        str10 = str3;
                    }
                    if (i18 != 0) {
                        str11 = null;
                    } else {
                        str11 = str4;
                    }
                    function7 = function5;
                    str12 = str9;
                    topBarNavIcon4 = topBarNavIcon3;
                    windowInsets3 = windowInsetsC;
                    function3 = function1;
                    str13 = str10;
                } else {
                    if (i22 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVStandardTopBar");
                    }
                    if (i23 != 0) {
                        dTFunctionNameModifier = modifierE;
                        lVColorScheme2 = LVColorScheme.DEFAULT;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        lVColorScheme2 = lVColorScheme;
                    }
                    if (i24 != 0) {
                        z2 = false;
                    }
                    if (i6 != 0) {
                        str9 = null;
                    } else {
                        str9 = str2;
                    }
                    if (i8 != 0) {
                        topBarNavIcon3 = TopBarNavIcon.BACK;
                    } else {
                        topBarNavIcon3 = topBarNavIcon;
                    }
                    if (i10 != 0) {
                        function1 = null;
                    }
                    if (i12 != 0) {
                        ComposableSingletons$LVStandardTopBarKt.f48739a.getClass();
                        function5 = ComposableSingletons$LVStandardTopBarKt.f48740b;
                    }
                    if ((i4 & 256) != 0) {
                        windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                    } else {
                        windowInsetsC = windowInsets;
                    }
                    if (i15 != 0) {
                        str10 = null;
                    } else {
                        str10 = str3;
                    }
                    if (i18 != 0) {
                        str11 = null;
                    } else {
                        str11 = str4;
                    }
                    function7 = function5;
                    str12 = str9;
                    topBarNavIcon4 = topBarNavIcon3;
                    windowInsets3 = windowInsetsC;
                    function3 = function1;
                    str13 = str10;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                i20 = WhenMappings.f48755a[lVColorScheme2.ordinal()];
                if (i20 != 1) {
                    gapComposerH.L(-78168617);
                    standardTopBarConfig = new StandardTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, RippleKt.a(gapComposerH), null);
                    gapComposerH.Z(false);
                } else {
                    if (i20 == 2) {
                        throw d21.u(gapComposerH, -78169805, false);
                    }
                    gapComposerH.L(-78157624);
                    standardTopBarConfig = new StandardTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48378f, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, LVAppDesignKitTheme.c(gapComposerH).f48361b.n, RippleKt.b(gapComposerH), null);
                    gapComposerH.Z(false);
                }
                if (z2) {
                    Color.f8866b.getClass();
                    j2 = Color.f8870h;
                } else {
                    j2 = standardTopBarConfig.f48760a;
                }
                final long j6 = j2;
                final Modifier modifier6 = dTFunctionNameModifier;
                final StandardTopBarConfig standardTopBarConfig5 = standardTopBarConfig;
                final String str17 = str5;
                CompositionLocalKt.a(androidx.compose.material3.RippleKt.f7164a.c(standardTopBarConfig.d), ComposableLambdaKt.b(894829103, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.e
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Integer) obj2).intValue();
                        Modifier modifierE2 = modifier6;
                        if (modifierE2 != null) {
                            modifierE2 = defpackage.a.e(modifierE2, "LVStandardTopBar$lambda$0");
                        }
                        int i25 = 1;
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                            TopAppBarColors topAppBarColorsD = TopAppBarDefaults.d(j6, 0L, composer2, 62);
                            String str18 = str17;
                            String str19 = str12;
                            StandardTopBarConfig standardTopBarConfig6 = standardTopBarConfig5;
                            AppBarKt.c(ComposableLambdaKt.b(-752236557, new f(str18, str19, standardTopBarConfig6, str13), composer2), modifierE2, ComposableLambdaKt.b(1692968693, new f(function3, str11, topBarNavIcon4, standardTopBarConfig6), composer2), ComposableLambdaKt.b(2067529246, new j60(function7, lVColorScheme2, i25), composer2), Call.Parameters.DEFAULT_CAMERA_ZOOM, windowInsets3, topAppBarColorsD, composer2, 3462, 16);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 56);
                modifier2 = modifier6;
                windowInsets2 = windowInsets3;
                str8 = str12;
                str6 = str13;
                function2 = function3;
                str7 = str11;
                topBarNavIcon2 = topBarNavIcon4;
                function6 = function7;
            } else {
                gapComposerH.D();
                lVColorScheme2 = lVColorScheme;
                topBarNavIcon2 = topBarNavIcon;
                str6 = str3;
                str7 = str4;
                function6 = function5;
                function2 = function1;
                modifier2 = modifierE;
                str8 = str2;
                windowInsets2 = windowInsets;
            }
            z4 = z2;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new wc(modifier2, lVColorScheme2, z4, str, str8, topBarNavIcon2, function2, function6, windowInsets2, str6, str7, i2, i3, i4);
            }
        }
        i5 |= KyberEngine.KyberPolyBytes;
        z2 = z;
        if ((i2 & 3072) == 0) {
            str5 = str;
            if (gapComposerH.K(str5)) {
                i21 = 2048;
            } else {
                i21 = 1024;
            }
            i5 |= i21;
        } else {
            str5 = str;
        }
        i6 = i4 & 16;
        if (i6 != 0) {
            if ((i2 & 24576) == 0) {
                if (gapComposerH.K(str2)) {
                    i7 = 16384;
                } else {
                    i7 = 8192;
                }
                i5 |= i7;
            }
            i8 = i4 & 32;
            if (i8 != 0) {
                i5 |= ImageMetadata.EDGE_MODE;
            } else if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.d(topBarNavIcon != null ? topBarNavIcon.ordinal() : -1)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i5 |= i9;
            }
            i10 = i4 & 64;
            if (i10 != 0) {
                i5 |= 1572864;
                function1 = function0;
            } else {
                function1 = function0;
                if ((i2 & 1572864) == 0) {
                    if (gapComposerH.y(function1)) {
                        i11 = 1048576;
                    } else {
                        i11 = 524288;
                    }
                    i5 |= i11;
                }
            }
            i12 = i4 & 128;
            if (i12 != 0) {
                i5 |= 12582912;
                function5 = function4;
            } else {
                function5 = function4;
                if ((i2 & 12582912) == 0) {
                    if (gapComposerH.y(function5)) {
                        i13 = 8388608;
                    } else {
                        i13 = 4194304;
                    }
                    i5 |= i13;
                }
            }
            if ((i2 & 100663296) != 0) {
                i5 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
            }
            i14 = i5 | 805306368;
            i15 = i4 & 1024;
            if (i15 != 0) {
                i16 = i3 | 6;
            } else if ((i3 & 6) == 0) {
                if (gapComposerH.K(str3)) {
                    i17 = 4;
                } else {
                    i17 = 2;
                }
                i16 = i3 | i17;
            } else {
                i16 = i3;
            }
            i18 = i4 & 2048;
            if (i18 != 0) {
                if ((i3 & 48) == 0) {
                    if (gapComposerH.K(str4)) {
                        i19 = 32;
                    } else {
                        i19 = 16;
                    }
                    i16 |= i19;
                }
                if ((i14 & 306783379) == 306783378) {
                    z3 = true;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i14 & 1, z3)) {
                    gapComposerH.y0();
                    if ((i2 & 1) != 0) {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVStandardTopBar");
                        }
                        if (i23 != 0) {
                            dTFunctionNameModifier = modifierE;
                            lVColorScheme2 = LVColorScheme.DEFAULT;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            lVColorScheme2 = lVColorScheme;
                        }
                        if (i24 != 0) {
                            z2 = false;
                        }
                        if (i6 != 0) {
                            str9 = null;
                        } else {
                            str9 = str2;
                        }
                        if (i8 != 0) {
                            topBarNavIcon3 = TopBarNavIcon.BACK;
                        } else {
                            topBarNavIcon3 = topBarNavIcon;
                        }
                        if (i10 != 0) {
                            function1 = null;
                        }
                        if (i12 != 0) {
                            ComposableSingletons$LVStandardTopBarKt.f48739a.getClass();
                            function5 = ComposableSingletons$LVStandardTopBarKt.f48740b;
                        }
                        if ((i4 & 256) != 0) {
                            windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                        } else {
                            windowInsetsC = windowInsets;
                        }
                        if (i15 != 0) {
                            str10 = null;
                        } else {
                            str10 = str3;
                        }
                        if (i18 != 0) {
                            str11 = null;
                        } else {
                            str11 = str4;
                        }
                        function7 = function5;
                        str12 = str9;
                        topBarNavIcon4 = topBarNavIcon3;
                        windowInsets3 = windowInsetsC;
                        function3 = function1;
                        str13 = str10;
                    } else {
                        if (i22 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("LVStandardTopBar");
                        }
                        if (i23 != 0) {
                            dTFunctionNameModifier = modifierE;
                            lVColorScheme2 = LVColorScheme.DEFAULT;
                        } else {
                            dTFunctionNameModifier = modifierE;
                            lVColorScheme2 = lVColorScheme;
                        }
                        if (i24 != 0) {
                            z2 = false;
                        }
                        if (i6 != 0) {
                            str9 = null;
                        } else {
                            str9 = str2;
                        }
                        if (i8 != 0) {
                            topBarNavIcon3 = TopBarNavIcon.BACK;
                        } else {
                            topBarNavIcon3 = topBarNavIcon;
                        }
                        if (i10 != 0) {
                            function1 = null;
                        }
                        if (i12 != 0) {
                            ComposableSingletons$LVStandardTopBarKt.f48739a.getClass();
                            function5 = ComposableSingletons$LVStandardTopBarKt.f48740b;
                        }
                        if ((i4 & 256) != 0) {
                            windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                        } else {
                            windowInsetsC = windowInsets;
                        }
                        if (i15 != 0) {
                            str10 = null;
                        } else {
                            str10 = str3;
                        }
                        if (i18 != 0) {
                            str11 = null;
                        } else {
                            str11 = str4;
                        }
                        function7 = function5;
                        str12 = str9;
                        topBarNavIcon4 = topBarNavIcon3;
                        windowInsets3 = windowInsetsC;
                        function3 = function1;
                        str13 = str10;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    i20 = WhenMappings.f48755a[lVColorScheme2.ordinal()];
                    if (i20 != 1) {
                        gapComposerH.L(-78168617);
                        standardTopBarConfig = new StandardTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, RippleKt.a(gapComposerH), null);
                        gapComposerH.Z(false);
                    } else {
                        if (i20 == 2) {
                            throw d21.u(gapComposerH, -78169805, false);
                        }
                        gapComposerH.L(-78157624);
                        standardTopBarConfig = new StandardTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48378f, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, LVAppDesignKitTheme.c(gapComposerH).f48361b.n, RippleKt.b(gapComposerH), null);
                        gapComposerH.Z(false);
                    }
                    if (z2) {
                        Color.f8866b.getClass();
                        j2 = Color.f8870h;
                    } else {
                        j2 = standardTopBarConfig.f48760a;
                    }
                    final long j7 = j2;
                    final Modifier modifier7 = dTFunctionNameModifier;
                    final StandardTopBarConfig standardTopBarConfig6 = standardTopBarConfig;
                    final String str18 = str5;
                    CompositionLocalKt.a(androidx.compose.material3.RippleKt.f7164a.c(standardTopBarConfig.d), ComposableLambdaKt.b(894829103, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.e
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue = ((Integer) obj2).intValue();
                            Modifier modifierE2 = modifier7;
                            if (modifierE2 != null) {
                                modifierE2 = defpackage.a.e(modifierE2, "LVStandardTopBar$lambda$0");
                            }
                            int i25 = 1;
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                TopAppBarColors topAppBarColorsD = TopAppBarDefaults.d(j7, 0L, composer2, 62);
                                String str19 = str18;
                                String str110 = str12;
                                StandardTopBarConfig standardTopBarConfig7 = standardTopBarConfig6;
                                AppBarKt.c(ComposableLambdaKt.b(-752236557, new f(str19, str110, standardTopBarConfig7, str13), composer2), modifierE2, ComposableLambdaKt.b(1692968693, new f(function3, str11, topBarNavIcon4, standardTopBarConfig7), composer2), ComposableLambdaKt.b(2067529246, new j60(function7, lVColorScheme2, i25), composer2), Call.Parameters.DEFAULT_CAMERA_ZOOM, windowInsets3, topAppBarColorsD, composer2, 3462, 16);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 56);
                    modifier2 = modifier7;
                    windowInsets2 = windowInsets3;
                    str8 = str12;
                    str6 = str13;
                    function2 = function3;
                    str7 = str11;
                    topBarNavIcon2 = topBarNavIcon4;
                    function6 = function7;
                } else {
                    gapComposerH.D();
                    lVColorScheme2 = lVColorScheme;
                    topBarNavIcon2 = topBarNavIcon;
                    str6 = str3;
                    str7 = str4;
                    function6 = function5;
                    function2 = function1;
                    modifier2 = modifierE;
                    str8 = str2;
                    windowInsets2 = windowInsets;
                }
                z4 = z2;
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new wc(modifier2, lVColorScheme2, z4, str, str8, topBarNavIcon2, function2, function6, windowInsets2, str6, str7, i2, i3, i4);
                }
            }
            i16 |= 48;
            if ((i14 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i14 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i22 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVStandardTopBar");
                    }
                    if (i23 != 0) {
                        dTFunctionNameModifier = modifierE;
                        lVColorScheme2 = LVColorScheme.DEFAULT;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        lVColorScheme2 = lVColorScheme;
                    }
                    if (i24 != 0) {
                        z2 = false;
                    }
                    if (i6 != 0) {
                        str9 = null;
                    } else {
                        str9 = str2;
                    }
                    if (i8 != 0) {
                        topBarNavIcon3 = TopBarNavIcon.BACK;
                    } else {
                        topBarNavIcon3 = topBarNavIcon;
                    }
                    if (i10 != 0) {
                        function1 = null;
                    }
                    if (i12 != 0) {
                        ComposableSingletons$LVStandardTopBarKt.f48739a.getClass();
                        function5 = ComposableSingletons$LVStandardTopBarKt.f48740b;
                    }
                    if ((i4 & 256) != 0) {
                        windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                    } else {
                        windowInsetsC = windowInsets;
                    }
                    if (i15 != 0) {
                        str10 = null;
                    } else {
                        str10 = str3;
                    }
                    if (i18 != 0) {
                        str11 = null;
                    } else {
                        str11 = str4;
                    }
                    function7 = function5;
                    str12 = str9;
                    topBarNavIcon4 = topBarNavIcon3;
                    windowInsets3 = windowInsetsC;
                    function3 = function1;
                    str13 = str10;
                } else {
                    if (i22 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVStandardTopBar");
                    }
                    if (i23 != 0) {
                        dTFunctionNameModifier = modifierE;
                        lVColorScheme2 = LVColorScheme.DEFAULT;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        lVColorScheme2 = lVColorScheme;
                    }
                    if (i24 != 0) {
                        z2 = false;
                    }
                    if (i6 != 0) {
                        str9 = null;
                    } else {
                        str9 = str2;
                    }
                    if (i8 != 0) {
                        topBarNavIcon3 = TopBarNavIcon.BACK;
                    } else {
                        topBarNavIcon3 = topBarNavIcon;
                    }
                    if (i10 != 0) {
                        function1 = null;
                    }
                    if (i12 != 0) {
                        ComposableSingletons$LVStandardTopBarKt.f48739a.getClass();
                        function5 = ComposableSingletons$LVStandardTopBarKt.f48740b;
                    }
                    if ((i4 & 256) != 0) {
                        windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                    } else {
                        windowInsetsC = windowInsets;
                    }
                    if (i15 != 0) {
                        str10 = null;
                    } else {
                        str10 = str3;
                    }
                    if (i18 != 0) {
                        str11 = null;
                    } else {
                        str11 = str4;
                    }
                    function7 = function5;
                    str12 = str9;
                    topBarNavIcon4 = topBarNavIcon3;
                    windowInsets3 = windowInsetsC;
                    function3 = function1;
                    str13 = str10;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                i20 = WhenMappings.f48755a[lVColorScheme2.ordinal()];
                if (i20 != 1) {
                    gapComposerH.L(-78168617);
                    standardTopBarConfig = new StandardTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, RippleKt.a(gapComposerH), null);
                    gapComposerH.Z(false);
                } else {
                    if (i20 == 2) {
                        throw d21.u(gapComposerH, -78169805, false);
                    }
                    gapComposerH.L(-78157624);
                    standardTopBarConfig = new StandardTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48378f, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, LVAppDesignKitTheme.c(gapComposerH).f48361b.n, RippleKt.b(gapComposerH), null);
                    gapComposerH.Z(false);
                }
                if (z2) {
                    Color.f8866b.getClass();
                    j2 = Color.f8870h;
                } else {
                    j2 = standardTopBarConfig.f48760a;
                }
                final long j8 = j2;
                final Modifier modifier8 = dTFunctionNameModifier;
                final StandardTopBarConfig standardTopBarConfig7 = standardTopBarConfig;
                final String str19 = str5;
                CompositionLocalKt.a(androidx.compose.material3.RippleKt.f7164a.c(standardTopBarConfig.d), ComposableLambdaKt.b(894829103, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.e
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Integer) obj2).intValue();
                        Modifier modifierE2 = modifier8;
                        if (modifierE2 != null) {
                            modifierE2 = defpackage.a.e(modifierE2, "LVStandardTopBar$lambda$0");
                        }
                        int i25 = 1;
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                            TopAppBarColors topAppBarColorsD = TopAppBarDefaults.d(j8, 0L, composer2, 62);
                            String str110 = str19;
                            String str111 = str12;
                            StandardTopBarConfig standardTopBarConfig8 = standardTopBarConfig7;
                            AppBarKt.c(ComposableLambdaKt.b(-752236557, new f(str110, str111, standardTopBarConfig8, str13), composer2), modifierE2, ComposableLambdaKt.b(1692968693, new f(function3, str11, topBarNavIcon4, standardTopBarConfig8), composer2), ComposableLambdaKt.b(2067529246, new j60(function7, lVColorScheme2, i25), composer2), Call.Parameters.DEFAULT_CAMERA_ZOOM, windowInsets3, topAppBarColorsD, composer2, 3462, 16);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 56);
                modifier2 = modifier8;
                windowInsets2 = windowInsets3;
                str8 = str12;
                str6 = str13;
                function2 = function3;
                str7 = str11;
                topBarNavIcon2 = topBarNavIcon4;
                function6 = function7;
            } else {
                gapComposerH.D();
                lVColorScheme2 = lVColorScheme;
                topBarNavIcon2 = topBarNavIcon;
                str6 = str3;
                str7 = str4;
                function6 = function5;
                function2 = function1;
                modifier2 = modifierE;
                str8 = str2;
                windowInsets2 = windowInsets;
            }
            z4 = z2;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new wc(modifier2, lVColorScheme2, z4, str, str8, topBarNavIcon2, function2, function6, windowInsets2, str6, str7, i2, i3, i4);
            }
        }
        i5 |= 24576;
        i8 = i4 & 32;
        if (i8 != 0) {
            i5 |= ImageMetadata.EDGE_MODE;
        } else if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            if (gapComposerH.d(topBarNavIcon != null ? topBarNavIcon.ordinal() : -1)) {
                i9 = 131072;
            } else {
                i9 = 65536;
            }
            i5 |= i9;
        }
        i10 = i4 & 64;
        if (i10 != 0) {
            i5 |= 1572864;
            function1 = function0;
        } else {
            function1 = function0;
            if ((i2 & 1572864) == 0) {
                if (gapComposerH.y(function1)) {
                    i11 = 1048576;
                } else {
                    i11 = 524288;
                }
                i5 |= i11;
            }
        }
        i12 = i4 & 128;
        if (i12 != 0) {
            i5 |= 12582912;
            function5 = function4;
        } else {
            function5 = function4;
            if ((i2 & 12582912) == 0) {
                if (gapComposerH.y(function5)) {
                    i13 = 8388608;
                } else {
                    i13 = 4194304;
                }
                i5 |= i13;
            }
        }
        if ((i2 & 100663296) != 0) {
            i5 |= ((i4 & 256) == 0 || !gapComposerH.K(windowInsets)) ? 33554432 : 67108864;
        }
        i14 = i5 | 805306368;
        i15 = i4 & 1024;
        if (i15 != 0) {
            i16 = i3 | 6;
        } else if ((i3 & 6) == 0) {
            if (gapComposerH.K(str3)) {
                i17 = 4;
            } else {
                i17 = 2;
            }
            i16 = i3 | i17;
        } else {
            i16 = i3;
        }
        i18 = i4 & 2048;
        if (i18 != 0) {
            if ((i3 & 48) == 0) {
                if (gapComposerH.K(str4)) {
                    i19 = 32;
                } else {
                    i19 = 16;
                }
                i16 |= i19;
            }
            if ((i14 & 306783379) == 306783378) {
                z3 = true;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i14 & 1, z3)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0) {
                    if (i22 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVStandardTopBar");
                    }
                    if (i23 != 0) {
                        dTFunctionNameModifier = modifierE;
                        lVColorScheme2 = LVColorScheme.DEFAULT;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        lVColorScheme2 = lVColorScheme;
                    }
                    if (i24 != 0) {
                        z2 = false;
                    }
                    if (i6 != 0) {
                        str9 = null;
                    } else {
                        str9 = str2;
                    }
                    if (i8 != 0) {
                        topBarNavIcon3 = TopBarNavIcon.BACK;
                    } else {
                        topBarNavIcon3 = topBarNavIcon;
                    }
                    if (i10 != 0) {
                        function1 = null;
                    }
                    if (i12 != 0) {
                        ComposableSingletons$LVStandardTopBarKt.f48739a.getClass();
                        function5 = ComposableSingletons$LVStandardTopBarKt.f48740b;
                    }
                    if ((i4 & 256) != 0) {
                        windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                    } else {
                        windowInsetsC = windowInsets;
                    }
                    if (i15 != 0) {
                        str10 = null;
                    } else {
                        str10 = str3;
                    }
                    if (i18 != 0) {
                        str11 = null;
                    } else {
                        str11 = str4;
                    }
                    function7 = function5;
                    str12 = str9;
                    topBarNavIcon4 = topBarNavIcon3;
                    windowInsets3 = windowInsetsC;
                    function3 = function1;
                    str13 = str10;
                } else {
                    if (i22 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("LVStandardTopBar");
                    }
                    if (i23 != 0) {
                        dTFunctionNameModifier = modifierE;
                        lVColorScheme2 = LVColorScheme.DEFAULT;
                    } else {
                        dTFunctionNameModifier = modifierE;
                        lVColorScheme2 = lVColorScheme;
                    }
                    if (i24 != 0) {
                        z2 = false;
                    }
                    if (i6 != 0) {
                        str9 = null;
                    } else {
                        str9 = str2;
                    }
                    if (i8 != 0) {
                        topBarNavIcon3 = TopBarNavIcon.BACK;
                    } else {
                        topBarNavIcon3 = topBarNavIcon;
                    }
                    if (i10 != 0) {
                        function1 = null;
                    }
                    if (i12 != 0) {
                        ComposableSingletons$LVStandardTopBarKt.f48739a.getClass();
                        function5 = ComposableSingletons$LVStandardTopBarKt.f48740b;
                    }
                    if ((i4 & 256) != 0) {
                        windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                    } else {
                        windowInsetsC = windowInsets;
                    }
                    if (i15 != 0) {
                        str10 = null;
                    } else {
                        str10 = str3;
                    }
                    if (i18 != 0) {
                        str11 = null;
                    } else {
                        str11 = str4;
                    }
                    function7 = function5;
                    str12 = str9;
                    topBarNavIcon4 = topBarNavIcon3;
                    windowInsets3 = windowInsetsC;
                    function3 = function1;
                    str13 = str10;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                i20 = WhenMappings.f48755a[lVColorScheme2.ordinal()];
                if (i20 != 1) {
                    gapComposerH.L(-78168617);
                    standardTopBarConfig = new StandardTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, RippleKt.a(gapComposerH), null);
                    gapComposerH.Z(false);
                } else {
                    if (i20 == 2) {
                        throw d21.u(gapComposerH, -78169805, false);
                    }
                    gapComposerH.L(-78157624);
                    standardTopBarConfig = new StandardTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48378f, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, LVAppDesignKitTheme.c(gapComposerH).f48361b.n, RippleKt.b(gapComposerH), null);
                    gapComposerH.Z(false);
                }
                if (z2) {
                    Color.f8866b.getClass();
                    j2 = Color.f8870h;
                } else {
                    j2 = standardTopBarConfig.f48760a;
                }
                final long j9 = j2;
                final Modifier modifier9 = dTFunctionNameModifier;
                final StandardTopBarConfig standardTopBarConfig8 = standardTopBarConfig;
                final String str110 = str5;
                CompositionLocalKt.a(androidx.compose.material3.RippleKt.f7164a.c(standardTopBarConfig.d), ComposableLambdaKt.b(894829103, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.e
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Integer) obj2).intValue();
                        Modifier modifierE2 = modifier9;
                        if (modifierE2 != null) {
                            modifierE2 = defpackage.a.e(modifierE2, "LVStandardTopBar$lambda$0");
                        }
                        int i25 = 1;
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                            TopAppBarColors topAppBarColorsD = TopAppBarDefaults.d(j9, 0L, composer2, 62);
                            String str111 = str110;
                            String str112 = str12;
                            StandardTopBarConfig standardTopBarConfig9 = standardTopBarConfig8;
                            AppBarKt.c(ComposableLambdaKt.b(-752236557, new f(str111, str112, standardTopBarConfig9, str13), composer2), modifierE2, ComposableLambdaKt.b(1692968693, new f(function3, str11, topBarNavIcon4, standardTopBarConfig9), composer2), ComposableLambdaKt.b(2067529246, new j60(function7, lVColorScheme2, i25), composer2), Call.Parameters.DEFAULT_CAMERA_ZOOM, windowInsets3, topAppBarColorsD, composer2, 3462, 16);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 56);
                modifier2 = modifier9;
                windowInsets2 = windowInsets3;
                str8 = str12;
                str6 = str13;
                function2 = function3;
                str7 = str11;
                topBarNavIcon2 = topBarNavIcon4;
                function6 = function7;
            } else {
                gapComposerH.D();
                lVColorScheme2 = lVColorScheme;
                topBarNavIcon2 = topBarNavIcon;
                str6 = str3;
                str7 = str4;
                function6 = function5;
                function2 = function1;
                modifier2 = modifierE;
                str8 = str2;
                windowInsets2 = windowInsets;
            }
            z4 = z2;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new wc(modifier2, lVColorScheme2, z4, str, str8, topBarNavIcon2, function2, function6, windowInsets2, str6, str7, i2, i3, i4);
            }
        }
        i16 |= 48;
        if ((i14 & 306783379) == 306783378) {
            z3 = true;
        } else {
            z3 = true;
        }
        if (gapComposerH.p(i14 & 1, z3)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i22 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVStandardTopBar");
                }
                if (i23 != 0) {
                    dTFunctionNameModifier = modifierE;
                    lVColorScheme2 = LVColorScheme.DEFAULT;
                } else {
                    dTFunctionNameModifier = modifierE;
                    lVColorScheme2 = lVColorScheme;
                }
                if (i24 != 0) {
                    z2 = false;
                }
                if (i6 != 0) {
                    str9 = null;
                } else {
                    str9 = str2;
                }
                if (i8 != 0) {
                    topBarNavIcon3 = TopBarNavIcon.BACK;
                } else {
                    topBarNavIcon3 = topBarNavIcon;
                }
                if (i10 != 0) {
                    function1 = null;
                }
                if (i12 != 0) {
                    ComposableSingletons$LVStandardTopBarKt.f48739a.getClass();
                    function5 = ComposableSingletons$LVStandardTopBarKt.f48740b;
                }
                if ((i4 & 256) != 0) {
                    windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                } else {
                    windowInsetsC = windowInsets;
                }
                if (i15 != 0) {
                    str10 = null;
                } else {
                    str10 = str3;
                }
                if (i18 != 0) {
                    str11 = null;
                } else {
                    str11 = str4;
                }
                function7 = function5;
                str12 = str9;
                topBarNavIcon4 = topBarNavIcon3;
                windowInsets3 = windowInsetsC;
                function3 = function1;
                str13 = str10;
            } else {
                if (i22 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("LVStandardTopBar");
                }
                if (i23 != 0) {
                    dTFunctionNameModifier = modifierE;
                    lVColorScheme2 = LVColorScheme.DEFAULT;
                } else {
                    dTFunctionNameModifier = modifierE;
                    lVColorScheme2 = lVColorScheme;
                }
                if (i24 != 0) {
                    z2 = false;
                }
                if (i6 != 0) {
                    str9 = null;
                } else {
                    str9 = str2;
                }
                if (i8 != 0) {
                    topBarNavIcon3 = TopBarNavIcon.BACK;
                } else {
                    topBarNavIcon3 = topBarNavIcon;
                }
                if (i10 != 0) {
                    function1 = null;
                }
                if (i12 != 0) {
                    ComposableSingletons$LVStandardTopBarKt.f48739a.getClass();
                    function5 = ComposableSingletons$LVStandardTopBarKt.f48740b;
                }
                if ((i4 & 256) != 0) {
                    windowInsetsC = TopAppBarDefaults.c(gapComposerH);
                } else {
                    windowInsetsC = windowInsets;
                }
                if (i15 != 0) {
                    str10 = null;
                } else {
                    str10 = str3;
                }
                if (i18 != 0) {
                    str11 = null;
                } else {
                    str11 = str4;
                }
                function7 = function5;
                str12 = str9;
                topBarNavIcon4 = topBarNavIcon3;
                windowInsets3 = windowInsetsC;
                function3 = function1;
                str13 = str10;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
            i20 = WhenMappings.f48755a[lVColorScheme2.ordinal()];
            if (i20 != 1) {
                gapComposerH.L(-78168617);
                standardTopBarConfig = new StandardTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, RippleKt.a(gapComposerH), null);
                gapComposerH.Z(false);
            } else {
                if (i20 == 2) {
                    throw d21.u(gapComposerH, -78169805, false);
                }
                gapComposerH.L(-78157624);
                standardTopBarConfig = new StandardTopBarConfig(LVAppDesignKitTheme.c(gapComposerH).f48361b.f48378f, LVAppDesignKitTheme.c(gapComposerH).f48361b.m, LVAppDesignKitTheme.c(gapComposerH).f48361b.n, RippleKt.b(gapComposerH), null);
                gapComposerH.Z(false);
            }
            if (z2) {
                Color.f8866b.getClass();
                j2 = Color.f8870h;
            } else {
                j2 = standardTopBarConfig.f48760a;
            }
            final long j10 = j2;
            final Modifier modifier10 = dTFunctionNameModifier;
            final StandardTopBarConfig standardTopBarConfig9 = standardTopBarConfig;
            final String str111 = str5;
            CompositionLocalKt.a(androidx.compose.material3.RippleKt.f7164a.c(standardTopBarConfig.d), ComposableLambdaKt.b(894829103, new Function2() { // from class: com.vuitton.android.designkit.ui.theme.molecules.topbar.e
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    Modifier modifierE2 = modifier10;
                    if (modifierE2 != null) {
                        modifierE2 = defpackage.a.e(modifierE2, "LVStandardTopBar$lambda$0");
                    }
                    int i25 = 1;
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                        TopAppBarColors topAppBarColorsD = TopAppBarDefaults.d(j10, 0L, composer2, 62);
                        String str112 = str111;
                        String str113 = str12;
                        StandardTopBarConfig standardTopBarConfig10 = standardTopBarConfig9;
                        AppBarKt.c(ComposableLambdaKt.b(-752236557, new f(str112, str113, standardTopBarConfig10, str13), composer2), modifierE2, ComposableLambdaKt.b(1692968693, new f(function3, str11, topBarNavIcon4, standardTopBarConfig10), composer2), ComposableLambdaKt.b(2067529246, new j60(function7, lVColorScheme2, i25), composer2), Call.Parameters.DEFAULT_CAMERA_ZOOM, windowInsets3, topAppBarColorsD, composer2, 3462, 16);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 56);
            modifier2 = modifier10;
            windowInsets2 = windowInsets3;
            str8 = str12;
            str6 = str13;
            function2 = function3;
            str7 = str11;
            topBarNavIcon2 = topBarNavIcon4;
            function6 = function7;
        } else {
            gapComposerH.D();
            lVColorScheme2 = lVColorScheme;
            topBarNavIcon2 = topBarNavIcon;
            str6 = str3;
            str7 = str4;
            function6 = function5;
            function2 = function1;
            modifier2 = modifierE;
            str8 = str2;
            windowInsets2 = windowInsets;
        }
        z4 = z2;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wc(modifier2, lVColorScheme2, z4, str, str8, topBarNavIcon2, function2, function6, windowInsets2, str6, str7, i2, i3, i4);
        }
    }
}
