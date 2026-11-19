package com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters;

import com.batch.android.s.b;
import com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase;
import com.vuitton.android.presentation.screen.filter.model.FilterParams;
import com.vuitton.android.presentation.screen.filter.quickaccess.FilterCommand;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core.PLPCoreDelegate;
import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import defpackage.rh0;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012L\u0010\u0018\u001aH\b\u0001\u0012\u0013\u0012\u00110\u000f¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0012\u0012\u0013\u0012\u00110\u0013¢\u0006\f\b\u0010\u0012\b\b\u0011\u0012\u0004\b\b(\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00170\u00160\u0015\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u000e¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPByCategoryDelegate;", "", "", "isPlpV3GridViewEnabled", "isAiCompanionEnabled", "", "initialKey", "Lkotlinx/coroutines/CoroutineScope;", "scope", "shouldDisplayPrice", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;", "filterCommand", "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;", "isProductInWishlist", "Lkotlin/Function3;", "Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;", "Lkotlin/ParameterName;", "name", b.a.f24015b, "", "pageIndex", "Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "requestPage", "<init>", "(ZZLjava/lang/String;Lkotlinx/coroutines/CoroutineScope;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;Lkotlin/jvm/functions/Function3;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PLPByCategoryDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableStateFlow f63203a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableStateFlow f63204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PLPCoreDelegate f63205c;
    public final StateFlow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StateFlow f63206e;

    public PLPByCategoryDelegate(boolean z, boolean z2, String str, CoroutineScope coroutineScope, boolean z3, FilterCommand filterCommand, IsProductInWishlistUseCase isProductInWishlistUseCase, Function3<? super FilterParams, ? super Integer, ? super Continuation<? super Result<PlpPagination>>, ? extends Object> function3) {
        str.getClass();
        coroutineScope.getClass();
        filterCommand.getClass();
        isProductInWishlistUseCase.getClass();
        function3.getClass();
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(new FilterParams(str, null, null, null, null, 28, null));
        this.f63203a = mutableStateFlowA;
        this.f63204b = StateFlowKt.a(null);
        PLPCoreDelegate pLPCoreDelegate = new PLPCoreDelegate(0, mutableStateFlowA, z3, function3, coroutineScope, QafSource.PLP, z, z2, false, filterCommand, new rh0(this, str, 14), isProductInWishlistUseCase, 257, null);
        this.f63205c = pLPCoreDelegate;
        this.d = FlowKt.b(mutableStateFlowA);
        this.f63206e = pLPCoreDelegate.p;
    }

    public /* synthetic */ PLPByCategoryDelegate(boolean z, boolean z2, String str, CoroutineScope coroutineScope, boolean z3, FilterCommand filterCommand, IsProductInWishlistUseCase isProductInWishlistUseCase, Function3 function3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, str, coroutineScope, z3, filterCommand, isProductInWishlistUseCase, function3);
    }
}
