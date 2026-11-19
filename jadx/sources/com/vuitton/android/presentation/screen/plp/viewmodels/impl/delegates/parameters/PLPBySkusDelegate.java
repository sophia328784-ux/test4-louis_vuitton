package com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters;

import com.vuitton.android.domain.usecase.plp.GetSkusPLPUseCase;
import com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core.PLPCoreDelegate;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.bouncycastle.pqc.crypto.newhope.NewHope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B]\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySkusDelegate;", "", "", "isPlpV3GridViewEnabled", "isAiCompanionEnabled", "Lkotlinx/coroutines/CoroutineScope;", "scope", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "skus", "shouldDisplayPrice", "Lcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;", "getSkusPLP", "Lkotlin/Function1;", "Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;", "", "sendTrackingHit", "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;", "isProductInWishlist", "<init>", "(ZZLkotlinx/coroutines/CoroutineScope;Ljava/util/List;ZLcom/vuitton/android/domain/usecase/plp/GetSkusPLPUseCase;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PLPBySkusDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableStateFlow f63226a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PLPCoreDelegate f63227b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateFlow f63228c;

    public PLPBySkusDelegate(boolean z, boolean z2, CoroutineScope coroutineScope, List<SkuIdUiModel> list, boolean z3, GetSkusPLPUseCase getSkusPLPUseCase, Function1<? super PLPTrackingUiModel, Unit> function1, IsProductInWishlistUseCase isProductInWishlistUseCase) {
        coroutineScope.getClass();
        list.getClass();
        getSkusPLPUseCase.getClass();
        function1.getClass();
        isProductInWishlistUseCase.getClass();
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(list);
        this.f63226a = mutableStateFlowA;
        PLPCoreDelegate pLPCoreDelegate = new PLPCoreDelegate(Integer.MAX_VALUE, mutableStateFlowA, z3, new PLPBySkusDelegate$coreDelegate$1(getSkusPLPUseCase, function1, null), coroutineScope, null, z, z2, false, null, null, isProductInWishlistUseCase, NewHope.SENDA_BYTES, null);
        this.f63227b = pLPCoreDelegate;
        this.f63228c = pLPCoreDelegate.p;
    }

    public /* synthetic */ PLPBySkusDelegate(boolean z, boolean z2, CoroutineScope coroutineScope, List list, boolean z3, GetSkusPLPUseCase getSkusPLPUseCase, Function1 function1, IsProductInWishlistUseCase isProductInWishlistUseCase, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, coroutineScope, list, z3, getSkusPLPUseCase, function1, isProductInWishlistUseCase);
    }
}
