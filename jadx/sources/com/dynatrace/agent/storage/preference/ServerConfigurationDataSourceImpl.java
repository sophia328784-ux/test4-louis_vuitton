package com.dynatrace.agent.storage.preference;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKt;
import com.dynatrace.android.agent.util.Utility;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0007B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl;", "Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSource;", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "dataStore", "<init>", "(Landroidx/datastore/core/DataStore;)V", "Keys", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ServerConfigurationDataSourceImpl implements ServerConfigurationDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataStore f27009a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile ServerConfigurationV4 f27010b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CopyOnWriteArrayList f27011c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Keys {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Preferences.Key f27012a = new Preferences.Key("sc_revision");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Preferences.Key f27013b = new Preferences.Key("sc_max_beacon_size_kib");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Preferences.Key f27014c = new Preferences.Key("sc_max_event_size_kib");
        public static final Preferences.Key d = new Preferences.Key("sc_capture");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Preferences.Key f27015e = new Preferences.Key("sc_user_interaction_capture");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Preferences.Key f27016f = new Preferences.Key("sc_tracestate_key_prefix");
        public static final Preferences.Key g = new Preferences.Key("sc_trace_context_enabled");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final Preferences.Key f27017h = new Preferences.Key("sc_ua_enable");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final Preferences.Key f27018i = new Preferences.Key("sc_ua_activity_end_delay_ms");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final Preferences.Key f27019j = new Preferences.Key("sc_ua_activity_validation_delay_ms");

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final Preferences.Key f27020k = new Preferences.Key("sc_ua_max_duration_ms");
    }

    public ServerConfigurationDataSourceImpl(DataStore<Preferences> dataStore) {
        dataStore.getClass();
        this.f27009a = dataStore;
        ServerConfigurationV4.l.getClass();
        this.f27010b = ServerConfigurationV4.m;
        this.f27011c = new CopyOnWriteArrayList();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    @Override // com.dynatrace.agent.storage.preference.ServerConfigurationDataSource
    public final Object a(ServerConfigurationV4 serverConfigurationV4, ContinuationImpl continuationImpl) {
        ServerConfigurationDataSourceImpl$setServerConfiguration$1 serverConfigurationDataSourceImpl$setServerConfiguration$1;
        if (continuationImpl instanceof ServerConfigurationDataSourceImpl$setServerConfiguration$1) {
            serverConfigurationDataSourceImpl$setServerConfiguration$1 = (ServerConfigurationDataSourceImpl$setServerConfiguration$1) continuationImpl;
            int i2 = serverConfigurationDataSourceImpl$setServerConfiguration$1.f27040f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                serverConfigurationDataSourceImpl$setServerConfiguration$1.f27040f = i2 - Integer.MIN_VALUE;
            } else {
                serverConfigurationDataSourceImpl$setServerConfiguration$1 = new ServerConfigurationDataSourceImpl$setServerConfiguration$1(this, continuationImpl);
            }
        } else {
            serverConfigurationDataSourceImpl$setServerConfiguration$1 = new ServerConfigurationDataSourceImpl$setServerConfiguration$1(this, continuationImpl);
        }
        Object obj = serverConfigurationDataSourceImpl$setServerConfiguration$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = serverConfigurationDataSourceImpl$setServerConfiguration$1.f27040f;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                this.f27010b = serverConfigurationV4;
                DataStore dataStore = this.f27009a;
                ServerConfigurationDataSourceImpl$setServerConfiguration$2 serverConfigurationDataSourceImpl$setServerConfiguration$2 = new ServerConfigurationDataSourceImpl$setServerConfiguration$2(serverConfigurationV4, null);
                serverConfigurationDataSourceImpl$setServerConfiguration$1.f27037b = this;
                serverConfigurationDataSourceImpl$setServerConfiguration$1.f27038c = serverConfigurationV4;
                serverConfigurationDataSourceImpl$setServerConfiguration$1.f27040f = 1;
                if (PreferencesKt.a(dataStore, serverConfigurationDataSourceImpl$setServerConfiguration$2, serverConfigurationDataSourceImpl$setServerConfiguration$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                serverConfigurationV4 = serverConfigurationDataSourceImpl$setServerConfiguration$1.f27038c;
                this = serverConfigurationDataSourceImpl$setServerConfiguration$1.f27037b;
                ResultKt.b(obj);
            }
            Utility.b("configuration is updated: " + serverConfigurationV4);
        } catch (Exception unused) {
            Utility.a();
        }
        Iterator it = this.f27011c.iterator();
        while (it.hasNext()) {
            ((ServerConfigurationChangeListener) it.next()).a(serverConfigurationV4);
        }
        return Unit.f71739a;
    }

    @Override // com.dynatrace.agent.storage.preference.ServerConfigurationDataSource
    /* JADX INFO: renamed from: b, reason: from getter */
    public final ServerConfigurationV4 getF27010b() {
        return this.f27010b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.dynatrace.agent.storage.preference.ServerConfigurationDataSource
    public final Object c(ContinuationImpl continuationImpl) {
        ServerConfigurationDataSourceImpl$resetServerConfiguration$1 serverConfigurationDataSourceImpl$resetServerConfiguration$1;
        if (continuationImpl instanceof ServerConfigurationDataSourceImpl$resetServerConfiguration$1) {
            serverConfigurationDataSourceImpl$resetServerConfiguration$1 = (ServerConfigurationDataSourceImpl$resetServerConfiguration$1) continuationImpl;
            int i2 = serverConfigurationDataSourceImpl$resetServerConfiguration$1.f27035e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                serverConfigurationDataSourceImpl$resetServerConfiguration$1.f27035e = i2 - Integer.MIN_VALUE;
            } else {
                serverConfigurationDataSourceImpl$resetServerConfiguration$1 = new ServerConfigurationDataSourceImpl$resetServerConfiguration$1(this, continuationImpl);
            }
        } else {
            serverConfigurationDataSourceImpl$resetServerConfiguration$1 = new ServerConfigurationDataSourceImpl$resetServerConfiguration$1(this, continuationImpl);
        }
        Object obj = serverConfigurationDataSourceImpl$resetServerConfiguration$1.f27034c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = serverConfigurationDataSourceImpl$resetServerConfiguration$1.f27035e;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                DataStore dataStore = this.f27009a;
                ServerConfigurationDataSourceImpl$resetServerConfiguration$2 serverConfigurationDataSourceImpl$resetServerConfiguration$2 = new ServerConfigurationDataSourceImpl$resetServerConfiguration$2(2, null);
                serverConfigurationDataSourceImpl$resetServerConfiguration$1.f27033b = this;
                serverConfigurationDataSourceImpl$resetServerConfiguration$1.f27035e = 1;
                if (PreferencesKt.a(dataStore, serverConfigurationDataSourceImpl$resetServerConfiguration$2, serverConfigurationDataSourceImpl$resetServerConfiguration$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                this = serverConfigurationDataSourceImpl$resetServerConfiguration$1.f27033b;
                ResultKt.b(obj);
            }
            Utility.b("configuration preferences are cleared");
        } catch (Exception unused) {
            Utility.a();
        }
        ServerConfigurationV4.l.getClass();
        this.f27010b = ServerConfigurationV4.m;
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.dynatrace.agent.storage.preference.ServerConfigurationDataSource
    public final Object d(ContinuationImpl continuationImpl) {
        ServerConfigurationDataSourceImpl$preloadServerConfiguration$1 serverConfigurationDataSourceImpl$preloadServerConfiguration$1;
        ServerConfigurationDataSourceImpl serverConfigurationDataSourceImpl;
        if (continuationImpl instanceof ServerConfigurationDataSourceImpl$preloadServerConfiguration$1) {
            serverConfigurationDataSourceImpl$preloadServerConfiguration$1 = (ServerConfigurationDataSourceImpl$preloadServerConfiguration$1) continuationImpl;
            int i2 = serverConfigurationDataSourceImpl$preloadServerConfiguration$1.f27028f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                serverConfigurationDataSourceImpl$preloadServerConfiguration$1.f27028f = i2 - Integer.MIN_VALUE;
            } else {
                serverConfigurationDataSourceImpl$preloadServerConfiguration$1 = new ServerConfigurationDataSourceImpl$preloadServerConfiguration$1(this, continuationImpl);
            }
        } else {
            serverConfigurationDataSourceImpl$preloadServerConfiguration$1 = new ServerConfigurationDataSourceImpl$preloadServerConfiguration$1(this, continuationImpl);
        }
        Object objP = serverConfigurationDataSourceImpl$preloadServerConfiguration$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = serverConfigurationDataSourceImpl$preloadServerConfiguration$1.f27028f;
        if (i3 == 0) {
            ResultKt.b(objP);
            final FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 = new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(this.f27009a.getData(), new ServerConfigurationDataSourceImpl$preloadServerConfiguration$2(3, null));
            FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 flowKt__ErrorsKt$catch$$inlined$unsafeFlow$2 = new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(new Flow<ServerConfigurationV4>() { // from class: com.dynatrace.agent.storage.preference.ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1

                /* JADX INFO: renamed from: com.dynatrace.agent.storage.preference.ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1$2, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                public final class AnonymousClass2<T> implements FlowCollector {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ FlowCollector f27022b;

                    /* JADX INFO: renamed from: com.dynatrace.agent.storage.preference.ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1$2$1, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                    @DebugMetadata(c = "com.dynatrace.agent.storage.preference.ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1$2", f = "ServerConfigurationDataSourceImpl.kt", l = {50}, m = "emit")
                    public final class AnonymousClass1 extends ContinuationImpl {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public /* synthetic */ Object f27023b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public int f27024c;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.f27023b = obj;
                            this.f27024c |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector) {
                        this.f27022b = flowCollector;
                    }

                    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
                    /* JADX WARN: Multi-variable type inference failed */
                    /* JADX WARN: Type inference failed for: r14v0, types: [java.util.List] */
                    /* JADX WARN: Type inference failed for: r6v2, types: [kotlin.collections.EmptyList] */
                    /* JADX WARN: Type inference failed for: r6v3 */
                    /* JADX WARN: Type inference failed for: r6v9, types: [java.util.ArrayList] */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1;
                        ?? arrayList;
                        List listSplit$default;
                        if (continuation instanceof AnonymousClass1) {
                            anonymousClass1 = (AnonymousClass1) continuation;
                            int i2 = anonymousClass1.f27024c;
                            if ((i2 & Integer.MIN_VALUE) != 0) {
                                anonymousClass1.f27024c = i2 - Integer.MIN_VALUE;
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                        Object obj2 = anonymousClass1.f27023b;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        int i3 = anonymousClass1.f27024c;
                        if (i3 == 0) {
                            ResultKt.b(obj2);
                            Preferences preferences = (Preferences) obj;
                            Long l = (Long) preferences.b(ServerConfigurationDataSourceImpl.Keys.f27012a);
                            long jLongValue = l != null ? l.longValue() : 0L;
                            Integer num = (Integer) preferences.b(ServerConfigurationDataSourceImpl.Keys.f27013b);
                            int iIntValue = num != null ? num.intValue() : 1024;
                            Integer num2 = (Integer) preferences.b(ServerConfigurationDataSourceImpl.Keys.f27014c);
                            int iIntValue2 = num2 != null ? num2.intValue() : 256;
                            Boolean bool = (Boolean) preferences.b(ServerConfigurationDataSourceImpl.Keys.d);
                            boolean zBooleanValue = bool != null ? bool.booleanValue() : true;
                            String str = (String) preferences.b(ServerConfigurationDataSourceImpl.Keys.f27015e);
                            if (str == null || (listSplit$default = StringsKt__StringsKt.split$default(str, new String[]{","}, false, 0, 6, null)) == null) {
                                arrayList = EmptyList.f71768b;
                            } else {
                                arrayList = new ArrayList();
                                for (T t : listSplit$default) {
                                    if (((String) t).length() > 0) {
                                        arrayList.add(t);
                                    }
                                }
                            }
                            ?? r14 = arrayList;
                            String str2 = (String) preferences.b(ServerConfigurationDataSourceImpl.Keys.f27016f);
                            if (str2 == null) {
                                str2 = "";
                            }
                            String str3 = str2;
                            Boolean bool2 = (Boolean) preferences.b(ServerConfigurationDataSourceImpl.Keys.g);
                            boolean zBooleanValue2 = bool2 != null ? bool2.booleanValue() : true;
                            Boolean bool3 = (Boolean) preferences.b(ServerConfigurationDataSourceImpl.Keys.f27017h);
                            boolean zBooleanValue3 = bool3 != null ? bool3.booleanValue() : true;
                            Integer num3 = (Integer) preferences.b(ServerConfigurationDataSourceImpl.Keys.f27018i);
                            int iIntValue3 = num3 != null ? num3.intValue() : 100;
                            Integer num4 = (Integer) preferences.b(ServerConfigurationDataSourceImpl.Keys.f27019j);
                            int iIntValue4 = num4 != null ? num4.intValue() : 100;
                            Integer num5 = (Integer) preferences.b(ServerConfigurationDataSourceImpl.Keys.f27020k);
                            ServerConfigurationV4 serverConfigurationV4 = new ServerConfigurationV4(jLongValue, iIntValue, iIntValue2, zBooleanValue, r14, str3, zBooleanValue2, zBooleanValue3, iIntValue3, iIntValue4, num5 != null ? num5.intValue() : 50000);
                            anonymousClass1.f27024c = 1;
                            if (this.f27022b.emit(serverConfigurationV4, anonymousClass1) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        } else {
                            if (i3 != 1) {
                                md.k("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            ResultKt.b(obj2);
                        }
                        return Unit.f71739a;
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public final Object f(FlowCollector flowCollector, Continuation continuation) {
                    Object objF = flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1.f(new AnonymousClass2(flowCollector), continuation);
                    return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                }
            }, new ServerConfigurationDataSourceImpl$preloadServerConfiguration$4(3, null));
            serverConfigurationDataSourceImpl$preloadServerConfiguration$1.f27025b = this;
            serverConfigurationDataSourceImpl$preloadServerConfiguration$1.f27026c = this;
            serverConfigurationDataSourceImpl$preloadServerConfiguration$1.f27028f = 1;
            objP = FlowKt.p(flowKt__ErrorsKt$catch$$inlined$unsafeFlow$2, serverConfigurationDataSourceImpl$preloadServerConfiguration$1);
            if (objP == coroutineSingletons) {
                return coroutineSingletons;
            }
            serverConfigurationDataSourceImpl = this;
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            this = serverConfigurationDataSourceImpl$preloadServerConfiguration$1.f27026c;
            serverConfigurationDataSourceImpl = serverConfigurationDataSourceImpl$preloadServerConfiguration$1.f27025b;
            ResultKt.b(objP);
        }
        this.f27010b = (ServerConfigurationV4) objP;
        Utility.b("preloading of ServerConfiguration complete: " + serverConfigurationDataSourceImpl.f27010b);
        ServerConfigurationV4 serverConfigurationV4 = serverConfigurationDataSourceImpl.f27010b;
        Iterator it = serverConfigurationDataSourceImpl.f27011c.iterator();
        while (it.hasNext()) {
            ((ServerConfigurationChangeListener) it.next()).a(serverConfigurationV4);
        }
        return Unit.f71739a;
    }
}
