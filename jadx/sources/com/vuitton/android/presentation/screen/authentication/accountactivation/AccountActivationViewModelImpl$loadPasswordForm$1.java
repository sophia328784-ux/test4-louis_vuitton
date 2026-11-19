package com.vuitton.android.presentation.screen.authentication.accountactivation;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.accountactivation.AccountActivationViewModelImpl", f = "AccountActivationViewModelImpl.kt", l = {171}, m = "loadPasswordForm", v = 2)
final class AccountActivationViewModelImpl$loadPasswordForm$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f53349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccountActivationViewModelImpl f53350c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountActivationViewModelImpl$loadPasswordForm$1(AccountActivationViewModelImpl accountActivationViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f53350c = accountActivationViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f53349b = obj;
        this.d |= Integer.MIN_VALUE;
        return AccountActivationViewModelImpl.yc(this.f53350c, this);
    }
}
