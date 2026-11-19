package com.vuitton.android.presentation.screen.pdp.components;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.pager.PagerKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.EditorialContentUiModel;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.cf;
import defpackage.cj;
import defpackage.db;
import defpackage.gi0;
import defpackage.jm0;
import defpackage.n00;
import defpackage.o60;
import defpackage.od;
import defpackage.tr;
import defpackage.xg0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpEditorialContentKt {
    public static final void a(Modifier modifier, boolean z, List list, Function2 function2, Function1 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        List list2 = list;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PdpEditorialContent");
        }
        Modifier modifier2 = modifierE;
        list2.getClass();
        function2.getClass();
        function1.getClass();
        GapComposer gapComposerH = composer.h(539186495);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.y(list2) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zY = gapComposerH.y(list2);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new db(list2, 9);
                gapComposerH.q(objX);
            }
            PagerState pagerStateB = PagerStateKt.b(0, (Function0) objX, gapComposerH, 6, 2);
            Boolean boolValueOf = Boolean.valueOf(z);
            boolean zK = gapComposerH.K(pagerStateB) | ((57344 & i3) == 16384) | gapComposerH.y(list2);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                PdpEditorialContentKt$PdpEditorialContent$1$1 pdpEditorialContentKt$PdpEditorialContent$1$1 = new PdpEditorialContentKt$PdpEditorialContent$1$1(z, pagerStateB, function1, list2, null);
                list2 = list2;
                gapComposerH.q(pdpEditorialContentKt$PdpEditorialContent$1$1);
                objX2 = pdpEditorialContentKt$PdpEditorialContent$1$1;
            }
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX2);
            Alignment.f8582a.getClass();
            gapComposer = gapComposerH;
            PagerKt.a(pagerStateB, modifier2, PaddingKt.e(LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).m, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10), null, list2.size(), LVAppDesignKitTheme.l(gapComposerH).f48415c, Alignment.Companion.f8591k, null, false, false, null, null, null, ComposableLambdaKt.b(194903872, new cf(list2, function2, 10), gapComposerH), gapComposer, ((i3 << 3) & 112) | 1572864, 24576, 16264);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new od(modifier2, z, list2, function2, function1, i2);
        }
    }

    public static final void b(Modifier modifier, EditorialContentUiModel editorialContentUiModel, Function2 function2, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier modifier2;
        boolean z;
        boolean z2;
        String str;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PdpEditorialContentItem");
        }
        GapComposer gapComposerH = composer.h(697266374);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | 6 | (gapComposerH.y(editorialContentUiModel) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PdpEditorialContentItem");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
            Context context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
            Modifier modifierK = PaddingKt.k(dTFunctionNameModifier, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48418h, 1);
            int i4 = i3 & 896;
            boolean zY = (i4 == 256) | gapComposerH.y(editorialContentUiModel);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new jm0(function2, editorialContentUiModel, 1);
                gapComposerH.q(objX);
            }
            Unit unit = null;
            Modifier modifierC = ModifierExtKt.c(modifierK, false, null, null, (Function0) objX, 31);
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
            Function1 function1 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function1);
            Function2 function6 = ComposeUiNode.Companion.d;
            Modifier modifierA = ClipKt.a(AspectRatioKt.a(tr.e(gapComposerH, modifierC2, function6, "PdpEditorialContentItem"), 1.0f, false), LVAppDesignKitTheme.j(gapComposerH).f48410b);
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
            cj.t(iHashCode2, gapComposerH, function5, gapComposerH, function1);
            Updater.c(gapComposerH, modifierC3, function6);
            AssetVideoUiModel assetVideoUiModel = editorialContentUiModel.f61689e.f51781c;
            if (assetVideoUiModel == null) {
                gapComposerH.L(866891684);
                z = false;
                gapComposerH.Z(false);
                gapComposer = gapComposerH;
                z2 = true;
            } else {
                z = false;
                gapComposerH.L(866891685);
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new LvExoPlayer(context).f50900a;
                    gapComposerH.q(objX2);
                }
                ExoPlayer exoPlayer = (ExoPlayer) objX2;
                String str2 = assetVideoUiModel.f51783c;
                String str3 = assetVideoUiModel.d;
                boolean zY2 = (i4 == 256) | gapComposerH.y(editorialContentUiModel);
                Object objX3 = gapComposerH.x();
                if (zY2 || objX3 == composer$Companion$Empty$1) {
                    objX3 = new xg0(function2, editorialContentUiModel, 13);
                    gapComposerH.q(objX3);
                }
                z2 = true;
                LvVideoPlayerKt.b(null, exoPlayer, str2, null, null, false, str3, null, false, false, false, false, null, false, 4, null, null, null, (Function1) objX3, null, null, gapComposerH, 0, 24576, 0, 1818553);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
                unit = Unit.f71739a;
            }
            if (unit == null) {
                gapComposer.L(1274904416);
                Modifier modifierA2 = ClipKt.a(AspectRatioKt.a(new DTFunctionNameModifier("PdpEditorialContentItem"), 1.0f, z), LVAppDesignKitTheme.j(gapComposer).f48410b);
                UrlFactory urlFactory = new UrlFactory(ContextExtKt.f((Context) gapComposer.k(staticProvidableCompositionLocal)));
                AssetImageUiModel assetImageUiModel = editorialContentUiModel.f61689e.f51780b;
                if (assetImageUiModel == null || (str = assetImageUiModel.f51778b) == null) {
                    str = new String();
                }
                String strB = urlFactory.b(str, ImageConfiguration.Background.Transparent.f65853a);
                strB.getClass();
                ContentScale.f9447a.getClass();
                ImageLoaderKt.b(modifierA2, strB, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposer, KyberEngine.KyberPolyBytes, 2040);
                gapComposer.Z(z);
            } else {
                gapComposer.L(1274890249);
                gapComposer.Z(z);
            }
            Modifier modifierM = PaddingKt.m(o60.f(gapComposer, z2, "PdpEditorialContentItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            String str4 = editorialContentUiModel.f61688c;
            TextOverflow.f10989a.getClass();
            TextKt.c(str4, modifierM, LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, 0, 24960, 110584);
            String str5 = editorialContentUiModel.d;
            if (str5 == null) {
                gapComposer.L(-1346695845);
                gapComposer.Z(z);
            } else {
                TextKt.c(str5, PaddingKt.m(n00.i(gapComposer, -1346695844, "PdpEditorialContentItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposer).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48426f, gapComposer, 0, 0, 131064);
                gapComposer.Z(z);
            }
            gapComposer.Z(z2);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gi0(i2, 10, modifier2, editorialContentUiModel, function2);
        }
    }
}
