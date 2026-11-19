package com.dynatrace.agent;

import com.dynatrace.agent.common.InstrumentationFlavor;
import com.dynatrace.agent.di.SelfMonitoringComponent;
import com.dynatrace.agent.events.enrichment.JsonObjectExtensionsKt;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.android.agent.util.Utility;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\u000eB1\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;", "", "", "cacheTimeMillis", "Lcom/dynatrace/agent/OneAgentConfiguration;", "oneAgentConfiguration", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lcom/dynatrace/agent/RumEventDispatcher;", "dispatcher", "Lcom/dynatrace/agent/di/SelfMonitoringComponent;", "selfMonitoring", "<init>", "(JLcom/dynatrace/agent/OneAgentConfiguration;Lkotlinx/coroutines/CoroutineScope;Lcom/dynatrace/agent/RumEventDispatcher;Lcom/dynatrace/agent/di/SelfMonitoringComponent;)V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class OneAgentStartupEventDispatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f26468a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CoroutineScope f26469b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RumEventDispatcher f26470c;
    public final SelfMonitoringComponent d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f26471e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public JSONObject f26472f;
    public Job g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f26473h;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/OneAgentStartupEventDispatcher$Companion;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f26474a;

        static {
            int[] iArr = new int[InstrumentationFlavor.values().length];
            try {
                iArr[InstrumentationFlavor.REACT_NATIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[InstrumentationFlavor.FLUTTER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f26474a = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public OneAgentStartupEventDispatcher(long j2, OneAgentConfiguration oneAgentConfiguration, CoroutineScope coroutineScope, RumEventDispatcher rumEventDispatcher, SelfMonitoringComponent selfMonitoringComponent) {
        oneAgentConfiguration.getClass();
        coroutineScope.getClass();
        rumEventDispatcher.getClass();
        selfMonitoringComponent.getClass();
        this.f26468a = j2;
        this.f26469b = coroutineScope;
        this.f26470c = rumEventDispatcher;
        this.d = selfMonitoringComponent;
        int i2 = WhenMappings.f26474a[oneAgentConfiguration.f26434i.ordinal()];
        boolean z = true;
        if (i2 != 1 && i2 != 2) {
            z = false;
        }
        this.f26471e = z;
    }

    public final void a(JSONObject jSONObject, long j2, long j3, SessionInformationMetrics sessionInformationMetrics) throws JSONException {
        JSONObject jSONObjectB = JsonObjectExtensionsKt.b(jSONObject);
        jSONObjectB.put("start_time", j2);
        jSONObjectB.put("duration", j3);
        synchronized (this) {
            try {
                if (this.f26471e && !this.f26473h) {
                    this.f26473h = true;
                    this.f26472f = jSONObjectB;
                    this.g = BuildersKt.c(this.f26469b, null, null, new OneAgentStartupEventDispatcher$dispatchNativeEvent$1$1(this, sessionInformationMetrics, null), 3);
                } else if (sessionInformationMetrics.g) {
                    BuildersKt.c(this.f26469b, null, null, new OneAgentStartupEventDispatcher$verifyDataPrivacyAndSendEvent$1(this, jSONObjectB, sessionInformationMetrics, null), 3);
                } else {
                    Utility.b("startup shouldn't be collected, DataCollectionLevel is Off");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public /* synthetic */ OneAgentStartupEventDispatcher(long j2, OneAgentConfiguration oneAgentConfiguration, CoroutineScope coroutineScope, RumEventDispatcher rumEventDispatcher, SelfMonitoringComponent selfMonitoringComponent, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 10000L : j2, oneAgentConfiguration, coroutineScope, rumEventDispatcher, selfMonitoringComponent);
    }
}
