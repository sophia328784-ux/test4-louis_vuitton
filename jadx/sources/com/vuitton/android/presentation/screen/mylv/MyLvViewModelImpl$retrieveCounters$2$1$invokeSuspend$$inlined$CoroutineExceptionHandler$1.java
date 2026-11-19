package com.vuitton.android.presentation.screen.mylv;

import kotlin.Metadata;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"com/vuitton/android/presentation/screen/mylv/MyLvViewModelImpl$retrieveCounters$2$1$invokeSuspend$$inlined$CoroutineExceptionHandler$1", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MyLvViewModelImpl$retrieveCounters$2$1$invokeSuspend$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MyLvViewModelImpl f59323b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyLvViewModelImpl$retrieveCounters$2$1$invokeSuspend$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.Key key, MyLvViewModelImpl myLvViewModelImpl) {
        super(key);
        this.f59323b = myLvViewModelImpl;
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void q(Throwable th, CoroutineContext coroutineContext) {
        this.f59323b.d.c(MyLvViewModelImplKt.f59357a, "Exception log : " + th, null);
    }
}
