package com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters;

import com.vuitton.android.domain.usecase.wishlist.IsProductInWishlistUseCase;
import com.vuitton.android.presentation.screen.filter.model.SearchParams;
import com.vuitton.android.presentation.screen.filter.quickaccess.FilterCommand;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import com.vuitton.android.presentation.screen.plp.models.viewstates.PSPViewState;
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
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012L\u0010\u0016\u001aH\b\u0001\u0012\u0013\u0012\u00110\r¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0010\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u000e\u0012\b\b\u000f\u0012\u0004\b\b(\u0012\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u00140\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\f¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/parameters/PLPBySearchDelegate;", "", "Lkotlinx/coroutines/CoroutineScope;", "scope", "", "shouldDisplayPrice", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;", "filterCommand", "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;", "isProductInWishlist", "isPlpV3GridViewEnabled", "isAiCompanionEnabled", "Lkotlin/Function3;", "Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;", "Lkotlin/ParameterName;", "name", "param", "", "pageIndex", "Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "requestPage", "<init>", "(Lkotlinx/coroutines/CoroutineScope;ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;ZZLkotlin/jvm/functions/Function3;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PLPBySearchDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableStateFlow f63207a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableStateFlow f63208b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PLPCoreDelegate f63209c;
    public final StateFlow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StateFlow f63210e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PLPBySearchDelegate$special$$inlined$map$1 f63211f;

    /* JADX WARN: Type inference failed for: r2v6, types: [com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters.PLPBySearchDelegate$special$$inlined$map$1] */
    public PLPBySearchDelegate(CoroutineScope coroutineScope, boolean z, FilterCommand filterCommand, IsProductInWishlistUseCase isProductInWishlistUseCase, boolean z2, boolean z3, Function3<? super SearchParams, ? super Integer, ? super Continuation<? super Result<PlpPagination>>, ? extends Object> function3) {
        coroutineScope.getClass();
        filterCommand.getClass();
        isProductInWishlistUseCase.getClass();
        function3.getClass();
        MutableStateFlow mutableStateFlowA = StateFlowKt.a(null);
        this.f63207a = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(Boolean.FALSE);
        this.f63208b = mutableStateFlowA2;
        PLPCoreDelegate pLPCoreDelegate = new PLPCoreDelegate(0, mutableStateFlowA, z, function3, coroutineScope, QafSource.SEARCH, z2, z3, false, filterCommand, null, isProductInWishlistUseCase, 1281, null);
        this.f63209c = pLPCoreDelegate;
        this.d = pLPCoreDelegate.p;
        PLPBySearchDelegate$pspViewState$1 pLPBySearchDelegate$pspViewState$1 = new PLPBySearchDelegate$pspViewState$1(z2, z3, null);
        StateFlow stateFlow = pLPCoreDelegate.q;
        FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1 flowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1H = FlowKt.h(mutableStateFlowA, stateFlow, mutableStateFlowA2, pLPBySearchDelegate$pspViewState$1);
        SharingStarted.f74985a.getClass();
        this.f63210e = FlowKt.A(flowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1H, coroutineScope, SharingStarted.Companion.f74988c, new PSPViewState(null, null, false, false, false, 31, null));
        final FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 flowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 = new FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1(stateFlow);
        final Flow<PlpPagination> flow = new Flow<PlpPagination>() { // from class: com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters.PLPBySearchDelegate$special$$inlined$filter$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters.PLPBySearchDelegate$special$$inlined$filter$1$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f63217b;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters.PLPBySearchDelegate$special$$inlined$filter$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters.PLPBySearchDelegate$special$$inlined$filter$1$2", f = "PLPBySearchDelegate.kt", l = {217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f63218b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f63219c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f63218b = obj;
                        this.f63219c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f63217b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f63219c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f63219c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f63218b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f63219c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        if (((PlpPagination) obj).g == 0) {
                            anonymousClass1.f63219c = 1;
                            if (this.f63217b.emit(obj, anonymousClass1) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
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
                Object objF = flowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1.f(new AnonymousClass2(flowCollector), continuation);
                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
            }
        };
        this.f63211f = new Flow<PSPViewState>() { // from class: com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters.PLPBySearchDelegate$special$$inlined$map$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters.PLPBySearchDelegate$special$$inlined$map$1$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f63222b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ PLPBySearchDelegate f63223c;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters.PLPBySearchDelegate$special$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters.PLPBySearchDelegate$special$$inlined$map$1$2", f = "PLPBySearchDelegate.kt", l = {217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f63224b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f63225c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f63224b = obj;
                        this.f63225c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, PLPBySearchDelegate pLPBySearchDelegate) {
                    this.f63222b = flowCollector;
                    this.f63223c = pLPBySearchDelegate;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f63225c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f63225c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f63224b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f63225c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        PlpPagination plpPagination = (PlpPagination) obj;
                        SearchParams searchParams = (SearchParams) this.f63223c.f63207a.getValue();
                        PSPViewState pSPViewState = new PSPViewState(searchParams != null ? searchParams.f57988a : null, new Integer(plpPagination.f67824f), false, false, false, 28, null);
                        anonymousClass1.f63225c = 1;
                        if (this.f63222b.emit(pSPViewState, anonymousClass1) == coroutineSingletons) {
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
                Object objF = flow.f(new AnonymousClass2(flowCollector, this), continuation);
                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
            }
        };
    }

    public /* synthetic */ PLPBySearchDelegate(CoroutineScope coroutineScope, boolean z, FilterCommand filterCommand, IsProductInWishlistUseCase isProductInWishlistUseCase, boolean z2, boolean z3, Function3 function3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(coroutineScope, z, filterCommand, isProductInWishlistUseCase, (i2 & 16) != 0 ? false : z2, (i2 & 32) != 0 ? false : z3, function3);
    }
}
