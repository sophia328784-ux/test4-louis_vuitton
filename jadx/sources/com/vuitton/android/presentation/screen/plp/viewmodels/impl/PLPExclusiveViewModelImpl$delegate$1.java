package com.vuitton.android.presentation.screen.plp.viewmodels.impl;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.usecase.plp.GetExclusivePLPUseCase;
import com.vuitton.android.presentation.screen.filter.model.FilterParams;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
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
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "params", "Lcom/vuitton/android/presentation/screen/filter/model/FilterParams;", "pageIndex", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.PLPExclusiveViewModelImpl$delegate$1", f = "PLPExclusiveViewModelImpl.kt", l = {116}, m = "invokeSuspend", v = 2)
public final class PLPExclusiveViewModelImpl$delegate$1 extends SuspendLambda implements Function3<FilterParams, Integer, Continuation<? super Result<? extends PlpPagination>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ FilterParams f63073c;
    public /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ GetExclusivePLPUseCase f63074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ PLPExclusiveViewModelImpl f63075f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPExclusiveViewModelImpl$delegate$1(GetExclusivePLPUseCase getExclusivePLPUseCase, PLPExclusiveViewModelImpl pLPExclusiveViewModelImpl, Continuation continuation) {
        super(3, continuation);
        this.f63074e = getExclusivePLPUseCase;
        this.f63075f = pLPExclusiveViewModelImpl;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        int iIntValue = ((Number) obj2).intValue();
        PLPExclusiveViewModelImpl$delegate$1 pLPExclusiveViewModelImpl$delegate$1 = new PLPExclusiveViewModelImpl$delegate$1(this.f63074e, this.f63075f, (Continuation) obj3);
        pLPExclusiveViewModelImpl$delegate$1.f63073c = (FilterParams) obj;
        pLPExclusiveViewModelImpl$delegate$1.d = iIntValue;
        return pLPExclusiveViewModelImpl$delegate$1.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        FilterParams filterParams = this.f63073c;
        int i2 = this.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.f63072b;
        if (i3 == 0) {
            ResultKt.b(obj);
            String str = filterParams.f57984a;
            this.f63073c = filterParams;
            this.d = i2;
            this.f63072b = 1;
            objA = this.f63074e.a(str, i2, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            String str2 = filterParams.f57984a;
            PLPExclusiveViewModelImpl pLPExclusiveViewModelImpl = this.f63075f;
            BuildersKt.c(ViewModelKt.a(pLPExclusiveViewModelImpl), null, null, new PLPExclusiveViewModelImpl$getDynamicYieldChooseVariation$1(pLPExclusiveViewModelImpl, str2, null), 3);
            pLPExclusiveViewModelImpl.O0(PLPTrackingUiModel.Screen.f62896a);
        }
        return new Result(objA);
    }
}
