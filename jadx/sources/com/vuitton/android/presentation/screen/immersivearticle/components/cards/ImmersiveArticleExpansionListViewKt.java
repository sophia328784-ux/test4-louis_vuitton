package com.vuitton.android.presentation.screen.immersivearticle.components.cards;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.TextKt;
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
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.LVExpandableListAnimatedIconKt;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleExpansionListUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleExpansionPanelUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.d3;
import defpackage.i4;
import defpackage.lt;
import defpackage.n00;
import defpackage.pp;
import defpackage.tr;
import defpackage.uv;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "expanded", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleExpansionListViewKt {
    public static final void a(ImmersiveArticleExpansionPanelUiModel immersiveArticleExpansionPanelUiModel, boolean z, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        int i3;
        int i4;
        GapComposer gapComposerH = composer.h(1400579047);
        Applier applier = gapComposerH.f7976a;
        int i5 = i2 | (gapComposerH.K(immersiveArticleExpansionPanelUiModel) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i5 & 1, (i5 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                i3 = 1631709456;
                i4 = R.string.alt_expanded;
            } else {
                i3 = 1631710961;
                i4 = R.string.alt_collapsed;
            }
            String strF = cj.f(gapComposerH, i3, i4, gapComposerH, false);
            Modifier modifierD = tr.d("ExpansionPanelItem", 1.0f);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
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
            Function2 function3 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function3);
            Function2 function4 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function4);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function5 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function5);
            Function1 function6 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function6);
            Function2 function7 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function7);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ExpansionPanelItem");
            boolean z2 = ((i5 & 896) == 256) | ((i5 & 7168) == 2048);
            Object objX2 = gapComposerH.x();
            if (z2 || objX2 == composer$Companion$Empty$1) {
                objX2 = new pp(function0, function1, mutableState, 12);
                gapComposerH.q(objX2);
            }
            Modifier modifierJ = PaddingKt.j(ModifierExtKt.c(dTFunctionNameModifier, false, null, null, (Function0) objX2, 31), LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f);
            boolean zK = gapComposerH.K(strF);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = new lt(strF, 9);
                gapComposerH.q(objX3);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierJ, false, (Function1) objX3);
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, rowMeasurePolicyA, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC2, function7);
            TextKt.c(immersiveArticleExpansionPanelUiModel.f58667a, PaddingKt.m(cj.b("ExpansionPanelItem", RowScopeInstance.f5040a, 1.0f, true), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 11), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48428i, gapComposerH, 0, 0, 131064);
            LVExpandableListAnimatedIconKt.a(null, 0, ((Boolean) mutableState.getF10755b()).booleanValue(), LVAppDesignKitTheme.d(gapComposerH).o, null, gapComposerH, 0, 19);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
            AnimatedVisibilityKt.c(ColumnScopeInstance.f4944a, ((Boolean) mutableState.getF10755b()).booleanValue(), null, null, null, null, ComposableLambdaKt.b(1129825589, new d3(immersiveArticleExpansionPanelUiModel, 24), gapComposer), gapComposer, 1572870, 30);
            if (z) {
                gapComposer.L(-1561301659);
                gapComposer.Z(false);
            } else {
                DividerKt.a(SizeKt.f(n00.i(gapComposer, -1561516923, "ExpansionPanelItem"), LVAppDesignKitTheme.d(gapComposer).f48385c), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.c(gapComposer).f48361b.q, gapComposer, 0, 2);
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i4(immersiveArticleExpansionPanelUiModel, z, function0, function1, i2, 10);
        }
    }

    public static final void b(Modifier modifier, final ImmersiveArticleExpansionListUiModel immersiveArticleExpansionListUiModel, final Function2 function2, final Function2 function3, Composer composer, int i2) {
        Modifier modifierE = modifier;
        List list = immersiveArticleExpansionListUiModel.f58666b;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ImmersiveArticleExpansionListView");
        }
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-955256423);
        int i3 = 256;
        int i4 = 2048;
        int i5 = i2 | (gapComposerH.y(immersiveArticleExpansionListUiModel) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128) | (gapComposerH.y(function3) ? 2048 : 1024);
        final int i6 = 0;
        if (gapComposerH.p(i5 & 1, (i5 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
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
            gapComposerH.L(1090476694);
            final int i7 = 0;
            for (Object obj : list) {
                int i8 = i7 + 1;
                if (i7 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                ImmersiveArticleExpansionPanelUiModel immersiveArticleExpansionPanelUiModel = (ImmersiveArticleExpansionPanelUiModel) obj;
                boolean z = i7 == CollectionsKt.F(list);
                boolean zD = ((i5 & 896) == i3) | gapComposerH.d(i7) | gapComposerH.y(immersiveArticleExpansionListUiModel);
                Object objX = gapComposerH.x();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (zD || objX == composer$Companion$Empty$1) {
                    objX = new Function0() { // from class: j30
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i9 = i6;
                            ImmersiveArticleExpansionListUiModel immersiveArticleExpansionListUiModel2 = immersiveArticleExpansionListUiModel;
                            int i10 = i7;
                            Function2 function4 = function2;
                            switch (i9) {
                                case 0:
                                    function4.invoke(Integer.valueOf(i10), immersiveArticleExpansionListUiModel2.f58665a);
                                    break;
                                default:
                                    function4.invoke(Integer.valueOf(i10), immersiveArticleExpansionListUiModel2.f58665a);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX);
                }
                Function0 function1 = (Function0) objX;
                boolean zD2 = ((i5 & 7168) == i4) | gapComposerH.d(i7) | gapComposerH.y(immersiveArticleExpansionListUiModel);
                Object objX2 = gapComposerH.x();
                if (zD2 || objX2 == composer$Companion$Empty$1) {
                    final int i9 = 1;
                    objX2 = new Function0() { // from class: j30
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i10 = i9;
                            ImmersiveArticleExpansionListUiModel immersiveArticleExpansionListUiModel2 = immersiveArticleExpansionListUiModel;
                            int i11 = i7;
                            Function2 function4 = function3;
                            switch (i10) {
                                case 0:
                                    function4.invoke(Integer.valueOf(i11), immersiveArticleExpansionListUiModel2.f58665a);
                                    break;
                                default:
                                    function4.invoke(Integer.valueOf(i11), immersiveArticleExpansionListUiModel2.f58665a);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX2);
                }
                a(immersiveArticleExpansionPanelUiModel, z, function1, (Function0) objX2, gapComposerH, 0);
                i7 = i8;
                i3 = 256;
                i4 = 2048;
            }
            gapComposerH.Z(false);
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv(modifierE, immersiveArticleExpansionListUiModel, function2, function3, i2, 3);
        }
    }
}
