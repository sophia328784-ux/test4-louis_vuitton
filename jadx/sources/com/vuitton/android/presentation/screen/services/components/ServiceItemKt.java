package com.vuitton.android.presentation.screen.services.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVImageKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.screen.services.components.ServiceItemKt;
import defpackage.av0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ServiceItemKt {
    /* JADX WARN: Code duplicated, block: B:37:0x0062  */
    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:40:0x006b  */
    /* JADX WARN: Code duplicated, block: B:44:0x0073  */
    /* JADX WARN: Code duplicated, block: B:46:0x007b  */
    /* JADX WARN: Code duplicated, block: B:47:0x007e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0082  */
    /* JADX WARN: Code duplicated, block: B:52:0x008f  */
    /* JADX WARN: Code duplicated, block: B:53:0x0091  */
    /* JADX WARN: Code duplicated, block: B:56:0x009a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x009c  */
    /* JADX WARN: Code duplicated, block: B:58:0x009e  */
    /* JADX WARN: Code duplicated, block: B:61:0x0127  */
    /* JADX WARN: Code duplicated, block: B:63:0x012e  */
    /* JADX WARN: Code duplicated, block: B:64:0x0132  */
    /* JADX WARN: Code duplicated, block: B:67:0x0169  */
    /* JADX WARN: Code duplicated, block: B:70:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:72:0x0210  */
    /* JADX WARN: Code duplicated, block: B:74:0x021f  */
    /* JADX WARN: Code duplicated, block: B:76:0x0224  */
    /* JADX WARN: Code duplicated, block: B:79:0x022e  */
    /* JADX WARN: Code duplicated, block: B:81:? A[RETURN, SYNTHETIC] */
    public static final void a(final int i2, final int i3, final int i4, boolean z, final int i5, final Function0 function0, Composer composer, final int i6, final int i7) {
        int i8;
        boolean z2;
        boolean z3;
        final boolean z4;
        RecomposeScopeImpl recomposeScopeImplB0;
        boolean z5;
        int i9;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function1;
        Object objX;
        int i10;
        int i11;
        GapComposer gapComposerH = composer.h(178927811);
        if ((i6 & 6) == 0) {
            i8 = (gapComposerH.d(i2) ? 4 : 2) | i6;
        } else {
            i8 = i6;
        }
        if ((i6 & 48) == 0) {
            i8 |= gapComposerH.d(i3) ? 32 : 16;
        }
        if ((i6 & KyberEngine.KyberPolyBytes) == 0) {
            i8 |= gapComposerH.d(i4) ? 256 : 128;
        }
        int i12 = i7 & 8;
        if (i12 == 0) {
            if ((i6 & 3072) == 0) {
                z2 = z;
                i8 |= gapComposerH.b(z2) ? 2048 : 1024;
            }
            if ((i6 & 24576) == 0) {
                if (gapComposerH.d(i5)) {
                    i11 = 16384;
                } else {
                    i11 = 8192;
                }
                i8 |= i11;
            }
            if ((196608 & i6) != 0) {
                if (gapComposerH.y(function0)) {
                    i10 = 131072;
                } else {
                    i10 = 65536;
                }
                i8 |= i10;
            }
            if ((74899 & i8) != 74898) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (gapComposerH.p(i8 & 1, z3)) {
                if (i12 != 0) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("ServiceItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                Painter painterA = PainterResources_androidKt.a(i2, gapComposerH, i8 & 14);
                ContentScale.f9447a.getClass();
                i9 = i8;
                LVImageKt.a(modifierM, painterA, null, 1.0f, ContentScale.Companion.f9449b, gapComposerH, 28096, 0);
                Modifier modifierM2 = PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).g, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierM2);
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
                String strC = StringResources_androidKt.c(gapComposerH, i3);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48426f;
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ServiceItem");
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new av0(2);
                    gapComposerH.q(objX);
                }
                TextKt.c(strC, SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131068);
                TextKt.c(StringResources_androidKt.c(gapComposerH, i4), PaddingKt.m(new DTFunctionNameModifier("ServiceItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).g, gapComposerH, 0, 0, 131068);
                gapComposerH = gapComposerH;
                if (z5) {
                    gapComposerH.L(862142401);
                    LVLinkKt.a(PaddingKt.m(new DTFunctionNameModifier("ServiceItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), StringResources_androidKt.c(gapComposerH, i5), false, null, false, function0, gapComposerH, i9 & ImageMetadata.JPEG_GPS_COORDINATES, 28);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(862356053);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                z4 = z5;
            } else {
                gapComposerH.D();
                z4 = z2;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: bv0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        ServiceItemKt.a(i2, i3, i4, z4, i5, function0, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i8 |= 3072;
        z2 = z;
        if ((i6 & 24576) == 0) {
            if (gapComposerH.d(i5)) {
                i11 = 16384;
            } else {
                i11 = 8192;
            }
            i8 |= i11;
        }
        if ((196608 & i6) != 0) {
            if (gapComposerH.y(function0)) {
                i10 = 131072;
            } else {
                i10 = 65536;
            }
            i8 |= i10;
        }
        if ((74899 & i8) != 74898) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposerH.p(i8 & 1, z3)) {
            if (i12 != 0) {
                z5 = true;
            } else {
                z5 = z2;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            Modifier modifierM3 = PaddingKt.m(new DTFunctionNameModifier("ServiceItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            Painter painterA2 = PainterResources_androidKt.a(i2, gapComposerH, i8 & 14);
            ContentScale.f9447a.getClass();
            i9 = i8;
            LVImageKt.a(modifierM3, painterA2, null, 1.0f, ContentScale.Companion.f9449b, gapComposerH, 28096, 0);
            Modifier modifierM4 = PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).g, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
            Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, gapComposerH, 0);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierM4);
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
            String strC2 = StringResources_androidKt.c(gapComposerH, i3);
            TextStyle textStyle2 = LVAppDesignKitTheme.n(gapComposerH).f48426f;
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("ServiceItem");
            objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new av0(2);
                gapComposerH.q(objX);
            }
            TextKt.c(strC2, SemanticsModifierKt.b(dTFunctionNameModifier2, false, (Function1) objX), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle2, gapComposerH, 0, 0, 131068);
            TextKt.c(StringResources_androidKt.c(gapComposerH, i4), PaddingKt.m(new DTFunctionNameModifier("ServiceItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).g, gapComposerH, 0, 0, 131068);
            gapComposerH = gapComposerH;
            if (z5) {
                gapComposerH.L(862142401);
                LVLinkKt.a(PaddingKt.m(new DTFunctionNameModifier("ServiceItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), StringResources_androidKt.c(gapComposerH, i5), false, null, false, function0, gapComposerH, i9 & ImageMetadata.JPEG_GPS_COORDINATES, 28);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(862356053);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            z4 = z5;
        } else {
            gapComposerH.D();
            z4 = z2;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: bv0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    ServiceItemKt.a(i2, i3, i4, z4, i5, function0, (Composer) obj, RecomposeScopeImplKt.a(i6 | 1), i7);
                    return Unit.f71739a;
                }
            };
        }
    }
}
