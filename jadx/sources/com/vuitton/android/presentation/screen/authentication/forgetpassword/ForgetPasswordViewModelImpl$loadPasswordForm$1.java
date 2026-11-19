package com.vuitton.android.presentation.screen.authentication.forgetpassword;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl", f = "ForgetPasswordViewModelImpl.kt", l = {199}, m = "loadPasswordForm", v = 2)
final class ForgetPasswordViewModelImpl$loadPasswordForm$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f53514b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ForgetPasswordViewModelImpl f53515c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForgetPasswordViewModelImpl$loadPasswordForm$1(ForgetPasswordViewModelImpl forgetPasswordViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f53515c = forgetPasswordViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f53514b = obj;
        this.d |= Integer.MIN_VALUE;
        return ForgetPasswordViewModelImpl.yc(this.f53515c, this);
    }
}
