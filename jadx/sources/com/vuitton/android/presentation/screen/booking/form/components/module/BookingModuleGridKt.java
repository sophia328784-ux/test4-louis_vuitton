package com.vuitton.android.presentation.screen.booking.form.components.module;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.IntrinsicKt;
import androidx.compose.foundation.layout.IntrinsicSize;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
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
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import defpackage.a;
import defpackage.cj;
import defpackage.re;
import defpackage.tr;
import defpackage.wf;
import defpackage.xf;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingModuleGridKt {
    /* JADX WARN: Code duplicated, block: B:33:0x0060  */
    /* JADX WARN: Code duplicated, block: B:35:0x0066  */
    /* JADX WARN: Code duplicated, block: B:36:0x0069  */
    /* JADX WARN: Code duplicated, block: B:40:0x0073  */
    /* JADX WARN: Code duplicated, block: B:41:0x0075  */
    /* JADX WARN: Code duplicated, block: B:44:0x007e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x0080  */
    /* JADX WARN: Code duplicated, block: B:48:0x0092  */
    /* JADX WARN: Code duplicated, block: B:51:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:53:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:54:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:58:0x0114  */
    /* JADX WARN: Code duplicated, block: B:60:0x0155  */
    /* JADX WARN: Code duplicated, block: B:62:0x015e  */
    /* JADX WARN: Code duplicated, block: B:63:0x0162  */
    /* JADX WARN: Code duplicated, block: B:67:0x0197  */
    /* JADX WARN: Code duplicated, block: B:69:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:71:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:72:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:78:0x022a A[LOOP:2: B:77:0x0228->B:78:0x022a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:83:0x0262  */
    /* JADX WARN: Code duplicated, block: B:85:0x0267  */
    /* JADX WARN: Code duplicated, block: B:88:0x0272  */
    /* JADX WARN: Code duplicated, block: B:90:0x0212 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x024f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:97:? A[RETURN, SYNTHETIC] */
    public static final void a(List list, Modifier modifier, int i2, Function3 function3, Composer composer, int i3, int i4) {
        int i5;
        boolean z;
        Modifier modifier2;
        RecomposeScopeImpl recomposeScopeImplB0;
        float f2;
        Object objX;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function0;
        RowMeasurePolicy rowMeasurePolicyA;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        Function0 function1;
        Iterator it;
        boolean zHasNext;
        RowScopeInstance rowScopeInstance;
        int size;
        int i6;
        Object next;
        MeasurePolicy measurePolicyD;
        int iHashCode3;
        PersistentCompositionLocalMap persistentCompositionLocalMapU3;
        Modifier modifierC3;
        Iterator it2;
        Function0 function2;
        int i7;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "BookingModuleGrid");
        }
        list.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-2041832036);
        Applier applier = gapComposerH.f7976a;
        int i8 = (i3 & 6) == 0 ? (gapComposerH.y(list) ? 4 : 2) | i3 : i3;
        if ((i3 & 48) == 0) {
            i8 |= gapComposerH.K(modifierE) ? 32 : 16;
        }
        int i9 = i4 & 4;
        if (i9 == 0) {
            if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
                i5 = i2;
                i8 |= gapComposerH.d(i5) ? 256 : 128;
            }
            if ((i3 & 3072) == 0) {
                if (gapComposerH.y(function3)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i8 |= i7;
            }
            if ((i8 & 1171) != 1170) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i8 & 1, z)) {
                if (i9 != 0) {
                    i5 = 3;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                f2 = 1.0f;
                Modifier modifierD = SizeKt.d(modifierE, 1.0f);
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new re(14);
                    gapComposerH.q(objX);
                }
                Modifier modifierB = SemanticsModifierKt.b(modifierD, false, (Function1) objX);
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d);
                Alignment.f8582a.getClass();
                columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
                Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                gapComposerH.L(-1915404050);
                for (List list2 : CollectionsKt.C0(list, i5, i5)) {
                    Modifier modifierA = IntrinsicKt.a(tr.d("BookingModuleGrid", f2), IntrinsicSize.Min);
                    Arrangement$Start$1 arrangement$Start$2 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d);
                    Alignment.f8582a.getClass();
                    rowMeasurePolicyA = RowKt.a(spacedAlignedF2, Alignment.Companion.f8591k, gapComposerH, 0);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA);
                    ComposeUiNode.b0.getClass();
                    function1 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    Modifier modifier3 = modifierE;
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
                    gapComposerH.L(2107390997);
                    it = list2.iterator();
                    while (true) {
                        zHasNext = it.hasNext();
                        rowScopeInstance = RowScopeInstance.f5040a;
                        if (zHasNext) {
                            next = it.next();
                            Modifier modifierC4 = SizeKt.c(rowScopeInstance.a(new DTFunctionNameModifier("BookingModuleGrid"), 1.0f, true), 1.0f);
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            iHashCode3 = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU3 = gapComposerH.U();
                            modifierC3 = ComposedModifierKt.c(gapComposerH, modifierC4);
                            ComposeUiNode.b0.getClass();
                            it2 = it;
                            function2 = ComposeUiNode.Companion.f9641b;
                            if (applier != null) {
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
                            function3.A(next, gapComposerH, Integer.valueOf((i8 >> 6) & 112));
                            gapComposerH.Z(true);
                            it = it2;
                        }
                    }
                    gapComposerH.Z(false);
                    gapComposerH.L(2107399046);
                    size = i5 - list2.size();
                    for (i6 = 0; i6 < size; i6++) {
                        SpacerKt.a(gapComposerH, ModifierExtKt.a(cj.b("BookingModuleGrid", rowScopeInstance, 1.0f, true), null, null, 7));
                    }
                    gapComposerH.Z(false);
                    gapComposerH.Z(true);
                    f2 = 1.0f;
                    modifierE = modifier3;
                }
                modifier2 = modifierE;
                gapComposerH.Z(false);
                gapComposerH.Z(true);
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            } else {
                modifier2 = modifierE;
                gapComposerH.D();
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new xf(list, modifier2, i5, function3, i3, i4);
            }
        }
        i8 |= KyberEngine.KyberPolyBytes;
        i5 = i2;
        if ((i3 & 3072) == 0) {
            if (gapComposerH.y(function3)) {
                i7 = 2048;
            } else {
                i7 = 1024;
            }
            i8 |= i7;
        }
        if ((i8 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i8 & 1, z)) {
            if (i9 != 0) {
                i5 = 3;
            }
            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
            f2 = 1.0f;
            Modifier modifierD2 = SizeKt.d(modifierE, 1.0f);
            objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new re(14);
                gapComposerH.q(objX);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierD2, false, (Function1) objX);
            Arrangement$Start$1 arrangement$Start$3 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF3 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d);
            Alignment.f8582a.getClass();
            columnMeasurePolicyA = ColumnKt.a(spacedAlignedF3, Alignment.Companion.n, gapComposerH, 0);
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierB2);
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
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(-1915404050);
            while (r10.hasNext()) {
                Modifier modifierA2 = IntrinsicKt.a(tr.d("BookingModuleGrid", f2), IntrinsicSize.Min);
                Arrangement$Start$1 arrangement$Start$4 = Arrangement.f4918a;
                Arrangement.SpacedAligned spacedAlignedF4 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).d);
                Alignment.f8582a.getClass();
                rowMeasurePolicyA = RowKt.a(spacedAlignedF4, Alignment.Companion.f8591k, gapComposerH, 0);
                OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierA2);
                ComposeUiNode.b0.getClass();
                function1 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                Modifier modifier4 = modifierE;
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
                gapComposerH.L(2107390997);
                it = list2.iterator();
                while (true) {
                    zHasNext = it.hasNext();
                    rowScopeInstance = RowScopeInstance.f5040a;
                    if (zHasNext) {
                        next = it.next();
                        Modifier modifierC5 = SizeKt.c(rowScopeInstance.a(new DTFunctionNameModifier("BookingModuleGrid"), 1.0f, true), 1.0f);
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                        iHashCode3 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU3 = gapComposerH.U();
                        modifierC3 = ComposedModifierKt.c(gapComposerH, modifierC5);
                        ComposeUiNode.b0.getClass();
                        it2 = it;
                        function2 = ComposeUiNode.Companion.f9641b;
                        if (applier != null) {
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
                        function3.A(next, gapComposerH, Integer.valueOf((i8 >> 6) & 112));
                        gapComposerH.Z(true);
                        it = it2;
                    }
                }
                gapComposerH.Z(false);
                gapComposerH.L(2107399046);
                size = i5 - list2.size();
                while (i6 < size) {
                    SpacerKt.a(gapComposerH, ModifierExtKt.a(cj.b("BookingModuleGrid", rowScopeInstance, 1.0f, true), null, null, 7));
                }
                gapComposerH.Z(false);
                gapComposerH.Z(true);
                f2 = 1.0f;
                modifierE = modifier4;
            }
            modifier2 = modifierE;
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
        } else {
            modifier2 = modifierE;
            gapComposerH.D();
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new xf(list, modifier2, i5, function3, i3, i4);
        }
    }

    public static final void b(Modifier modifier, Composer composer, int i2, int i3) {
        int i4;
        Modifier modifier2;
        if (modifier != null) {
            modifier = a.e(modifier, "BookingModuleGridSkeleton");
        }
        GapComposer gapComposerH = composer.h(828533876);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 3) != 2)) {
            if (i5 != 0) {
                modifier = new DTFunctionNameModifier("BookingModuleGridSkeleton");
            }
            Modifier modifier3 = modifier;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int i6 = i4;
            ArrayList arrayList = new ArrayList(5);
            for (int i7 = 0; i7 < 5; i7++) {
                arrayList.add(Integer.valueOf(i7));
            }
            ComposableSingletons$BookingModuleGridKt.f54488a.getClass();
            a(arrayList, modifier3, 0, ComposableSingletons$BookingModuleGridKt.f54489b, gapComposerH, ((i6 << 3) & 112) | 3072, 4);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            modifier2 = modifier3;
        } else {
            gapComposerH.D();
            modifier2 = modifier;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wf(modifier2, i2, i3, 0, (byte) 0);
        }
    }
}
