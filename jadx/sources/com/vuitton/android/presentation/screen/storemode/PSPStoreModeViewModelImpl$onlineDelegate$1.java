package com.vuitton.android.presentation.screen.storemode;

import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModelImpl$onlineDelegate$1", f = "PSPStoreModeViewModelImpl.kt", l = {168}, m = "invokeSuspend", v = 2)
public final class PSPStoreModeViewModelImpl$onlineDelegate$1 extends SuspendLambda implements Function3<SearchParams, Integer, Continuation<? super Result<? extends PlpPagination>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f64742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f64743c;
    public /* synthetic */ SearchParams d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ int f64744e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Monitor f64745f;
    public final /* synthetic */ PSPStoreModeViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ GetSearchPLPUseCase f64746h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PSPStoreModeViewModelImpl$onlineDelegate$1(Monitor monitor, PSPStoreModeViewModelImpl pSPStoreModeViewModelImpl, GetSearchPLPUseCase getSearchPLPUseCase, Continuation continuation) {
        super(3, continuation);
        this.f64745f = monitor;
        this.g = pSPStoreModeViewModelImpl;
        this.f64746h = getSearchPLPUseCase;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int iIntValue = ((Number) obj2).intValue();
        PSPStoreModeViewModelImpl pSPStoreModeViewModelImpl = this.g;
        GetSearchPLPUseCase getSearchPLPUseCase = this.f64746h;
        PSPStoreModeViewModelImpl$onlineDelegate$1 pSPStoreModeViewModelImpl$onlineDelegate$1 = new PSPStoreModeViewModelImpl$onlineDelegate$1(this.f64745f, pSPStoreModeViewModelImpl, getSearchPLPUseCase, (Continuation) obj3);
        pSPStoreModeViewModelImpl$onlineDelegate$1.d = (SearchParams) obj;
        pSPStoreModeViewModelImpl$onlineDelegate$1.f64744e = iIntValue;
        return pSPStoreModeViewModelImpl$onlineDelegate$1.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        MonitorAction monitorAction;
        SearchParams searchParams = this.d;
        int i2 = this.f64744e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.f64743c;
        if (i3 == 0) {
            ResultKt.b(obj);
            PSPStoreModeViewModelImpl pSPStoreModeViewModelImpl = this.g;
            DynatraceMonitorAction dynatraceMonitorActionA = this.f64745f.a(pSPStoreModeViewModelImpl.g, SearchMonitoring.Action.SearchLoading.f48992a);
            dynatraceMonitorActionA.c(new Integer(i2), "pageNumber");
            dynatraceMonitorActionA.c(searchParams.f57988a, "search");
            dynatraceMonitorActionA.c("true", "isStoreMode");
            dynatraceMonitorActionA.c(pSPStoreModeViewModelImpl.d0(), "rmsCode");
            String str = searchParams.f57988a;
            String str2 = searchParams.f57989b;
            String str3 = searchParams.f57990c;
            this.d = null;
            this.f64742b = dynatraceMonitorActionA;
            this.f64744e = i2;
            this.f64743c = 1;
            objA = this.f64746h.a(str, str2, str3, i2, null, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            monitorAction = dynatraceMonitorActionA;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = this.f64742b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            monitorAction.d(new SearchMonitoring.Error.SearchLoadingError(thA));
        }
        Result result = new Result(objA);
        monitorAction.b();
        return result;
    }
}
