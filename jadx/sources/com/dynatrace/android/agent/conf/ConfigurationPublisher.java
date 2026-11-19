package com.dynatrace.android.agent.conf;

import com.batch.android.s.b;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import defpackage.tr;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u0003\t\n\u000bB#\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\f"}, d2 = {"Lcom/dynatrace/android/agent/conf/ConfigurationPublisher;", "", "", "maxSubscribers", "", "Lcom/dynatrace/android/agent/conf/ConfigurationSubscriber;", "subscribers", "<init>", "(ILjava/util/Set;)V", "ConfigurationTransform", "ConfigurationUpdate", "ConfigChange", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ConfigurationPublisher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set f27357a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ConfigurationUpdate f27358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f27359c;

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.dynatrace.android.agent.conf.ConfigurationPublisher$ConfigChange[], still in use, count: 1, list:
      (r0v1 com.dynatrace.android.agent.conf.ConfigurationPublisher$ConfigChange[]) from 0x00a7: INVOKE (r0v1 com.dynatrace.android.agent.conf.ConfigurationPublisher$ConfigChange[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigChange;", "", "", b.a.f24015b, "Ljava/lang/String;", "getId", "()Ljava/lang/String;", "IS_3RDGEN_ENABLED", "IS_TOUCHES_ENABLED", "TRACESTATE_KEY_PREFIX", "INSTANCE_ID", "SESSION_ID", "APPLICATION_ID", "DATA_COLLECTION_LEVEL", "CRASH_REPORTING", "TRAFFIC_CONTROL", "AGENT_STATUS", "TRACE_CONTEXT_ENABLED", "SESSION_REPLAY_ENABLED", "REPLAY_METRICS_ENABLED", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class ConfigChange {
        IS_3RDGEN_ENABLED("3rd_gen_enabled"),
        IS_TOUCHES_ENABLED("touch_interaction_enabled"),
        TRACESTATE_KEY_PREFIX("tracestate_key_prefix"),
        INSTANCE_ID("instance_id"),
        SESSION_ID("session_id"),
        APPLICATION_ID("application_id"),
        DATA_COLLECTION_LEVEL("data_collection_level"),
        CRASH_REPORTING("crash_reporting"),
        TRAFFIC_CONTROL("traffic_control"),
        AGENT_STATUS("agent_status"),
        TRACE_CONTEXT_ENABLED("trace_context_enabled"),
        SESSION_REPLAY_ENABLED("session_replay_enabled"),
        REPLAY_METRICS_ENABLED("replay_metrics_enabled");

        private static final /* synthetic */ EnumEntries $ENTRIES;
        private final String id;

        static {
            $ENTRIES = EnumEntriesKt.a(configChangeArr);
        }

        public ConfigChange(String str) {
            super(str, i);
            this.id = str;
        }

        public static ConfigChange valueOf(String str) {
            return (ConfigChange) Enum.valueOf(ConfigChange.class, str);
        }

        public static ConfigChange[] values() {
            return (ConfigChange[]) $VALUES.clone();
        }

        public final String getId() {
            return this.id;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationTransform;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface ConfigurationTransform {
        ConfigurationUpdate.Builder a(ConfigurationUpdate.Builder builder);
    }

    public ConfigurationPublisher(int i2, Set<ConfigurationSubscriber> set) {
        set.getClass();
        this.f27357a = set;
        this.f27358b = new ConfigurationUpdate.Builder(false, false, null, null, null, null, 0, false, false, false, false, false, false, 8191, null).a();
        this.f27359c = new Object();
    }

    public final void a(ConfigurationTransform configurationTransform) {
        synchronized (this.f27359c) {
            ConfigurationUpdate configurationUpdateA = configurationTransform.a(this.f27358b.a()).a();
            if (configurationUpdateA.equals(this.f27358b)) {
                return;
            }
            this.f27358b = configurationUpdateA;
            configurationUpdateA.b();
            Iterator it = this.f27357a.iterator();
            while (it.hasNext()) {
                ((ConfigurationSubscriber) it.next()).a();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ConfigurationPublisher(int i2) {
        this(i2, null, 2, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ConfigurationPublisher() {
        this(0, null, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ ConfigurationPublisher(int i2, Set set, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 10 : i2, (i3 & 2) != 0 ? new LinkedHashSet() : set);
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0014Bo\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate;", "", "", "is3rdGenEnabled", "isTouchInteractionEnabled", "", "tracestateKeyPrefix", "instanceId", "sessionId", "applicationId", "", "dataCollectionLevel", "crashReporting", "trafficControl", "agentStatus", "traceContextEnabled", "sessionReplayEnabled", "replayMetricsEnabled", "<init>", "(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZ)V", "Builder", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class ConfigurationUpdate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f27360a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f27361b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f27362c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f27363e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f27364f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f27365h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f27366i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean f27367j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final boolean f27368k;
        public final boolean l;
        public final boolean m;

        public ConfigurationUpdate(boolean z, boolean z2, String str, String str2, String str3, String str4, int i2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
            d21.y(str, str2, str3, str4);
            this.f27360a = z;
            this.f27361b = z2;
            this.f27362c = str;
            this.d = str2;
            this.f27363e = str3;
            this.f27364f = str4;
            this.g = i2;
            this.f27365h = z3;
            this.f27366i = z4;
            this.f27367j = z5;
            this.f27368k = z6;
            this.l = z7;
            this.m = z8;
        }

        public final Builder a() {
            return new Builder(this.f27360a, this.f27361b, this.f27362c, this.d, this.f27363e, this.f27364f, this.g, this.f27365h, this.f27366i, this.f27367j, this.f27368k, this.l, this.m);
        }

        public final Map b() {
            return MapsKt.i(new Pair(ConfigChange.IS_3RDGEN_ENABLED.getId(), Boolean.valueOf(this.f27360a)), new Pair(ConfigChange.IS_TOUCHES_ENABLED.getId(), Boolean.valueOf(this.f27361b)), new Pair(ConfigChange.TRACESTATE_KEY_PREFIX.getId(), this.f27362c), new Pair(ConfigChange.INSTANCE_ID.getId(), this.d), new Pair(ConfigChange.SESSION_ID.getId(), this.f27363e), new Pair(ConfigChange.APPLICATION_ID.getId(), this.f27364f), new Pair(ConfigChange.DATA_COLLECTION_LEVEL.getId(), Integer.valueOf(this.g)), new Pair(ConfigChange.CRASH_REPORTING.getId(), Boolean.valueOf(this.f27365h)), new Pair(ConfigChange.TRAFFIC_CONTROL.getId(), Boolean.valueOf(this.f27366i)), new Pair(ConfigChange.AGENT_STATUS.getId(), Boolean.valueOf(this.f27367j)), new Pair(ConfigChange.TRACE_CONTEXT_ENABLED.getId(), Boolean.valueOf(this.f27368k)), new Pair(ConfigChange.SESSION_REPLAY_ENABLED.getId(), Boolean.valueOf(this.l)), new Pair(ConfigChange.REPLAY_METRICS_ENABLED.getId(), Boolean.valueOf(this.m)));
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ConfigurationUpdate)) {
                return false;
            }
            ConfigurationUpdate configurationUpdate = (ConfigurationUpdate) obj;
            return this.f27360a == configurationUpdate.f27360a && this.f27361b == configurationUpdate.f27361b && Intrinsics.c(this.f27362c, configurationUpdate.f27362c) && Intrinsics.c(this.d, configurationUpdate.d) && Intrinsics.c(this.f27363e, configurationUpdate.f27363e) && Intrinsics.c(this.f27364f, configurationUpdate.f27364f) && this.g == configurationUpdate.g && this.f27365h == configurationUpdate.f27365h && this.f27366i == configurationUpdate.f27366i && this.f27367j == configurationUpdate.f27367j && this.f27368k == configurationUpdate.f27368k && this.l == configurationUpdate.l && this.m == configurationUpdate.m;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.m) + o60.b(o60.b(o60.b(o60.b(o60.b(tr.b(this.g, fc.b(fc.b(fc.b(fc.b(o60.b(Boolean.hashCode(this.f27360a) * 31, 31, this.f27361b), 31, this.f27362c), 31, this.d), 31, this.f27363e), 31, this.f27364f), 31), 31, this.f27365h), 31, this.f27366i), 31, this.f27367j), 31, this.f27368k), 31, this.l);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ConfigurationUpdate(is3rdGenEnabled=");
            sb.append(this.f27360a);
            sb.append(", isTouchInteractionEnabled=");
            sb.append(this.f27361b);
            sb.append(", tracestateKeyPrefix=");
            sb.append(this.f27362c);
            sb.append(", instanceId=");
            sb.append(this.d);
            sb.append(", sessionId=");
            sb.append(this.f27363e);
            sb.append(", applicationId=");
            sb.append(this.f27364f);
            sb.append(", dataCollectionLevel=");
            sb.append(this.g);
            sb.append(", crashReporting=");
            sb.append(this.f27365h);
            sb.append(", trafficControl=");
            sb.append(this.f27366i);
            sb.append(", agentStatus=");
            sb.append(this.f27367j);
            sb.append(", traceContextEnabled=");
            sb.append(this.f27368k);
            sb.append(", sessionReplayEnabled=");
            sb.append(this.l);
            sb.append(", replayMetricsEnabled=");
            return d21.q(sb, this.m, ')');
        }

        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\n\u0018\u00002\u00020\u0001B\u008b\u0001\b\u0007\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0005\u0012\b\b\u0002\u0010\t\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/dynatrace/android/agent/conf/ConfigurationPublisher$ConfigurationUpdate$Builder;", "", "", "is3rdGenEnabled", "isTouchInteractionEnabled", "", "tracestateKeyPrefix", "instanceId", "sessionId", "applicationId", "", "dataCollectionLevel", "crashReporting", "trafficControl", "agentStatus", "traceContextEnabled", "sessionReplayEnabled", "replayMetricsEnabled", "<init>", "(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZZZZ)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Builder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public boolean f27369a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f27370b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f27371c;
            public String d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public String f27372e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f27373f;
            public int g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public boolean f27374h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public boolean f27375i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public boolean f27376j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public boolean f27377k;
            public boolean l;
            public final boolean m;

            public /* synthetic */ Builder(boolean z, boolean z2, String str, String str2, String str3, String str4, int i2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, int i3, DefaultConstructorMarker defaultConstructorMarker) {
                this((i3 & 1) != 0 ? false : z, (i3 & 2) != 0 ? false : z2, (i3 & 4) != 0 ? "" : str, (i3 & 8) != 0 ? "" : str2, (i3 & 16) != 0 ? "" : str3, (i3 & 32) == 0 ? str4 : "", (i3 & 64) != 0 ? 0 : i2, (i3 & 128) != 0 ? false : z3, (i3 & 256) == 0 ? z4 : false, (i3 & 512) != 0 ? true : z5, (i3 & 1024) != 0 ? true : z6, (i3 & 2048) != 0 ? true : z7, (i3 & 4096) != 0 ? true : z8);
            }

            public final ConfigurationUpdate a() {
                return new ConfigurationUpdate(this.f27369a, this.f27370b, this.f27371c, this.d, this.f27372e, this.f27373f, this.g, this.f27374h, this.f27375i, this.f27376j, this.f27377k, this.l, this.m);
            }

            public Builder(boolean z) {
                this(z, false, null, null, null, null, 0, false, false, false, false, false, false, 8190, null);
            }

            public Builder(boolean z, boolean z2) {
                this(z, z2, null, null, null, null, 0, false, false, false, false, false, false, 8188, null);
            }

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public Builder(boolean z, boolean z2, String str) {
                this(z, z2, str, null, null, null, 0, false, false, false, false, false, false, 8184, null);
                str.getClass();
            }

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public Builder(boolean z, boolean z2, String str, String str2) {
                this(z, z2, str, str2, null, null, 0, false, false, false, false, false, false, 8176, null);
                str.getClass();
                str2.getClass();
            }

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public Builder(boolean z, boolean z2, String str, String str2, String str3) {
                this(z, z2, str, str2, str3, null, 0, false, false, false, false, false, false, 8160, null);
                cj.z(str, str2, str3);
            }

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public Builder(boolean z, boolean z2, String str, String str2, String str3, String str4) {
                this(z, z2, str, str2, str3, str4, 0, false, false, false, false, false, false, 8128, null);
                d21.y(str, str2, str3, str4);
            }

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public Builder(boolean z, boolean z2, String str, String str2, String str3, String str4, int i2) {
                this(z, z2, str, str2, str3, str4, i2, false, false, false, false, false, false, 8064, null);
                d21.y(str, str2, str3, str4);
            }

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public Builder(boolean z, boolean z2, String str, String str2, String str3, String str4, int i2, boolean z3) {
                this(z, z2, str, str2, str3, str4, i2, z3, false, false, false, false, false, 7936, null);
                d21.y(str, str2, str3, str4);
            }

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public Builder(boolean z, boolean z2, String str, String str2, String str3, String str4, int i2, boolean z3, boolean z4) {
                this(z, z2, str, str2, str3, str4, i2, z3, z4, false, false, false, false, 7680, null);
                d21.y(str, str2, str3, str4);
            }

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public Builder(boolean z, boolean z2, String str, String str2, String str3, String str4, int i2, boolean z3, boolean z4, boolean z5) {
                this(z, z2, str, str2, str3, str4, i2, z3, z4, z5, false, false, false, 7168, null);
                d21.y(str, str2, str3, str4);
            }

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public Builder(boolean z, boolean z2, String str, String str2, String str3, String str4, int i2, boolean z3, boolean z4, boolean z5, boolean z6) {
                this(z, z2, str, str2, str3, str4, i2, z3, z4, z5, z6, false, false, 6144, null);
                d21.y(str, str2, str3, str4);
            }

            /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
            public Builder(boolean z, boolean z2, String str, String str2, String str3, String str4, int i2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
                this(z, z2, str, str2, str3, str4, i2, z3, z4, z5, z6, z7, false, 4096, null);
                d21.y(str, str2, str3, str4);
            }

            public Builder(boolean z, boolean z2, String str, String str2, String str3, String str4, int i2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8) {
                d21.y(str, str2, str3, str4);
                this.f27369a = z;
                this.f27370b = z2;
                this.f27371c = str;
                this.d = str2;
                this.f27372e = str3;
                this.f27373f = str4;
                this.g = i2;
                this.f27374h = z3;
                this.f27375i = z4;
                this.f27376j = z5;
                this.f27377k = z6;
                this.l = z7;
                this.m = z8;
            }

            public Builder() {
                this(false, false, null, null, null, null, 0, false, false, false, false, false, false, 8191, null);
            }
        }
    }
}
