package com.vuitton.android.presentation.screen.pdp.vto.beauty.components.tutorial;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
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
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFreeCarouselWithHintKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.utils.ImageConfiguration;
import com.vuitton.android.presentation.utils.UrlFactory;
import defpackage.a;
import defpackage.cj;
import defpackage.e1;
import defpackage.j8;
import defpackage.n00;
import defpackage.o60;
import defpackage.og0;
import defpackage.p11;
import defpackage.qj;
import defpackage.tr;
import defpackage.y41;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "shouldTrackSwipe", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TutorialRecommendedKt {
    public static final void a(Modifier modifier, CarouselSItemUiModel carouselSItemUiModel, Function1 function1, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "RecommendedItem");
        }
        GapComposer gapComposerH = composer.h(1710485178);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | 6;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(carouselSItemUiModel) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("RecommendedItem");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z = (i3 & 896) == 256;
            int i4 = i3 & 112;
            boolean z2 = z | (i4 == 32);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z2 || objX == composer$Companion$Empty$1) {
                objX = new qj(function1, carouselSItemUiModel, 2);
                gapComposerH.q(objX);
            }
            Modifier modifierC = ModifierExtKt.c(dTFunctionNameModifier, false, null, null, (Function0) objX, 31);
            boolean z3 = i4 == 32;
            Object objX2 = gapComposerH.x();
            if (z3 || objX2 == composer$Companion$Empty$1) {
                objX2 = new p11(carouselSItemUiModel, 12);
                gapComposerH.q(objX2);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierC, true, (Function1) objX2);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Modifier modifierA = ClipKt.a(AspectRatioKt.a(tr.e(gapComposerH, modifierC2, function6, "RecommendedItem"), 0.8f, false), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            Painter painterA = PainterResources_androidKt.a(carouselSItemUiModel.d, gapComposerH, 0);
            ContentScale.f9447a.getClass();
            Modifier modifierA2 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(PainterModifierKt.a(modifierA, painterA, null, ContentScale.Companion.f9453h, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 54), null, null, 7);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierA2);
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
            Updater.c(gapComposerH, measurePolicyD, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Modifier modifierA3 = ClipKt.a(AspectRatioKt.a(tr.e(gapComposerH, modifierC3, function6, "RecommendedItem"), 0.8f, false), LVAppDesignKitTheme.j(gapComposerH).f48410b);
            String strB = new UrlFactory(ContextExtKt.f((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b))).b(carouselSItemUiModel.f50798c, ImageConfiguration.Background.Transparent.f65853a);
            strB.getClass();
            ImageLoaderKt.b(modifierA3, strB, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, KyberEngine.KyberPolyBytes, 2040);
            Modifier modifierA4 = com.vuitton.android.presentation.extensions.ModifierExtKt.a(PaddingKt.k(o60.f(gapComposerH, true, "RecommendedItem"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 1), null, null, 7);
            String str = carouselSItemUiModel.f50797b;
            TextOverflow.f10989a.getClass();
            TextKt.c(str, modifierA4, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 1, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48427h, gapComposerH, 0, 24960, 110584);
            gapComposer = gapComposerH;
            if (carouselSItemUiModel.f50800f == null) {
                gapComposer.L(-369765231);
                gapComposer.Z(false);
            } else {
                TextKt.c(carouselSItemUiModel.f50800f, com.vuitton.android.presentation.extensions.ModifierExtKt.a(n00.i(gapComposer, -369765230, "RecommendedItem"), null, null, 7), LVAppDesignKitTheme.c(gapComposer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).f48427h, gapComposer, 0, 0, 131064);
                gapComposer = gapComposer;
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new og0(modifier2, carouselSItemUiModel, function1, i2, 13);
        }
    }

    public static final void b(Modifier modifier, List list, boolean z, Function1 function1, Function0 function0, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "TutorialRecommended");
        }
        Modifier modifier2 = modifierE;
        list.getClass();
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(-363472544);
        int i3 = (i2 & 6) == 0 ? (gapComposerH.K(modifier2) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(list) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.TRUE);
                gapComposerH.q(objX);
            }
            MutableState mutableState = (MutableState) objX;
            Boolean bool = (Boolean) mutableState.getF10755b();
            bool.booleanValue();
            boolean zK = gapComposerH.K(lazyListStateA) | ((i3 & 57344) == 16384);
            Object objX2 = gapComposerH.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new TutorialRecommendedKt$TutorialRecommended$1$1(lazyListStateA, mutableState, function0, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, bool, (Function2) objX2);
            Modifier modifierD = SizeKt.d(modifier2, 1.0f);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function2 = ComposeUiNode.Companion.f9641b;
            int i4 = i3;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function2);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            if (z || !list.isEmpty()) {
                gapComposerH.L(-808494402);
                String strB = StringResources_androidKt.b(R.string.wall_selected_for_you, new Object[]{Integer.valueOf(list.size())}, gapComposerH);
                TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48425e;
                long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("TutorialRecommended"), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 6);
                Object objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new y41(4);
                    gapComposerH.q(objX3);
                }
                TextKt.c(strB, SemanticsModifierKt.b(modifierM, false, (Function1) objX3), j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 131064);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-807978996);
                gapComposerH.Z(false);
            }
            if (z) {
                gapComposerH.L(-807939936);
                ArrayList arrayList = new ArrayList(2);
                for (int i5 = 0; i5 < 2; i5++) {
                    arrayList.add(Unit.f71739a);
                }
                float f2 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
                float f3 = LVAppDesignKitTheme.l(gapComposerH).f48415c;
                ComposableSingletons$TutorialRecommendedKt.f62116a.getClass();
                LVFreeCarouselWithHintKt.a(null, lazyListStateA, arrayList, 1, 0.25f, f2, f3, ComposableSingletons$TutorialRecommendedKt.f62117b, gapComposerH, 12610560, 1);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-807442975);
                LVFreeCarouselWithHintKt.a(null, lazyListStateA, list, 1, 0.25f, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48415c, ComposableLambdaKt.b(952475644, new e1(function1, 6), gapComposerH), gapComposerH, ((i4 << 3) & 896) | 12610560, 1);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new j8(modifier2, list, z, function1, function0, i2, 13);
        }
    }
}
