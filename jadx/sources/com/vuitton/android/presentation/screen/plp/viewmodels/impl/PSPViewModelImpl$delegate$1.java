package com.vuitton.android.presentation.screen.plp.viewmodels.impl;

import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.search.ResultType;
import com.vuitton.android.domain.monitoring.search.SearchMonitoring;
import com.vuitton.android.domain.usecase.plp.GetSearchPLPUseCase;
import com.vuitton.android.presentation.screen.filter.model.SearchParams;
import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "params", "Lcom/vuitton/android/presentation/screen/filter/model/SearchParams;", "page", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PSPViewModelImpl$delegate$1", f = "PSPViewModelImpl.kt", l = {106}, m = "invokeSuspend", v = 2)
public final class PSPViewModelImpl$delegate$1 extends SuspendLambda implements Function3<SearchParams, Integer, Continuation<? super Result<? extends PlpPagination>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f63122b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f63123c;
    public /* synthetic */ SearchParams d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ int f63124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Monitor f63125f;
    public final /* synthetic */ PSPViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ GetSearchPLPUseCase f63126h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PSPViewModelImpl$delegate$1(Monitor monitor, PSPViewModelImpl pSPViewModelImpl, GetSearchPLPUseCase getSearchPLPUseCase, Continuation continuation) {
        super(3, continuation);
        this.f63125f = monitor;
        this.g = pSPViewModelImpl;
        this.f63126h = getSearchPLPUseCase;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int iIntValue = ((Number) obj2).intValue();
        PSPViewModelImpl pSPViewModelImpl = this.g;
        GetSearchPLPUseCase getSearchPLPUseCase = this.f63126h;
        PSPViewModelImpl$delegate$1 pSPViewModelImpl$delegate$1 = new PSPViewModelImpl$delegate$1(this.f63125f, pSPViewModelImpl, getSearchPLPUseCase, (Continuation) obj3);
        pSPViewModelImpl$delegate$1.d = (SearchParams) obj;
        pSPViewModelImpl$delegate$1.f63124e = iIntValue;
        return pSPViewModelImpl$delegate$1.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        MonitorAction monitorAction;
        SearchParams searchParams = this.d;
        int i2 = this.f63124e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.f63123c;
        if (i3 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = this.f63125f.a(this.g.f63109f, SearchMonitoring.Action.SearchLoading.f48992a);
            dynatraceMonitorActionA.c(new Integer(i2), "pageNumber");
            dynatraceMonitorActionA.c(searchParams.f57988a, "search");
            String str = searchParams.f57988a;
            String str2 = searchParams.f57989b;
            String str3 = searchParams.f57990c;
            this.d = null;
            this.f63122b = dynatraceMonitorActionA;
            this.f63124e = i2;
            this.f63123c = 1;
            Object objA = this.f63126h.a(str, str2, str3, i2, null, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj2 = objA;
            monitorAction = dynatraceMonitorActionA;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = this.f63122b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            PlpPagination plpPagination = (PlpPagination) obj2;
            if (i2 == 0) {
                if (plpPagination.f67824f > 0) {
                    monitorAction.c(ResultType.GOOD.getValue(), "ResultType");
                } else {
                    monitorAction.c(ResultType.NONE.getValue(), "ResultType");
                }
            }
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            monitorAction.d(new SearchMonitoring.Error.SearchLoadingError(thA));
        }
        Result result = new Result(obj2);
        monitorAction.b();
        return result;
    }
}
