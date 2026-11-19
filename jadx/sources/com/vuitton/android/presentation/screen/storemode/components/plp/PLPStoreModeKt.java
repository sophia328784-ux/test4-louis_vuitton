package com.vuitton.android.presentation.screen.storemode.components.plp;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.paging.LoadState;
import androidx.paging.compose.LazyPagingItems;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSegmentedControlKt;
import com.vuitton.android.designkit.ui.theme.molecules.SegmentedControlState;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ComposableSingletons$PLPItemsKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPItemsKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPSkeletonKt;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeContentUiModel;
import defpackage.a;
import defpackage.v5;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003¨\u0006\u0003²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/unit/Dp;", "headerHeight", "availableHeight", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPStoreModeKt {
    public static final void a(Modifier modifier, final LazyPagingItems lazyPagingItems, boolean z, final Function1 function1, final Function1 function2, final Function1 function3, final Function1 function4, final Function2 function5, Composer composer, int i2, int i3) {
        boolean z2;
        int i4;
        Modifier modifier2;
        GapComposer gapComposer;
        boolean z3;
        int i5;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "PLPStoreMode");
        }
        Modifier modifier3 = modifierE;
        lazyPagingItems.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(1501242954);
        int i6 = (gapComposerH.K(modifier3) ? 4 : 2) | i2 | (gapComposerH.y(lazyPagingItems) ? 32 : 16);
        int i7 = i3 & 4;
        if (i7 != 0) {
            i4 = i6 | KyberEngine.KyberPolyBytes;
            z2 = z;
        } else {
            z2 = z;
            i4 = i6 | (gapComposerH.b(z2) ? 256 : 128);
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        int i8 = i4 | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304);
        if (gapComposerH.p(i8 & 1, (i8 & 4793491) != 4793490)) {
            boolean z4 = i7 != 0 ? true : z2;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            final float f2 = LVAppDesignKitTheme.l(gapComposerH).f48418h;
            gapComposerH.L(-414511734);
            EnumEntries enumEntriesB = StoreModeContentUiModel.b();
            ArrayList arrayList = new ArrayList(CollectionsKt.t(enumEntriesB, 10));
            Iterator<E> it = enumEntriesB.iterator();
            while (it.hasNext()) {
                arrayList.add(StringResources_androidKt.c(gapComposerH, ((StoreModeContentUiModel) it.next()).getLabel()));
            }
            gapComposerH.Z(false);
            EnumEntries enumEntriesB2 = StoreModeContentUiModel.b();
            StoreModeContentUiModel.INSTANCE.getClass();
            final SegmentedControlState segmentedControlStateC = LVSegmentedControlKt.c(enumEntriesB2.indexOf(StoreModeContentUiModel.initialValue), gapComposerH, arrayList);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                gapComposerH.q(objX);
            }
            final MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                gapComposerH.q(objX2);
            }
            final MutableState mutableState2 = (MutableState) objX2;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48418h);
            boolean zK = ((i8 & 57344) == 16384) | gapComposerH.K(segmentedControlStateC) | gapComposerH.c(f2) | gapComposerH.K(density) | ((i8 & 112) == 32 || gapComposerH.y(lazyPagingItems)) | ((i8 & 896) == 256) | ((i8 & 7168) == 2048) | ((458752 & i8) == 131072) | ((3670016 & i8) == 1048576) | ((29360128 & i8) == 8388608);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                i5 = i8;
                final boolean z5 = z4;
                Function1 function6 = new Function1() { // from class: jl0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        LazyListScope lazyListScope = (LazyListScope) obj;
                        lazyListScope.getClass();
                        Function1 function7 = function2;
                        SegmentedControlState segmentedControlState = segmentedControlStateC;
                        rh0 rh0Var = new rh0(function7, segmentedControlState, 23);
                        Density density2 = density;
                        MutableState mutableState3 = mutableState;
                        j1 j1Var = new j1(density2, mutableState3, 3);
                        segmentedControlState.getClass();
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(1706436155, true, new tk(f2, j1Var, segmentedControlState, rh0Var, 3)), 3);
                        LazyPagingItems lazyPagingItems2 = lazyPagingItems;
                        if ((lazyPagingItems2.d().f18562a instanceof LoadState.Error) || ((lazyPagingItems2.d().f18564c instanceof LoadState.Error) && lazyPagingItems2.b() == 0)) {
                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1689706375, true, new td(((Dp) mutableState2.getF10755b()).f11006b - ((Dp) mutableState3.getF10755b()).f11006b, 5)), 3);
                        } else if (((lazyPagingItems2.d().f18562a instanceof LoadState.Loading) || ((lazyPagingItems2.d().f18564c instanceof LoadState.Loading) && lazyPagingItems2.b() == 0)) && z5) {
                            PLPSkeletonKt.d(lazyListScope, GridModes.Full.f55430b);
                        } else {
                            Function1 function8 = function1;
                            if (function8 == null || lazyPagingItems2.b() != 0) {
                                PLPItemsKt.d(lazyListScope, GridModes.Full.f55430b, lazyPagingItems2, function3, new aj0(9), function4, function5, new fj0(22));
                                if (lazyPagingItems2.d().f18564c instanceof LoadState.Loading) {
                                    ComposableSingletons$PLPItemsKt.f62810a.getClass();
                                    LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPItemsKt.f62811b, 3);
                                }
                            } else {
                                function8.invoke(lazyListScope);
                            }
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(function6);
                objX3 = function6;
            } else {
                i5 = i8;
            }
            modifier2 = modifier3;
            gapComposer = gapComposerH;
            LazyDslKt.a(modifier2, null, null, spacedAlignedF, null, null, false, null, (Function1) objX3, gapComposer, i5 & 14, 494);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            z3 = z4;
        } else {
            modifier2 = modifier3;
            gapComposer = gapComposerH;
            gapComposer.D();
            z3 = z2;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v5(modifier2, lazyPagingItems, z3, function1, function2, function3, function4, function5, i2, i3);
        }
    }
}
