package com.dynatrace.agent.storage.preference;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKt;
import com.dynatrace.agent.metrics.AppVersion;
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
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0007B\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource;", "", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "dataStore", "<init>", "(Landroidx/datastore/core/DataStore;)V", "Keys", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class MetricsDiskDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataStore f26974a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/storage/preference/MetricsDiskDataSource$Keys;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Keys {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Preferences.Key f26975a = new Preferences.Key("mt_deviceScreenWidth");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Preferences.Key f26976b = new Preferences.Key("mt_deviceScreenHeight");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Preferences.Key f26977c = new Preferences.Key("mt_deviceOrientation");
        public static final Preferences.Key d = new Preferences.Key("mt_deviceBatteryLevel");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Preferences.Key f26978e = new Preferences.Key("mt_deviceManufacturer");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Preferences.Key f26979f = new Preferences.Key("mt_deviceModelIdentifier");
        public static final Preferences.Key g = new Preferences.Key("mt_deviceIsRooted");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final Preferences.Key f26980h = new Preferences.Key("mt_locationLatitude");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final Preferences.Key f26981i = new Preferences.Key("mt_locationLongitude");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final Preferences.Key f26982j = new Preferences.Key("mt_osName");

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final Preferences.Key f26983k = new Preferences.Key("mt_osVersion");
        public static final Preferences.Key l = new Preferences.Key("mt_bundle");
        public static final Preferences.Key m = new Preferences.Key("mt_versionCode");
        public static final Preferences.Key n = new Preferences.Key("mt_versionName");
        public static final Preferences.Key o = new Preferences.Key("mt_instanceId");
        public static final Preferences.Key p = new Preferences.Key("mt_sessionId");
        public static final Preferences.Key q = new Preferences.Key("mt_sessionActive");
        public static final Preferences.Key r = new Preferences.Key("mt_crashReporting");
        public static final Preferences.Key s = new Preferences.Key("mt_networkType");
    }

    public MetricsDiskDataSource(DataStore<Preferences> dataStore) {
        dataStore.getClass();
        this.f26974a = dataStore;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        MetricsDiskDataSource$getMetrics$1 metricsDiskDataSource$getMetrics$1;
        if (continuationImpl instanceof MetricsDiskDataSource$getMetrics$1) {
            metricsDiskDataSource$getMetrics$1 = (MetricsDiskDataSource$getMetrics$1) continuationImpl;
            int i2 = metricsDiskDataSource$getMetrics$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                metricsDiskDataSource$getMetrics$1.d = i2 - Integer.MIN_VALUE;
            } else {
                metricsDiskDataSource$getMetrics$1 = new MetricsDiskDataSource$getMetrics$1(this, continuationImpl);
            }
        } else {
            metricsDiskDataSource$getMetrics$1 = new MetricsDiskDataSource$getMetrics$1(this, continuationImpl);
        }
        Object objP = metricsDiskDataSource$getMetrics$1.f26990b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = metricsDiskDataSource$getMetrics$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objP);
                final FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 = new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(this.f26974a.getData(), new MetricsDiskDataSource$getMetrics$2(3, null));
                FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1 flowKt__ErrorsKt$catch$$inlined$unsafeFlow$2 = new FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1(new Flow<MetricsData>() { // from class: com.dynatrace.agent.storage.preference.MetricsDiskDataSource$getMetrics$$inlined$map$1

                    /* JADX INFO: renamed from: com.dynatrace.agent.storage.preference.MetricsDiskDataSource$getMetrics$$inlined$map$1$2, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                    public final class AnonymousClass2<T> implements FlowCollector {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ FlowCollector f26986b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ MetricsDiskDataSource f26987c;

                        /* JADX INFO: renamed from: com.dynatrace.agent.storage.preference.MetricsDiskDataSource$getMetrics$$inlined$map$1$2$1, reason: invalid class name */
                        @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
                        @DebugMetadata(c = "com.dynatrace.agent.storage.preference.MetricsDiskDataSource$getMetrics$$inlined$map$1$2", f = "MetricsDiskDataSource.kt", l = {50}, m = "emit")
                        public final class AnonymousClass1 extends ContinuationImpl {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public /* synthetic */ Object f26988b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public int f26989c;

                            public AnonymousClass1(Continuation continuation) {
                                super(continuation);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                this.f26988b = obj;
                                this.f26989c |= Integer.MIN_VALUE;
                                return AnonymousClass2.this.emit(null, this);
                            }
                        }

                        public AnonymousClass2(FlowCollector flowCollector, MetricsDiskDataSource metricsDiskDataSource) {
                            this.f26986b = flowCollector;
                            this.f26987c = metricsDiskDataSource;
                        }

                        /* JADX WARN: Code duplicated, block: B:7:0x0017  */
                        @Override // kotlinx.coroutines.flow.FlowCollector
                        public final Object emit(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1;
                            int i2;
                            if (continuation instanceof AnonymousClass1) {
                                anonymousClass1 = (AnonymousClass1) continuation;
                                int i3 = anonymousClass1.f26989c;
                                if ((i3 & Integer.MIN_VALUE) != 0) {
                                    anonymousClass1.f26989c = i3 - Integer.MIN_VALUE;
                                } else {
                                    anonymousClass1 = new AnonymousClass1(continuation);
                                }
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                            Object obj2 = anonymousClass1.f26988b;
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                            int i4 = anonymousClass1.f26989c;
                            MetricsData metricsData = null;
                            if (i4 == 0) {
                                ResultKt.b(obj2);
                                Preferences preferences = (Preferences) obj;
                                String str = (String) preferences.b(MetricsDiskDataSource.Keys.p);
                                String str2 = str == null ? "" : str;
                                if (str2.length() == 0) {
                                    i2 = 1;
                                } else {
                                    Integer num = (Integer) preferences.b(MetricsDiskDataSource.Keys.f26975a);
                                    int iIntValue = num != null ? num.intValue() : -1;
                                    Integer num2 = (Integer) preferences.b(MetricsDiskDataSource.Keys.f26976b);
                                    int iIntValue2 = num2 != null ? num2.intValue() : -1;
                                    Integer num3 = (Integer) preferences.b(MetricsDiskDataSource.Keys.f26977c);
                                    int iIntValue3 = num3 != null ? num3.intValue() : -1;
                                    Integer num4 = (Integer) preferences.b(MetricsDiskDataSource.Keys.d);
                                    int iIntValue4 = num4 != null ? num4.intValue() : -1;
                                    Double d = (Double) preferences.b(MetricsDiskDataSource.Keys.f26980h);
                                    Double d2 = (Double) preferences.b(MetricsDiskDataSource.Keys.f26981i);
                                    String str3 = (String) preferences.b(MetricsDiskDataSource.Keys.f26978e);
                                    String str4 = (String) preferences.b(MetricsDiskDataSource.Keys.f26979f);
                                    Boolean bool = (Boolean) preferences.b(MetricsDiskDataSource.Keys.g);
                                    boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
                                    String str5 = (String) preferences.b(MetricsDiskDataSource.Keys.f26982j);
                                    String str6 = str5 == null ? "" : str5;
                                    String str7 = (String) preferences.b(MetricsDiskDataSource.Keys.f26983k);
                                    String str8 = (String) preferences.b(MetricsDiskDataSource.Keys.l);
                                    Long l = (Long) preferences.b(MetricsDiskDataSource.Keys.m);
                                    String str9 = (String) preferences.b(MetricsDiskDataSource.Keys.n);
                                    int i5 = iIntValue;
                                    this.f26987c.getClass();
                                    AppVersion appVersion = (l == null || l.longValue() < 1) ? null : new AppVersion(l.longValue(), str9);
                                    String str10 = (String) preferences.b(MetricsDiskDataSource.Keys.o);
                                    if (str10 == null) {
                                        str10 = "";
                                    }
                                    String str11 = (String) preferences.b(MetricsDiskDataSource.Keys.s);
                                    String str12 = str11 == null ? r7 : str11;
                                    Boolean bool2 = (Boolean) preferences.b(MetricsDiskDataSource.Keys.r);
                                    boolean zBooleanValue2 = bool2 != null ? bool2.booleanValue() : false;
                                    Boolean bool3 = (Boolean) preferences.b(MetricsDiskDataSource.Keys.q);
                                    metricsData = new MetricsData(i5, iIntValue2, iIntValue3, iIntValue4, d, d2, str3, str4, zBooleanValue, str6, str7, str8, appVersion, str10, str2, str12, zBooleanValue2, bool3 != null ? bool3.booleanValue() : false);
                                    i2 = 1;
                                }
                                anonymousClass1.f26989c = i2;
                                if (this.f26986b.emit(metricsData, anonymousClass1) == coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                            } else {
                                if (i4 != 1) {
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
                        Object objF = flowKt__ErrorsKt$catch$$inlined$unsafeFlow$1.f(new AnonymousClass2(flowCollector, this), continuation);
                        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                    }
                }, new MetricsDiskDataSource$getMetrics$4(3, null));
                metricsDiskDataSource$getMetrics$1.d = 1;
                objP = FlowKt.p(flowKt__ErrorsKt$catch$$inlined$unsafeFlow$2, metricsDiskDataSource$getMetrics$1);
                if (objP == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objP);
            }
            return (MetricsData) objP;
        } catch (Exception unused) {
            Utility.a();
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(MetricsData metricsData, ContinuationImpl continuationImpl) {
        MetricsDiskDataSource$setMetrics$1 metricsDiskDataSource$setMetrics$1;
        if (continuationImpl instanceof MetricsDiskDataSource$setMetrics$1) {
            metricsDiskDataSource$setMetrics$1 = (MetricsDiskDataSource$setMetrics$1) continuationImpl;
            int i2 = metricsDiskDataSource$setMetrics$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                metricsDiskDataSource$setMetrics$1.d = i2 - Integer.MIN_VALUE;
            } else {
                metricsDiskDataSource$setMetrics$1 = new MetricsDiskDataSource$setMetrics$1(this, continuationImpl);
            }
        } else {
            metricsDiskDataSource$setMetrics$1 = new MetricsDiskDataSource$setMetrics$1(this, continuationImpl);
        }
        Object obj = metricsDiskDataSource$setMetrics$1.f26992b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = metricsDiskDataSource$setMetrics$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Utility.b("metrics are updated: " + metricsData);
                DataStore dataStore = this.f26974a;
                MetricsDiskDataSource$setMetrics$2 metricsDiskDataSource$setMetrics$2 = new MetricsDiskDataSource$setMetrics$2(metricsData, this, null);
                metricsDiskDataSource$setMetrics$1.d = 1;
                if (PreferencesKt.a(dataStore, metricsDiskDataSource$setMetrics$2, metricsDiskDataSource$setMetrics$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
        } catch (Exception unused) {
            Utility.a();
        }
        return Unit.f71739a;
    }
}
