package com.vuitton.android.presentation.screen.certificates.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
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
import androidx.compose.ui.node.ComposeUiNode;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a;
import defpackage.uj;
import defpackage.vg;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CertificateFormKt {
    /* JADX WARN: Code duplicated, block: B:47:0x0088  */
    /* JADX WARN: Code duplicated, block: B:48:0x008a  */
    /* JADX WARN: Code duplicated, block: B:51:0x0093 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:52:0x0095  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:57:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:58:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:62:0x0100  */
    /* JADX WARN: Code duplicated, block: B:64:0x010c  */
    /* JADX WARN: Code duplicated, block: B:65:0x010e  */
    /* JADX WARN: Code duplicated, block: B:70:0x011e  */
    /* JADX WARN: Code duplicated, block: B:74:0x013d  */
    /* JADX WARN: Code duplicated, block: B:76:0x0141  */
    /* JADX WARN: Code duplicated, block: B:79:0x014b  */
    /* JADX WARN: Code duplicated, block: B:84:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, InAppDispatch inAppDispatch, CertificateFormState certificateFormState, List list, Function1 function1, Composer composer, int i2, int i3) {
        int i4;
        Object obj;
        boolean z;
        Object obj2;
        RecomposeScopeImpl recomposeScopeImplB0;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        Iterator it;
        boolean z2;
        boolean zY;
        Object objX;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "CertificateForm");
        }
        Modifier modifier2 = modifierE;
        inAppDispatch.getClass();
        certificateFormState.getClass();
        list.getClass();
        GapComposer gapComposerH = composer.h(-1119485389);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.y(inAppDispatch) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(certificateFormState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(list) ? 2048 : 1024;
        }
        int i5 = i3 & 16;
        if (i5 == 0) {
            if ((i2 & 24576) == 0) {
                obj = function1;
                i4 |= gapComposerH.y(obj) ? 16384 : 8192;
            }
            if ((i4 & 9363) != 9362) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                if (i5 != 0) {
                    obj = null;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                certificateFormState.f55684a = list;
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
                ComposeUiNode.b0.getClass();
                function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                gapComposerH.L(-1111647320);
                it = list.iterator();
                while (it.hasNext()) {
                    CertificateFormField certificateFormField = (CertificateFormField) it.next();
                    if ((57344 & i4) == 16384) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    zY = z2 | gapComposerH.y(certificateFormState);
                    objX = gapComposerH.x();
                    if (zY || objX == Composer.Companion.f7939a) {
                        objX = new vg(obj, certificateFormState, 9);
                        gapComposerH.q(objX);
                    }
                    certificateFormField.a(inAppDispatch, (Function1) objX, gapComposerH, (i4 >> 3) & 14);
                }
                gapComposerH.Z(false);
                gapComposerH.Z(true);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            } else {
                gapComposerH.D();
            }
            obj2 = obj;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new uj(modifier2, inAppDispatch, certificateFormState, list, obj2, i2, i3, 1);
            }
        }
        i4 |= 24576;
        obj = function1;
        if ((i4 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i4 & 1, z)) {
            if (i5 != 0) {
                obj = null;
            }
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            certificateFormState.f55684a = list;
            Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, gapComposerH, 0);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifier2);
            ComposeUiNode.b0.getClass();
            function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(-1111647320);
            it = list.iterator();
            while (it.hasNext()) {
                CertificateFormField certificateFormField2 = (CertificateFormField) it.next();
                if ((57344 & i4) == 16384) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                zY = z2 | gapComposerH.y(certificateFormState);
                objX = gapComposerH.x();
                if (zY) {
                    objX = new vg(obj, certificateFormState, 9);
                    gapComposerH.q(objX);
                } else {
                    objX = new vg(obj, certificateFormState, 9);
                    gapComposerH.q(objX);
                }
                certificateFormField2.a(inAppDispatch, (Function1) objX, gapComposerH, (i4 >> 3) & 14);
            }
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        obj2 = obj;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uj(modifier2, inAppDispatch, certificateFormState, list, obj2, i2, i3, 1);
        }
    }
}
