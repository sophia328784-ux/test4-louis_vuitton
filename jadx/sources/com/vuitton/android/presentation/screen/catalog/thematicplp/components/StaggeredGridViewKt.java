package com.vuitton.android.presentation.screen.catalog.thematicplp.components;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.grid.GridCells;
import androidx.compose.foundation.lazy.grid.LazyGridDslKt;
import androidx.compose.foundation.lazy.grid.LazyGridItemScope;
import androidx.compose.foundation.lazy.grid.LazyGridScope;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.ComposableSingletons$StaggeredGridViewKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.CurrentThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeItemUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeUiModel;
import defpackage.nr0;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StaggeredGridViewKt {
    public static final void a(Modifier modifier, LazyGridState lazyGridState, final CurrentThemeUiModel currentThemeUiModel, final ThemeUiModel themeUiModel, final float f2, float f3, final float f4, final float f5, boolean z, final boolean z2, final Function2 function2, final Function2 function3, final Function2 function4, Composer composer, int i2, int i3) {
        int i4;
        GapComposer gapComposer;
        final Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "StaggeredGridView-xYaah8o");
        }
        Modifier modifier3 = modifierE;
        lazyGridState.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(-1865998690);
        int i5 = i2 | (gapComposerH.K(modifier3) ? 4 : 2) | (gapComposerH.K(lazyGridState) ? 32 : 16) | (gapComposerH.y(currentThemeUiModel) ? 256 : 128) | (gapComposerH.K(themeUiModel) ? 2048 : 1024) | (gapComposerH.c(f2) ? 16384 : 8192) | (gapComposerH.c(f3) ? 131072 : 65536) | (gapComposerH.c(f4) ? 1048576 : 524288) | (gapComposerH.c(f5) ? 8388608 : 4194304) | (gapComposerH.b(z) ? 67108864 : 33554432) | (gapComposerH.b(z2) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if ((i3 & 6) == 0) {
            i4 = i3 | (gapComposerH.y(function2) ? 4 : 2);
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.y(function3) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(function4) ? 256 : 128;
        }
        int i6 = i4;
        if (gapComposerH.p(i5 & 1, ((i5 & 306783379) == 306783378 && (i6 & 147) == 146) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            String str = currentThemeUiModel.f55426a;
            boolean z3 = (i5 & 112) == 32;
            Object objX = gapComposerH.x();
            boolean z4 = z3;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z4 || objX == composer$Companion$Empty$1) {
                objX = new StaggeredGridViewKt$StaggeredGridView$1$1(lazyGridState, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, str, (Function2) objX);
            modifier2 = modifier3;
            Modifier modifierA = AlphaKt.a(PaddingKt.m(PaddingKt.k(modifier3.o(SizeKt.f5052c), LVAppDesignKitTheme.l(gapComposerH).f48415c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48415c, 7), f2);
            GridCells.Fixed fixed = new GridCells.Fixed(2);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48415c);
            float f6 = LVAppDesignKitTheme.l(gapComposerH).f48416e + f3;
            Dp.Companion companion = Dp.f11004c;
            PaddingValuesImpl paddingValuesImplE = PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, density.l1(f4) + f6, 7);
            boolean zY = ((i6 & 896) == 256) | gapComposerH.y(currentThemeUiModel) | ((i5 & 14) == 4) | ((i5 & 7168) == 2048) | ((57344 & i5) == 16384) | ((1879048192 & i5) == 536870912) | ((i6 & 112) == 32) | ((i6 & 14) == 4) | ((3670016 & i5) == 1048576) | ((29360128 & i5) == 8388608);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                Function1 function1 = new Function1() { // from class: f11
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        LazyGridScope lazyGridScope = (LazyGridScope) obj;
                        lazyGridScope.getClass();
                        CurrentThemeUiModel currentThemeUiModel2 = currentThemeUiModel;
                        final List list = currentThemeUiModel2.f55428c;
                        CollectionsKt.F(list);
                        l01 l01Var = new l01(6);
                        Modifier modifier4 = modifier2;
                        ThemeUiModel themeUiModel2 = themeUiModel;
                        LazyGridScope.c(lazyGridScope, null, l01Var, new ComposableLambdaImpl(1270701650, true, new ni0(modifier4, themeUiModel2, 26)), 5);
                        int size = list.size();
                        Function1<Integer, Object> function5 = new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.catalog.thematicplp.components.StaggeredGridViewKt$StaggeredGridView_xYaah8o$lambda$2$0$$inlined$itemsIndexed$default$3
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                list.get(((Number) obj2).intValue());
                                return null;
                            }
                        };
                        final float f7 = f2;
                        final boolean z5 = z2;
                        final Function2 function6 = function3;
                        final Function2 function7 = function2;
                        final Function2 function8 = function4;
                        lazyGridScope.d(size, function5, new ComposableLambdaImpl(-1942245546, true, new Function4<LazyGridItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.catalog.thematicplp.components.StaggeredGridViewKt$StaggeredGridView_xYaah8o$lambda$2$0$$inlined$itemsIndexed$default$4
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj2, Object obj3, Object obj4, Object obj5) {
                                int i7;
                                LazyGridItemScope lazyGridItemScope = (LazyGridItemScope) obj2;
                                int iIntValue = ((Number) obj3).intValue();
                                Composer composer2 = (Composer) obj4;
                                int iIntValue2 = ((Number) obj5).intValue();
                                if ((iIntValue2 & 6) == 0) {
                                    i7 = (composer2.K(lazyGridItemScope) ? 4 : 2) | iIntValue2;
                                } else {
                                    i7 = iIntValue2;
                                }
                                if ((iIntValue2 & 48) == 0) {
                                    i7 |= composer2.d(iIntValue) ? 32 : 16;
                                }
                                if (composer2.p(i7 & 1, (i7 & 147) != 146)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    ThemeItemUiModel themeItemUiModel = (ThemeItemUiModel) list.get(iIntValue);
                                    composer2.L(620248925);
                                    StaggeredGridItemKt.c(ModifierExtKt.e(com.vuitton.android.designkit.components.ModifierExtKt.b(Modifier.Companion.f8607b, iIntValue % 2 != 0, StaggeredGridViewKt$StaggeredGridView$3$1$3$1.f55401b, composer2, 6), "thematicPlp_staggeredItem_" + iIntValue), themeItemUiModel, f7, z5, function6, function7, function8, composer2, 0);
                                    composer2.F();
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }));
                        if ((list.size() - 1) % 2 != 0) {
                            ComposableSingletons$StaggeredGridViewKt.f55385a.getClass();
                            LazyGridScope.c(lazyGridScope, null, null, ComposableSingletons$StaggeredGridViewKt.f55386b, 7);
                        }
                        LazyGridScope.c(lazyGridScope, null, new l01(7), new ComposableLambdaImpl(-776144311, true, new or0(currentThemeUiModel2, themeUiModel2, f4, f5, 1)), 5);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(function1);
                objX2 = function1;
            }
            gapComposer = gapComposerH;
            LazyGridDslKt.b(fixed, modifierA, lazyGridState, paddingValuesImplE, spacedAlignedF, spacedAlignedF2, null, z, null, (Function1) objX2, gapComposer, ((i5 << 3) & 896) | (i5 & 234881024), 656);
        } else {
            gapComposer = gapComposerH;
            modifier2 = modifier3;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new nr0(modifier2, lazyGridState, currentThemeUiModel, themeUiModel, f2, f3, f4, f5, z, z2, function2, function3, function4, i2, i3, 1);
        }
    }
}
