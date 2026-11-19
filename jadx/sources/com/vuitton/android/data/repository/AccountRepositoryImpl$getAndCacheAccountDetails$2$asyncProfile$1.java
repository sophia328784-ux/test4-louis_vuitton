package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.profile.Profile;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/profile/Profile;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1", f = "AccountRepositoryImpl.kt", l = {113, 115}, m = "invokeSuspend", v = 2)
final class AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Profile>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f47166b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f47167c;
    public final /* synthetic */ AccountRepositoryImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1(boolean z, AccountRepositoryImpl accountRepositoryImpl, Continuation continuation) {
        super(2, continuation);
        this.f47167c = z;
        this.d = accountRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1(this.f47167c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002c, code lost:
    
        if (r4 == r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0037, code lost:
    
        if (r4 == r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
    
        return r0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r4.f47166b
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1b
            if (r1 == r3) goto Lc
            if (r1 != r2) goto L14
        Lc:
            kotlin.ResultKt.b(r5)
            kotlin.Result r5 = (kotlin.Result) r5
            java.lang.Object r4 = r5.f71708b
            goto L3a
        L14:
            java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r4)
            r4 = 0
            return r4
        L1b:
            kotlin.ResultKt.b(r5)
            boolean r5 = r4.f47167c
            com.vuitton.android.data.repository.AccountRepositoryImpl r1 = r4.d
            if (r5 == 0) goto L2f
            com.vuitton.android.data.datasource.account.AccountRemoteTwistDataSource r5 = r1.f47133a
            r4.f47166b = r3
            java.lang.Object r4 = r5.b(r4)
            if (r4 != r0) goto L3a
            goto L39
        L2f:
            com.vuitton.android.data.datasource.account.AccountRemoteFacadeDataSource r5 = r1.f47134b
            r4.f47166b = r2
            java.lang.Object r4 = r5.b(r4)
            if (r4 != r0) goto L3a
        L39:
            return r0
        L3a:
            kotlin.Result r5 = new kotlin.Result
            r5.<init>(r4)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
