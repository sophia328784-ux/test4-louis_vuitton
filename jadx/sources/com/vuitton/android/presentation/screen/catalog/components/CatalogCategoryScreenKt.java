package com.vuitton.android.presentation.screen.catalog.components;

import android.content.Context;
import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.ScaffoldKt;
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
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Crop$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.media3.exoplayer.ExoPlayer;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.ResizableTextKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.LvExoPlayer;
import com.vuitton.android.presentation.compose.LvVideoPlayerKt;
import com.vuitton.android.presentation.compose.components.ScrollProgressTrackerKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.catalog.components.CatalogCategoryScreenKt;
import com.vuitton.android.presentation.screen.catalog.models.CatalogViewState;
import com.vuitton.android.presentation.screen.catalog.models.CategoryTagUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CategoryUiModel;
import defpackage.cj;
import defpackage.h1;
import defpackage.lf;
import defpackage.rg;
import defpackage.z2;
import java.util.Locale;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0006²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002"}, d2 = {"", "alpha", "", "isPressed", "Landroidx/compose/ui/graphics/Color;", "contentColor", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class CatalogCategoryScreenKt {
    public static final void a(Modifier modifier, CatalogViewState catalogViewState, Function1 function1, Function1 function2, Function0 function0, Function1 function3, Composer composer, int i2) {
        Function0 function4;
        GapComposer gapComposer;
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CatalogCategoryScreen");
        }
        catalogViewState.getClass();
        function1.getClass();
        function2.getClass();
        function0.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-568842165);
        int i3 = i2 | 6 | (gapComposerH.y(catalogViewState) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            function4 = function0;
            i3 |= gapComposerH.y(function4) ? 16384 : 8192;
        } else {
            function4 = function0;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CatalogCategoryScreen");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            ScrollProgressTrackerKt.c(lazyListStateA, function1, gapComposerH, (i3 >> 3) & 112);
            gapComposer = gapComposerH;
            ScaffoldKt.a(null, null, null, null, null, 0, LVAppDesignKitTheme.c(gapComposerH).f48361b.g, 0L, null, ComposableLambdaKt.b(1929085786, new lf(catalogViewState, dTFunctionNameModifier, lVModalBottomSheetStateF, function3, lazyListStateA, function2, lVModalBottomSheetStateF2, function4), gapComposerH), gapComposer, 805306368, 447);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z2(modifier2, (Object) catalogViewState, function1, function2, (Function) function0, function3, i2, 2);
        }
    }

    public static final void b(Modifier modifier, AssetUiModel assetUiModel, boolean z, Composer composer, int i2) {
        AssetVideoUiModel assetVideoUiModel;
        String str;
        AssetImageUiModel assetImageUiModel;
        String str2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CategoryAsset");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1652902677);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.y(assetUiModel) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            if (assetUiModel != null && (assetImageUiModel = assetUiModel.f51780b) != null && (str2 = assetImageUiModel.f51778b) != null && StringExtKt.a(str2)) {
                gapComposerH.L(-176149139);
                ContentScale.f9447a.getClass();
                ContentScale$Companion$Crop$1 contentScale$Companion$Crop$1 = ContentScale.Companion.f9449b;
                Modifier modifierO = new DTFunctionNameModifier("CategoryAsset").o(SizeKt.f5052c);
                String str3 = assetImageUiModel.f51778b;
                str3.getClass();
                ImageLoaderKt.b(modifierO, str3, contentScale$Companion$Crop$1, null, Integer.valueOf(R.drawable.placeholder_transparent), R.drawable.placeholder_transparent, false, null, null, null, gapComposerH, 390, 1992);
                gapComposerH.Z(false);
            } else if (assetUiModel == null || (assetVideoUiModel = assetUiModel.f51781c) == null || (str = assetVideoUiModel.f51783c) == null || !StringExtKt.a(str)) {
                gapComposerH.L(-175174995);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-175747286);
                Object objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new LvExoPlayer(context).f50900a;
                    gapComposerH.q(objX);
                }
                ExoPlayer exoPlayer = (ExoPlayer) objX;
                String str4 = assetVideoUiModel.f51783c;
                String str5 = assetVideoUiModel.d;
                ContentScale.f9447a.getClass();
                LvVideoPlayerKt.b(modifier2, exoPlayer, str4, null, null, true, str5, ContentScale.Companion.f9449b, true, false, !z, false, null, false, 4, null, null, null, null, null, null, gapComposerH, (i3 & 14) | 918749184, 27648, 0, 2070552);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rg(modifier2, assetUiModel, z, i2, 2);
        }
    }

    public static final void c(Modifier modifier, final CategoryUiModel categoryUiModel, final float f2, final Function0 function0, Composer composer, final int i2) {
        long jB;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "CategoryItem");
        }
        GapComposer gapComposerH = composer.h(-838454806);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(categoryUiModel) ? 32 : 16) | (gapComposerH.c(f2) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState = (MutableState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new CatalogCategoryScreenKt$CategoryItem$1$1(mutableInteractionSource, mutableState, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, mutableInteractionSource, (Function2) objX3);
            if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                gapComposerH.L(1123592474);
                jB = Color.b(0.5f, LVAppDesignKitTheme.c(gapComposerH).f48361b.m);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1123691085);
                jB = LVAppDesignKitTheme.c(gapComposerH).f48361b.m;
                gapComposerH.Z(false);
            }
            State stateB = SingleValueAnimationKt.b(jB, null, "categoryPressColor", gapComposerH, KyberEngine.KyberPolyBytes, 10);
            Modifier modifierA = AlphaKt.a(modifierE, f2);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
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
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, rowMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            Modifier modifierA2 = ClipKt.a(cj.b("CategoryItem", RowScopeInstance.f5040a, 1.0f, false), LVAppDesignKitTheme.j(gapComposerH).f48411c);
            boolean z = (i3 & 7168) == 2048;
            Object objX4 = gapComposerH.x();
            if (z || objX4 == composer$Companion$Empty$1) {
                objX4 = new h1(function0, 21);
                gapComposerH.q(objX4);
            }
            Modifier modifierC2 = ModifierExtKt.c(modifierA2, false, mutableInteractionSource, null, (Function0) objX4, 19);
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, modifierC2);
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
            Updater.c(gapComposerH, measurePolicyD, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC3, function6);
            String str = categoryUiModel.f55364b;
            TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48425e;
            long j2 = ((Color) stateB.getF10755b()).f8872a;
            TextOverflow.f10989a.getClass();
            ResizableTextKt.a(str, ModifierExtKt.e(SizeKt.x(new DTFunctionNameModifier("CategoryItem"), null, 3), "shop_category_text"), j2, TextOverflow.f10991c, 2, 0, textStyle, null, gapComposerH, 27648, 160);
            gapComposerH = gapComposerH;
            gapComposerH.Z(true);
            CategoryTagUiModel categoryTagUiModel = categoryUiModel.d;
            if (categoryTagUiModel == null) {
                gapComposerH.L(1451693961);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1451693962);
                Modifier modifierE2 = ModifierExtKt.e(PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48414b, LVAppDesignKitTheme.l(gapComposerH).f48413a, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12), "shop_categoryTag_text");
                String upperCase = categoryTagUiModel.f55362a.toUpperCase(Locale.ROOT);
                upperCase.getClass();
                TextKt.c(upperCase, modifierE2, LVAppDesignKitTheme.c(gapComposerH).f48361b.v, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).p, gapComposerH, 0, 0, 131064);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier2 = modifierE;
            recomposeScopeImplB0.d = new Function2(categoryUiModel, f2, function0, i2) { // from class: wj

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ CategoryUiModel f80885c;
                public final /* synthetic */ float d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function0 f80886e;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    CatalogCategoryScreenKt.c(this.f80884b, this.f80885c, this.d, this.f80886e, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
