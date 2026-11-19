package com.vuitton.android.presentation.screen.options.notifications.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import defpackage.oa;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StickyBottomAreaKt {
    /* JADX WARN: Code duplicated, block: B:33:0x005a  */
    /* JADX WARN: Code duplicated, block: B:35:0x005f  */
    /* JADX WARN: Code duplicated, block: B:37:0x0063  */
    /* JADX WARN: Code duplicated, block: B:39:0x006b  */
    /* JADX WARN: Code duplicated, block: B:40:0x006e  */
    /* JADX WARN: Code duplicated, block: B:44:0x0075  */
    /* JADX WARN: Code duplicated, block: B:46:0x007b  */
    /* JADX WARN: Code duplicated, block: B:47:0x007e  */
    /* JADX WARN: Code duplicated, block: B:51:0x0086  */
    /* JADX WARN: Code duplicated, block: B:53:0x008c  */
    /* JADX WARN: Code duplicated, block: B:54:0x008f  */
    /* JADX WARN: Code duplicated, block: B:58:0x009f  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00aa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:63:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:69:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:71:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:72:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:75:0x0173  */
    /* JADX WARN: Code duplicated, block: B:77:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:79:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:81:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:84:0x01df  */
    /* JADX WARN: Code duplicated, block: B:86:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, String str, String str2, String str3, Function0 function0, Function0 function1, Composer composer, int i2, int i3) {
        int i4;
        String str4;
        int i5;
        String str5;
        int i6;
        int i7;
        boolean z;
        Modifier modifier2;
        String str6;
        GapComposer gapComposer;
        String str7;
        RecomposeScopeImpl recomposeScopeImplB0;
        String str8;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function2;
        String str9;
        GapComposer gapComposer2;
        int i8;
        int i9;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "StickyBottomArea");
        }
        GapComposer gapComposerC = defpackage.a.c(function0, function1, composer, 1011892353);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerC.K(modifierE) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerC.K(str) ? 32 : 16;
        }
        int i10 = i3 & 4;
        if (i10 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                str4 = str2;
                i4 |= gapComposerC.K(str4) ? 256 : 128;
            }
            i5 = i3 & 8;
            if (i5 != 0) {
                if ((i2 & 3072) == 0) {
                    str5 = str3;
                    if (gapComposerC.K(str5)) {
                        i6 = 2048;
                    } else {
                        i6 = 1024;
                    }
                    i4 |= i6;
                }
                if ((i2 & 24576) == 0) {
                    if (gapComposerC.y(function0)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i4 |= i9;
                }
                if ((196608 & i2) == 0) {
                    if (gapComposerC.y(function1)) {
                        i8 = 131072;
                    } else {
                        i8 = 65536;
                    }
                    i4 |= i8;
                }
                i7 = i4;
                if ((i7 & 74899) != 74898) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposerC.p(i7 & 1, z)) {
                    if (i10 != 0) {
                        str8 = null;
                    } else {
                        str8 = str4;
                    }
                    if (i5 != 0) {
                        str5 = null;
                    }
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierB = BackgroundKt.b(SizeKt.d(modifierE, 1.0f), LVAppDesignKitTheme.c(gapComposerC).f48361b.f48374a, RectangleShapeKt.f8913a);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerC, 0);
                    iHashCode = Long.hashCode(gapComposerC.T);
                    persistentCompositionLocalMapU = gapComposerC.U();
                    modifierC = ComposedModifierKt.c(gapComposerC, modifierB);
                    ComposeUiNode.b0.getClass();
                    function2 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerC.f7976a != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerC.B();
                    if (gapComposerC.S) {
                        gapComposerC.C(function2);
                    } else {
                        gapComposerC.o();
                    }
                    Updater.c(gapComposerC, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerC, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerC, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerC, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerC, modifierC, ComposeUiNode.Companion.d);
                    String str10 = str8;
                    str9 = str5;
                    LVButtonKt.b((i7 << 15) & 1879048192, 504, gapComposerC, ModifierExtKt.f(PaddingKt.l(tr.d("StickyBottomArea", 1.0f), LVAppDesignKitTheme.l(gapComposerC).f48416e, LVAppDesignKitTheme.l(gapComposerC).d, LVAppDesignKitTheme.l(gapComposerC).f48416e, LVAppDesignKitTheme.l(gapComposerC).f48417f), str8), LVAppDesignKitTheme.b(gapComposerC).f48446a, null, null, StringResources_androidKt.c(gapComposerC, R.string.save), function0, false, false, false);
                    if (str != null) {
                        gapComposerC.L(-1300260917);
                        modifier2 = modifierE;
                        LVLinkKt.a(ModifierExtKt.f(ColumnScopeInstance.f4944a.b(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerC).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerC).f48416e, LVAppDesignKitTheme.l(gapComposerC).f48417f, 2), Alignment.Companion.o), str9), str, false, null, false, function1, gapComposerC, i7 & 458864, 28);
                        gapComposer2 = gapComposerC;
                        gapComposer2.Z(false);
                    } else {
                        gapComposer2 = gapComposerC;
                        modifier2 = modifierE;
                        gapComposer2.L(-1299758965);
                        gapComposer2.Z(false);
                    }
                    gapComposer2.Z(true);
                    gapComposer = gapComposer2;
                    str7 = str9;
                    str6 = str10;
                } else {
                    modifier2 = modifierE;
                    gapComposerC.D();
                    str6 = str4;
                    gapComposer = gapComposerC;
                    str7 = str5;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new oa(modifier2, str, str6, str7, function0, function1, i2, i3);
                }
            }
            i4 |= 3072;
            str5 = str3;
            if ((i2 & 24576) == 0) {
                if (gapComposerC.y(function0)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i4 |= i9;
            }
            if ((196608 & i2) == 0) {
                if (gapComposerC.y(function1)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i4 |= i8;
            }
            i7 = i4;
            if ((i7 & 74899) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerC.p(i7 & 1, z)) {
                if (i10 != 0) {
                    str8 = null;
                } else {
                    str8 = str4;
                }
                if (i5 != 0) {
                    str5 = null;
                }
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierB2 = BackgroundKt.b(SizeKt.d(modifierE, 1.0f), LVAppDesignKitTheme.c(gapComposerC).f48361b.f48374a, RectangleShapeKt.f8913a);
                Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, gapComposerC, 0);
                iHashCode = Long.hashCode(gapComposerC.T);
                persistentCompositionLocalMapU = gapComposerC.U();
                modifierC = ComposedModifierKt.c(gapComposerC, modifierB2);
                ComposeUiNode.b0.getClass();
                function2 = ComposeUiNode.Companion.f9641b;
                if (gapComposerC.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerC.B();
                if (gapComposerC.S) {
                    gapComposerC.C(function2);
                } else {
                    gapComposerC.o();
                }
                Updater.c(gapComposerC, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerC, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerC, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerC, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerC, modifierC, ComposeUiNode.Companion.d);
                String str11 = str8;
                str9 = str5;
                LVButtonKt.b((i7 << 15) & 1879048192, 504, gapComposerC, ModifierExtKt.f(PaddingKt.l(tr.d("StickyBottomArea", 1.0f), LVAppDesignKitTheme.l(gapComposerC).f48416e, LVAppDesignKitTheme.l(gapComposerC).d, LVAppDesignKitTheme.l(gapComposerC).f48416e, LVAppDesignKitTheme.l(gapComposerC).f48417f), str8), LVAppDesignKitTheme.b(gapComposerC).f48446a, null, null, StringResources_androidKt.c(gapComposerC, R.string.save), function0, false, false, false);
                if (str != null) {
                    gapComposerC.L(-1300260917);
                    modifier2 = modifierE;
                    LVLinkKt.a(ModifierExtKt.f(ColumnScopeInstance.f4944a.b(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerC).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerC).f48416e, LVAppDesignKitTheme.l(gapComposerC).f48417f, 2), Alignment.Companion.o), str9), str, false, null, false, function1, gapComposerC, i7 & 458864, 28);
                    gapComposer2 = gapComposerC;
                    gapComposer2.Z(false);
                } else {
                    gapComposer2 = gapComposerC;
                    modifier2 = modifierE;
                    gapComposer2.L(-1299758965);
                    gapComposer2.Z(false);
                }
                gapComposer2.Z(true);
                gapComposer = gapComposer2;
                str7 = str9;
                str6 = str11;
            } else {
                modifier2 = modifierE;
                gapComposerC.D();
                str6 = str4;
                gapComposer = gapComposerC;
                str7 = str5;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new oa(modifier2, str, str6, str7, function0, function1, i2, i3);
            }
        }
        i4 |= KyberEngine.KyberPolyBytes;
        str4 = str2;
        i5 = i3 & 8;
        if (i5 != 0) {
            if ((i2 & 3072) == 0) {
                str5 = str3;
                if (gapComposerC.K(str5)) {
                    i6 = 2048;
                } else {
                    i6 = 1024;
                }
                i4 |= i6;
            }
            if ((i2 & 24576) == 0) {
                if (gapComposerC.y(function0)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i4 |= i9;
            }
            if ((196608 & i2) == 0) {
                if (gapComposerC.y(function1)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i4 |= i8;
            }
            i7 = i4;
            if ((i7 & 74899) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerC.p(i7 & 1, z)) {
                if (i10 != 0) {
                    str8 = null;
                } else {
                    str8 = str4;
                }
                if (i5 != 0) {
                    str5 = null;
                }
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                Modifier modifierB3 = BackgroundKt.b(SizeKt.d(modifierE, 1.0f), LVAppDesignKitTheme.c(gapComposerC).f48361b.f48374a, RectangleShapeKt.f8913a);
                Arrangement$Top$1 arrangement$Top$3 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$3, Alignment.Companion.n, gapComposerC, 0);
                iHashCode = Long.hashCode(gapComposerC.T);
                persistentCompositionLocalMapU = gapComposerC.U();
                modifierC = ComposedModifierKt.c(gapComposerC, modifierB3);
                ComposeUiNode.b0.getClass();
                function2 = ComposeUiNode.Companion.f9641b;
                if (gapComposerC.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerC.B();
                if (gapComposerC.S) {
                    gapComposerC.C(function2);
                } else {
                    gapComposerC.o();
                }
                Updater.c(gapComposerC, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerC, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerC, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerC, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerC, modifierC, ComposeUiNode.Companion.d);
                String str12 = str8;
                str9 = str5;
                LVButtonKt.b((i7 << 15) & 1879048192, 504, gapComposerC, ModifierExtKt.f(PaddingKt.l(tr.d("StickyBottomArea", 1.0f), LVAppDesignKitTheme.l(gapComposerC).f48416e, LVAppDesignKitTheme.l(gapComposerC).d, LVAppDesignKitTheme.l(gapComposerC).f48416e, LVAppDesignKitTheme.l(gapComposerC).f48417f), str8), LVAppDesignKitTheme.b(gapComposerC).f48446a, null, null, StringResources_androidKt.c(gapComposerC, R.string.save), function0, false, false, false);
                if (str != null) {
                    gapComposerC.L(-1300260917);
                    modifier2 = modifierE;
                    LVLinkKt.a(ModifierExtKt.f(ColumnScopeInstance.f4944a.b(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerC).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerC).f48416e, LVAppDesignKitTheme.l(gapComposerC).f48417f, 2), Alignment.Companion.o), str9), str, false, null, false, function1, gapComposerC, i7 & 458864, 28);
                    gapComposer2 = gapComposerC;
                    gapComposer2.Z(false);
                } else {
                    gapComposer2 = gapComposerC;
                    modifier2 = modifierE;
                    gapComposer2.L(-1299758965);
                    gapComposer2.Z(false);
                }
                gapComposer2.Z(true);
                gapComposer = gapComposer2;
                str7 = str9;
                str6 = str12;
            } else {
                modifier2 = modifierE;
                gapComposerC.D();
                str6 = str4;
                gapComposer = gapComposerC;
                str7 = str5;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new oa(modifier2, str, str6, str7, function0, function1, i2, i3);
            }
        }
        i4 |= 3072;
        str5 = str3;
        if ((i2 & 24576) == 0) {
            if (gapComposerC.y(function0)) {
                i9 = 16384;
            } else {
                i9 = 8192;
            }
            i4 |= i9;
        }
        if ((196608 & i2) == 0) {
            if (gapComposerC.y(function1)) {
                i8 = 131072;
            } else {
                i8 = 65536;
            }
            i4 |= i8;
        }
        i7 = i4;
        if ((i7 & 74899) != 74898) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerC.p(i7 & 1, z)) {
            if (i10 != 0) {
                str8 = null;
            } else {
                str8 = str4;
            }
            if (i5 != 0) {
                str5 = null;
            }
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            Modifier modifierB4 = BackgroundKt.b(SizeKt.d(modifierE, 1.0f), LVAppDesignKitTheme.c(gapComposerC).f48361b.f48374a, RectangleShapeKt.f8913a);
            Arrangement$Top$1 arrangement$Top$4 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$4, Alignment.Companion.n, gapComposerC, 0);
            iHashCode = Long.hashCode(gapComposerC.T);
            persistentCompositionLocalMapU = gapComposerC.U();
            modifierC = ComposedModifierKt.c(gapComposerC, modifierB4);
            ComposeUiNode.b0.getClass();
            function2 = ComposeUiNode.Companion.f9641b;
            if (gapComposerC.f7976a != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerC.B();
            if (gapComposerC.S) {
                gapComposerC.C(function2);
            } else {
                gapComposerC.o();
            }
            Updater.c(gapComposerC, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerC, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerC, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerC, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerC, modifierC, ComposeUiNode.Companion.d);
            String str13 = str8;
            str9 = str5;
            LVButtonKt.b((i7 << 15) & 1879048192, 504, gapComposerC, ModifierExtKt.f(PaddingKt.l(tr.d("StickyBottomArea", 1.0f), LVAppDesignKitTheme.l(gapComposerC).f48416e, LVAppDesignKitTheme.l(gapComposerC).d, LVAppDesignKitTheme.l(gapComposerC).f48416e, LVAppDesignKitTheme.l(gapComposerC).f48417f), str8), LVAppDesignKitTheme.b(gapComposerC).f48446a, null, null, StringResources_androidKt.c(gapComposerC, R.string.save), function0, false, false, false);
            if (str != null) {
                gapComposerC.L(-1300260917);
                modifier2 = modifierE;
                LVLinkKt.a(ModifierExtKt.f(ColumnScopeInstance.f4944a.b(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerC).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerC).f48416e, LVAppDesignKitTheme.l(gapComposerC).f48417f, 2), Alignment.Companion.o), str9), str, false, null, false, function1, gapComposerC, i7 & 458864, 28);
                gapComposer2 = gapComposerC;
                gapComposer2.Z(false);
            } else {
                gapComposer2 = gapComposerC;
                modifier2 = modifierE;
                gapComposer2.L(-1299758965);
                gapComposer2.Z(false);
            }
            gapComposer2.Z(true);
            gapComposer = gapComposer2;
            str7 = str9;
            str6 = str13;
        } else {
            modifier2 = modifierE;
            gapComposerC.D();
            str6 = str4;
            gapComposer = gapComposerC;
            str7 = str5;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new oa(modifier2, str, str6, str7, function0, function1, i2, i3);
        }
    }
}
