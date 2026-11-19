package com.vuitton.android.presentation.screen.pdp.components.sizeguide;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.material3.DividerKt;
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
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.a;
import defpackage.is;
import defpackage.p1;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TableSizeColumnKt {
    public static final void a(Modifier modifier, Modifier modifier2, boolean z, Integer num, List list, Function1 function1, Composer composer, int i2) {
        boolean z2;
        boolean z3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "TableSizeColumn");
        }
        Modifier modifier3 = modifierE;
        list.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(-789963768);
        int i3 = ((i2 & 6) == 0 ? i2 | (gapComposerH.K(modifier3) ? 4 : 2) : i2) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.K(num) ? 2048 : 1024) | (gapComposerH.y(list) ? 16384 : 8192);
        int i4 = 131072;
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i3 |= gapComposerH.y(function1) ? 131072 : 65536;
        }
        boolean z4 = false;
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifier3);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
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
            gapComposerH.L(398262033);
            int i5 = 0;
            for (Object obj : list) {
                int i6 = i5 + 1;
                if (i5 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                String str = (String) obj;
                if (z || (num != null && i5 == num.intValue())) {
                    z2 = z4;
                    z3 = true;
                } else {
                    z2 = z4;
                    z3 = z2;
                }
                boolean z5 = z2;
                if (i5 == 0) {
                    z2 = true;
                }
                boolean zD = ((458752 & i3) == i4 ? true : z5) | gapComposerH.d(i5);
                Object objX = gapComposerH.x();
                if (zD || objX == Composer.Companion.f7939a) {
                    objX = new is(i5, 12, function1);
                    gapComposerH.q(objX);
                }
                Function0 function2 = (Function0) objX;
                GapComposer gapComposer = gapComposerH;
                int i7 = i5;
                TableSizeCellKt.a(modifier2, str, z3, z2, function2, gapComposer, 6);
                gapComposerH = gapComposer;
                if (i7 < list.size() - 1) {
                    gapComposerH.L(-1527108731);
                    DividerKt.a(null, LVAppDesignKitTheme.d(gapComposerH).f48385c, LVAppDesignKitTheme.c(gapComposerH).f48361b.p, gapComposerH, 0, 1);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1526907882);
                    gapComposerH.Z(false);
                }
                z4 = false;
                i5 = i6;
                i4 = 131072;
            }
            gapComposerH.Z(z4);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p1(modifier3, modifier2, z, num, list, function1, i2, 18);
        }
    }
}
