package com.vuitton.android.data.datasource.config;

import android.content.SharedPreferences;
import com.vuitton.android.data.dto.connectivity.sync.ConnectedObjectsConfigDto;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$2", f = "ConnectedObjectsConfigLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Unit>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ConnectedObjectsConfigLocalDataSource f44046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectedObjectsConfigDto f44047c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$2(ConnectedObjectsConfigLocalDataSource connectedObjectsConfigLocalDataSource, ConnectedObjectsConfigDto connectedObjectsConfigDto, Continuation continuation) {
        super(2, continuation);
        this.f44046b = connectedObjectsConfigLocalDataSource;
        this.f44047c = connectedObjectsConfigDto;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$2(this.f44046b, this.f44047c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConnectedObjectsConfigLocalDataSource$upsertConnectedObjectsConfig$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        ConnectedObjectsConfigLocalDataSource connectedObjectsConfigLocalDataSource = this.f44046b;
        ConnectedObjectsConfigDto connectedObjectsConfigDto = this.f44047c;
        try {
            Result.Companion companion = Result.INSTANCE;
            String strC = connectedObjectsConfigLocalDataSource.f44037c.c(ConnectedObjectsConfigDto.INSTANCE.serializer(), connectedObjectsConfigDto);
            SharedPreferences.Editor editorEdit = connectedObjectsConfigLocalDataSource.f44036b.edit();
            editorEdit.putString("connected_objects_config", strC);
            editorEdit.commit();
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
