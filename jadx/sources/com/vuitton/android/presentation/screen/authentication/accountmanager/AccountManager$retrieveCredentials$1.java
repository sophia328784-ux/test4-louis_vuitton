package com.vuitton.android.presentation.screen.authentication.accountmanager;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.accountmanager.AccountManager", f = "AccountManager.kt", l = {22}, m = "retrieveCredentials", v = 2)
final class AccountManager$retrieveCredentials$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f53403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AccountManager f53404c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountManager$retrieveCredentials$1(AccountManager accountManager, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f53404c = accountManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f53403b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f53404c.b(null, this);
    }
}
