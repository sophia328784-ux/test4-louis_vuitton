package com.vuitton.android.presentation.screen.storemode.filters.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.LVExpandableListAnimatedIconKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterDataTypeUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryUiModel;
import defpackage.cj;
import defpackage.ky;
import defpackage.ly;
import defpackage.o60;
import defpackage.pl;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FilterCategoryExpandableRowKt {
    public static final void a(ProductFiltersCategoryUiModel productFiltersCategoryUiModel, boolean z, boolean z2, Function1 function1, Function4 function4, Composer composer, int i2) {
        function1.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(2086066328);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(productFiltersCategoryUiModel) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.b(z2) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function4) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ProductFilterDataTypeUiModel productFilterDataTypeUiModel = productFiltersCategoryUiModel.d;
            if (productFilterDataTypeUiModel instanceof ProductFilterDataTypeUiModel.Simple) {
                Modifier modifierC = o60.c(gapComposerH, 2120582128, "FilterCategoryExpandableRow", 1.0f);
                Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                Alignment.f8582a.getClass();
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
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
                Function2 function2 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, columnMeasurePolicyA, function2);
                Function2 function3 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
                Integer numValueOf = Integer.valueOf(iHashCode);
                Function2 function5 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function5);
                Function1 function6 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function6);
                Function2 function7 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC2, function7);
                Modifier modifierD = tr.d("FilterCategoryExpandableRow", 1.0f);
                Role.f10289b.getClass();
                Role role = new Role(Role.f10293h);
                int i4 = i3 & 896;
                boolean z3 = (i4 == 256) | ((i3 & 7168) == 2048);
                Object objX = gapComposerH.x();
                if (z3 || objX == Composer.Companion.f7939a) {
                    objX = new ky(function1, z2, 0);
                    gapComposerH.q(objX);
                }
                Modifier modifierJ = PaddingKt.j(ClickableKt.d(modifierD, false, null, role, (Function0) objX, 11), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f);
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.f8591k, gapComposerH, 0);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierJ);
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
                Updater.c(gapComposerH, rowMeasurePolicyA, function2);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
                cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
                Updater.c(gapComposerH, modifierC3, function7);
                Modifier modifierM = PaddingKt.m(cj.b("FilterCategoryExpandableRow", RowScopeInstance.f5040a, 1.0f, true), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
                String str = productFiltersCategoryUiModel.f62971b;
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48428i;
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                TextOverflow.f10989a.getClass();
                TextKt.c(str, modifierM, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, 0, 24960, 110584);
                LVExpandableListAnimatedIconKt.a(null, 0, z2, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, i4, 27);
                gapComposerH.Z(true);
                AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, z2, null, null, null, null, ComposableLambdaKt.b(-1711684863, new pl(productFilterDataTypeUiModel, z, function4, productFiltersCategoryUiModel, 1), gapComposerH), gapComposerH, 1572870 | ((i3 >> 3) & 112), 30);
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(2122421482);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ly(productFiltersCategoryUiModel, z, z2, function1, function4, i2, 0);
        }
    }
}
