package com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridDslKt;
import androidx.compose.foundation.lazy.staggeredgrid.StaggeredGridCells;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.LVPlayPauseButtonKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionAssetUiModel;
import defpackage.cj;
import defpackage.d1;
import defpackage.gj;
import defpackage.hg;
import defpackage.ma;
import defpackage.n00;
import defpackage.o9;
import defpackage.on0;
import defpackage.pn0;
import defpackage.pq0;
import defpackage.tr;
import defpackage.wd0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PersonalSelectionsCurationAdvisorLookListKt {
    public static final void a(int i2, Composer composer, String str) {
        GapComposer gapComposerH = composer.h(433895520);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2);
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = BackgroundKt.b(tr.d("AdvisorLabel", 1.0f), LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.c(str, PaddingKt.k(BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("AdvisorLabel"), Alignment.Companion.f8587f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48414b, 1), LVAppDesignKitTheme.c(gapComposerH).f48361b.m, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, i3 & 14, 0, 131064);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ma(str, i2, 5);
        }
    }

    public static final void b(int i2, Composer composer, Modifier modifier, String str) {
        String str2;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "LookCounter");
        }
        GapComposer gapComposerH = composer.h(156873558);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = BackgroundKt.b(ClipKt.a(SizeKt.o(modifierE, LVAppDesignKitTheme.d(gapComposerH).q), LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            str2 = str;
            TextKt.c(str2, BoxScopeInstance.f4938a.g(new DTFunctionNameModifier("LookCounter"), Alignment.Companion.f8587f), LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, (i3 >> 3) & 14, 0, 131064);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            str2 = str;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o9(modifierE, str2, i2, 5);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v12 */
    public static final void c(SelectionAssetUiModel selectionAssetUiModel, Function1 function1, Composer composer, int i2) {
        Function1 function2;
        GapComposer gapComposer;
        List list;
        BoxScopeInstance boxScopeInstance;
        String str;
        String str2;
        GapComposer gapComposer2;
        ?? r13;
        String str3;
        boolean z;
        SelectionAssetUiModel selectionAssetUiModel2 = selectionAssetUiModel;
        GapComposer gapComposerH = composer.h(390927527);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(selectionAssetUiModel2) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16);
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PersonalSelectionsCurationAdvisorLookItem");
            int i4 = i3 & 112;
            boolean zY = (i4 == 32) | gapComposerH.y(selectionAssetUiModel2);
            Object objX = gapComposerH.x();
            Object obj = Composer.Companion.f7939a;
            if (zY || objX == obj) {
                objX = new on0(0, selectionAssetUiModel2, function1);
                gapComposerH.q(objX);
            }
            Modifier modifierC = ModifierExtKt.c(dTFunctionNameModifier, false, null, null, (Function0) objX, 31);
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
            DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC2, function7, "PersonalSelectionsCurationAdvisorLookItem");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierO = dTFunctionNameModifierE.o(fillElement);
            Painter painterA = PainterResources_androidKt.a(R.drawable.background_product_default, gapComposerH, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierA = PainterModifierKt.a(modifierO, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierA);
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
            Updater.c(gapComposerH, measurePolicyD, function3);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function4);
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function6);
            Updater.c(gapComposerH, modifierC3, function7);
            AssetUiModel assetUiModel = selectionAssetUiModel2.f62576a;
            List list2 = selectionAssetUiModel2.f62578c;
            AssetVideoUiModel assetVideoUiModel = assetUiModel.f51781c;
            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.f4938a;
            if (assetVideoUiModel == null || (str3 = assetVideoUiModel.f51783c) == null || !StringExtKt.a(str3)) {
                function2 = function1;
                list = list2;
                boxScopeInstance = boxScopeInstance2;
                str = "PersonalSelectionsCurationAdvisorLookItem";
                AssetImageUiModel assetImageUiModel = assetUiModel.f51780b;
                if (assetImageUiModel == null || (str2 = assetImageUiModel.f51778b) == null || !StringExtKt.a(str2)) {
                    gapComposerH.L(-1668043777);
                    gapComposerH.Z(false);
                    gapComposer2 = gapComposerH;
                } else {
                    gapComposerH.L(-1668349375);
                    Modifier modifierA2 = AspectRatioKt.a(new DTFunctionNameModifier(str).o(fillElement), 1.0f, false);
                    String str4 = assetUiModel.f51780b.f51778b;
                    str4.getClass();
                    ImageLoaderKt.b(modifierA2, str4, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, 390, 2040);
                    gapComposerH.Z(false);
                    gapComposer2 = gapComposerH;
                }
            } else {
                gapComposerH.L(-1669370949);
                Object objX2 = gapComposerH.x();
                if (objX2 == obj) {
                    objX2 = new LvExoPlayer(context);
                    gapComposerH.q(objX2);
                }
                LvExoPlayer lvExoPlayer = (LvExoPlayer) objX2;
                Modifier modifierA3 = GradientKt.a(pq0.i("PersonalSelectionsCurationAdvisorLookItem", fillElement), GradientKt.f48343b);
                ExoPlayer exoPlayer = lvExoPlayer.f50900a;
                String str5 = assetUiModel.f51781c.f51783c;
                Float fValueOf = Float.valueOf(0.6666667f);
                boolean zY2 = (i4 == 32) | gapComposerH.y(selectionAssetUiModel2);
                Object objX3 = gapComposerH.x();
                if (zY2 || objX3 == obj) {
                    z = false;
                    objX3 = new pn0(0, selectionAssetUiModel2, function1);
                    gapComposerH.q(objX3);
                } else {
                    z = false;
                }
                list = list2;
                boxScopeInstance = boxScopeInstance2;
                str = "PersonalSelectionsCurationAdvisorLookItem";
                LvVideoPlayerKt.b(modifierA3, exoPlayer, str5, null, fValueOf, false, null, null, false, false, false, false, null, false, 0, null, null, null, (Function1) objX3, null, null, gapComposerH, 24576, 6, 0, 1833960);
                GapComposer gapComposer3 = gapComposerH;
                Modifier modifierG = boxScopeInstance.g(new DTFunctionNameModifier(str), Alignment.Companion.f8590j);
                boolean zBooleanValue = ((Boolean) ((SnapshotMutableStateImpl) lvExoPlayer.f50901b).getF10755b()).booleanValue();
                boolean zY3 = gapComposer3.y(lvExoPlayer);
                Object objX4 = gapComposer3.x();
                if (zY3 || objX4 == obj) {
                    objX4 = new gj(lvExoPlayer, 12);
                    gapComposer3.q(objX4);
                }
                LVPlayPauseButtonKt.a(0, gapComposer3, modifierG, (Function0) objX4, zBooleanValue);
                gapComposer3.Z(false);
                function2 = function1;
                gapComposer2 = gapComposer3;
            }
            if (list.isEmpty()) {
                r13 = 0;
                gapComposer2.L(-1667571585);
                gapComposer2.Z(false);
            } else {
                r13 = 0;
                b(0, gapComposer2, PaddingKt.m(boxScopeInstance.g(n00.i(gapComposer2, -1667981932, str), Alignment.Companion.d), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer2).d, LVAppDesignKitTheme.l(gapComposer2).d, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9), "+" + list.size());
                gapComposer2.Z(false);
            }
            gapComposer2.Z(true);
            selectionAssetUiModel2 = selectionAssetUiModel;
            String str6 = selectionAssetUiModel2.f62577b;
            if (str6 == null) {
                gapComposer2.L(-1652759637);
                gapComposer2.Z(r13);
            } else {
                gapComposer2.L(-1652759636);
                a(r13, gapComposer2, str6);
                gapComposer2.Z(r13);
            }
            gapComposer2.Z(true);
            gapComposer = gapComposer2;
        } else {
            function2 = function1;
            gapComposerH.D();
            gapComposer = gapComposerH;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wd0(i2, selectionAssetUiModel2, function2);
        }
    }

    public static final void d(List list, boolean z, Function1 function1, Function1 function2, Function1 function3, Function2 function4, Composer composer, int i2) {
        GapComposer gapComposer;
        list.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(569692478);
        int i3 = i2 | (gapComposerH.y(list) ? 4 : 2) | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192) | (gapComposerH.y(function4) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            PaddingValuesImpl paddingValuesImplE = PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            boolean z2 = !z;
            StaggeredGridCells.Fixed fixed = new StaggeredGridCells.Fixed(2);
            boolean zY = gapComposerH.y(list) | ((i3 & 896) == 256) | ((i3 & 7168) == 2048) | ((57344 & i3) == 16384) | ((i3 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                d1 d1Var = new d1(list, function4, function1, function2, function3, 18);
                gapComposerH.q(d1Var);
                objX = d1Var;
            }
            gapComposer = gapComposerH;
            LazyStaggeredGridDslKt.a(fixed, null, null, paddingValuesImplE, null, null, z2, null, (Function1) objX, gapComposer, 0);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new hg(list, z, function1, function2, function3, function4, i2);
        }
    }
}
