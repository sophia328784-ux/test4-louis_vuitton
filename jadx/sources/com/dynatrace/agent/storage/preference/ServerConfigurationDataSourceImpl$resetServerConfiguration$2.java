package com.dynatrace.agent.storage.preference;

import androidx.datastore.preferences.core.MutablePreferences;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.storage.preference.ServerConfigurationDataSourceImpl$resetServerConfiguration$2", f = "ServerConfigurationDataSourceImpl.kt", l = {}, m = "invokeSuspend")
final class ServerConfigurationDataSourceImpl$resetServerConfiguration$2 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f27036b;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ServerConfigurationDataSourceImpl$resetServerConfiguration$2 serverConfigurationDataSourceImpl$resetServerConfiguration$2 = new ServerConfigurationDataSourceImpl$resetServerConfiguration$2(2, continuation);
        serverConfigurationDataSourceImpl$resetServerConfiguration$2.f27036b = obj;
        return serverConfigurationDataSourceImpl$resetServerConfiguration$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ServerConfigurationDataSourceImpl$resetServerConfiguration$2) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutablePreferences mutablePreferences = (MutablePreferences) this.f27036b;
        mutablePreferences.d(ServerConfigurationDataSourceImpl.Keys.f27012a);
        mutablePreferences.d(ServerConfigurationDataSourceImpl.Keys.f27013b);
        mutablePreferences.d(ServerConfigurationDataSourceImpl.Keys.f27014c);
        mutablePreferences.d(ServerConfigurationDataSourceImpl.Keys.d);
        mutablePreferences.d(ServerConfigurationDataSourceImpl.Keys.f27015e);
        mutablePreferences.d(ServerConfigurationDataSourceImpl.Keys.f27016f);
        mutablePreferences.d(ServerConfigurationDataSourceImpl.Keys.g);
        mutablePreferences.d(ServerConfigurationDataSourceImpl.Keys.f27017h);
        mutablePreferences.d(ServerConfigurationDataSourceImpl.Keys.f27018i);
        mutablePreferences.d(ServerConfigurationDataSourceImpl.Keys.f27019j);
        mutablePreferences.d(ServerConfigurationDataSourceImpl.Keys.f27020k);
        return Unit.f71739a;
    }
}
