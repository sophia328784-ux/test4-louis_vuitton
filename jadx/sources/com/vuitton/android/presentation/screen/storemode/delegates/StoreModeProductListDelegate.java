package com.vuitton.android.presentation.screen.storemode.delegates;

import com.batch.android.s.b;
import com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase;
import com.vuitton.android.presentation.screen.filter.model.FilterParams;
import com.vuitton.android.presentation.screen.filter.quickaccess.FilterCommand;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.core.PLPCoreDelegate;
import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012L\u0010\u0012\u001aH\b\u0001\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\r¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u000e\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00100\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\b\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0004¢\u0006\u0004\b\u0019\u0010\u001a¨\u0006\u001b"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeProductListDelegate;", "", "", "initialKey", "", "shouldDisplayPrice", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;", "filterCommand", "Lkotlin/Function3;", "Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;", "Lkotlin/ParameterName;", "name", b.a.f24015b, "", "pageIndex", "Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "requestPage", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;", "isProductInWishlist", "isPlpV3GridViewEnabled", "isAiCompanionEnabled", "<init>", "(Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;ZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StoreModeProductListDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineScope f64931a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableStateFlow f64932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PLPCoreDelegate f64933c;
    public final StateFlow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StateFlow f64934e;

    public StoreModeProductListDelegate(String str, boolean z, FilterCommand filterCommand, Function3<? super FilterParams, ? super Integer, ? super Continuation<? super Result<PlpPagination>>, ? extends Object> function3, CoroutineScope coroutineScope, IsProductInWishlistUseCase isProductInWishlistUseCase, boolean z2, boolean z3) {
        str.getClass();
        filterCommand.getClass();
        function3.getClass();
        coroutineScope.getClass();
        isProductInWishlistUseCase.getClass();
        this.f64931a = coroutineScope;
        final MutableStateFlow mutableStateFlowA = StateFlowKt.a(new FilterParams(str, null, null, null, null, 28, null));
        this.f64932b = mutableStateFlowA;
        PLPCoreDelegate pLPCoreDelegate = new PLPCoreDelegate(0, mutableStateFlowA, z, function3, coroutineScope, null, z2, z3, false, filterCommand, null, isProductInWishlistUseCase, 1313, null);
        this.f64933c = pLPCoreDelegate;
        StoreModePLPFiltersDelegate storeModePLPFiltersDelegate = new StoreModePLPFiltersDelegate(QafSource.PLP, coroutineScope, new Flow<String>() { // from class: com.vuitton.android.presentation.screen.storemode.delegates.StoreModeProductListDelegate$special$$inlined$map$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.delegates.StoreModeProductListDelegate$special$$inlined$map$1$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f64936b;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.delegates.StoreModeProductListDelegate$special$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.delegates.StoreModeProductListDelegate$special$$inlined$map$1$2", f = "StoreModeProductListDelegate.kt", l = {217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f64937b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f64938c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f64937b = obj;
                        this.f64938c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f64936b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f64938c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f64938c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f64937b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f64938c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        String str = ((FilterParams) obj).f57985b;
                        anonymousClass1.f64938c = 1;
                        if (this.f64936b.emit(str, anonymousClass1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i3 != 1) {
                            md.k("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj2);
                    }
                    return Unit.f71739a;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                Object objF = mutableStateFlowA.f(new AnonymousClass2(flowCollector), continuation);
                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
            }
        }, str, filterCommand, new Flow<String>() { // from class: com.vuitton.android.presentation.screen.storemode.delegates.StoreModeProductListDelegate$special$$inlined$map$2

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.delegates.StoreModeProductListDelegate$special$$inlined$map$2$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f64940b;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.delegates.StoreModeProductListDelegate$special$$inlined$map$2$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.delegates.StoreModeProductListDelegate$special$$inlined$map$2$2", f = "StoreModeProductListDelegate.kt", l = {217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f64941b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f64942c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f64941b = obj;
                        this.f64942c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f64940b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f64942c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f64942c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f64941b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f64942c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        String str = ((FilterParams) obj).f57984a;
                        anonymousClass1.f64942c = 1;
                        if (this.f64940b.emit(str, anonymousClass1) == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    } else {
                        if (i3 != 1) {
                            md.k("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.b(obj2);
                    }
                    return Unit.f71739a;
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public final Object f(FlowCollector flowCollector, Continuation continuation) {
                Object objF = mutableStateFlowA.f(new AnonymousClass2(flowCollector), continuation);
                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
            }
        }, pLPCoreDelegate.q, StateFlowKt.a(null));
        this.d = pLPCoreDelegate.p;
        this.f64934e = storeModePLPFiltersDelegate.f64920a;
    }

    public /* synthetic */ StoreModeProductListDelegate(String str, boolean z, FilterCommand filterCommand, Function3 function3, CoroutineScope coroutineScope, IsProductInWishlistUseCase isProductInWishlistUseCase, boolean z2, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z, filterCommand, function3, coroutineScope, isProductInWishlistUseCase, (i2 & 64) != 0 ? false : z2, (i2 & 128) != 0 ? false : z3);
    }
}
