package com.vuitton.android.presentation.compose.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import com.vuitton.android.presentation.compose.components.DownloadIndicatorKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.WallpaperDownloadStateUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\b\n\u0002\b\u0003¨\u0006\u0003²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "icon", "iterations", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DownloadIndicatorKt {
    /* JADX WARN: Code duplicated, block: B:100:0x0167  */
    /* JADX WARN: Code duplicated, block: B:101:0x0177  */
    /* JADX WARN: Code duplicated, block: B:103:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:106:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:108:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0053  */
    /* JADX WARN: Code duplicated, block: B:28:0x005b  */
    /* JADX WARN: Code duplicated, block: B:29:0x005e  */
    /* JADX WARN: Code duplicated, block: B:33:0x006b  */
    /* JADX WARN: Code duplicated, block: B:34:0x006e  */
    /* JADX WARN: Code duplicated, block: B:37:0x0077 A[PHI: r9
      0x0077: PHI (r9v34 int) = (r9v0 int), (r9v5 int), (r9v6 int) binds: [B:36:0x0075, B:46:0x008e, B:45:0x008b] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:38:0x0079  */
    /* JADX WARN: Code duplicated, block: B:40:0x007d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x007f  */
    /* JADX WARN: Code duplicated, block: B:42:0x0081  */
    /* JADX WARN: Code duplicated, block: B:45:0x008b  */
    /* JADX WARN: Code duplicated, block: B:46:0x008e  */
    /* JADX WARN: Code duplicated, block: B:49:0x009c  */
    /* JADX WARN: Code duplicated, block: B:50:0x009e  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:55:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:66:0x00cb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:70:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:71:0x00df  */
    /* JADX WARN: Code duplicated, block: B:74:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:76:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:77:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:80:0x0102  */
    /* JADX WARN: Code duplicated, block: B:83:0x010d  */
    /* JADX WARN: Code duplicated, block: B:84:0x011d  */
    /* JADX WARN: Code duplicated, block: B:86:0x0121  */
    /* JADX WARN: Code duplicated, block: B:87:0x012e  */
    /* JADX WARN: Code duplicated, block: B:89:0x0132  */
    /* JADX WARN: Code duplicated, block: B:90:0x013d  */
    /* JADX WARN: Code duplicated, block: B:93:0x0153  */
    /* JADX WARN: Code duplicated, block: B:97:0x015f  */
    public static final void a(Modifier modifier, final WallpaperDownloadStateUiModel wallpaperDownloadStateUiModel, int i2, int i3, final Function0 function0, LVColorScheme lVColorScheme, Composer composer, final int i4, final int i5) {
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int iOrdinal;
        boolean z;
        final Modifier modifier2;
        final int i13;
        final int i14;
        final LVColorScheme lVColorScheme2;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i15;
        LVColorScheme lVColorScheme3;
        int i16;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        int i17;
        Object objX2;
        ConfigurationIconButton configurationIconButton;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "DownloadIndicator");
        }
        wallpaperDownloadStateUiModel.getClass();
        boolean z2 = wallpaperDownloadStateUiModel.f58857a;
        function0.getClass();
        GapComposer gapComposerH = composer.h(1222273240);
        int i18 = i5 & 1;
        if (i18 != 0) {
            i6 = i4 | 6;
        } else {
            i6 = i4 | (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2);
        }
        int i19 = i6 | (gapComposerH.y(wallpaperDownloadStateUiModel) ? 32 : 16);
        if ((i5 & 4) == 0) {
            i7 = i2;
            int i20 = gapComposerH.d(i7) ? 256 : 128;
            int i21 = i19 | i20;
            if ((i5 & 8) == 0) {
                i8 = i3;
                int i22 = gapComposerH.d(i8) ? 2048 : 1024;
                int i23 = i21 | i22;
                if (gapComposerH.y(function0)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i10 = i23 | i9;
                i11 = i5 & 32;
                i12 = ImageMetadata.EDGE_MODE;
                if (i11 == 0) {
                    i10 |= i12;
                } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                    if (lVColorScheme == null) {
                        iOrdinal = -1;
                    } else {
                        iOrdinal = lVColorScheme.ordinal();
                    }
                    if (gapComposerH.d(iOrdinal)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i10 |= i12;
                }
                if ((74899 & i10) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerH.p(i10 & 1, z)) {
                    gapComposerH.y0();
                    if ((i4 & 1) != 0 || gapComposerH.h0()) {
                        if (i18 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("DownloadIndicator");
                        }
                        if ((i5 & 4) != 0) {
                            i15 = LVAppDesignKitTheme.g(gapComposerH).t;
                            i10 &= -897;
                        } else {
                            i15 = i7;
                        }
                        if ((i5 & 8) != 0) {
                            i10 &= -7169;
                            i8 = LVAppDesignKitTheme.a(gapComposerH).t;
                        }
                        if (i11 != 0) {
                            lVColorScheme3 = LVColorScheme.DEFAULT;
                        } else {
                            lVColorScheme3 = lVColorScheme;
                        }
                    } else {
                        gapComposerH.D();
                        if ((i5 & 4) != 0) {
                            i10 &= -897;
                        }
                        if ((i5 & 8) != 0) {
                            i10 &= -7169;
                        }
                        lVColorScheme3 = lVColorScheme;
                        i15 = i7;
                    }
                    int i24 = i10;
                    Modifier modifier3 = dTFunctionNameModifier;
                    i16 = i8;
                    gapComposerH.a0();
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = SnapshotIntStateKt.a(i15);
                        gapComposerH.q(objX);
                    }
                    MutableIntState mutableIntState = (MutableIntState) objX;
                    if (z2) {
                        gapComposerH.L(9794454);
                        i17 = LVAppDesignKitTheme.a(gapComposerH).u;
                        gapComposerH.Z(false);
                    } else if (wallpaperDownloadStateUiModel.f58859c) {
                        gapComposerH.L(9884354);
                        gapComposerH.Z(false);
                        i17 = R.drawable.ic_lv_refresh;
                    } else if (wallpaperDownloadStateUiModel.f58858b) {
                        gapComposerH.L(9962381);
                        gapComposerH.Z(false);
                        i17 = i16;
                    } else {
                        gapComposerH.L(9996946);
                        gapComposerH.Z(false);
                        i17 = i15;
                    }
                    mutableIntState.i(i17);
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = SnapshotIntStateKt.a(Integer.MAX_VALUE);
                        gapComposerH.q(objX2);
                    }
                    MutableIntState mutableIntState2 = (MutableIntState) objX2;
                    mutableIntState2.i(z2 ? 1 : Integer.MAX_VALUE);
                    if (lVColorScheme3 == LVColorScheme.DEFAULT) {
                        gapComposerH.L(10283603);
                        configurationIconButton = LVAppDesignKitTheme.f(gapComposerH).f48477a;
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(10344301);
                        configurationIconButton = LVAppDesignKitTheme.f(gapComposerH).f48478b;
                        gapComposerH.Z(false);
                    }
                    LVIconButtonKt.b(modifier3, configurationIconButton, mutableIntState.f(), null, null, false, mutableIntState2.f(), false, false, function0, gapComposerH, i24 & 14, (i24 >> 12) & 14, 888);
                    i13 = i15;
                    lVColorScheme2 = lVColorScheme3;
                    modifier2 = modifier3;
                    i14 = i16;
                } else {
                    gapComposerH.D();
                    modifier2 = dTFunctionNameModifier;
                    i13 = i7;
                    i14 = i8;
                    lVColorScheme2 = lVColorScheme;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new Function2() { // from class: dv
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            DownloadIndicatorKt.a(modifier2, wallpaperDownloadStateUiModel, i13, i14, function0, lVColorScheme2, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i8 = i3;
            int i25 = i21 | i22;
            if (gapComposerH.y(function0)) {
                i9 = 16384;
            } else {
                i9 = 8192;
            }
            i10 = i25 | i9;
            i11 = i5 & 32;
            i12 = ImageMetadata.EDGE_MODE;
            if (i11 == 0) {
                i10 |= i12;
            } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                if (lVColorScheme == null) {
                    iOrdinal = -1;
                } else {
                    iOrdinal = lVColorScheme.ordinal();
                }
                if (gapComposerH.d(iOrdinal)) {
                    i12 = 131072;
                } else {
                    i12 = 65536;
                }
                i10 |= i12;
            }
            if ((74899 & i10) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i10 & 1, z)) {
                gapComposerH.y0();
                if ((i4 & 1) != 0) {
                    if (i18 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("DownloadIndicator");
                    }
                    if ((i5 & 4) != 0) {
                        i15 = LVAppDesignKitTheme.g(gapComposerH).t;
                        i10 &= -897;
                    } else {
                        i15 = i7;
                    }
                    if ((i5 & 8) != 0) {
                        i10 &= -7169;
                        i8 = LVAppDesignKitTheme.a(gapComposerH).t;
                    }
                    if (i11 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                } else {
                    if (i18 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("DownloadIndicator");
                    }
                    if ((i5 & 4) != 0) {
                        i15 = LVAppDesignKitTheme.g(gapComposerH).t;
                        i10 &= -897;
                    } else {
                        i15 = i7;
                    }
                    if ((i5 & 8) != 0) {
                        i10 &= -7169;
                        i8 = LVAppDesignKitTheme.a(gapComposerH).t;
                    }
                    if (i11 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                }
                int i26 = i10;
                Modifier modifier4 = dTFunctionNameModifier;
                i16 = i8;
                gapComposerH.a0();
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotIntStateKt.a(i15);
                    gapComposerH.q(objX);
                }
                MutableIntState mutableIntState3 = (MutableIntState) objX;
                if (z2) {
                    gapComposerH.L(9794454);
                    i17 = LVAppDesignKitTheme.a(gapComposerH).u;
                    gapComposerH.Z(false);
                } else if (wallpaperDownloadStateUiModel.f58859c) {
                    gapComposerH.L(9884354);
                    gapComposerH.Z(false);
                    i17 = R.drawable.ic_lv_refresh;
                } else if (wallpaperDownloadStateUiModel.f58858b) {
                    gapComposerH.L(9962381);
                    gapComposerH.Z(false);
                    i17 = i16;
                } else {
                    gapComposerH.L(9996946);
                    gapComposerH.Z(false);
                    i17 = i15;
                }
                mutableIntState3.i(i17);
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = SnapshotIntStateKt.a(Integer.MAX_VALUE);
                    gapComposerH.q(objX2);
                }
                MutableIntState mutableIntState4 = (MutableIntState) objX2;
                mutableIntState4.i(z2 ? 1 : Integer.MAX_VALUE);
                if (lVColorScheme3 == LVColorScheme.DEFAULT) {
                    gapComposerH.L(10283603);
                    configurationIconButton = LVAppDesignKitTheme.f(gapComposerH).f48477a;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(10344301);
                    configurationIconButton = LVAppDesignKitTheme.f(gapComposerH).f48478b;
                    gapComposerH.Z(false);
                }
                LVIconButtonKt.b(modifier4, configurationIconButton, mutableIntState3.f(), null, null, false, mutableIntState4.f(), false, false, function0, gapComposerH, i26 & 14, (i26 >> 12) & 14, 888);
                i13 = i15;
                lVColorScheme2 = lVColorScheme3;
                modifier2 = modifier4;
                i14 = i16;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                i13 = i7;
                i14 = i8;
                lVColorScheme2 = lVColorScheme;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: dv
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        DownloadIndicatorKt.a(modifier2, wallpaperDownloadStateUiModel, i13, i14, function0, lVColorScheme2, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i7 = i2;
        int i27 = i19 | i20;
        if ((i5 & 8) == 0) {
            i8 = i3;
            if (gapComposerH.d(i8)) {
            }
            int i28 = i27 | i22;
            if (gapComposerH.y(function0)) {
                i9 = 16384;
            } else {
                i9 = 8192;
            }
            i10 = i28 | i9;
            i11 = i5 & 32;
            i12 = ImageMetadata.EDGE_MODE;
            if (i11 == 0) {
                i10 |= i12;
            } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
                if (lVColorScheme == null) {
                    iOrdinal = -1;
                } else {
                    iOrdinal = lVColorScheme.ordinal();
                }
                if (gapComposerH.d(iOrdinal)) {
                    i12 = 131072;
                } else {
                    i12 = 65536;
                }
                i10 |= i12;
            }
            if ((74899 & i10) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i10 & 1, z)) {
                gapComposerH.y0();
                if ((i4 & 1) != 0) {
                    if (i18 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("DownloadIndicator");
                    }
                    if ((i5 & 4) != 0) {
                        i15 = LVAppDesignKitTheme.g(gapComposerH).t;
                        i10 &= -897;
                    } else {
                        i15 = i7;
                    }
                    if ((i5 & 8) != 0) {
                        i10 &= -7169;
                        i8 = LVAppDesignKitTheme.a(gapComposerH).t;
                    }
                    if (i11 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                } else {
                    if (i18 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("DownloadIndicator");
                    }
                    if ((i5 & 4) != 0) {
                        i15 = LVAppDesignKitTheme.g(gapComposerH).t;
                        i10 &= -897;
                    } else {
                        i15 = i7;
                    }
                    if ((i5 & 8) != 0) {
                        i10 &= -7169;
                        i8 = LVAppDesignKitTheme.a(gapComposerH).t;
                    }
                    if (i11 != 0) {
                        lVColorScheme3 = LVColorScheme.DEFAULT;
                    } else {
                        lVColorScheme3 = lVColorScheme;
                    }
                }
                int i29 = i10;
                Modifier modifier5 = dTFunctionNameModifier;
                i16 = i8;
                gapComposerH.a0();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotIntStateKt.a(i15);
                    gapComposerH.q(objX);
                }
                MutableIntState mutableIntState5 = (MutableIntState) objX;
                if (z2) {
                    gapComposerH.L(9794454);
                    i17 = LVAppDesignKitTheme.a(gapComposerH).u;
                    gapComposerH.Z(false);
                } else if (wallpaperDownloadStateUiModel.f58859c) {
                    gapComposerH.L(9884354);
                    gapComposerH.Z(false);
                    i17 = R.drawable.ic_lv_refresh;
                } else if (wallpaperDownloadStateUiModel.f58858b) {
                    gapComposerH.L(9962381);
                    gapComposerH.Z(false);
                    i17 = i16;
                } else {
                    gapComposerH.L(9996946);
                    gapComposerH.Z(false);
                    i17 = i15;
                }
                mutableIntState5.i(i17);
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = SnapshotIntStateKt.a(Integer.MAX_VALUE);
                    gapComposerH.q(objX2);
                }
                MutableIntState mutableIntState6 = (MutableIntState) objX2;
                mutableIntState6.i(z2 ? 1 : Integer.MAX_VALUE);
                if (lVColorScheme3 == LVColorScheme.DEFAULT) {
                    gapComposerH.L(10283603);
                    configurationIconButton = LVAppDesignKitTheme.f(gapComposerH).f48477a;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(10344301);
                    configurationIconButton = LVAppDesignKitTheme.f(gapComposerH).f48478b;
                    gapComposerH.Z(false);
                }
                LVIconButtonKt.b(modifier5, configurationIconButton, mutableIntState5.f(), null, null, false, mutableIntState6.f(), false, false, function0, gapComposerH, i29 & 14, (i29 >> 12) & 14, 888);
                i13 = i15;
                lVColorScheme2 = lVColorScheme3;
                modifier2 = modifier5;
                i14 = i16;
            } else {
                gapComposerH.D();
                modifier2 = dTFunctionNameModifier;
                i13 = i7;
                i14 = i8;
                lVColorScheme2 = lVColorScheme;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: dv
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        DownloadIndicatorKt.a(modifier2, wallpaperDownloadStateUiModel, i13, i14, function0, lVColorScheme2, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i8 = i3;
        int i210 = i27 | i22;
        if (gapComposerH.y(function0)) {
            i9 = 16384;
        } else {
            i9 = 8192;
        }
        i10 = i210 | i9;
        i11 = i5 & 32;
        i12 = ImageMetadata.EDGE_MODE;
        if (i11 == 0) {
            i10 |= i12;
        } else if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
            if (lVColorScheme == null) {
                iOrdinal = -1;
            } else {
                iOrdinal = lVColorScheme.ordinal();
            }
            if (gapComposerH.d(iOrdinal)) {
                i12 = 131072;
            } else {
                i12 = 65536;
            }
            i10 |= i12;
        }
        if ((74899 & i10) != 74898) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i10 & 1, z)) {
            gapComposerH.y0();
            if ((i4 & 1) != 0) {
                if (i18 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("DownloadIndicator");
                }
                if ((i5 & 4) != 0) {
                    i15 = LVAppDesignKitTheme.g(gapComposerH).t;
                    i10 &= -897;
                } else {
                    i15 = i7;
                }
                if ((i5 & 8) != 0) {
                    i10 &= -7169;
                    i8 = LVAppDesignKitTheme.a(gapComposerH).t;
                }
                if (i11 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
            } else {
                if (i18 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("DownloadIndicator");
                }
                if ((i5 & 4) != 0) {
                    i15 = LVAppDesignKitTheme.g(gapComposerH).t;
                    i10 &= -897;
                } else {
                    i15 = i7;
                }
                if ((i5 & 8) != 0) {
                    i10 &= -7169;
                    i8 = LVAppDesignKitTheme.a(gapComposerH).t;
                }
                if (i11 != 0) {
                    lVColorScheme3 = LVColorScheme.DEFAULT;
                } else {
                    lVColorScheme3 = lVColorScheme;
                }
            }
            int i211 = i10;
            Modifier modifier6 = dTFunctionNameModifier;
            i16 = i8;
            gapComposerH.a0();
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotIntStateKt.a(i15);
                gapComposerH.q(objX);
            }
            MutableIntState mutableIntState7 = (MutableIntState) objX;
            if (z2) {
                gapComposerH.L(9794454);
                i17 = LVAppDesignKitTheme.a(gapComposerH).u;
                gapComposerH.Z(false);
            } else if (wallpaperDownloadStateUiModel.f58859c) {
                gapComposerH.L(9884354);
                gapComposerH.Z(false);
                i17 = R.drawable.ic_lv_refresh;
            } else if (wallpaperDownloadStateUiModel.f58858b) {
                gapComposerH.L(9962381);
                gapComposerH.Z(false);
                i17 = i16;
            } else {
                gapComposerH.L(9996946);
                gapComposerH.Z(false);
                i17 = i15;
            }
            mutableIntState7.i(i17);
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotIntStateKt.a(Integer.MAX_VALUE);
                gapComposerH.q(objX2);
            }
            MutableIntState mutableIntState8 = (MutableIntState) objX2;
            mutableIntState8.i(z2 ? 1 : Integer.MAX_VALUE);
            if (lVColorScheme3 == LVColorScheme.DEFAULT) {
                gapComposerH.L(10283603);
                configurationIconButton = LVAppDesignKitTheme.f(gapComposerH).f48477a;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(10344301);
                configurationIconButton = LVAppDesignKitTheme.f(gapComposerH).f48478b;
                gapComposerH.Z(false);
            }
            LVIconButtonKt.b(modifier6, configurationIconButton, mutableIntState7.f(), null, null, false, mutableIntState8.f(), false, false, function0, gapComposerH, i211 & 14, (i211 >> 12) & 14, 888);
            i13 = i15;
            lVColorScheme2 = lVColorScheme3;
            modifier2 = modifier6;
            i14 = i16;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
            i13 = i7;
            i14 = i8;
            lVColorScheme2 = lVColorScheme;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: dv
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    DownloadIndicatorKt.a(modifier2, wallpaperDownloadStateUiModel, i13, i14, function0, lVColorScheme2, (Composer) obj, RecomposeScopeImplKt.a(i4 | 1), i5);
                    return Unit.f71739a;
                }
            };
        }
    }
}
