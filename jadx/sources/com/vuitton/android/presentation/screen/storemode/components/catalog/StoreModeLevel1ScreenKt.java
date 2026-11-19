package com.vuitton.android.presentation.screen.storemode.components.catalog;

import androidx.activity.compose.BackHandlerKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.DividerKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
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
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.IconSize;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.screen.storemode.StoreModeCatalogState;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.components.catalog.ComposableSingletons$StoreModeLevel1ScreenKt;
import com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel1ScreenKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeCatalogUiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeCategoryL1UiModel;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeViewState;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistSummaryUiModel;
import defpackage.kj0;
import defpackage.p1;
import defpackage.sq0;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/StoreModeCatalogState;", "storeModeCatalog", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class StoreModeLevel1ScreenKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f64871a;

    static {
        Dp.Companion companion = Dp.f11004c;
        f64871a = 200.0f;
    }

    public static final void a(final StoreModeCatalogUiModel storeModeCatalogUiModel, final WishlistSummaryUiModel wishlistSummaryUiModel, Function1 function1, Function0 function0, final Function0 function2, final boolean z, Composer composer, int i2) {
        Function1 function3;
        Function0 function4;
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-279384292);
        int i3 = (gapComposerH.y(storeModeCatalogUiModel) ? 4 : 2) | i2 | (gapComposerH.K(wishlistSummaryUiModel) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            function3 = function1;
            i3 |= gapComposerH.y(function3) ? 256 : 128;
        } else {
            function3 = function1;
        }
        if ((i2 & 3072) == 0) {
            function4 = function0;
            i3 |= gapComposerH.y(function4) ? 2048 : 1024;
        } else {
            function4 = function0;
        }
        int i4 = i3 | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.b(z) ? 131072 : 65536);
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            boolean z2 = wishlistSummaryUiModel.f65745a > 0;
            boolean zB = ((i4 & 112) == 32) | ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((57344 & i4) == 16384) | gapComposerH.b(z2) | ((i4 & 7168) == 2048) | gapComposerH.y(storeModeCatalogUiModel) | ((i4 & 896) == 256);
            Object objX = gapComposerH.x();
            if (zB || objX == Composer.Companion.f7939a) {
                final Function1 function5 = function3;
                final Function0 function6 = function4;
                final boolean z3 = z2;
                Function1 function7 = new Function1() { // from class: q11
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        LazyListScope lazyListScope = (LazyListScope) obj;
                        float f2 = StoreModeLevel1ScreenKt.f64871a;
                        lazyListScope.getClass();
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(1439730993, true, new f6(z, function2, 2)), 3);
                        final boolean z4 = z3;
                        if (z4) {
                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(2061544524, true, new ni0(function6, wishlistSummaryUiModel, 27)), 3);
                        }
                        final StoreModeCatalogUiModel storeModeCatalogUiModel2 = storeModeCatalogUiModel;
                        final List list = storeModeCatalogUiModel2.f65041b;
                        int size = list.size();
                        Function1<Integer, Object> function8 = new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel1ScreenKt$StoreModeLevel1Content$lambda$0$0$$inlined$itemsIndexed$default$2
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                list.get(((Number) obj2).intValue());
                                return null;
                            }
                        };
                        final Function1 function9 = function5;
                        lazyListScope.h(size, null, function8, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel1ScreenKt$StoreModeLevel1Content$lambda$0$0$$inlined$itemsIndexed$default$3
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj2, Object obj3, Object obj4, Object obj5) {
                                int i5;
                                LazyItemScope lazyItemScope = (LazyItemScope) obj2;
                                int iIntValue = ((Number) obj3).intValue();
                                Composer composer2 = (Composer) obj4;
                                int iIntValue2 = ((Number) obj5).intValue();
                                if ((iIntValue2 & 6) == 0) {
                                    i5 = (composer2.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                                } else {
                                    i5 = iIntValue2;
                                }
                                if ((iIntValue2 & 48) == 0) {
                                    i5 |= composer2.d(iIntValue) ? 32 : 16;
                                }
                                if (composer2.p(i5 & 1, (i5 & 147) != 146)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    final StoreModeCategoryL1UiModel storeModeCategoryL1UiModel = (StoreModeCategoryL1UiModel) list.get(iIntValue);
                                    composer2.L(-875823907);
                                    final Function1 function10 = function9;
                                    boolean zK = composer2.K(function10) | composer2.y(storeModeCategoryL1UiModel);
                                    Object objX2 = composer2.x();
                                    if (zK || objX2 == Composer.Companion.f7939a) {
                                        objX2 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.screen.storemode.components.catalog.StoreModeLevel1ScreenKt$StoreModeLevel1Content$1$1$3$1$1
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                function10.invoke(storeModeCategoryL1UiModel);
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer2.q(objX2);
                                    }
                                    Modifier.Companion companion = Modifier.Companion.f8607b;
                                    CatalogRowKt.a(0, composer2, ClickableKt.d(companion, false, null, null, (Function0) objX2, 15), storeModeCategoryL1UiModel.f65043b);
                                    if (iIntValue < CollectionsKt.F(storeModeCatalogUiModel2.f65041b)) {
                                        composer2.L(-875627399);
                                        DividerKt.a(PaddingKt.k(companion, LVAppDesignKitTheme.l(composer2).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.d(composer2).f48385c, LVAppDesignKitTheme.c(composer2).f48361b.q, composer2, 0, 0);
                                        composer2.F();
                                    } else if (z4) {
                                        composer2.L(-875276138);
                                        SpacerKt.a(composer2, SizeKt.o(companion, LVAppDesignKitTheme.l(composer2).f48415c));
                                        composer2.F();
                                    } else {
                                        composer2.L(-875177155);
                                        composer2.F();
                                    }
                                    composer2.F();
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }));
                        if (!z4) {
                            ComposableSingletons$StoreModeLevel1ScreenKt.f64865a.getClass();
                            LazyListScope.f(lazyListScope, null, ComposableSingletons$StoreModeLevel1ScreenKt.f64866b, 3);
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(function7);
                objX = function7;
            }
            gapComposer = gapComposerH;
            LazyDslKt.a(null, lazyListStateA, null, null, null, null, false, null, (Function1) objX, gapComposer, 0, 509);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p1(storeModeCatalogUiModel, wishlistSummaryUiModel, function1, function0, function2, z, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:66:0x0232  */
    /* JADX WARN: Code duplicated, block: B:67:0x0234  */
    /* JADX WARN: Code duplicated, block: B:74:0x0248  */
    public static final void b(StoreModeViewModel storeModeViewModel, StoreModeViewState storeModeViewState, Function0 function0, Function1 function1, Function0 function2, Composer composer, int i2) {
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean z;
        boolean z2;
        boolean z3;
        boolean zY;
        Object objX;
        storeModeViewModel.getClass();
        storeModeViewState.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(-2102898519);
        int i3 = i2 | (gapComposerH.K(storeModeViewModel) ? 4 : 2) | (gapComposerH.y(storeModeViewState) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192);
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(storeModeViewModel.d8(), gapComposerH);
            StoreModeCatalogState storeModeCatalogState = (StoreModeCatalogState) mutableStateB.getF10755b();
            StoreModeCatalogState.StoreModeCatalogUIModel storeModeCatalogUIModel = storeModeCatalogState instanceof StoreModeCatalogState.StoreModeCatalogUIModel ? (StoreModeCatalogState.StoreModeCatalogUIModel) storeModeCatalogState : null;
            StoreModeCatalogUiModel storeModeCatalogUiModel = storeModeCatalogUIModel != null ? storeModeCatalogUIModel.f64772a : null;
            boolean z4 = (((StoreModeCatalogState) mutableStateB.getF10755b()) instanceof StoreModeCatalogState.Loading) || storeModeViewState.d;
            int i4 = 57344 & i3;
            boolean z5 = i4 == 16384;
            Object objX2 = gapComposerH.x();
            boolean z6 = z4;
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z5 || objX2 == composer$Companion$Empty$2) {
                objX2 = new sq0(function2, 22);
                gapComposerH.q(objX2);
            }
            BackHandlerKt.a(false, (Function0) objX2, gapComposerH, 0, 1);
            if (z6) {
                gapComposerH.L(2044137687);
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                ProgressViewKt.a(null, 0L, false, gapComposerH, 0, 7);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (storeModeCatalogUiModel != null) {
                    gapComposerH.L(-1056188038);
                    a(storeModeCatalogUiModel, storeModeViewState.f65085f, function1, function0, function2, storeModeViewState.f65088j, gapComposerH, i4 | ((i3 >> 3) & 896) | ((i3 << 3) & 7168));
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-1055754038);
                    Modifier modifierD = tr.d("StoreModeLevel1Screen", 1.0f);
                    float f2 = f64871a + LVAppDesignKitTheme.l(gapComposerH).f48420j;
                    Dp.Companion companion = Dp.f11004c;
                    Modifier modifierM = PaddingKt.m(modifierD, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 7);
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4921e, Alignment.Companion.o, gapComposerH, 54);
                    int iHashCode = Long.hashCode(gapComposerH.T);
                    PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                    Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierM);
                    ComposeUiNode.b0.getClass();
                    Function0 function3 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function3);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(gapComposerH).N0, gapComposerH, 0), null, SizeKt.o(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "StoreModeLevel1Screen"), IconSize.f48350e), 0L, gapComposerH, 56, 8);
                    Modifier modifierM2 = PaddingKt.m(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
                    String strC = StringResources_androidKt.c(gapComposerH, R.string.mylv_error_ws_generic_label_title);
                    TextStyle textStyle = LVAppDesignKitTheme.n(gapComposerH).f48425e;
                    TextAlign.f10959b.getClass();
                    z = true;
                    z2 = false;
                    TextKt.c(strC, modifierM2, 0L, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, gapComposerH, 0, 0, 130044);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(true);
                    gapComposerH.Z(false);
                }
                Unit unit = Unit.f71739a;
                if ((i3 & 14) != 4) {
                    z3 = z2;
                } else {
                    z3 = z;
                }
                zY = gapComposerH.y(storeModeViewState) | z3;
                objX = gapComposerH.x();
                if (zY || objX == composer$Companion$Empty$1) {
                    objX = new StoreModeLevel1ScreenKt$StoreModeLevel1Screen$3$1(storeModeViewModel, storeModeViewState, null);
                    gapComposerH.q(objX);
                }
                EffectsKt.e(gapComposerH, unit, (Function2) objX);
            }
            z = true;
            z2 = false;
            Unit unit2 = Unit.f71739a;
            if ((i3 & 14) != 4) {
                z3 = z2;
            } else {
                z3 = z;
            }
            zY = gapComposerH.y(storeModeViewState) | z3;
            objX = gapComposerH.x();
            if (zY) {
                objX = new StoreModeLevel1ScreenKt$StoreModeLevel1Screen$3$1(storeModeViewModel, storeModeViewState, null);
                gapComposerH.q(objX);
            } else {
                objX = new StoreModeLevel1ScreenKt$StoreModeLevel1Screen$3$1(storeModeViewModel, storeModeViewState, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, unit2, (Function2) objX);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kj0((Object) storeModeViewModel, (Object) storeModeViewState, function0, function1, function2, i2, 24);
        }
    }
}
