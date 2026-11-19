package com.vuitton.android.data.repository;

import com.vuitton.android.data.datasource.profile.ProfileLocalDataSource;
import com.vuitton.android.data.dto.address.mapper.AddressDtoMapperKt;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/profile/Profile;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AccountRepositoryImpl$getAndCacheAccountDetails$2", f = "AccountRepositoryImpl.kt", l = {121, 122, 123}, m = "invokeSuspend", v = 2)
final class AccountRepositoryImpl$getAndCacheAccountDetails$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Profile>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f47157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f47158c;
    public AccountRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Profile f47159e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f47160f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f47161h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ boolean f47162i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ AccountRepositoryImpl f47163j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountRepositoryImpl$getAndCacheAccountDetails$2(boolean z, AccountRepositoryImpl accountRepositoryImpl, Continuation continuation) {
        super(2, continuation);
        this.f47162i = z;
        this.f47163j = accountRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        AccountRepositoryImpl$getAndCacheAccountDetails$2 accountRepositoryImpl$getAndCacheAccountDetails$2 = new AccountRepositoryImpl$getAndCacheAccountDetails$2(this.f47162i, this.f47163j, continuation);
        accountRepositoryImpl$getAndCacheAccountDetails$2.f47161h = obj;
        return accountRepositoryImpl$getAndCacheAccountDetails$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AccountRepositoryImpl$getAndCacheAccountDetails$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0094  */
    /* JADX WARN: Code duplicated, block: B:25:0x0099  */
    /* JADX WARN: Code duplicated, block: B:26:0x009e  */
    /* JADX WARN: Code duplicated, block: B:30:0x00be  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Deferred deferredA;
        Object obj2;
        Profile profile;
        int i2;
        Object objK;
        Object obj3;
        List list;
        List listC;
        ProfileLocalDataSource profileLocalDataSource;
        Profile profileA;
        Object obj4;
        CoroutineScope coroutineScope = (CoroutineScope) this.f47161h;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.g;
        AccountRepositoryImpl accountRepositoryImpl = this.f47163j;
        if (i3 == 0) {
            ResultKt.b(obj);
            Deferred deferredA2 = BuildersKt.a(coroutineScope, null, new AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncProfile$1(this.f47162i, accountRepositoryImpl, null), 3);
            deferredA = BuildersKt.a(coroutineScope, null, new AccountRepositoryImpl$getAndCacheAccountDetails$2$asyncAddresses$1(accountRepositoryImpl, null), 3);
            this.f47161h = null;
            this.f47157b = deferredA;
            this.g = 1;
            obj = deferredA2.k(this);
            if (obj != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            deferredA = (Deferred) this.f47157b;
            ResultKt.b(obj);
        } else {
            if (i3 == 2) {
                int i4 = this.f47160f;
                profile = this.f47159e;
                accountRepositoryImpl = this.d;
                Object obj5 = this.f47158c;
                ResultKt.b(obj);
                i2 = i4;
                objK = obj;
                obj2 = obj5;
                obj3 = ((Result) objK).f71708b;
                if (obj3 instanceof Result.Failure) {
                    obj3 = null;
                }
                list = (List) obj3;
                if (list != null) {
                    listC = AddressDtoMapperKt.c(list);
                } else {
                    listC = EmptyList.f71768b;
                }
                profileLocalDataSource = accountRepositoryImpl.g;
                profileA = Profile.a(profile, listC, null, 524031);
                this.f47161h = null;
                this.f47157b = null;
                this.f47158c = obj2;
                this.d = null;
                this.f47159e = null;
                this.f47160f = i2;
                this.g = 3;
                if (profileLocalDataSource.c(profileA, this) != coroutineSingletons) {
                    obj4 = obj2;
                }
                return coroutineSingletons;
            }
            if (i3 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            obj4 = this.f47158c;
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        obj2 = obj4;
        return new Result(obj2);
        obj2 = ((Result) obj).f71708b;
        if (!(obj2 instanceof Result.Failure)) {
            profile = (Profile) obj2;
            this.f47161h = null;
            this.f47157b = null;
            this.f47158c = obj2;
            this.d = accountRepositoryImpl;
            this.f47159e = profile;
            i2 = 0;
            this.f47160f = 0;
            this.g = 2;
            objK = deferredA.k(this);
            if (objK != coroutineSingletons) {
                obj3 = ((Result) objK).f71708b;
                if (obj3 instanceof Result.Failure) {
                    obj3 = null;
                }
                list = (List) obj3;
                if (list != null) {
                    listC = AddressDtoMapperKt.c(list);
                } else {
                    listC = EmptyList.f71768b;
                }
                profileLocalDataSource = accountRepositoryImpl.g;
                profileA = Profile.a(profile, listC, null, 524031);
                this.f47161h = null;
                this.f47157b = null;
                this.f47158c = obj2;
                this.d = null;
                this.f47159e = null;
                this.f47160f = i2;
                this.g = 3;
                if (profileLocalDataSource.c(profileA, this) != coroutineSingletons) {
                    obj4 = obj2;
                    obj2 = obj4;
                }
            }
            return coroutineSingletons;
        }
        return new Result(obj2);
    }
}
