package com.vuitton.android.presentation.screen.authentication;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl", f = "AuthenticationViewModelImpl.kt", l = {472}, m = "updateContactId", v = 2)
final class AuthenticationViewModelImpl$updateContactId$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f53324b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AuthenticationViewModelImpl f53325c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthenticationViewModelImpl$updateContactId$1(AuthenticationViewModelImpl authenticationViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f53325c = authenticationViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f53324b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f53325c.zc(this);
    }
}
