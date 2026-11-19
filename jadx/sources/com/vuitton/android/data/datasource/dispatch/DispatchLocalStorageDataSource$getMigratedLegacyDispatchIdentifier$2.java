package com.vuitton.android.data.datasource.dispatch;

import android.content.SharedPreferences;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import dagger.Lazy;
import defpackage.md;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch$Id;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.dispatch.DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2", f = "DispatchLocalStorageDataSource.kt", l = {EACTags.APPLICATION_IMAGE}, m = "invokeSuspend", v = 2)
final class DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends InAppDispatch.Id>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f44091b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f44092c;
    public final /* synthetic */ DispatchLocalStorageDataSource d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2(DispatchLocalStorageDataSource dispatchLocalStorageDataSource, Continuation continuation) {
        super(2, continuation);
        this.d = dispatchLocalStorageDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DispatchLocalStorageDataSource$getMigratedLegacyDispatchIdentifier$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        Object failure2;
        Object obj2;
        DispatchLocalStorageDataSource dispatchLocalStorageDataSource = this.d;
        Lazy lazy = dispatchLocalStorageDataSource.f44079c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f44092c;
        if (i2 == 0) {
            ResultKt.b(obj);
            if (((SharedPreferences) lazy.get()).contains("dispatch_country_model")) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    Object objA = DispatchLocalStorageDataSource.a(dispatchLocalStorageDataSource, ((SharedPreferences) lazy.get()).getString("dispatch_country_model", null));
                    ResultKt.b(objA);
                    failure = new Result(new InAppDispatch.Id(((InAppDispatch.Id) objA).f67486a));
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
                failure2 = ((Result) failure).f71708b;
                if (Result.a(failure2) != null) {
                    this.f44091b = failure2;
                    this.f44092c = 1;
                    if (dispatchLocalStorageDataSource.c(this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    obj2 = failure2;
                }
            } else {
                Result.Companion companion3 = Result.INSTANCE;
                failure2 = new Result.Failure(new IllegalStateException("No legacy dispatch to migrate"));
            }
            return new Result(failure2);
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        obj2 = this.f44091b;
        ResultKt.b(obj);
        ((Result) obj).getClass();
        failure2 = obj2;
        return new Result(failure2);
    }
}
