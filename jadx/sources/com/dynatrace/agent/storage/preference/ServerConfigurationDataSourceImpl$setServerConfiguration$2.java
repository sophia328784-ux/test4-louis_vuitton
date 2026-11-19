package com.dynatrace.agent.storage.preference;

import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import defpackage.av0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.storage.preference.ServerConfigurationDataSourceImpl$setServerConfiguration$2", f = "ServerConfigurationDataSourceImpl.kt", l = {}, m = "invokeSuspend")
final class ServerConfigurationDataSourceImpl$setServerConfiguration$2 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f27041b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ServerConfigurationV4 f27042c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ServerConfigurationDataSourceImpl$setServerConfiguration$2(ServerConfigurationV4 serverConfigurationV4, Continuation continuation) {
        super(2, continuation);
        this.f27042c = serverConfigurationV4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ServerConfigurationDataSourceImpl$setServerConfiguration$2 serverConfigurationDataSourceImpl$setServerConfiguration$2 = new ServerConfigurationDataSourceImpl$setServerConfiguration$2(this.f27042c, continuation);
        serverConfigurationDataSourceImpl$setServerConfiguration$2.f27041b = obj;
        return serverConfigurationDataSourceImpl$setServerConfiguration$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ServerConfigurationDataSourceImpl$setServerConfiguration$2) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutablePreferences mutablePreferences = (MutablePreferences) this.f27041b;
        Preferences.Key key = ServerConfigurationDataSourceImpl.Keys.f27012a;
        ServerConfigurationV4 serverConfigurationV4 = this.f27042c;
        mutablePreferences.e(key, new Long(serverConfigurationV4.f27043a));
        mutablePreferences.e(ServerConfigurationDataSourceImpl.Keys.f27013b, new Integer(serverConfigurationV4.f27044b));
        mutablePreferences.e(ServerConfigurationDataSourceImpl.Keys.f27014c, new Integer(serverConfigurationV4.f27045c));
        mutablePreferences.e(ServerConfigurationDataSourceImpl.Keys.d, Boolean.valueOf(serverConfigurationV4.d));
        mutablePreferences.e(ServerConfigurationDataSourceImpl.Keys.f27015e, CollectionsKt.K(serverConfigurationV4.f27046e, ",", null, null, new av0(1), 30));
        mutablePreferences.e(ServerConfigurationDataSourceImpl.Keys.f27016f, serverConfigurationV4.f27047f);
        mutablePreferences.e(ServerConfigurationDataSourceImpl.Keys.g, Boolean.valueOf(serverConfigurationV4.g));
        mutablePreferences.e(ServerConfigurationDataSourceImpl.Keys.f27017h, Boolean.valueOf(serverConfigurationV4.f27048h));
        mutablePreferences.e(ServerConfigurationDataSourceImpl.Keys.f27018i, new Integer(serverConfigurationV4.f27049i));
        mutablePreferences.e(ServerConfigurationDataSourceImpl.Keys.f27019j, new Integer(serverConfigurationV4.f27050j));
        mutablePreferences.e(ServerConfigurationDataSourceImpl.Keys.f27020k, new Integer(serverConfigurationV4.f27051k));
        return Unit.f71739a;
    }
}
