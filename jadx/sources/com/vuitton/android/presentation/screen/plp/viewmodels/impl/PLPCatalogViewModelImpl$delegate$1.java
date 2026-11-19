package com.vuitton.android.presentation.screen.plp.viewmodels.impl;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.Monitor;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.plp.PLPMonitoring;
import com.vuitton.android.domain.usecase.plp.GetCategoryPlpUseCase;
import com.vuitton.android.presentation.screen.filter.model.FilterParams;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import com.vuitton.foundation.model.domain.model.sync.Feature;
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
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "filterParams", "Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;", "pageIndex", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPCatalogViewModelImpl$delegate$1", f = "PLPCatalogViewModelImpl.kt", l = {151}, m = "invokeSuspend", v = 2)
public final class PLPCatalogViewModelImpl$delegate$1 extends SuspendLambda implements Function3<FilterParams, Integer, Continuation<? super Result<? extends PlpPagination>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f63039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f63040c;
    public /* synthetic */ FilterParams d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ int f63041e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Monitor f63042f;
    public final /* synthetic */ PLPCatalogViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ GetCategoryPlpUseCase f63043h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPCatalogViewModelImpl$delegate$1(Monitor monitor, PLPCatalogViewModelImpl pLPCatalogViewModelImpl, GetCategoryPlpUseCase getCategoryPlpUseCase, Continuation continuation) {
        super(3, continuation);
        this.f63042f = monitor;
        this.g = pLPCatalogViewModelImpl;
        this.f63043h = getCategoryPlpUseCase;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int iIntValue = ((Number) obj2).intValue();
        PLPCatalogViewModelImpl pLPCatalogViewModelImpl = this.g;
        GetCategoryPlpUseCase getCategoryPlpUseCase = this.f63043h;
        PLPCatalogViewModelImpl$delegate$1 pLPCatalogViewModelImpl$delegate$1 = new PLPCatalogViewModelImpl$delegate$1(this.f63042f, pLPCatalogViewModelImpl, getCategoryPlpUseCase, (Continuation) obj3);
        pLPCatalogViewModelImpl$delegate$1.d = (FilterParams) obj;
        pLPCatalogViewModelImpl$delegate$1.f63041e = iIntValue;
        return pLPCatalogViewModelImpl$delegate$1.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2;
        MonitorAction monitorAction;
        FilterParams filterParams = this.d;
        int i2 = this.f63041e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.f63040c;
        PLPCatalogViewModelImpl pLPCatalogViewModelImpl = this.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = this.f63042f.a(pLPCatalogViewModelImpl.f63024h, PLPMonitoring.Action.LoadProductListScreen.f48989a);
            dynatraceMonitorActionA.c(pLPCatalogViewModelImpl.f63026j, "categoryId");
            dynatraceMonitorActionA.c(new Integer(i2), "pageNumber");
            String str = filterParams.f57985b;
            if (str != null) {
                dynatraceMonitorActionA.c(str, "sortBy");
                Result.Companion companion = Result.INSTANCE;
            }
            dynatraceMonitorActionA.c(filterParams.f57984a, "filterId");
            String str2 = filterParams.f57984a;
            String str3 = filterParams.f57985b;
            boolean zB = pLPCatalogViewModelImpl.f63023f.b(new Feature[]{Feature.PLP_REVAMP_V3_PHASE2});
            this.d = null;
            this.f63039b = dynatraceMonitorActionA;
            this.f63041e = i2;
            this.f63040c = 1;
            Object objA = this.f63043h.a(str2, str3, i2, null, zB, this);
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
            monitorAction = this.f63039b;
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion2 = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            String str4 = ((PlpPagination) obj2).f67822c;
            if (str4 == null) {
                str4 = "";
            }
            BuildersKt.c(ViewModelKt.a(pLPCatalogViewModelImpl), null, null, new PLPCatalogViewModelImpl$getDynamicYieldChooseVariation$1(pLPCatalogViewModelImpl, str4, null), 3);
            pLPCatalogViewModelImpl.O0(PLPTrackingUiModel.Screen.f62896a);
        }
        Throwable thA = Result.a(obj2);
        if (thA != null) {
            monitorAction.d(new PLPMonitoring.Error.LoadProductListError(thA));
        }
        Result result = new Result(obj2);
        monitorAction.b();
        return result;
    }
}
