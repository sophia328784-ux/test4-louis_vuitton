package com.vuitton.android.domain.service.authentication;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.service.authentication.UserSessionService", f = "UserSessionService.kt", l = {50}, m = "init", v = 2)
final class UserSessionService$init$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49014b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ UserSessionService f49015c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserSessionService$init$1(UserSessionService userSessionService, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49015c = userSessionService;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49014b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f49015c.a(this);
    }
}
