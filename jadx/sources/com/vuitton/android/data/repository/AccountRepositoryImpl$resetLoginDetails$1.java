package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AccountRepositoryImpl", f = "AccountRepositoryImpl.kt", l = {174}, m = "resetLoginDetails", v = 2)
final class AccountRepositoryImpl$resetLoginDetails$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f47181b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47182c;
    public final /* synthetic */ AccountRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47183e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRepositoryImpl$resetLoginDetails$1(AccountRepositoryImpl accountRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = accountRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47182c = obj;
        this.f47183e |= Integer.MIN_VALUE;
        return this.d.m(false, this);
    }
}
