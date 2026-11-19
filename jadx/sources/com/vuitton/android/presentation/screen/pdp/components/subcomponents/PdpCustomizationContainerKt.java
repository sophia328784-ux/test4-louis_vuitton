package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ConfigurationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationConfigurationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductCustomizationUiModel;
import defpackage.gf;
import defpackage.gi0;
import defpackage.jm0;
import defpackage.r;
import defpackage.ye0;
import defpackage.z2;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpCustomizationContainerKt {
    public static final void a(Modifier modifier, String str, String str2, String str3, String str4, Function0 function0, Composer composer, int i2) {
        int i3;
        Object obj;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CustomizationCreationCard");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-1556106824);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            obj = str;
            i3 |= gapComposerH.K(obj) ? 32 : 16;
        } else {
            obj = str;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(str2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(str3) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(str4) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVPushCardKt.a(ModifierExtKt.e(modifier2, "pdp_customizationCard_view"), false, function0, ComposableLambdaKt.b(937761324, new r(str2, str3, str4, obj, 22), gapComposerH), gapComposerH, ((i3 >> 9) & 896) | 3072, 2);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(modifier2, str, str2, str3, str4, function0, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x017f  */
    /* JADX WARN: Code duplicated, block: B:102:0x018d  */
    /* JADX WARN: Code duplicated, block: B:105:0x0197  */
    /* JADX WARN: Code duplicated, block: B:107:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x0059  */
    /* JADX WARN: Code duplicated, block: B:35:0x0061  */
    /* JADX WARN: Code duplicated, block: B:36:0x0064  */
    /* JADX WARN: Code duplicated, block: B:38:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0076  */
    /* JADX WARN: Code duplicated, block: B:44:0x0079  */
    /* JADX WARN: Code duplicated, block: B:46:0x007d  */
    /* JADX WARN: Code duplicated, block: B:49:0x0085  */
    /* JADX WARN: Code duplicated, block: B:51:0x0089  */
    /* JADX WARN: Code duplicated, block: B:53:0x008c  */
    /* JADX WARN: Code duplicated, block: B:55:0x0094  */
    /* JADX WARN: Code duplicated, block: B:56:0x0097  */
    /* JADX WARN: Code duplicated, block: B:60:0x009f  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:68:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:76:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:77:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:80:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:81:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:83:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:87:0x0106 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:88:0x0108  */
    /* JADX WARN: Code duplicated, block: B:91:0x013d  */
    /* JADX WARN: Code duplicated, block: B:93:0x014d  */
    /* JADX WARN: Code duplicated, block: B:94:0x014f  */
    /* JADX WARN: Code duplicated, block: B:97:0x015b A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:98:0x015d  */
    public static final void b(Modifier modifier, final ConfigurationUiModel configurationUiModel, String str, String str2, String str3, String str4, final Function2 function2, Composer composer, int i2, int i3) {
        int i4;
        String str5;
        String str6;
        String str7;
        int i5;
        String str8;
        int i6;
        final int i7;
        boolean z;
        String str9;
        RecomposeScopeImpl recomposeScopeImplB0;
        Unit unit;
        String str10;
        String str11;
        CustomizationConfigurationUiModel customizationConfigurationUiModel;
        boolean z2;
        boolean zY;
        Object objX;
        boolean z3;
        int i8;
        boolean z4;
        boolean zY2;
        Object objX2;
        int i9;
        int i10;
        int i11;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "GenericCustomizationCard");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-902132683);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(configurationUiModel) ? 32 : 16;
        }
        int i12 = i3 & 4;
        if (i12 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                str5 = str;
                i4 |= gapComposerH.K(str5) ? 256 : 128;
            }
            if ((i2 & 3072) == 0) {
                str6 = str2;
                if (gapComposerH.K(str6)) {
                    i11 = 2048;
                } else {
                    i11 = 1024;
                }
                i4 |= i11;
            } else {
                str6 = str2;
            }
            if ((i2 & 24576) == 0) {
                str7 = str3;
                if (gapComposerH.K(str7)) {
                    i10 = 16384;
                } else {
                    i10 = 8192;
                }
                i4 |= i10;
            } else {
                str7 = str3;
            }
            i5 = i3 & 32;
            if (i5 != 0) {
                if ((196608 & i2) == 0) {
                    str8 = str4;
                    if (gapComposerH.K(str8)) {
                        i6 = 131072;
                    } else {
                        i6 = 65536;
                    }
                    i4 |= i6;
                }
                if ((1572864 & i2) == 0) {
                    if (gapComposerH.y(function2)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i4 |= i9;
                }
                i7 = 0;
                if ((599187 & i4) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i4 & 1, z)) {
                    unit = null;
                    if (i12 != 0) {
                        str10 = null;
                    } else {
                        str10 = str5;
                    }
                    if (i5 != 0) {
                        str11 = null;
                    } else {
                        str11 = str8;
                    }
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    customizationConfigurationUiModel = configurationUiModel.f61665c;
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (customizationConfigurationUiModel == null) {
                        gapComposerH.L(-1824031308);
                        gapComposerH.Z(false);
                        z3 = false;
                        i8 = 1048576;
                    } else {
                        gapComposerH.L(-1824031307);
                        if ((i4 & 3670016) == 1048576) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        zY = z2 | gapComposerH.y(configurationUiModel);
                        objX = gapComposerH.x();
                        if (zY || objX == composer$Companion$Empty$1) {
                            objX = new Function0() { // from class: km0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i13 = i7;
                                    ConfigurationUiModel configurationUiModel2 = configurationUiModel;
                                    Function2 function3 = function2;
                                    switch (i13) {
                                        case 0:
                                            function3.invoke(configurationUiModel2.f61664b, Boolean.TRUE);
                                            break;
                                        default:
                                            function3.invoke(configurationUiModel2.f61664b, Boolean.FALSE);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX);
                        }
                        z3 = false;
                        i8 = 1048576;
                        CustomizationConfigurationCardKt.a(modifier2, customizationConfigurationUiModel, new CustomizationCardState.Modify((Function0) objX), str10, str11, gapComposerH, (i4 & 14) | ((i4 << 3) & 7168) | ((i4 >> 3) & 57344), 0);
                        gapComposerH.Z(false);
                        unit = Unit.f71739a;
                    }
                    if (unit == null) {
                        gapComposerH.L(-1823592688);
                        String str12 = configurationUiModel.d.f51778b;
                        String str13 = configurationUiModel.f61666e;
                        if ((i4 & 3670016) == i8) {
                            z4 = true;
                        } else {
                            z4 = z3;
                        }
                        zY2 = gapComposerH.y(configurationUiModel) | z4;
                        objX2 = gapComposerH.x();
                        if (zY2 || objX2 == composer$Companion$Empty$1) {
                            final int i13 = 1;
                            objX2 = new Function0() { // from class: km0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i14 = i13;
                                    ConfigurationUiModel configurationUiModel2 = configurationUiModel;
                                    Function2 function3 = function2;
                                    switch (i14) {
                                        case 0:
                                            function3.invoke(configurationUiModel2.f61664b, Boolean.TRUE);
                                            break;
                                        default:
                                            function3.invoke(configurationUiModel2.f61664b, Boolean.FALSE);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposerH.q(objX2);
                        }
                        int i14 = i4 & 14;
                        int i15 = i4 >> 3;
                        a(modifier2, str12, str6, str7, str13, (Function0) objX2, gapComposerH, i14 | (i15 & 896) | (i15 & 7168));
                        gapComposerH = gapComposerH;
                        gapComposerH.Z(z3);
                    } else {
                        gapComposerH.L(633896210);
                        gapComposerH.Z(z3);
                    }
                    str5 = str10;
                    str9 = str11;
                } else {
                    gapComposerH.D();
                    str9 = str8;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new gf(modifier2, configurationUiModel, str5, str2, str3, str9, function2, i2, i3, 4);
                }
            }
            i4 |= ImageMetadata.EDGE_MODE;
            str8 = str4;
            if ((1572864 & i2) == 0) {
                if (gapComposerH.y(function2)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i4 |= i9;
            }
            i7 = 0;
            if ((599187 & i4) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                unit = null;
                if (i12 != 0) {
                    str10 = null;
                } else {
                    str10 = str5;
                }
                if (i5 != 0) {
                    str11 = null;
                } else {
                    str11 = str8;
                }
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                customizationConfigurationUiModel = configurationUiModel.f61665c;
                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                if (customizationConfigurationUiModel == null) {
                    gapComposerH.L(-1824031308);
                    gapComposerH.Z(false);
                    z3 = false;
                    i8 = 1048576;
                } else {
                    gapComposerH.L(-1824031307);
                    if ((i4 & 3670016) == 1048576) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    zY = z2 | gapComposerH.y(configurationUiModel);
                    objX = gapComposerH.x();
                    if (zY) {
                        objX = new Function0() { // from class: km0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i16 = i7;
                                ConfigurationUiModel configurationUiModel2 = configurationUiModel;
                                Function2 function3 = function2;
                                switch (i16) {
                                    case 0:
                                        function3.invoke(configurationUiModel2.f61664b, Boolean.TRUE);
                                        break;
                                    default:
                                        function3.invoke(configurationUiModel2.f61664b, Boolean.FALSE);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX);
                    } else {
                        objX = new Function0() { // from class: km0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i16 = i7;
                                ConfigurationUiModel configurationUiModel2 = configurationUiModel;
                                Function2 function3 = function2;
                                switch (i16) {
                                    case 0:
                                        function3.invoke(configurationUiModel2.f61664b, Boolean.TRUE);
                                        break;
                                    default:
                                        function3.invoke(configurationUiModel2.f61664b, Boolean.FALSE);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX);
                    }
                    z3 = false;
                    i8 = 1048576;
                    CustomizationConfigurationCardKt.a(modifier2, customizationConfigurationUiModel, new CustomizationCardState.Modify((Function0) objX), str10, str11, gapComposerH, (i4 & 14) | ((i4 << 3) & 7168) | ((i4 >> 3) & 57344), 0);
                    gapComposerH.Z(false);
                    unit = Unit.f71739a;
                }
                if (unit == null) {
                    gapComposerH.L(-1823592688);
                    String str14 = configurationUiModel.d.f51778b;
                    String str15 = configurationUiModel.f61666e;
                    if ((i4 & 3670016) == i8) {
                        z4 = true;
                    } else {
                        z4 = z3;
                    }
                    zY2 = gapComposerH.y(configurationUiModel) | z4;
                    objX2 = gapComposerH.x();
                    if (zY2) {
                        final int i16 = 1;
                        objX2 = new Function0() { // from class: km0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i17 = i16;
                                ConfigurationUiModel configurationUiModel2 = configurationUiModel;
                                Function2 function3 = function2;
                                switch (i17) {
                                    case 0:
                                        function3.invoke(configurationUiModel2.f61664b, Boolean.TRUE);
                                        break;
                                    default:
                                        function3.invoke(configurationUiModel2.f61664b, Boolean.FALSE);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    } else {
                        final int i17 = 1;
                        objX2 = new Function0() { // from class: km0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i18 = i17;
                                ConfigurationUiModel configurationUiModel2 = configurationUiModel;
                                Function2 function3 = function2;
                                switch (i18) {
                                    case 0:
                                        function3.invoke(configurationUiModel2.f61664b, Boolean.TRUE);
                                        break;
                                    default:
                                        function3.invoke(configurationUiModel2.f61664b, Boolean.FALSE);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    }
                    int i18 = i4 & 14;
                    int i19 = i4 >> 3;
                    a(modifier2, str14, str6, str7, str15, (Function0) objX2, gapComposerH, i18 | (i19 & 896) | (i19 & 7168));
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(z3);
                } else {
                    gapComposerH.L(633896210);
                    gapComposerH.Z(z3);
                }
                str5 = str10;
                str9 = str11;
            } else {
                gapComposerH.D();
                str9 = str8;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new gf(modifier2, configurationUiModel, str5, str2, str3, str9, function2, i2, i3, 4);
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        str5 = str;
        if ((i2 & 3072) == 0) {
            str6 = str2;
            if (gapComposerH.K(str6)) {
                i11 = 2048;
            } else {
                i11 = 1024;
            }
            i4 |= i11;
        } else {
            str6 = str2;
        }
        if ((i2 & 24576) == 0) {
            str7 = str3;
            if (gapComposerH.K(str7)) {
                i10 = 16384;
            } else {
                i10 = 8192;
            }
            i4 |= i10;
        } else {
            str7 = str3;
        }
        i5 = i3 & 32;
        if (i5 != 0) {
            if ((196608 & i2) == 0) {
                str8 = str4;
                if (gapComposerH.K(str8)) {
                    i6 = 131072;
                } else {
                    i6 = 65536;
                }
                i4 |= i6;
            }
            if ((1572864 & i2) == 0) {
                if (gapComposerH.y(function2)) {
                    i9 = 1048576;
                } else {
                    i9 = 524288;
                }
                i4 |= i9;
            }
            i7 = 0;
            if ((599187 & i4) != 599186) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                unit = null;
                if (i12 != 0) {
                    str10 = null;
                } else {
                    str10 = str5;
                }
                if (i5 != 0) {
                    str11 = null;
                } else {
                    str11 = str8;
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                customizationConfigurationUiModel = configurationUiModel.f61665c;
                Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                if (customizationConfigurationUiModel == null) {
                    gapComposerH.L(-1824031308);
                    gapComposerH.Z(false);
                    z3 = false;
                    i8 = 1048576;
                } else {
                    gapComposerH.L(-1824031307);
                    if ((i4 & 3670016) == 1048576) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    zY = z2 | gapComposerH.y(configurationUiModel);
                    objX = gapComposerH.x();
                    if (zY) {
                        objX = new Function0() { // from class: km0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i110 = i7;
                                ConfigurationUiModel configurationUiModel2 = configurationUiModel;
                                Function2 function3 = function2;
                                switch (i110) {
                                    case 0:
                                        function3.invoke(configurationUiModel2.f61664b, Boolean.TRUE);
                                        break;
                                    default:
                                        function3.invoke(configurationUiModel2.f61664b, Boolean.FALSE);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX);
                    } else {
                        objX = new Function0() { // from class: km0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i110 = i7;
                                ConfigurationUiModel configurationUiModel2 = configurationUiModel;
                                Function2 function3 = function2;
                                switch (i110) {
                                    case 0:
                                        function3.invoke(configurationUiModel2.f61664b, Boolean.TRUE);
                                        break;
                                    default:
                                        function3.invoke(configurationUiModel2.f61664b, Boolean.FALSE);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX);
                    }
                    z3 = false;
                    i8 = 1048576;
                    CustomizationConfigurationCardKt.a(modifier2, customizationConfigurationUiModel, new CustomizationCardState.Modify((Function0) objX), str10, str11, gapComposerH, (i4 & 14) | ((i4 << 3) & 7168) | ((i4 >> 3) & 57344), 0);
                    gapComposerH.Z(false);
                    unit = Unit.f71739a;
                }
                if (unit == null) {
                    gapComposerH.L(-1823592688);
                    String str16 = configurationUiModel.d.f51778b;
                    String str17 = configurationUiModel.f61666e;
                    if ((i4 & 3670016) == i8) {
                        z4 = true;
                    } else {
                        z4 = z3;
                    }
                    zY2 = gapComposerH.y(configurationUiModel) | z4;
                    objX2 = gapComposerH.x();
                    if (zY2) {
                        final int i110 = 1;
                        objX2 = new Function0() { // from class: km0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i111 = i110;
                                ConfigurationUiModel configurationUiModel2 = configurationUiModel;
                                Function2 function3 = function2;
                                switch (i111) {
                                    case 0:
                                        function3.invoke(configurationUiModel2.f61664b, Boolean.TRUE);
                                        break;
                                    default:
                                        function3.invoke(configurationUiModel2.f61664b, Boolean.FALSE);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    } else {
                        final int i111 = 1;
                        objX2 = new Function0() { // from class: km0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i112 = i111;
                                ConfigurationUiModel configurationUiModel2 = configurationUiModel;
                                Function2 function3 = function2;
                                switch (i112) {
                                    case 0:
                                        function3.invoke(configurationUiModel2.f61664b, Boolean.TRUE);
                                        break;
                                    default:
                                        function3.invoke(configurationUiModel2.f61664b, Boolean.FALSE);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(objX2);
                    }
                    int i112 = i4 & 14;
                    int i113 = i4 >> 3;
                    a(modifier2, str16, str6, str7, str17, (Function0) objX2, gapComposerH, i112 | (i113 & 896) | (i113 & 7168));
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(z3);
                } else {
                    gapComposerH.L(633896210);
                    gapComposerH.Z(z3);
                }
                str5 = str10;
                str9 = str11;
            } else {
                gapComposerH.D();
                str9 = str8;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new gf(modifier2, configurationUiModel, str5, str2, str3, str9, function2, i2, i3, 4);
            }
        }
        i4 |= ImageMetadata.EDGE_MODE;
        str8 = str4;
        if ((1572864 & i2) == 0) {
            if (gapComposerH.y(function2)) {
                i9 = 1048576;
            } else {
                i9 = 524288;
            }
            i4 |= i9;
        }
        i7 = 0;
        if ((599187 & i4) != 599186) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i4 & 1, z)) {
            unit = null;
            if (i12 != 0) {
                str10 = null;
            } else {
                str10 = str5;
            }
            if (i5 != 0) {
                str11 = null;
            } else {
                str11 = str8;
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            customizationConfigurationUiModel = configurationUiModel.f61665c;
            Composer$Companion$Empty$1 composer$Companion$Empty$4 = Composer.Companion.f7939a;
            if (customizationConfigurationUiModel == null) {
                gapComposerH.L(-1824031308);
                gapComposerH.Z(false);
                z3 = false;
                i8 = 1048576;
            } else {
                gapComposerH.L(-1824031307);
                if ((i4 & 3670016) == 1048576) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                zY = z2 | gapComposerH.y(configurationUiModel);
                objX = gapComposerH.x();
                if (zY) {
                    objX = new Function0() { // from class: km0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i114 = i7;
                            ConfigurationUiModel configurationUiModel2 = configurationUiModel;
                            Function2 function3 = function2;
                            switch (i114) {
                                case 0:
                                    function3.invoke(configurationUiModel2.f61664b, Boolean.TRUE);
                                    break;
                                default:
                                    function3.invoke(configurationUiModel2.f61664b, Boolean.FALSE);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX);
                } else {
                    objX = new Function0() { // from class: km0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i114 = i7;
                            ConfigurationUiModel configurationUiModel2 = configurationUiModel;
                            Function2 function3 = function2;
                            switch (i114) {
                                case 0:
                                    function3.invoke(configurationUiModel2.f61664b, Boolean.TRUE);
                                    break;
                                default:
                                    function3.invoke(configurationUiModel2.f61664b, Boolean.FALSE);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX);
                }
                z3 = false;
                i8 = 1048576;
                CustomizationConfigurationCardKt.a(modifier2, customizationConfigurationUiModel, new CustomizationCardState.Modify((Function0) objX), str10, str11, gapComposerH, (i4 & 14) | ((i4 << 3) & 7168) | ((i4 >> 3) & 57344), 0);
                gapComposerH.Z(false);
                unit = Unit.f71739a;
            }
            if (unit == null) {
                gapComposerH.L(-1823592688);
                String str18 = configurationUiModel.d.f51778b;
                String str19 = configurationUiModel.f61666e;
                if ((i4 & 3670016) == i8) {
                    z4 = true;
                } else {
                    z4 = z3;
                }
                zY2 = gapComposerH.y(configurationUiModel) | z4;
                objX2 = gapComposerH.x();
                if (zY2) {
                    final int i114 = 1;
                    objX2 = new Function0() { // from class: km0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i115 = i114;
                            ConfigurationUiModel configurationUiModel2 = configurationUiModel;
                            Function2 function3 = function2;
                            switch (i115) {
                                case 0:
                                    function3.invoke(configurationUiModel2.f61664b, Boolean.TRUE);
                                    break;
                                default:
                                    function3.invoke(configurationUiModel2.f61664b, Boolean.FALSE);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX2);
                } else {
                    final int i115 = 1;
                    objX2 = new Function0() { // from class: km0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i116 = i115;
                            ConfigurationUiModel configurationUiModel2 = configurationUiModel;
                            Function2 function3 = function2;
                            switch (i116) {
                                case 0:
                                    function3.invoke(configurationUiModel2.f61664b, Boolean.TRUE);
                                    break;
                                default:
                                    function3.invoke(configurationUiModel2.f61664b, Boolean.FALSE);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX2);
                }
                int i116 = i4 & 14;
                int i117 = i4 >> 3;
                a(modifier2, str18, str6, str7, str19, (Function0) objX2, gapComposerH, i116 | (i117 & 896) | (i117 & 7168));
                gapComposerH = gapComposerH;
                gapComposerH.Z(z3);
            } else {
                gapComposerH.L(633896210);
                gapComposerH.Z(z3);
            }
            str5 = str10;
            str9 = str11;
        } else {
            gapComposerH.D();
            str9 = str8;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gf(modifier2, configurationUiModel, str5, str2, str3, str9, function2, i2, i3, 4);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r13v0, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r13v1, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r13v3, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v13, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public static final void c(Modifier modifier, ProductCustomizationUiModel productCustomizationUiModel, Function3 function3, Composer composer, int i2) {
        ?? r13;
        ?? r3;
        int i3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PdpCustomizationContainer");
        }
        Modifier modifier2 = modifierE;
        productCustomizationUiModel.getClass();
        ConfigurationUiModel configurationUiModel = productCustomizationUiModel.f61727e;
        function3.getClass();
        ?? H = composer.h(-232342248);
        int i4 = i2 | (H.K(modifier2) ? 4 : 2) | (H.y(productCustomizationUiModel) ? 32 : 16) | (H.y(function3) ? 256 : 128);
        if (H.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (configurationUiModel == null) {
                H.L(1779610460);
                H.Z(false);
                r3 = 0;
            } else {
                H.L(1779610461);
                String strC = StringResources_androidKt.c(H, R.string.my_monogram_personalization_name);
                String strC2 = StringResources_androidKt.c(H, R.string.my_monogram_pdp_push_text);
                String strC3 = StringResources_androidKt.c(H, R.string.mon_monogram_mention);
                boolean z = (i4 & 896) == 256;
                Object objX = H.x();
                Object obj = objX;
                if (z || objX == composer$Companion$Empty$1) {
                    ye0 ye0Var = new ye0(function3, 8);
                    H.q(ye0Var);
                    obj = ye0Var;
                }
                r3 = 0;
                b(modifier2, configurationUiModel, null, strC, strC2, strC3, (Function2) obj, H, i4 & 14, 4);
                H.Z(false);
            }
            ConfigurationUiModel configurationUiModel2 = productCustomizationUiModel.f61725b;
            if (configurationUiModel2 == null) {
                H.L(1780201599);
                H.Z(r3);
            } else {
                H.L(1780201600);
                if ((configurationUiModel != null ? configurationUiModel.f61665c : null) == null) {
                    H.L(-697232754);
                    String strC4 = StringResources_androidKt.c(H, R.string.hotstamping_personalization_name);
                    String strC5 = StringResources_androidKt.c(H, R.string.hotstamping_personalization_name);
                    String strC6 = StringResources_androidKt.c(H, R.string.hotstamping_pdp_push_text);
                    ?? r11 = (i4 & 896) == 256 ? 1 : r3;
                    Object objX2 = H.x();
                    Object obj2 = objX2;
                    if (r11 != 0 || objX2 == composer$Companion$Empty$1) {
                        ye0 ye0Var2 = new ye0(function3, 9);
                        H.q(ye0Var2);
                        obj2 = ye0Var2;
                    }
                    b(modifier2, configurationUiModel2, strC4, strC5, strC6, null, (Function2) obj2, H, i4 & 14, 32);
                    H.Z(r3);
                } else {
                    H.L(-696645583);
                    H.Z(r3);
                }
                H.Z(r3);
            }
            ConfigurationUiModel configurationUiModel3 = productCustomizationUiModel.f61726c;
            if (configurationUiModel3 == null) {
                H.L(1781003910);
                H.Z(r3);
                i3 = R.string.engraving_personalization_name;
            } else {
                H.L(1781003911);
                String strC7 = StringResources_androidKt.c(H, R.string.engraving_personalization_name);
                String strC8 = StringResources_androidKt.c(H, R.string.engraving_personalization_name);
                String strC9 = StringResources_androidKt.c(H, R.string.engraving_perfume_pdp_push_text);
                ?? r12 = (i4 & 896) == 256 ? 1 : r3;
                Object objX3 = H.x();
                Object obj3 = objX3;
                if (r12 != 0 || objX3 == composer$Companion$Empty$1) {
                    ye0 ye0Var3 = new ye0(function3, 10);
                    H.q(ye0Var3);
                    obj3 = ye0Var3;
                }
                i3 = R.string.engraving_personalization_name;
                b(modifier2, configurationUiModel3, strC7, strC8, strC9, null, (Function2) obj3, H, i4 & 14, 32);
                H.Z(r3);
            }
            ConfigurationUiModel configurationUiModel4 = productCustomizationUiModel.d;
            if (configurationUiModel4 == null) {
                H.L(1781611014);
                H.Z(r3);
            } else {
                H.L(1781611015);
                String strC10 = StringResources_androidKt.c(H, i3);
                String strC11 = StringResources_androidKt.c(H, R.string.engraving_beauty_pdp_push_text);
                ?? r8 = (i4 & 896) == 256 ? 1 : r3;
                Object objX4 = H.x();
                Object obj4 = objX4;
                if (r8 != 0 || objX4 == composer$Companion$Empty$1) {
                    ye0 ye0Var4 = new ye0(function3, 11);
                    H.q(ye0Var4);
                    obj4 = ye0Var4;
                }
                b(modifier2, configurationUiModel4, null, strC10, strC11, null, (Function2) obj4, H, i4 & 14, 36);
                H.Z(r3);
            }
            ConfigurationUiModel configurationUiModel5 = productCustomizationUiModel.f61728f;
            if (configurationUiModel5 == null) {
                H.L(1782126854);
                H.Z(r3);
                r13 = H;
            } else {
                H.L(1782126855);
                String str = configurationUiModel5.d.f51778b;
                String strC12 = StringResources_androidKt.c(H, i3);
                String strC13 = StringResources_androidKt.c(H, R.string.engraving_diamonds_pdp_push_text);
                String str2 = configurationUiModel5.f61666e;
                int i5 = ((i4 & 896) != 256 ? r3 : 1) | (H.y(configurationUiModel5) ? 1 : 0);
                Object objX5 = H.x();
                Object obj5 = objX5;
                if (i5 != 0 || objX5 == composer$Companion$Empty$1) {
                    jm0 jm0Var = new jm0(function3, configurationUiModel5, r3);
                    H.q(jm0Var);
                    obj5 = jm0Var;
                }
                a(modifier2, str, strC12, strC13, str2, (Function0) obj5, H, i4 & 14);
                ?? r14 = H;
                r14.Z(r3);
                r13 = r14;
            }
        } else {
            H.D();
            r13 = H;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = r13.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gi0(i2, 8, modifier2, productCustomizationUiModel, function3);
        }
    }
}
