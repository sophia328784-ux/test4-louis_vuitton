package com.dynatrace.agent.storage.preference;

import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import com.dynatrace.agent.metrics.AppVersion;
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
@DebugMetadata(c = "com.dynatrace.agent.storage.preference.MetricsDiskDataSource$setMetrics$2", f = "MetricsDiskDataSource.kt", l = {}, m = "invokeSuspend")
final class MetricsDiskDataSource$setMetrics$2 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f26994b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MetricsData f26995c;
    public final /* synthetic */ MetricsDiskDataSource d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MetricsDiskDataSource$setMetrics$2(MetricsData metricsData, MetricsDiskDataSource metricsDiskDataSource, Continuation continuation) {
        super(2, continuation);
        this.f26995c = metricsData;
        this.d = metricsDiskDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        MetricsDiskDataSource$setMetrics$2 metricsDiskDataSource$setMetrics$2 = new MetricsDiskDataSource$setMetrics$2(this.f26995c, this.d, continuation);
        metricsDiskDataSource$setMetrics$2.f26994b = obj;
        return metricsDiskDataSource$setMetrics$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MetricsDiskDataSource$setMetrics$2) create((MutablePreferences) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutablePreferences mutablePreferences = (MutablePreferences) this.f26994b;
        Preferences.Key key = MetricsDiskDataSource.Keys.f26975a;
        MetricsData metricsData = this.f26995c;
        mutablePreferences.e(key, new Integer(metricsData.f26965a));
        mutablePreferences.e(MetricsDiskDataSource.Keys.f26976b, new Integer(metricsData.f26966b));
        mutablePreferences.e(MetricsDiskDataSource.Keys.f26977c, new Integer(metricsData.f26967c));
        mutablePreferences.e(MetricsDiskDataSource.Keys.d, new Integer(metricsData.d));
        mutablePreferences.e(MetricsDiskDataSource.Keys.g, Boolean.valueOf(metricsData.f26971i));
        mutablePreferences.e(MetricsDiskDataSource.Keys.f26982j, metricsData.f26972j);
        mutablePreferences.e(MetricsDiskDataSource.Keys.o, metricsData.n);
        mutablePreferences.e(MetricsDiskDataSource.Keys.p, metricsData.o);
        mutablePreferences.e(MetricsDiskDataSource.Keys.q, Boolean.valueOf(metricsData.r));
        mutablePreferences.e(MetricsDiskDataSource.Keys.r, Boolean.valueOf(metricsData.q));
        mutablePreferences.e(MetricsDiskDataSource.Keys.s, metricsData.p);
        Preferences.Key key2 = MetricsDiskDataSource.Keys.f26978e;
        String str = metricsData.g;
        if (str != null) {
            mutablePreferences.e(key2, str);
        } else {
            mutablePreferences.d(key2);
        }
        Preferences.Key key3 = MetricsDiskDataSource.Keys.f26979f;
        String str2 = metricsData.f26970h;
        if (str2 != null) {
            mutablePreferences.e(key3, str2);
        } else {
            mutablePreferences.d(key3);
        }
        Preferences.Key key4 = MetricsDiskDataSource.Keys.f26980h;
        Double d = metricsData.f26968e;
        if (d != null) {
            mutablePreferences.e(key4, d);
        } else {
            mutablePreferences.d(key4);
        }
        Preferences.Key key5 = MetricsDiskDataSource.Keys.f26981i;
        Double d2 = metricsData.f26969f;
        if (d2 != null) {
            mutablePreferences.e(key5, d2);
        } else {
            mutablePreferences.d(key5);
        }
        Preferences.Key key6 = MetricsDiskDataSource.Keys.f26983k;
        String str3 = metricsData.f26973k;
        if (str3 != null) {
            mutablePreferences.e(key6, str3);
        } else {
            mutablePreferences.d(key6);
        }
        Preferences.Key key7 = MetricsDiskDataSource.Keys.l;
        String str4 = metricsData.l;
        if (str4 != null) {
            mutablePreferences.e(key7, str4);
        } else {
            mutablePreferences.d(key7);
        }
        AppVersion appVersion = metricsData.m;
        if (appVersion != null) {
            mutablePreferences.e(MetricsDiskDataSource.Keys.m, new Long(appVersion.f26864a));
            Preferences.Key key8 = MetricsDiskDataSource.Keys.n;
            String str5 = appVersion.f26865b;
            if (str5 != null) {
                mutablePreferences.e(key8, str5);
            } else {
                mutablePreferences.d(key8);
            }
        } else {
            mutablePreferences.d(MetricsDiskDataSource.Keys.m);
            mutablePreferences.d(MetricsDiskDataSource.Keys.n);
        }
        return Unit.f71739a;
    }
}
