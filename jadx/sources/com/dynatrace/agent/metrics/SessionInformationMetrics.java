package com.dynatrace.agent.metrics;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import defpackage.fc;
import defpackage.o60;
import defpackage.zy0;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0080\b\u0018\u00002\u00020\u0001:\u0002\u0013\u0014B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fBA\b\u0016\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u000f¢\u0006\u0004\b\u000b\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/dynatrace/agent/metrics/SessionInformationMetrics;", "", "", "instanceId", "sessionId", "", "isGrailEventsCanBeCaptured", "crashReporting", "sessionActive", "Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;", "dataCollectionLevel", "<init>", "(Ljava/lang/String;Ljava/lang/String;ZZZLcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;)V", "", "visitorId", "", "sessionInfoId", "sequenceNumber", "(JIIZZZI)V", "Companion", "DataCollectionLevel", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final /* data */ class SessionInformationMetrics {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final SessionInformationMetrics f26882h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f26883a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f26884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f26885c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f26886e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DataCollectionLevel f26887f;
    public final boolean g;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/metrics/SessionInformationMetrics$Companion;", "", "", "NO_SESSION_ID", "Ljava/lang/String;", "Lcom/dynatrace/agent/metrics/SessionInformationMetrics;", "NO_SESSION", "Lcom/dynatrace/agent/metrics/SessionInformationMetrics;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.dynatrace.agent.metrics.SessionInformationMetrics$DataCollectionLevel[], still in use, count: 1, list:
      (r0v1 com.dynatrace.agent.metrics.SessionInformationMetrics$DataCollectionLevel[]) from 0x0024: INVOKE (r0v1 com.dynatrace.agent.metrics.SessionInformationMetrics$DataCollectionLevel[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\t\b\u0080\u0081\u0002\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel;", "", "", "serialized", "I", NBSSpanMetricUnit.Bit, "()I", "Companion", "OFF", "PERFORMANCE", "USER_BEHAVIOR", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class DataCollectionLevel {
        OFF(0),
        PERFORMANCE(1),
        USER_BEHAVIOR(2);

        private static final /* synthetic */ EnumEntries $ENTRIES;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final int serialized;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/metrics/SessionInformationMetrics$DataCollectionLevel$Companion;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            $ENTRIES = EnumEntriesKt.a(new DataCollectionLevel[]{r0, r1, r2});
        }

        public DataCollectionLevel(int i2) {
            super(str, i);
            this.serialized = i2;
        }

        public static EnumEntries a() {
            return $ENTRIES;
        }

        public static DataCollectionLevel valueOf(String str) {
            return (DataCollectionLevel) Enum.valueOf(DataCollectionLevel.class, str);
        }

        public static DataCollectionLevel[] values() {
            return (DataCollectionLevel[]) $VALUES.clone();
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final int getSerialized() {
            return this.serialized;
        }
    }

    static {
        new Companion(null);
        f26882h = new SessionInformationMetrics("", "this is not a session, discard any events", false, false, false, DataCollectionLevel.OFF);
    }

    public SessionInformationMetrics(long j2, int i2, int i3, boolean z, boolean z2, boolean z3, int i4) {
        String strValueOf = String.valueOf(j2);
        StringBuilder sb = new StringBuilder();
        sb.append(j2);
        sb.append('_');
        sb.append(i2);
        sb.append('-');
        sb.append(i3);
        String string = sb.toString();
        DataCollectionLevel.INSTANCE.getClass();
        for (DataCollectionLevel dataCollectionLevel : DataCollectionLevel.a()) {
            if (dataCollectionLevel.getSerialized() == i4) {
                this(strValueOf, string, z, z2, z3, dataCollectionLevel);
                return;
            }
        }
        zy0.c("Collection contains no element matching the predicate.");
        throw null;
    }

    public final boolean a() {
        return this.f26885c && this.f26886e;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionInformationMetrics)) {
            return false;
        }
        SessionInformationMetrics sessionInformationMetrics = (SessionInformationMetrics) obj;
        return Intrinsics.c(this.f26883a, sessionInformationMetrics.f26883a) && Intrinsics.c(this.f26884b, sessionInformationMetrics.f26884b) && this.f26885c == sessionInformationMetrics.f26885c && this.d == sessionInformationMetrics.d && this.f26886e == sessionInformationMetrics.f26886e && this.f26887f == sessionInformationMetrics.f26887f;
    }

    public final int hashCode() {
        return this.f26887f.hashCode() + o60.b(o60.b(o60.b(fc.b(this.f26883a.hashCode() * 31, 31, this.f26884b), 31, this.f26885c), 31, this.d), 31, this.f26886e);
    }

    public final String toString() {
        return "SessionInformationMetrics(instanceId=" + this.f26883a + ", sessionId=" + this.f26884b + ", isGrailEventsCanBeCaptured=" + this.f26885c + ", crashReporting=" + this.d + ", sessionActive=" + this.f26886e + ", dataCollectionLevel=" + this.f26887f + ')';
    }

    public SessionInformationMetrics(String str, String str2, boolean z, boolean z2, boolean z3, DataCollectionLevel dataCollectionLevel) {
        str.getClass();
        str2.getClass();
        dataCollectionLevel.getClass();
        this.f26883a = str;
        this.f26884b = str2;
        this.f26885c = z;
        this.d = z2;
        this.f26886e = z3;
        this.f26887f = dataCollectionLevel;
        dataCollectionLevel.getClass();
        this.g = dataCollectionLevel == DataCollectionLevel.PERFORMANCE || dataCollectionLevel == DataCollectionLevel.USER_BEHAVIOR;
    }
}
