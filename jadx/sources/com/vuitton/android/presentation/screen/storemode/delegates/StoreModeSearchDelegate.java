package com.vuitton.android.presentation.screen.storemode.delegates;

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
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012L\u0010\u0012\u001aH\b\u0001\u0012\u0013\u0012\u00110\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0013\u0012\u00110\r¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\u000e\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00110\u00100\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\b\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/presentation/screen/storemode/delegates/StoreModeSearchDelegate;", "", "", "shouldDisplayPrice", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;", "filterCommand", "isPlpV3GridViewEnabled", "isAiCompanionEnabled", "Lkotlin/Function3;", "Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;", "Lkotlin/ParameterName;", "name", "param", "", "pageIndex", "Lkotlin/coroutines/Continuation;", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "requestPage", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;", "isProductInWishlist", "<init>", "(ZLcom/vuitton/android/presentation/screen/filter/quickaccess/FilterCommand;ZZLkotlin/jvm/functions/Function3;Lkotlinx/coroutines/CoroutineScope;Lcom/vuitton/android/domain/usecase/wishlist/IsProductInWishlistUseCase;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class StoreModeSearchDelegate {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineScope f64943a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableStateFlow f64944b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MutableStateFlow f64945c;
    public final PLPCoreDelegate d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StateFlow f64946e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final StateFlow f64947f;
    public final StateFlow g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final StoreModeSearchDelegate$special$$inlined$map$3 f64948h;

    /* JADX WARN: Type inference failed for: r1v5, types: [com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$special$$inlined$map$3] */
    public StoreModeSearchDelegate(boolean z, FilterCommand filterCommand, boolean z2, boolean z3, Function3<? super SearchParams, ? super Integer, ? super Continuation<? super Result<PlpPagination>>, ? extends Object> function3, CoroutineScope coroutineScope, IsProductInWishlistUseCase isProductInWishlistUseCase) {
        filterCommand.getClass();
        function3.getClass();
        coroutineScope.getClass();
        isProductInWishlistUseCase.getClass();
        this.f64943a = coroutineScope;
        final MutableStateFlow mutableStateFlowA = StateFlowKt.a(null);
        this.f64944b = mutableStateFlowA;
        MutableStateFlow mutableStateFlowA2 = StateFlowKt.a(Boolean.FALSE);
        this.f64945c = mutableStateFlowA2;
        PLPCoreDelegate pLPCoreDelegate = new PLPCoreDelegate(0, mutableStateFlowA, z, function3, coroutineScope, null, z2, z3, false, filterCommand, null, isProductInWishlistUseCase, 1313, null);
        this.d = pLPCoreDelegate;
        QafSource qafSource = QafSource.SEARCH;
        Flow<String> flow = new Flow<String>() { // from class: com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$special$$inlined$map$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$special$$inlined$map$1$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f64958b;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$special$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$special$$inlined$map$1$2", f = "StoreModeSearchDelegate.kt", l = {217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f64959b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f64960c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f64959b = obj;
                        this.f64960c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f64958b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f64960c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f64960c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f64959b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f64960c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        SearchParams searchParams = (SearchParams) obj;
                        String str = searchParams != null ? searchParams.f57990c : null;
                        anonymousClass1.f64960c = 1;
                        if (this.f64958b.emit(str, anonymousClass1) == coroutineSingletons) {
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
        };
        Flow<String> flow2 = new Flow<String>() { // from class: com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$special$$inlined$map$2

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$special$$inlined$map$2$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f64962b;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$special$$inlined$map$2$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$special$$inlined$map$2$2", f = "StoreModeSearchDelegate.kt", l = {217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f64963b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f64964c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f64963b = obj;
                        this.f64964c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f64962b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f64964c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f64964c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f64963b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f64964c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        SearchParams searchParams = (SearchParams) obj;
                        String str = searchParams != null ? searchParams.f57989b : null;
                        anonymousClass1.f64964c = 1;
                        if (this.f64962b.emit(str, anonymousClass1) == coroutineSingletons) {
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
        };
        MutableStateFlow mutableStateFlowA3 = StateFlowKt.a(null);
        StateFlow stateFlow = pLPCoreDelegate.q;
        StoreModePLPFiltersDelegate storeModePLPFiltersDelegate = new StoreModePLPFiltersDelegate(qafSource, coroutineScope, flow, null, filterCommand, flow2, stateFlow, mutableStateFlowA3);
        this.f64946e = pLPCoreDelegate.p;
        FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1 flowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1H = FlowKt.h(mutableStateFlowA, stateFlow, mutableStateFlowA2, new StoreModeSearchDelegate$pspViewState$1(z2, z3, null));
        SharingStarted.f74985a.getClass();
        this.f64947f = FlowKt.A(flowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1H, coroutineScope, SharingStarted.Companion.f74988c, new PSPViewState(null, null, false, false, false, 31, null));
        this.g = storeModePLPFiltersDelegate.f64920a;
        final FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 flowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 = new FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1(stateFlow);
        final Flow<PlpPagination> flow3 = new Flow<PlpPagination>() { // from class: com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$special$$inlined$filter$1

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$special$$inlined$filter$1$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f64954b;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$special$$inlined$filter$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$special$$inlined$filter$1$2", f = "StoreModeSearchDelegate.kt", l = {217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f64955b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f64956c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f64955b = obj;
                        this.f64956c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f64954b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f64956c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f64956c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f64955b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f64956c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        if (((PlpPagination) obj).g == 0) {
                            anonymousClass1.f64956c = 1;
                            if (this.f64954b.emit(obj, anonymousClass1) == coroutineSingletons) {
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
        this.f64948h = new Flow<PSPViewState>() { // from class: com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$special$$inlined$map$3

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$special$$inlined$map$3$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f64967b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ StoreModeSearchDelegate f64968c;

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$special$$inlined$map$3$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                @DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.delegates.StoreModeSearchDelegate$special$$inlined$map$3$2", f = "StoreModeSearchDelegate.kt", l = {217}, m = "emit", v = 2)
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f64969b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f64970c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f64969b = obj;
                        this.f64970c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector, StoreModeSearchDelegate storeModeSearchDelegate) {
                    this.f64967b = flowCollector;
                    this.f64968c = storeModeSearchDelegate;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f64970c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f64970c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f64969b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f64970c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        PlpPagination plpPagination = (PlpPagination) obj;
                        SearchParams searchParams = (SearchParams) this.f64968c.f64944b.getValue();
                        PSPViewState pSPViewState = new PSPViewState(searchParams != null ? searchParams.f57988a : null, new Integer(plpPagination.f67824f), false, false, false, 28, null);
                        anonymousClass1.f64970c = 1;
                        if (this.f64967b.emit(pSPViewState, anonymousClass1) == coroutineSingletons) {
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
                Object objF = flow3.f(new AnonymousClass2(flowCollector, this), continuation);
                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
            }
        };
    }

    public /* synthetic */ StoreModeSearchDelegate(boolean z, FilterCommand filterCommand, boolean z2, boolean z3, Function3 function3, CoroutineScope coroutineScope, IsProductInWishlistUseCase isProductInWishlistUseCase, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, filterCommand, (i2 & 4) != 0 ? false : z2, (i2 & 8) != 0 ? false : z3, function3, coroutineScope, isProductInWishlistUseCase);
    }
}
