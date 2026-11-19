package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.pdp.PDPMonitoring;
import com.vuitton.android.domain.usecase.products.GetYmalProductListUseCase;
import com.vuitton.android.presentation.model.common.mapper.ProductTinyMapperKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.producttiny.ProductTiny;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.collections.immutable.ExtensionsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$getYMALProducts$1", f = "PdpViewModelImpl.kt", l = {998}, m = "invokeSuspend", v = 2)
final class PdpViewModelImpl$getYMALProducts$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61196b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpViewModelImpl f61197c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MonitorAction f61198e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$getYMALProducts$1(PdpViewModelImpl pdpViewModelImpl, String str, MonitorAction monitorAction, Continuation continuation) {
        super(2, continuation);
        this.f61197c = pdpViewModelImpl;
        this.d = str;
        this.f61198e = monitorAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpViewModelImpl$getYMALProducts$1(this.f61197c, this.d, this.f61198e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpViewModelImpl$getYMALProducts$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        PdpViewModelImpl pdpViewModelImpl = this.f61197c;
        MutableStateFlow mutableStateFlow = pdpViewModelImpl.b0;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61196b;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow.setValue(Boolean.TRUE);
            GetYmalProductListUseCase getYmalProductListUseCase = pdpViewModelImpl.u;
            SkuIdUiModel.f61763c.getClass();
            String str = this.d;
            SkuIdUiModel.Companion.b(str);
            this.f61196b = 1;
            objA = getYmalProductListUseCase.a(str, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            MutableStateFlow mutableStateFlow2 = pdpViewModelImpl.o0;
            List list = (List) objA;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(ProductTinyMapperKt.a((ProductTiny) it.next()));
            }
            mutableStateFlow2.setValue(ExtensionsKt.a(arrayList));
        }
        Throwable thA = Result.a(objA);
        MonitorAction monitorAction = this.f61198e;
        if (thA != null) {
            monitorAction.d(new PDPMonitoring.Error.LoadYouMayAlsoLikeError(thA));
            Logger logger = pdpViewModelImpl.f61136b;
            thA.getMessage();
            logger.getClass();
        }
        monitorAction.b();
        mutableStateFlow.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
