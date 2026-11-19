package com.vuitton.android.presentation.screen.authentication.accountmanager;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.accountmanager.AccountManager", f = "AccountManager.kt", l = {48}, m = "registerCredentials", v = 2)
final class AccountManager$registerCredentials$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f53401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccountManager f53402c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountManager$registerCredentials$1(AccountManager accountManager, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f53402c = accountManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f53401b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f53402c.a(null, null, this);
    }
}
