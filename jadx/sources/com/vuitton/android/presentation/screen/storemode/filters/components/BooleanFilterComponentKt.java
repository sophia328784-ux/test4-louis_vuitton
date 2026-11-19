package com.vuitton.android.presentation.screen.storemode.filters.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.material3.TextKt;
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
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVSwitchKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductBooleanFilterUiModel;
import defpackage.cj;
import defpackage.rg;
import defpackage.tr;
import defpackage.y2;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BooleanFilterComponentKt {
    public static final void a(boolean z, ProductBooleanFilterUiModel productBooleanFilterUiModel, Function0 function0, Composer composer, int i2) {
        productBooleanFilterUiModel.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(692457940);
        int i3 = i2 | (gapComposerH.b(z) ? 4 : 2) | (gapComposerH.y(productBooleanFilterUiModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierJ = PaddingKt.j(tr.d("BooleanFilterComponent", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposerH, 54);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierJ);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
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
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            String str = productBooleanFilterUiModel.f62955b;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
            long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
            TextOverflow.f10989a.getClass();
            TextKt.c(str, PaddingKt.m(cj.b("BooleanFilterComponent", RowScopeInstance.f5040a, 1.0f, true), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
            gapComposerH = gapComposerH;
            boolean z2 = !z && productBooleanFilterUiModel.f62957e;
            boolean z3 = productBooleanFilterUiModel.d;
            boolean z4 = (i3 & 896) == 256;
            Object objX = gapComposerH.x();
            if (z4 || objX == Composer.Companion.f7939a) {
                objX = new y2(function0, 6);
                gapComposerH.q(objX);
            }
            LVSwitchKt.a(null, z2, z3, null, (Function1) objX, gapComposerH, 0, 9);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rg(z, productBooleanFilterUiModel, function0, i2, 1);
        }
    }
}
