package com.vuitton.android.designkit.components.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import defpackage.cj;
import defpackage.v1;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"components"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LVVerticalGridKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(Modifier modifier, List list, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        Modifier modifier2;
        RowScopeInstance rowScopeInstance;
        boolean z;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LVVerticalGrid");
        }
        Modifier modifier3 = modifierE;
        list.getClass();
        GapComposer gapComposerH = composer.h(-1784835320);
        Applier applier = gapComposerH.f7976a;
        char c2 = 2;
        int i3 = (i2 & 6) == 0 ? (gapComposerH.K(modifier3) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.d(2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(list) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 2048 : 1024;
        }
        int i4 = 0;
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier3);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
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
            gapComposerH.L(388462272);
            int i5 = 0;
            for (Object obj : CollectionsKt.C0(list, 2, 2)) {
                int i6 = i5 + 1;
                if (i5 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                List list2 = (List) obj;
                Modifier modifierA = IntrinsicKt.a(new DTFunctionNameModifier("LVVerticalGrid"), IntrinsicSize.Max);
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                Alignment.f8582a.getClass();
                char c3 = c2;
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, i4);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA);
                ComposeUiNode.b0.getClass();
                Function0 function1 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                gapComposerH.L(-84016567);
                Iterator it = list2.iterator();
                int i7 = 0;
                while (true) {
                    boolean zHasNext = it.hasNext();
                    rowScopeInstance = RowScopeInstance.f5040a;
                    if (zHasNext) {
                        Object next = it.next();
                        int i8 = i7 + 1;
                        if (i7 < 0) {
                            CollectionsKt.t0();
                            throw null;
                        }
                        Iterator it2 = it;
                        Modifier modifierB = cj.b("LVVerticalGrid", rowScopeInstance, 1.0f, true);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        Modifier modifier4 = modifier3;
                        int iHashCode3 = Long.hashCode(gapComposerH.T);
                        PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
                        Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierB);
                        ComposeUiNode.b0.getClass();
                        Function0 function2 = ComposeUiNode.Companion.f9641b;
                        if (applier == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function2);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU3, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC3, ComposeUiNode.Companion.d);
                        composableLambdaImpl.g(Integer.valueOf((i5 * 2) + i7), next, gapComposerH, Integer.valueOf((i3 >> 3) & 896));
                        gapComposerH.Z(true);
                        i7 = i8;
                        modifier3 = modifier4;
                        it = it2;
                    }
                }
                Modifier modifier5 = modifier3;
                gapComposerH.Z(false);
                int size = 2 - list2.size();
                Integer numValueOf = Integer.valueOf(size);
                if (size <= 0) {
                    numValueOf = null;
                }
                if (numValueOf == null) {
                    gapComposerH.L(1690982704);
                    gapComposerH.Z(false);
                    z = true;
                } else {
                    gapComposerH.L(1690982705);
                    z = true;
                    SpacerKt.a(gapComposerH, rowScopeInstance.a(new DTFunctionNameModifier("LVVerticalGrid"), numValueOf.intValue(), true));
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z);
                c2 = c3;
                i4 = 0;
                i5 = i6;
                modifier3 = modifier5;
            }
            modifier2 = modifier3;
            gapComposerH.Z(i4);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
        } else {
            modifier2 = modifier3;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(i2, 23, modifier2, list, composableLambdaImpl);
        }
    }
}
