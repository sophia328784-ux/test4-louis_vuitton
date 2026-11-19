package com.vuitton.android.presentation.screen.storemode;

import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.plp.PLPMonitoring;
import com.vuitton.android.domain.usecase.plp.GetCategoryPlpUseCase;
import com.vuitton.android.presentation.screen.filter.model.FilterParams;
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
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "filterParams", "Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;", "pageIndex", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.PLPStoreModeViewModelImpl$onlineDelegate$1", f = "PLPStoreModeViewModelImpl.kt", l = {193}, m = "invokeSuspend", v = 2)
public final class PLPStoreModeViewModelImpl$onlineDelegate$1 extends SuspendLambda implements Function3<FilterParams, Integer, Continuation<? super Result<? extends PlpPagination>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f64698b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f64699c;
    public /* synthetic */ FilterParams d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ int f64700e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Monitor f64701f;
    public final /* synthetic */ PLPStoreModeViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ GetCategoryPlpUseCase f64702h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPStoreModeViewModelImpl$onlineDelegate$1(Monitor monitor, PLPStoreModeViewModelImpl pLPStoreModeViewModelImpl, GetCategoryPlpUseCase getCategoryPlpUseCase, Continuation continuation) {
        super(3, continuation);
        this.f64701f = monitor;
        this.g = pLPStoreModeViewModelImpl;
        this.f64702h = getCategoryPlpUseCase;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int iIntValue = ((Number) obj2).intValue();
        PLPStoreModeViewModelImpl pLPStoreModeViewModelImpl = this.g;
        GetCategoryPlpUseCase getCategoryPlpUseCase = this.f64702h;
        PLPStoreModeViewModelImpl$onlineDelegate$1 pLPStoreModeViewModelImpl$onlineDelegate$1 = new PLPStoreModeViewModelImpl$onlineDelegate$1(this.f64701f, pLPStoreModeViewModelImpl, getCategoryPlpUseCase, (Continuation) obj3);
        pLPStoreModeViewModelImpl$onlineDelegate$1.d = (FilterParams) obj;
        pLPStoreModeViewModelImpl$onlineDelegate$1.f64700e = iIntValue;
        return pLPStoreModeViewModelImpl$onlineDelegate$1.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        MonitorAction monitorAction;
        FilterParams filterParams = this.d;
        int i2 = this.f64700e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.f64699c;
        if (i3 == 0) {
            ResultKt.b(obj);
            PLPStoreModeViewModelImpl pLPStoreModeViewModelImpl = this.g;
            DynatraceMonitorAction dynatraceMonitorActionA = this.f64701f.a(pLPStoreModeViewModelImpl.f64691h, PLPMonitoring.Action.LoadProductListScreen.f48989a);
            dynatraceMonitorActionA.c(pLPStoreModeViewModelImpl.zc(), "categoryId");
            dynatraceMonitorActionA.c(pLPStoreModeViewModelImpl.d0(), "rmsCode");
            dynatraceMonitorActionA.c("true", "isStoreMode");
            dynatraceMonitorActionA.c(new Integer(i2), "pageNumber");
            String str = filterParams.f57985b;
            if (str != null) {
                dynatraceMonitorActionA.c(str, "sortBy");
                Result.Companion companion = Result.INSTANCE;
            }
            dynatraceMonitorActionA.c(filterParams.f57984a, "filterId");
            String str2 = filterParams.f57984a;
            String str3 = filterParams.f57985b;
            boolean z = pLPStoreModeViewModelImpl.n;
            this.d = null;
            this.f64698b = dynatraceMonitorActionA;
            this.f64700e = i2;
            this.f64699c = 1;
            objA = this.f64702h.a(str2, str3, i2, null, z, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
            monitorAction = dynatraceMonitorActionA;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = this.f64698b;
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Throwable thA = Result.a(objA);
        if (thA != null) {
            monitorAction.d(new PLPMonitoring.Error.LoadProductListError(thA));
        }
        Result result = new Result(objA);
        monitorAction.b();
        return result;
    }
}
