package androidx.work;

import com.batch.android.s.b;
import defpackage.fc;
import java.util.Set;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.crypto.CryptoServicesPermission;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0003\u0019\u001a\u001bB\u0083\u0001\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\f\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0011\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0016\u001a\u00020\f¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"Landroidx/work/WorkInfo;", "", "Ljava/util/UUID;", b.a.f24015b, "Landroidx/work/WorkInfo$State;", "state", "", "", "tags", "Landroidx/work/Data;", "outputData", "progress", "", "runAttemptCount", "generation", "Landroidx/work/Constraints;", CryptoServicesPermission.CONSTRAINTS, "", "initialDelayMillis", "Landroidx/work/WorkInfo$PeriodicityInfo;", "periodicityInfo", "nextScheduleTimeMillis", "stopReason", "<init>", "(Ljava/util/UUID;Landroidx/work/WorkInfo$State;Ljava/util/Set;Landroidx/work/Data;Landroidx/work/Data;IILandroidx/work/Constraints;JLandroidx/work/WorkInfo$PeriodicityInfo;JI)V", "State", "PeriodicityInfo", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class WorkInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UUID f20269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final State f20270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f20271c;
    public final Data d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Data f20272e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f20273f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Constraints f20274h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f20275i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final PeriodicityInfo f20276j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f20277k;
    public final int l;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0014\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004R\u0014\u0010\u0011\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0004R\u0014\u0010\u0012\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0004R\u0014\u0010\u0013\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0004R\u0014\u0010\u0014\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0004R\u0014\u0010\u0015\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0004¨\u0006\u0016"}, d2 = {"Landroidx/work/WorkInfo$Companion;", "", "", "STOP_REASON_FOREGROUND_SERVICE_TIMEOUT", "I", "STOP_REASON_NOT_STOPPED", "STOP_REASON_UNKNOWN", "STOP_REASON_CANCELLED_BY_APP", "STOP_REASON_PREEMPT", "STOP_REASON_TIMEOUT", "STOP_REASON_DEVICE_STATE", "STOP_REASON_CONSTRAINT_BATTERY_NOT_LOW", "STOP_REASON_CONSTRAINT_CHARGING", "STOP_REASON_CONSTRAINT_CONNECTIVITY", "STOP_REASON_CONSTRAINT_DEVICE_IDLE", "STOP_REASON_CONSTRAINT_STORAGE_NOT_LOW", "STOP_REASON_QUOTA", "STOP_REASON_BACKGROUND_RESTRICTION", "STOP_REASON_APP_STANDBY", "STOP_REASON_USER", "STOP_REASON_SYSTEM_PROCESSING", "STOP_REASON_ESTIMATED_APP_LAUNCH_TIME_CHANGED", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/work/WorkInfo$PeriodicityInfo;", "", "", "repeatIntervalMillis", "flexIntervalMillis", "<init>", "(JJ)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class PeriodicityInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f20278a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f20279b;

        public PeriodicityInfo(long j2, long j3) {
            this.f20278a = j2;
            this.f20279b = j3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && PeriodicityInfo.class.equals(obj.getClass())) {
                PeriodicityInfo periodicityInfo = (PeriodicityInfo) obj;
                if (periodicityInfo.f20278a == this.f20278a && periodicityInfo.f20279b == this.f20279b) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Long.hashCode(this.f20279b) + (Long.hashCode(this.f20278a) * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("PeriodicityInfo{repeatIntervalMillis=");
            sb.append(this.f20278a);
            sb.append(", flexIntervalMillis=");
            return fc.k(sb, this.f20279b, '}');
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Landroidx/work/WorkInfo$State;", "", "ENQUEUED", "RUNNING", "SUCCEEDED", "FAILED", "BLOCKED", "CANCELLED", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class State {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ State[] $VALUES;
        public static final State BLOCKED;
        public static final State CANCELLED;
        public static final State ENQUEUED;
        public static final State FAILED;
        public static final State RUNNING;
        public static final State SUCCEEDED;

        static {
            State state = new State("ENQUEUED", 0);
            ENQUEUED = state;
            State state2 = new State("RUNNING", 1);
            RUNNING = state2;
            State state3 = new State("SUCCEEDED", 2);
            SUCCEEDED = state3;
            State state4 = new State("FAILED", 3);
            FAILED = state4;
            State state5 = new State("BLOCKED", 4);
            BLOCKED = state5;
            State state6 = new State("CANCELLED", 5);
            CANCELLED = state6;
            State[] stateArr = {state, state2, state3, state4, state5, state6};
            $VALUES = stateArr;
            $ENTRIES = EnumEntriesKt.a(stateArr);
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }

        public final boolean a() {
            return this == SUCCEEDED || this == FAILED || this == CANCELLED;
        }
    }

    static {
        new Companion(null);
    }

    public /* synthetic */ WorkInfo(UUID uuid, State state, Set set, Data data, Data data2, int i2, int i3, Constraints constraints, long j2, PeriodicityInfo periodicityInfo, long j3, int i4, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(uuid, state, set, (i5 & 8) != 0 ? Data.f20244c : data, (i5 & 16) != 0 ? Data.f20244c : data2, (i5 & 32) != 0 ? 0 : i2, (i5 & 64) != 0 ? 0 : i3, (i5 & 128) != 0 ? Constraints.f20225j : constraints, (i5 & 256) != 0 ? 0L : j2, (i5 & 512) != 0 ? null : periodicityInfo, (i5 & 1024) != 0 ? Long.MAX_VALUE : j3, (i5 & 2048) != 0 ? -256 : i4);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !WorkInfo.class.equals(obj.getClass())) {
            return false;
        }
        WorkInfo workInfo = (WorkInfo) obj;
        if (this.f20273f == workInfo.f20273f && this.g == workInfo.g && Intrinsics.c(this.f20269a, workInfo.f20269a) && this.f20270b == workInfo.f20270b && Intrinsics.c(this.d, workInfo.d) && Intrinsics.c(this.f20274h, workInfo.f20274h) && this.f20275i == workInfo.f20275i && Intrinsics.c(this.f20276j, workInfo.f20276j) && this.f20277k == workInfo.f20277k && this.l == workInfo.l && Intrinsics.c(this.f20271c, workInfo.f20271c)) {
            return Intrinsics.c(this.f20272e, workInfo.f20272e);
        }
        return false;
    }

    public final int hashCode() {
        int iA = fc.a((this.f20274h.hashCode() + ((((((this.f20272e.hashCode() + ((this.f20271c.hashCode() + ((this.d.hashCode() + ((this.f20270b.hashCode() + (this.f20269a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31) + this.f20273f) * 31) + this.g) * 31)) * 31, 31, this.f20275i);
        PeriodicityInfo periodicityInfo = this.f20276j;
        return Integer.hashCode(this.l) + fc.a((iA + (periodicityInfo != null ? periodicityInfo.hashCode() : 0)) * 31, 31, this.f20277k);
    }

    public final String toString() {
        return "WorkInfo{id='" + this.f20269a + "', state=" + this.f20270b + ", outputData=" + this.d + ", tags=" + this.f20271c + ", progress=" + this.f20272e + ", runAttemptCount=" + this.f20273f + ", generation=" + this.g + ", constraints=" + this.f20274h + ", initialDelayMillis=" + this.f20275i + ", periodicityInfo=" + this.f20276j + ", nextScheduleTimeMillis=" + this.f20277k + "}, stopReason=" + this.l;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkInfo(UUID uuid, State state, Set<String> set, Data data) {
        this(uuid, state, set, data, null, 0, 0, null, 0L, null, 0L, 0, 4080, null);
        uuid.getClass();
        state.getClass();
        set.getClass();
        data.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkInfo(UUID uuid, State state, Set<String> set, Data data, Data data2) {
        this(uuid, state, set, data, data2, 0, 0, null, 0L, null, 0L, 0, 4064, null);
        uuid.getClass();
        state.getClass();
        set.getClass();
        data.getClass();
        data2.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkInfo(UUID uuid, State state, Set<String> set, Data data, Data data2, int i2) {
        this(uuid, state, set, data, data2, i2, 0, null, 0L, null, 0L, 0, 4032, null);
        uuid.getClass();
        state.getClass();
        set.getClass();
        data.getClass();
        data2.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkInfo(UUID uuid, State state, Set<String> set, Data data, Data data2, int i2, int i3) {
        this(uuid, state, set, data, data2, i2, i3, null, 0L, null, 0L, 0, 3968, null);
        uuid.getClass();
        state.getClass();
        set.getClass();
        data.getClass();
        data2.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkInfo(UUID uuid, State state, Set<String> set, Data data, Data data2, int i2, int i3, Constraints constraints) {
        this(uuid, state, set, data, data2, i2, i3, constraints, 0L, null, 0L, 0, 3840, null);
        uuid.getClass();
        state.getClass();
        set.getClass();
        data.getClass();
        data2.getClass();
        constraints.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkInfo(UUID uuid, State state, Set<String> set, Data data, Data data2, int i2, int i3, Constraints constraints, long j2) {
        this(uuid, state, set, data, data2, i2, i3, constraints, j2, null, 0L, 0, 3584, null);
        uuid.getClass();
        state.getClass();
        set.getClass();
        data.getClass();
        data2.getClass();
        constraints.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkInfo(UUID uuid, State state, Set<String> set, Data data, Data data2, int i2, int i3, Constraints constraints, long j2, PeriodicityInfo periodicityInfo) {
        this(uuid, state, set, data, data2, i2, i3, constraints, j2, periodicityInfo, 0L, 0, 3072, null);
        uuid.getClass();
        state.getClass();
        set.getClass();
        data.getClass();
        data2.getClass();
        constraints.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkInfo(UUID uuid, State state, Set<String> set, Data data, Data data2, int i2, int i3, Constraints constraints, long j2, PeriodicityInfo periodicityInfo, long j3) {
        this(uuid, state, set, data, data2, i2, i3, constraints, j2, periodicityInfo, j3, 0, 2048, null);
        uuid.getClass();
        state.getClass();
        set.getClass();
        data.getClass();
        data2.getClass();
        constraints.getClass();
    }

    public WorkInfo(UUID uuid, State state, Set<String> set, Data data, Data data2, int i2, int i3, Constraints constraints, long j2, PeriodicityInfo periodicityInfo, long j3, int i4) {
        uuid.getClass();
        state.getClass();
        set.getClass();
        data.getClass();
        data2.getClass();
        constraints.getClass();
        this.f20269a = uuid;
        this.f20270b = state;
        this.f20271c = set;
        this.d = data;
        this.f20272e = data2;
        this.f20273f = i2;
        this.g = i3;
        this.f20274h = constraints;
        this.f20275i = j2;
        this.f20276j = periodicityInfo;
        this.f20277k = j3;
        this.l = i4;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkInfo(UUID uuid, State state, Set<String> set) {
        this(uuid, state, set, null, null, 0, 0, null, 0L, null, 0L, 0, 4088, null);
        uuid.getClass();
        state.getClass();
        set.getClass();
    }
}
