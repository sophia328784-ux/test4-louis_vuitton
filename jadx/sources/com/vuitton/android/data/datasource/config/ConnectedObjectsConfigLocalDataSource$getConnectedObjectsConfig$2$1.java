package com.vuitton.android.data.datasource.config;

import com.vuitton.android.data.dto.connectivity.sync.ConnectedObjectsConfigDto;
import com.vuitton.android.data.dto.connectivity.sync.mapper.ConnectedObjectsConfigMapperKt;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/connectivity/sync/ConnectedObjectsConfig;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$2$1", f = "ConnectedObjectsConfigLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ConnectedObjectsConfig>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ConnectedObjectsConfigLocalDataSource f44043b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$2$1(ConnectedObjectsConfigLocalDataSource connectedObjectsConfigLocalDataSource, Continuation continuation) {
        super(2, continuation);
        this.f44043b = connectedObjectsConfigLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$2$1(this.f44043b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConnectedObjectsConfigLocalDataSource$getConnectedObjectsConfig$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        ConnectedObjectsConfigLocalDataSource connectedObjectsConfigLocalDataSource = this.f44043b;
        String string = connectedObjectsConfigLocalDataSource.f44036b.getString("connected_objects_config", null);
        if (string != null && string.length() != 0) {
            return ConnectedObjectsConfigMapperKt.a((ConnectedObjectsConfigDto) connectedObjectsConfigLocalDataSource.f44037c.b(ConnectedObjectsConfigDto.INSTANCE.serializer(), string));
        }
        md.k("JSON string is null or empty");
        return null;
    }
}
