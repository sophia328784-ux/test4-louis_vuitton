package com.vuitton.android.presentation.screen.authentication;

import kotlin.Metadata;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"com/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl$callAfterLogin$$inlined$CoroutineExceptionHandler$1", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AuthenticationViewModelImpl$callAfterLogin$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AuthenticationViewModelImpl f53287b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthenticationViewModelImpl$callAfterLogin$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.Key key, AuthenticationViewModelImpl authenticationViewModelImpl) {
        super(key);
        this.f53287b = authenticationViewModelImpl;
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public final void q(Throwable th, CoroutineContext coroutineContext) {
        this.f53287b.f53276a.c("AuthenticationViewModelImpl", "Unable to execute all actions after login", th);
    }
}
