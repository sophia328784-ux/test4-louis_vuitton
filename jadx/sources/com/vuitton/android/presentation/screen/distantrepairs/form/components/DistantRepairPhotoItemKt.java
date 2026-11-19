package com.vuitton.android.presentation.screen.distantrepairs.form.components;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairPhoto;
import defpackage.bp;
import defpackage.cj;
import defpackage.is;
import defpackage.n00;
import defpackage.yu;
import defpackage.zu;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairPhotoItemKt {
    /* JADX WARN: Code duplicated, block: B:101:0x024f  */
    /* JADX WARN: Code duplicated, block: B:102:0x0251  */
    /* JADX WARN: Code duplicated, block: B:106:0x025b  */
    /* JADX WARN: Code duplicated, block: B:109:0x027e  */
    /* JADX WARN: Code duplicated, block: B:112:0x0290  */
    /* JADX WARN: Code duplicated, block: B:114:0x0294  */
    /* JADX WARN: Code duplicated, block: B:116:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:118:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:121:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:123:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0053  */
    /* JADX WARN: Code duplicated, block: B:27:0x0058  */
    /* JADX WARN: Code duplicated, block: B:29:0x0060  */
    /* JADX WARN: Code duplicated, block: B:30:0x0063  */
    /* JADX WARN: Code duplicated, block: B:34:0x006a  */
    /* JADX WARN: Code duplicated, block: B:35:0x0070  */
    /* JADX WARN: Code duplicated, block: B:37:0x0078  */
    /* JADX WARN: Code duplicated, block: B:38:0x007b  */
    /* JADX WARN: Code duplicated, block: B:42:0x0085  */
    /* JADX WARN: Code duplicated, block: B:44:0x008c  */
    /* JADX WARN: Code duplicated, block: B:46:0x0092  */
    /* JADX WARN: Code duplicated, block: B:48:0x0098  */
    /* JADX WARN: Code duplicated, block: B:49:0x009b  */
    /* JADX WARN: Code duplicated, block: B:53:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:54:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:58:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:61:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:65:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:67:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:69:0x00da  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:73:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:78:0x0125  */
    /* JADX WARN: Code duplicated, block: B:81:0x016e  */
    /* JADX WARN: Code duplicated, block: B:83:0x0175  */
    /* JADX WARN: Code duplicated, block: B:84:0x0179  */
    /* JADX WARN: Code duplicated, block: B:87:0x019d  */
    /* JADX WARN: Code duplicated, block: B:89:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:91:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:92:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:95:0x0214  */
    /* JADX WARN: Code duplicated, block: B:97:0x0248  */
    /* JADX WARN: Code duplicated, block: B:98:0x024a  */
    public static final void a(Modifier modifier, int i2, DistantRepairPhoto distantRepairPhoto, boolean z, Function1 function1, Function1 function2, String str, Composer composer, int i3, int i4) {
        boolean z2;
        int i5;
        Function1 function3;
        int i6;
        int i7;
        int i8;
        Function1 function4;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean z3;
        Modifier modifier2;
        String str2;
        boolean z4;
        Function1 function5;
        Function1 function6;
        RecomposeScopeImpl recomposeScopeImplB0;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Function1 function7;
        String str3;
        Modifier dTFunctionNameModifier;
        boolean z5;
        MeasurePolicy measurePolicyD;
        Function1 function8;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Function2 function9;
        Function2 function10;
        Function2 function11;
        Function1 function12;
        Function2 function13;
        String str4;
        Function1 function14;
        MeasurePolicy measurePolicyD2;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        boolean z6;
        boolean z7;
        boolean z8;
        Object objX;
        Object objX2;
        Object objX3;
        Modifier modifierE = modifier;
        int i14 = i2;
        DistantRepairPhoto distantRepairPhoto2 = distantRepairPhoto;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PhotoItem");
        }
        Modifier modifier3 = modifierE;
        GapComposer gapComposerH = composer.h(-884212413);
        Applier applier = gapComposerH.f7976a;
        int i15 = (gapComposerH.d(i14) ? 32 : 16) | i3 | (gapComposerH.y(distantRepairPhoto2) ? 256 : 128);
        int i16 = i4 & 8;
        if (i16 == 0) {
            if ((i3 & 3072) == 0) {
                z2 = z;
                i15 |= gapComposerH.b(z2) ? 2048 : 1024;
            }
            i5 = i4 & 16;
            if (i5 != 0) {
                i7 = i15 | 24576;
                function3 = function1;
            } else {
                function3 = function1;
                if (gapComposerH.y(function3)) {
                    i6 = 16384;
                } else {
                    i6 = 8192;
                }
                i7 = i15 | i6;
            }
            i8 = i4 & 32;
            if (i8 != 0) {
                i10 = i7 | ImageMetadata.EDGE_MODE;
                function4 = function2;
            } else {
                function4 = function2;
                if (gapComposerH.y(function4)) {
                    i9 = 131072;
                } else {
                    i9 = 65536;
                }
                i10 = i7 | i9;
            }
            i11 = i4 & 64;
            if (i11 != 0) {
                i10 |= 1572864;
            } else if ((i3 & 1572864) == 0) {
                if (gapComposerH.K(str)) {
                    i12 = 1048576;
                } else {
                    i12 = 524288;
                }
                i10 |= i12;
            }
            i13 = i10;
            if ((i13 & 599187) != 599186) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i13 & 1, z3)) {
                if (i16 != 0) {
                    z2 = false;
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i5 != 0) {
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new bp(24);
                        gapComposerH.q(objX3);
                    }
                    function7 = (Function1) objX3;
                } else {
                    function7 = function3;
                }
                if (i8 != 0) {
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new bp(25);
                        gapComposerH.q(objX2);
                    }
                    function4 = (Function1) objX2;
                }
                if (i11 != 0) {
                    str3 = null;
                } else {
                    str3 = str;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierB = BackgroundKt.b(ClipKt.a(AspectRatioKt.a(SizeKt.d(PaddingKt.i(modifier3, LVAppDesignKitTheme.l(gapComposerH).f48415c), 1.0f), 1.0f, false), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
                if (str3 != null || (dTFunctionNameModifier = n00.g("PhotoItem", str3)) == null) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("PhotoItem");
                }
                Modifier modifierO = modifierB.o(dTFunctionNameModifier);
                z5 = z2;
                yu yuVar = new yu(z5, distantRepairPhoto2, modifier3, function7, i14);
                distantRepairPhoto2 = distantRepairPhoto2;
                i14 = i14;
                Modifier modifierA = ComposedModifierKt.a(modifierO, InspectableValueKt.f10100a, yuVar);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                function8 = function7;
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                function9 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicyD, function9);
                function10 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function10);
                Integer numValueOf = Integer.valueOf(iHashCode);
                function11 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function11);
                function12 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function12);
                modifier2 = modifier3;
                function13 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function13);
                if (distantRepairPhoto2 != null) {
                    Modifier modifierO2 = n00.i(gapComposerH, 1748811759, "PhotoItem").o(SizeKt.f5052c);
                    measurePolicyD2 = BoxKt.d(Alignment.Companion.d, false);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierO2);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    String str5 = str3;
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD2, function9);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function10);
                    cj.t(iHashCode2, gapComposerH, function11, gapComposerH, function12);
                    Updater.c(gapComposerH, modifierC2, function13);
                    String strValueOf = String.valueOf(distantRepairPhoto2.f57388a);
                    ContentScale.f9447a.getClass();
                    function14 = function4;
                    str4 = str5;
                    ImageLoaderKt.b(null, strValueOf, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2041);
                    gapComposerH = gapComposerH;
                    if (z5) {
                        gapComposerH.L(-1590358760);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-1590845584);
                        Painter painterA = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).s, gapComposerH, 0);
                        String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_remove);
                        long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                        Modifier modifierI = PaddingKt.i(new DTFunctionNameModifier("PhotoItem"), LVAppDesignKitTheme.l(gapComposerH).f48414b);
                        if ((i13 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        if ((i13 & 112) == 32) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        z8 = z6 | z7;
                        objX = gapComposerH.x();
                        if (z8 || objX == composer$Companion$Empty$1) {
                            objX = new is(i14, 2, function14);
                            gapComposerH.q(objX);
                        }
                        IconKt.a(painterA, strC, ModifierExtKt.c(modifierI, false, null, null, (Function0) objX, 31), j2, gapComposerH, 8, 0);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(true);
                    gapComposerH.Z(false);
                } else {
                    str4 = str3;
                    function14 = function4;
                    gapComposerH.L(1749655269);
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).z, gapComposerH, 0), StringResources_androidKt.c(gapComposerH, R.string.alt_add_photo_button), ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("PhotoItem"), LVAppDesignKitTheme.d(gapComposerH).n), "careservicesForm_productDetailsAddImage_button"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 8, 0);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                z4 = z5;
                function6 = function14;
                str2 = str4;
                function5 = function8;
            } else {
                modifier2 = modifier3;
                gapComposerH.D();
                str2 = str;
                z4 = z2;
                function5 = function3;
                function6 = function4;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new zu(modifier2, i14, distantRepairPhoto2, z4, function5, function6, str2, i3, i4);
            }
        }
        i15 |= 3072;
        z2 = z;
        i5 = i4 & 16;
        if (i5 != 0) {
            i7 = i15 | 24576;
            function3 = function1;
        } else {
            function3 = function1;
            if (gapComposerH.y(function3)) {
                i6 = 16384;
            } else {
                i6 = 8192;
            }
            i7 = i15 | i6;
        }
        i8 = i4 & 32;
        if (i8 != 0) {
            i10 = i7 | ImageMetadata.EDGE_MODE;
            function4 = function2;
        } else {
            function4 = function2;
            if (gapComposerH.y(function4)) {
                i9 = 131072;
            } else {
                i9 = 65536;
            }
            i10 = i7 | i9;
        }
        i11 = i4 & 64;
        if (i11 != 0) {
            i10 |= 1572864;
        } else if ((i3 & 1572864) == 0) {
            if (gapComposerH.K(str)) {
                i12 = 1048576;
            } else {
                i12 = 524288;
            }
            i10 |= i12;
        }
        i13 = i10;
        if ((i13 & 599187) != 599186) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i13 & 1, z3)) {
            if (i16 != 0) {
                z2 = false;
            }
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i5 != 0) {
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new bp(24);
                    gapComposerH.q(objX3);
                }
                function7 = (Function1) objX3;
            } else {
                function7 = function3;
            }
            if (i8 != 0) {
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new bp(25);
                    gapComposerH.q(objX2);
                }
                function4 = (Function1) objX2;
            }
            if (i11 != 0) {
                str3 = null;
            } else {
                str3 = str;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            Modifier modifierB2 = BackgroundKt.b(ClipKt.a(AspectRatioKt.a(SizeKt.d(PaddingKt.i(modifier3, LVAppDesignKitTheme.l(gapComposerH).f48415c), 1.0f), 1.0f, false), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
            if (str3 != null) {
                dTFunctionNameModifier = new DTFunctionNameModifier("PhotoItem");
            } else {
                dTFunctionNameModifier = new DTFunctionNameModifier("PhotoItem");
            }
            Modifier modifierO3 = modifierB2.o(dTFunctionNameModifier);
            z5 = z2;
            yu yuVar2 = new yu(z5, distantRepairPhoto2, modifier3, function7, i14);
            distantRepairPhoto2 = distantRepairPhoto2;
            i14 = i14;
            Modifier modifierA2 = ComposedModifierKt.a(modifierO3, InspectableValueKt.f10100a, yuVar2);
            Alignment.f8582a.getClass();
            measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
            function8 = function7;
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierA2);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            function9 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function9);
            function10 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function10);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            function11 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function11);
            function12 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function12);
            modifier2 = modifier3;
            function13 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function13);
            if (distantRepairPhoto2 != null) {
                Modifier modifierO4 = n00.i(gapComposerH, 1748811759, "PhotoItem").o(SizeKt.f5052c);
                measurePolicyD2 = BoxKt.d(Alignment.Companion.d, false);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierO4);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                String str6 = str3;
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD2, function9);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function10);
                cj.t(iHashCode2, gapComposerH, function11, gapComposerH, function12);
                Updater.c(gapComposerH, modifierC2, function13);
                String strValueOf2 = String.valueOf(distantRepairPhoto2.f57388a);
                ContentScale.f9447a.getClass();
                function14 = function4;
                str4 = str6;
                ImageLoaderKt.b(null, strValueOf2, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2041);
                gapComposerH = gapComposerH;
                if (z5) {
                    gapComposerH.L(-1590845584);
                    Painter painterA2 = PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).s, gapComposerH, 0);
                    String strC2 = StringResources_androidKt.c(gapComposerH, R.string.alt_remove);
                    long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                    Modifier modifierI2 = PaddingKt.i(new DTFunctionNameModifier("PhotoItem"), LVAppDesignKitTheme.l(gapComposerH).f48414b);
                    if ((i13 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    if ((i13 & 112) == 32) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    z8 = z6 | z7;
                    objX = gapComposerH.x();
                    if (z8) {
                        objX = new is(i14, 2, function14);
                        gapComposerH.q(objX);
                    } else {
                        objX = new is(i14, 2, function14);
                        gapComposerH.q(objX);
                    }
                    IconKt.a(painterA2, strC2, ModifierExtKt.c(modifierI2, false, null, null, (Function0) objX, 31), j3, gapComposerH, 8, 0);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1590358760);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            } else {
                str4 = str3;
                function14 = function4;
                gapComposerH.L(1749655269);
                IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).z, gapComposerH, 0), StringResources_androidKt.c(gapComposerH, R.string.alt_add_photo_button), ModifierExtKt.e(SizeKt.o(new DTFunctionNameModifier("PhotoItem"), LVAppDesignKitTheme.d(gapComposerH).n), "careservicesForm_productDetailsAddImage_button"), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, gapComposerH, 8, 0);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            z4 = z5;
            function6 = function14;
            str2 = str4;
            function5 = function8;
        } else {
            modifier2 = modifier3;
            gapComposerH.D();
            str2 = str;
            z4 = z2;
            function5 = function3;
            function6 = function4;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zu(modifier2, i14, distantRepairPhoto2, z4, function5, function6, str2, i3, i4);
        }
    }
}
