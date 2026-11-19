package com.dynatrace.agent.storage.preference;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKt;
import com.dynatrace.agent.storage.db.EndPointInfo;
import com.dynatrace.android.agent.util.Utility;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0007B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSourceImpl;", "Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSource;", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "dataStore", "<init>", "(Landroidx/datastore/core/DataStore;)V", "Keys", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class EndPointInfoDataSourceImpl implements EndPointInfoDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataStore f26946a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/storage/preference/EndPointInfoDataSourceImpl$Keys;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Keys {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Preferences.Key f26947a = new Preferences.Key("ep_app_id");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Preferences.Key f26948b = new Preferences.Key("ep_beacon_url");
    }

    public EndPointInfoDataSourceImpl(DataStore<Preferences> dataStore) {
        dataStore.getClass();
        this.f26946a = dataStore;
    }

    @Override // com.dynatrace.agent.storage.preference.EndPointInfoDataSource
    public final Object a(Continuation continuation) {
        final FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 = new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(this.f26946a.getData(), new EndPointInfoDataSourceImpl$getEndPointInfo$2(3, null));
        return FlowKt.p(new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(new Flow<EndPointInfo>() { // from class: com.dynatrace.agent.storage.preference.EndPointInfoDataSourceImpl$getEndPointInfo$$inlined$map$1

            /* JADX INFO: renamed from: com.dynatrace.agent.storage.preference.EndPointInfoDataSourceImpl$getEndPointInfo$$inlined$map$1$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f26953b;

                /* JADX INFO: renamed from: com.dynatrace.agent.storage.preference.EndPointInfoDataSourceImpl$getEndPointInfo$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.dynatrace.agent.storage.preference.EndPointInfoDataSourceImpl$getEndPointInfo$$inlined$map$1$2", f = "EndPointInfoDataSourceImpl.kt", l = {50}, m = "emit")
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f26954b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f26955c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f26954b = obj;
                        this.f26955c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f26953b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f26955c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f26955c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f26954b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f26955c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        Preferences preferences = (Preferences) obj;
                        String str = (String) preferences.b(EndPointInfoDataSourceImpl.Keys.f26947a);
                        if (str == null) {
                            str = "";
                        }
                        String str2 = (String) preferences.b(EndPointInfoDataSourceImpl.Keys.f26948b);
                        EndPointInfo endPointInfo = new EndPointInfo(str, str2 != null ? str2 : "");
                        anonymousClass1.f26955c = 1;
                        if (this.f26953b.emit(endPointInfo, anonymousClass1) == coroutineSingletons) {
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
            public final Object f(FlowCollector flowCollector, Continuation continuation2) {
                Object objF = flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1.f(new AnonymousClass2(flowCollector), continuation2);
                return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
            }
        }, new EndPointInfoDataSourceImpl$getEndPointInfo$4(3, null)), continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    @Override // com.dynatrace.agent.storage.preference.EndPointInfoDataSource
    public final Object b(EndPointInfo endPointInfo, ContinuationImpl continuationImpl) {
        EndPointInfoDataSourceImpl$setEndPointInfo$1 endPointInfoDataSourceImpl$setEndPointInfo$1;
        if (continuationImpl instanceof EndPointInfoDataSourceImpl$setEndPointInfo$1) {
            endPointInfoDataSourceImpl$setEndPointInfo$1 = (EndPointInfoDataSourceImpl$setEndPointInfo$1) continuationImpl;
            int i2 = endPointInfoDataSourceImpl$setEndPointInfo$1.f26962e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                endPointInfoDataSourceImpl$setEndPointInfo$1.f26962e = i2 - Integer.MIN_VALUE;
            } else {
                endPointInfoDataSourceImpl$setEndPointInfo$1 = new EndPointInfoDataSourceImpl$setEndPointInfo$1(this, continuationImpl);
            }
        } else {
            endPointInfoDataSourceImpl$setEndPointInfo$1 = new EndPointInfoDataSourceImpl$setEndPointInfo$1(this, continuationImpl);
        }
        Object obj = endPointInfoDataSourceImpl$setEndPointInfo$1.f26961c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = endPointInfoDataSourceImpl$setEndPointInfo$1.f26962e;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                DataStore dataStore = this.f26946a;
                EndPointInfoDataSourceImpl$setEndPointInfo$2 endPointInfoDataSourceImpl$setEndPointInfo$2 = new EndPointInfoDataSourceImpl$setEndPointInfo$2(endPointInfo, null);
                endPointInfoDataSourceImpl$setEndPointInfo$1.f26960b = endPointInfo;
                endPointInfoDataSourceImpl$setEndPointInfo$1.f26962e = 1;
                if (PreferencesKt.a(dataStore, endPointInfoDataSourceImpl$setEndPointInfo$2, endPointInfoDataSourceImpl$setEndPointInfo$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                endPointInfo = endPointInfoDataSourceImpl$setEndPointInfo$1.f26960b;
                ResultKt.b(obj);
            }
            Utility.b("endpoint info is updated: " + endPointInfo);
        } catch (Exception unused) {
            Utility.a();
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.dynatrace.agent.storage.preference.EndPointInfoDataSource
    public final Object c(ContinuationImpl continuationImpl) {
        EndPointInfoDataSourceImpl$clearPreferences$1 endPointInfoDataSourceImpl$clearPreferences$1;
        if (continuationImpl instanceof EndPointInfoDataSourceImpl$clearPreferences$1) {
            endPointInfoDataSourceImpl$clearPreferences$1 = (EndPointInfoDataSourceImpl$clearPreferences$1) continuationImpl;
            int i2 = endPointInfoDataSourceImpl$clearPreferences$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                endPointInfoDataSourceImpl$clearPreferences$1.d = i2 - Integer.MIN_VALUE;
            } else {
                endPointInfoDataSourceImpl$clearPreferences$1 = new EndPointInfoDataSourceImpl$clearPreferences$1(this, continuationImpl);
            }
        } else {
            endPointInfoDataSourceImpl$clearPreferences$1 = new EndPointInfoDataSourceImpl$clearPreferences$1(this, continuationImpl);
        }
        Object obj = endPointInfoDataSourceImpl$clearPreferences$1.f26949b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = endPointInfoDataSourceImpl$clearPreferences$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                DataStore dataStore = this.f26946a;
                EndPointInfoDataSourceImpl$clearPreferences$2 endPointInfoDataSourceImpl$clearPreferences$2 = new EndPointInfoDataSourceImpl$clearPreferences$2(2, null);
                endPointInfoDataSourceImpl$clearPreferences$1.d = 1;
                if (PreferencesKt.a(dataStore, endPointInfoDataSourceImpl$clearPreferences$2, endPointInfoDataSourceImpl$clearPreferences$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            Utility.b("endpoint preferences are cleared");
        } catch (Exception unused) {
            Utility.a();
        }
        return Unit.f71739a;
    }
}
