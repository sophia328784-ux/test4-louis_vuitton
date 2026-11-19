package com.vuitton.android.presentation.screen.pdp.components.sizeguide;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import defpackage.a1;
import defpackage.iq0;
import defpackage.ko;
import defpackage.o60;
import defpackage.om;
import defpackage.pq0;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003¨\u0006\b²\u0006\u001c\u0010\u0002\u001a\u0010\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0004\u001a\u00020\u00038\nX\u008a\u0084\u0002²\u0006\f\u0010\u0006\u001a\u00020\u00058\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00018\n@\nX\u008a\u008e\u0002"}, d2 = {"Lkotlin/Pair;", "", "selectedCell", "", "isAtStart", "Landroidx/compose/ui/unit/Dp;", "fixedColumnEndDividerWidth", "firstColumnHeight", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TableSizeKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r23v2, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r6v11, types: [java.lang.Integer] */
    public static final void a(int i2, Composer composer, List list) {
        float f2;
        list.getClass();
        GapComposer gapComposerH = composer.h(-1853591115);
        Applier applier = gapComposerH.f7976a;
        int i3 = (i2 & 6) == 0 ? (gapComposerH.y(list) ? 4 : 2) | i2 : i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            Alignment.Horizontal horizontal = null;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(null);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            float f3 = 1.0f;
            int i4 = 3;
            String str = "TableSizes";
            if (list.size() > 3) {
                Modifier modifierC = o60.c(gapComposerH, 61933537, "TableSizes", 1.0f);
                Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                Alignment.f8582a.getClass();
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
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
                Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                SpacerKt.a(gapComposerH, SizeKt.s(tr.e(gapComposerH, modifierC2, ComposeUiNode.Companion.d, "TableSizes"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
                List list2 = (List) CollectionsKt.B(list);
                List listW = CollectionsKt.w(list, 1);
                LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = SnapshotStateKt.e(new a1(lazyListStateA, 11));
                    gapComposerH.q(objX2);
                }
                if (((Boolean) ((State) objX2).getF10755b()).booleanValue()) {
                    gapComposerH.L(-894756453);
                    f2 = LVAppDesignKitTheme.d(gapComposerH).f48383a;
                } else {
                    gapComposerH.L(-894757733);
                    f2 = LVAppDesignKitTheme.d(gapComposerH).f48388h;
                }
                gapComposerH.Z(false);
                State stateA = AnimateAsStateKt.a(f2, null, "", null, gapComposerH, KyberEngine.KyberPolyBytes, 10);
                boolean zY = gapComposerH.y(list2) | gapComposerH.K(stateA) | gapComposerH.y(listW);
                Object objX3 = gapComposerH.x();
                if (zY || objX3 == composer$Companion$Empty$1) {
                    objX3 = new iq0(listW, list2, mutableState, stateA, 1);
                    gapComposerH.q(objX3);
                }
                LazyDslKt.b(null, lazyListStateA, null, null, null, null, false, null, (Function1) objX3, gapComposerH, 0, 509);
                gapComposerH = gapComposerH;
                gapComposerH.Z(true);
                gapComposerH.Z(false);
            } else {
                MutableState mutableState2 = mutableState;
                if (list.isEmpty()) {
                    gapComposerH.L(66980461);
                    gapComposerH.Z(false);
                } else {
                    Modifier modifierM = PaddingKt.m(o60.c(gapComposerH, 66153040, "TableSizes", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
                    Arrangement$Start$1 arrangement$Start$2 = Arrangement.f4918a;
                    Alignment.f8582a.getClass();
                    RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$2, Alignment.Companion.f8591k, gapComposerH, 0);
                    int iHashCode2 = Long.hashCode(gapComposerH.T);
                    PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                    Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierM);
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
                    Updater.c(gapComposerH, rowMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC3, ComposeUiNode.Companion.d);
                    gapComposerH.L(-1653547282);
                    int i5 = 0;
                    for (Object obj : list) {
                        int i6 = i5 + 1;
                        if (i5 < 0) {
                            ?? r23 = horizontal;
                            CollectionsKt.t0();
                            throw r23;
                        }
                        List list3 = (List) obj;
                        Modifier modifierA = RowScopeInstance.f5040a.a(SizeKt.x(new DTFunctionNameModifier(str), horizontal, i4), f3, true);
                        Modifier modifierO = new DTFunctionNameModifier(str).o(SizeKt.f5052c);
                        Pair pair = (Pair) mutableState2.getF10755b();
                        Object obj2 = pair != null ? (Integer) pair.f71705b : horizontal;
                        Alignment.Horizontal horizontal2 = horizontal;
                        Pair pair2 = (Pair) mutableState2.getF10755b();
                        boolean z = pair2 != null && ((Number) pair2.f71706c).intValue() == i5;
                        boolean zD = gapComposerH.d(i5);
                        Object objX4 = gapComposerH.x();
                        if (zD || objX4 == composer$Companion$Empty$1) {
                            objX4 = new ko(i5, mutableState2, 5);
                            gapComposerH.q(objX4);
                        }
                        ?? r6 = obj2;
                        GapComposer gapComposer = gapComposerH;
                        TableSizeColumnKt.a(modifierA, modifierO, z, r6, list3, (Function1) objX4, gapComposer, 48);
                        gapComposerH = gapComposer;
                        mutableState2 = mutableState2;
                        str = str;
                        i5 = i6;
                        f3 = 1.0f;
                        i4 = 3;
                        horizontal = horizontal2;
                    }
                    pq0.x(gapComposerH, false, true, false);
                }
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new om(list, i2, 14);
        }
    }
}
