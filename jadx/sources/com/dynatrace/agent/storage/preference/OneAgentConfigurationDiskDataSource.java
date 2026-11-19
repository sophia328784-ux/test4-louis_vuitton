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
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0007B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/storage/preference/OneAgentConfigurationDiskDataSource;", "", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "dataStore", "<init>", "(Landroidx/datastore/core/DataStore;)V", "Keys", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class OneAgentConfigurationDiskDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataStore f26996a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/storage/preference/OneAgentConfigurationDiskDataSource$Keys;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Keys {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Preferences.Key f26997a = new Preferences.Key("oa_agent_version");
    }

    public OneAgentConfigurationDiskDataSource(DataStore<Preferences> dataStore) {
        dataStore.getClass();
        this.f26996a = dataStore;
    }

    public final Object a(Continuation continuation) {
        final FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 = new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(this.f26996a.getData(), new OneAgentConfigurationDiskDataSource$getVersionOrNull$2(3, null));
        return FlowKt.p(new Flow<String>() { // from class: com.dynatrace.agent.storage.preference.OneAgentConfigurationDiskDataSource$getVersionOrNull$$inlined$map$1

            /* JADX INFO: renamed from: com.dynatrace.agent.storage.preference.OneAgentConfigurationDiskDataSource$getVersionOrNull$$inlined$map$1$2, reason: invalid class name */
            @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
            public final class AnonymousClass2<T> implements FlowCollector {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ FlowCollector f26999b;

                /* JADX INFO: renamed from: com.dynatrace.agent.storage.preference.OneAgentConfigurationDiskDataSource$getVersionOrNull$$inlined$map$1$2$1, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "com.dynatrace.agent.storage.preference.OneAgentConfigurationDiskDataSource$getVersionOrNull$$inlined$map$1$2", f = "OneAgentConfigurationDiskDataSource.kt", l = {50}, m = "emit")
                public final class AnonymousClass1 extends ContinuationImpl {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public /* synthetic */ Object f27000b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public int f27001c;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.f27000b = obj;
                        this.f27001c |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.f26999b = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i2 = anonymousClass1.f27001c;
                        if ((i2 & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.f27001c = i2 - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(continuation);
                    }
                    Object obj2 = anonymousClass1.f27000b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    int i3 = anonymousClass1.f27001c;
                    if (i3 == 0) {
                        ResultKt.b(obj2);
                        Object objB = ((Preferences) obj).b(OneAgentConfigurationDiskDataSource.Keys.f26997a);
                        anonymousClass1.f27001c = 1;
                        if (this.f26999b.emit(objB, anonymousClass1) == coroutineSingletons) {
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
        }, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    public final Object b(String str, ContinuationImpl continuationImpl) {
        OneAgentConfigurationDiskDataSource$setVersion$1 oneAgentConfigurationDiskDataSource$setVersion$1;
        if (continuationImpl instanceof OneAgentConfigurationDiskDataSource$setVersion$1) {
            oneAgentConfigurationDiskDataSource$setVersion$1 = (OneAgentConfigurationDiskDataSource$setVersion$1) continuationImpl;
            int i2 = oneAgentConfigurationDiskDataSource$setVersion$1.f27006e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                oneAgentConfigurationDiskDataSource$setVersion$1.f27006e = i2 - Integer.MIN_VALUE;
            } else {
                oneAgentConfigurationDiskDataSource$setVersion$1 = new OneAgentConfigurationDiskDataSource$setVersion$1(this, continuationImpl);
            }
        } else {
            oneAgentConfigurationDiskDataSource$setVersion$1 = new OneAgentConfigurationDiskDataSource$setVersion$1(this, continuationImpl);
        }
        Object obj = oneAgentConfigurationDiskDataSource$setVersion$1.f27005c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = oneAgentConfigurationDiskDataSource$setVersion$1.f27006e;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                DataStore dataStore = this.f26996a;
                OneAgentConfigurationDiskDataSource$setVersion$2 oneAgentConfigurationDiskDataSource$setVersion$2 = new OneAgentConfigurationDiskDataSource$setVersion$2(str, null);
                oneAgentConfigurationDiskDataSource$setVersion$1.f27004b = str;
                oneAgentConfigurationDiskDataSource$setVersion$1.f27006e = 1;
                if (PreferencesKt.a(dataStore, oneAgentConfigurationDiskDataSource$setVersion$2, oneAgentConfigurationDiskDataSource$setVersion$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                str = oneAgentConfigurationDiskDataSource$setVersion$1.f27004b;
                ResultKt.b(obj);
            }
            Utility.b("oneAgent version is updated: " + str);
        } catch (Exception unused) {
            Utility.a();
        }
        return Unit.f71739a;
    }
}
