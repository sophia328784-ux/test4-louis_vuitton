package com.vuitton.android.data.repository;

import com.vuitton.android.data.datasource.avatar.SavedUserAvatarLocalDataSource;
import com.vuitton.foundation.model.domain.model.avatar.SavedUserAvatar;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.AvatarRepositoryImpl$removeAvatarForUser$2", f = "AvatarRepositoryImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class AvatarRepositoryImpl$removeAvatarForUser$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Unit>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AvatarRepositoryImpl f47364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f47365c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvatarRepositoryImpl$removeAvatarForUser$2(AvatarRepositoryImpl avatarRepositoryImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f47364b = avatarRepositoryImpl;
        this.f47365c = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AvatarRepositoryImpl$removeAvatarForUser$2(this.f47364b, this.f47365c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AvatarRepositoryImpl$removeAvatarForUser$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        SavedUserAvatarLocalDataSource savedUserAvatarLocalDataSource = this.f47364b.f47346c;
        savedUserAvatarLocalDataSource.getClass();
        String str = this.f47365c;
        str.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            Object objA = savedUserAvatarLocalDataSource.a();
            if (Result.a(objA) != null) {
                objA = EmptyList.f71768b;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : (List) objA) {
                if (!Intrinsics.c(((SavedUserAvatar) obj2).f66671a, str)) {
                    arrayList.add(obj2);
                }
            }
            savedUserAvatarLocalDataSource.c(arrayList);
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return new Result(((Result) failure).f71708b);
    }
}
