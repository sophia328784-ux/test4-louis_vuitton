package com.vuitton.android.presentation.screen.services;

import kotlin.Metadata;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"com/vuitton/android/presentation/screen/services/ServicesViewModelImpl$initCounters$1$1$1$invokeSuspend$$inlined$CoroutineExceptionHandler$1", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ServicesViewModelImpl$initCounters$1$1$1$invokeSuspend$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ServicesViewModelImpl f64338b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServicesViewModelImpl$initCounters$1$1$1$invokeSuspend$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.Key key, ServicesViewModelImpl servicesViewModelImpl) {
        super(key);
        this.f64338b = servicesViewModelImpl;
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void q(Throwable th, CoroutineContext coroutineContext) {
        this.f64338b.f64304b.c("ServicesViewModelImpl", "Exception log : " + th, null);
    }
}
