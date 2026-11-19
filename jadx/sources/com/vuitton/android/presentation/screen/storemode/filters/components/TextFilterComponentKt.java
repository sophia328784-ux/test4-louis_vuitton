package com.vuitton.android.presentation.screen.storemode.filters.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
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
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.components.LVRadioButtonBlockKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterDataTypeUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import defpackage.cj;
import defpackage.d;
import defpackage.es0;
import defpackage.g20;
import defpackage.m21;
import defpackage.qm0;
import defpackage.tr;
import defpackage.wk0;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TextFilterComponentKt {
    public static final void a(boolean z, String str, boolean z2, boolean z3, Function2 function2, Composer composer, int i2) {
        long j2;
        GapComposer gapComposerH = composer.h(26443869);
        int i3 = i2 | (gapComposerH.b(z) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.b(z2) ? 256 : 128) | (gapComposerH.b(z3) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierM = PaddingKt.m(SizeKt.f(tr.d("FilterCheckboxItem", 1.0f), LVAppDesignKitTheme.d(gapComposerH).x), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11);
            boolean z4 = !z && z2;
            int i4 = 57344 & i3;
            int i5 = i3 & 112;
            boolean z5 = ((i3 & 7168) == 2048) | (i4 == 16384) | (i5 == 32);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z5 || objX == composer$Companion$Empty$1) {
                objX = new d(function2, str, z3, 6);
                gapComposerH.q(objX);
            }
            Modifier modifierC = ModifierExtKt.c(modifierM, z4, null, null, (Function0) objX, 30);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
            boolean z6 = !z && z2;
            boolean z7 = (i4 == 16384) | (i5 == 32);
            Object objX2 = gapComposerH.x();
            if (z7 || objX2 == composer$Companion$Empty$1) {
                objX2 = new wk0(4, str, function2);
                gapComposerH.q(objX2);
            }
            int i6 = i3 >> 3;
            LVCheckboxKt.a(null, z6, z3, null, false, (Function1) objX2, gapComposerH, i6 & 896, 25);
            Modifier modifierB = cj.b("FilterCheckboxItem", RowScopeInstance.f5040a, 1.0f, false);
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48429j;
            if (z2) {
                gapComposerH.L(-721006060);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-720923538);
                j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                gapComposerH.Z(false);
            }
            long j3 = j2;
            TextOverflow.f10989a.getClass();
            TextKt.c(str, modifierB, j3, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, textStyle, gapComposerH, i6 & 14, 24960, 110584);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new qm0(z, str, z2, z3, function2, i2);
        }
    }

    public static final void b(boolean z, ProductFilterDataTypeUiModel.Simple simple, Function2 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        boolean z2;
        boolean z3 = z;
        simple.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-1810792392);
        int i3 = 256;
        int i4 = i2 | (gapComposerH.b(z3) ? 4 : 2) | (gapComposerH.y(simple) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128);
        boolean z4 = false;
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            List list = simple.f62961a;
            ArrayList<ProductFilterValueUiModel> arrayList = new ArrayList();
            for (Object obj : list) {
                if (((ProductFilterValueUiModel) obj).f62969f) {
                    arrayList.add(obj);
                }
            }
            Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("TextFilterComponent"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, 7);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
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
            boolean z5 = simple.f62962b;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z5) {
                gapComposerH.L(-496375987);
                for (ProductFilterValueUiModel productFilterValueUiModel : arrayList) {
                    String str = productFilterValueUiModel.f62966b;
                    boolean z6 = productFilterValueUiModel.f62968e;
                    boolean z7 = productFilterValueUiModel.f62969f;
                    boolean zK = gapComposerH.K(productFilterValueUiModel) | ((i4 & 896) == 256);
                    Object objX = gapComposerH.x();
                    if (zK || objX == composer$Companion$Empty$1) {
                        objX = new es0(productFilterValueUiModel, function2, 13);
                        gapComposerH.q(objX);
                    }
                    a(z3, str, z7, z6, (Function2) objX, gapComposerH, i4 & 14);
                    z3 = z;
                }
                gapComposerH.Z(false);
                gapComposer = gapComposerH;
                z2 = true;
            } else {
                gapComposerH.L(-495841640);
                for (ProductFilterValueUiModel productFilterValueUiModel2 : arrayList) {
                    Modifier modifierF = SizeKt.f(new DTFunctionNameModifier("TextFilterComponent"), LVAppDesignKitTheme.d(gapComposerH).x);
                    String str2 = productFilterValueUiModel2.f62966b;
                    boolean z8 = productFilterValueUiModel2.f62968e;
                    if (!z && productFilterValueUiModel2.f62969f) {
                        z4 = true;
                    }
                    boolean zK2 = ((i4 & 896) == i3 ? true : z4) | gapComposerH.K(productFilterValueUiModel2);
                    Object objX2 = gapComposerH.x();
                    if (zK2 || objX2 == composer$Companion$Empty$1) {
                        objX2 = new m21(productFilterValueUiModel2, function2);
                        gapComposerH.q(objX2);
                    }
                    GapComposer gapComposer2 = gapComposerH;
                    LVRadioButtonBlockKt.a(modifierF, str2, null, z4, z8, (Function1) objX2, null, null, gapComposer2, 0, 196);
                    i4 = i4;
                    composer$Companion$Empty$1 = composer$Companion$Empty$1;
                    i3 = i3;
                    z4 = z4;
                    gapComposerH = gapComposer2;
                }
                gapComposer = gapComposerH;
                z2 = true;
                gapComposer.Z(z4);
            }
            gapComposer.Z(z2);
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g20(z, simple, function2, i2, 1);
        }
    }
}
