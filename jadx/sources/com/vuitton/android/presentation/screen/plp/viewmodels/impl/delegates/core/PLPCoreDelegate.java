package com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core;

import androidx.paging.CachedPagingDataKt;
import com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.filter.quickaccess.FilterCommand;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PLPViewState;
import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002BÑ\u0001\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012L\u0010\u0011\u001aH\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\r\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f0\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00020\t\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u0012\u0012\b\u0002\u0010\u001d\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001c\u0018\u00010\u001b\u0012\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!¨\u0006\""}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;", "Param", "", "", "pageSize", "Lkotlinx/coroutines/flow/Flow;", "currentParameter", "", "shouldDisplayPrice", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "param", "pageIndex", "Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "requestPage", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;", "qafSource", "isPlpV3GridViewEnabled", "isAiCompanionEnabled", "isVatIncluded", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;", "filterCommand", "Lkotlin/Function0;", "", "fallbackFiltersId", "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;", "isProductInWishlist", "<init>", "(ILkotlinx/coroutines/flow/Flow;ZLkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QafSource;ZZZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PLPCoreDelegate<Param> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineScope f63169a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QafSource f63170b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f63171c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f63172e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FilterCommand f63173f;
    public final Function0 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final IsProductInWishlistUseCase f63174h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinkedHashMap f63175i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LinkedHashMap f63176j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final MutableStateFlow f63177k;
    public final MutableStateFlow l;
    public final MutableStateFlow m;
    public final Flow n;
    public final MutableStateFlow o;
    public final StateFlow p;
    public final StateFlow q;

    public PLPCoreDelegate(int i2, Flow<? extends Param> flow, boolean z, Function3<? super Param, ? super Integer, ? super Continuation<? super Result<PlpPagination>>, ? extends Object> function3, CoroutineScope coroutineScope, QafSource qafSource, boolean z2, boolean z3, boolean z4, FilterCommand filterCommand, Function0<String> function0, IsProductInWishlistUseCase isProductInWishlistUseCase) {
        flow.getClass();
        function3.getClass();
        coroutineScope.getClass();
        isProductInWishlistUseCase.getClass();
        this.f63169a = coroutineScope;
        this.f63170b = qafSource;
        this.f63171c = z2;
        this.d = z3;
        this.f63172e = z4;
        this.f63173f = filterCommand;
        this.g = function0;
        this.f63174h = isProductInWishlistUseCase;
        this.f63175i = new LinkedHashMap();
        this.f63176j = new LinkedHashMap();
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(GridModes.Full.f55430b);
        this.f63177k = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(Boolean.FALSE);
        this.l = mutableStateFlowA2;
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(null);
        this.m = mutableStateFlowA3;
        Flow flowA = CachedPagingDataKt.a(FlowKt.B(new FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1(flow), new PLPCoreDelegate$special$$inlined$flatMapLatest$1(null, i2, function3, this, z)), coroutineScope);
        this.n = flowA;
        MutableStateFlow mutableStateFlowA4 = StateFlowKt.a(null);
        this.o = mutableStateFlowA4;
        FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3 flowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3 = new FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3(new Flow[]{flowA, mutableStateFlowA4, mutableStateFlowA, mutableStateFlowA2, mutableStateFlowA3}, new PLPCoreDelegate$viewState$1(this, null));
        SharingStarted.f74985a.getClass();
        this.p = FlowKt.A(flowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$3, coroutineScope, SharingStarted.Companion.f74988c, new PLPViewState(null, null, null, z2, z3, 0, null, false, null, null, null, 2023, null));
        this.q = FlowKt.b(mutableStateFlowA4);
    }

    public static void a(PlpProductUiModel plpProductUiModel, boolean z) {
        plpProductUiModel.getClass();
        plpProductUiModel.g.setValue(Boolean.valueOf(z));
    }

    public final void b(GridModes gridModes) {
        gridModes.getClass();
        this.f63177k.setValue(gridModes);
        BuildersKt.c(this.f63169a, null, null, new PLPCoreDelegate$triggerChangeGridVocalization$1(this, null), 3);
    }

    public /* synthetic */ PLPCoreDelegate(int i2, Flow flow, boolean z, Function3 function3, CoroutineScope coroutineScope, QafSource qafSource, boolean z2, boolean z3, boolean z4, FilterCommand filterCommand, Function0 function0, IsProductInWishlistUseCase isProductInWishlistUseCase, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 6 : i2, flow, z, function3, coroutineScope, (i3 & 32) != 0 ? null : qafSource, (i3 & 64) != 0 ? false : z2, (i3 & 128) != 0 ? false : z3, (i3 & 256) != 0 ? false : z4, (i3 & 512) != 0 ? null : filterCommand, (i3 & 1024) != 0 ? null : function0, isProductInWishlistUseCase);
    }
}
