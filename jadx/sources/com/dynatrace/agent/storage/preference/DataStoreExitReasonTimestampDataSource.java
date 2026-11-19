package com.dynatrace.agent.storage.preference;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKt;
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
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0007B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource;", "", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "dataStore", "<init>", "(Landroidx/datastore/core/DataStore;)V", "Keys", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DataStoreExitReasonTimestampDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataStore f26931a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/storage/preference/DataStoreExitReasonTimestampDataSource$Keys;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Keys {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Preferences.Key f26932a = new Preferences.Key("reason_crash");
    }

    public DataStoreExitReasonTimestampDataSource(DataStore<Preferences> dataStore) {
        dataStore.getClass();
        this.f26931a = dataStore;
    }

    public final Object a(Continuation continuation) {
        final FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 = new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(this.f26931a.getData(), new DataStoreExitReasonTimestampDataSource$getCrashTimestamp$2(3, null));
        return FlowKt.p(new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(new Flow<Long>() { // from class: com.dynatrace.agent.storage.preference.DataStoreExitReasonTimestampDataSource$getCrashTimestamp$$inlined$map$1

            /* JADX INFO: renamed from: com.dynatrace.agent.storage.preference.DataStoreExitReasonTimestampDataSource$getCrashTimestamp$$inlined$map$1$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f26934b;

                /* JADX INFO: renamed from: com.dynatrace.agent.storage.preference.DataStoreExitReasonTimestampDataSource$getCrashTimestamp$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.dynatrace.agent.storage.preference.DataStoreExitReasonTimestampDataSource$getCrashTimestamp$$inlined$map$1$2", f = "DataStoreExitReasonTimestampDataSource.kt", l = {50}, m = "emit")
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f26935b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f26936c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f26935b = obj;
                        this.f26936c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f26934b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f26936c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f26936c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f26935b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f26936c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        Long l = (Long) ((Preferences) obj).b(DataStoreExitReasonTimestampDataSource.Keys.f26932a);
                        Long l2 = new Long(l != null ? l.longValue() : -1L);
                        anonymousClass1.f26936c = 1;
                        if (this.f26934b.emit(l2, anonymousClass1) == coroutineSingletons) {
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
        }, new DataStoreExitReasonTimestampDataSource$getCrashTimestamp$4(3, null)), continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public final Object b(long j2, ContinuationImpl continuationImpl) {
        DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1 dataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1;
        if (continuationImpl instanceof DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1) {
            dataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1 = (DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1) continuationImpl;
            int i2 = dataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1.f26943e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1.f26943e = i2 - Integer.MIN_VALUE;
            } else {
                dataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1 = new DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1(this, continuationImpl);
            }
        } else {
            dataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1 = new DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1(this, continuationImpl);
        }
        Object obj = dataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1.f26942c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = dataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1.f26943e;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                DataStore dataStore = this.f26931a;
                DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$2 dataStoreExitReasonTimestampDataSource$saveCrashTimestamp$2 = new DataStoreExitReasonTimestampDataSource$saveCrashTimestamp$2(j2, null);
                dataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1.f26941b = j2;
                dataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1.f26943e = 1;
                if (PreferencesKt.a(dataStore, dataStoreExitReasonTimestampDataSource$saveCrashTimestamp$2, dataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                j2 = dataStoreExitReasonTimestampDataSource$saveCrashTimestamp$1.f26941b;
                ResultKt.b(obj);
            }
            Utility.b("anr timestamp is updated: " + j2);
        } catch (Exception unused) {
            Utility.a();
        }
        return Unit.f71739a;
    }
}
