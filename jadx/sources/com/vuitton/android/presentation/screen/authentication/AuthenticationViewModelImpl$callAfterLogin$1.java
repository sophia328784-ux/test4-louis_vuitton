package com.vuitton.android.presentation.screen.authentication;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.AuthenticationViewModelImpl", f = "AuthenticationViewModelImpl.kt", l = {457, 460, 461, 461, 463, 465, 468}, m = "callAfterLogin", v = 2)
final class AuthenticationViewModelImpl$callAfterLogin$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f53288b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f53289c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f53290e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ AuthenticationViewModelImpl f53291f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AuthenticationViewModelImpl$callAfterLogin$1(AuthenticationViewModelImpl authenticationViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f53291f = authenticationViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f53290e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f53291f.yc(false, false, this);
    }
}
