package androidx.work.impl.model;

import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.OverwritingInputMerger;
import androidx.work.WorkInfo;
import com.batch.android.s.b;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.tr;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.crypto.CryptoServicesPermission;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0087\b\u0018\u00002\u00020\u0001:\u0003+,-B\u0081\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0003\u0010\u0012\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0013\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0019\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u001b\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u000b\u0012\b\b\u0002\u0010 \u001a\u00020\u0011\u0012\b\b\u0002\u0010!\u001a\u00020\u0011\u0012\n\b\u0002\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010#\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b$\u0010%B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010&\u001a\u00020\u0002¢\u0006\u0004\b$\u0010'B\u0019\b\u0016\u0012\u0006\u0010(\u001a\u00020\u0002\u0012\u0006\u0010)\u001a\u00020\u0000¢\u0006\u0004\b$\u0010*¨\u0006."}, d2 = {"Landroidx/work/impl/model/WorkSpec;", "", "", b.a.f24015b, "Landroidx/work/WorkInfo$State;", "state", "workerClassName", "inputMergerClassName", "Landroidx/work/Data;", "input", "output", "", "initialDelay", "intervalDuration", "flexDuration", "Landroidx/work/Constraints;", CryptoServicesPermission.CONSTRAINTS, "", "runAttemptCount", "Landroidx/work/BackoffPolicy;", "backoffPolicy", "backoffDelayDuration", "lastEnqueueTime", "minimumRetentionDuration", "scheduleRequestedAt", "", "expedited", "Landroidx/work/OutOfQuotaPolicy;", "outOfQuotaPolicy", "periodCount", "generation", "nextScheduleTimeOverride", "nextScheduleTimeOverrideGeneration", "stopReason", "traceTag", "backOffOnSystemInterruptions", "<init>", "(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIJIILjava/lang/String;Ljava/lang/Boolean;)V", "workerClassName_", "(Ljava/lang/String;Ljava/lang/String;)V", "newId", "other", "(Ljava/lang/String;Landroidx/work/impl/model/WorkSpec;)V", "IdAndState", "WorkInfoPojo", "Companion", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class WorkSpec {
    public static final Companion z = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f20510a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WorkInfo.State f20511b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f20512c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Data f20513e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Data f20514f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f20515h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f20516i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Constraints f20517j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f20518k;
    public final BackoffPolicy l;
    public final long m;
    public long n;
    public final long o;
    public final long p;
    public boolean q;
    public final OutOfQuotaPolicy r;
    public final int s;
    public final int t;
    public final long u;
    public final int v;
    public final int w;
    public String x;
    public final Boolean y;

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0019\u0010\u0004\u001a\u00070\u0002¢\u0006\u0002\b\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\bR,\u0010\r\u001a\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\n0\t8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/work/impl/model/WorkSpec$Companion;", "", "", "Lorg/jspecify/annotations/NonNull;", "TAG", "Ljava/lang/String;", "", "SCHEDULE_NOT_REQUESTED_YET", "J", "Landroidx/arch/core/util/Function;", "", "Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;", "Landroidx/work/WorkInfo;", "WORK_INFO_MAPPER", "Landroidx/arch/core/util/Function;", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static long a(boolean z, int i2, BackoffPolicy backoffPolicy, long j2, long j3, int i3, boolean z2, long j4, long j5, long j6, long j7) {
            backoffPolicy.getClass();
            if (j7 != Long.MAX_VALUE && z2) {
                if (i3 != 0) {
                    long j8 = j3 + 900000;
                    if (j7 < j8) {
                        return j8;
                    }
                }
                return j7;
            }
            if (z) {
                long jScalb = backoffPolicy == BackoffPolicy.LINEAR ? j2 * ((long) i2) : (long) Math.scalb(j2, i2 - 1);
                if (jScalb > 18000000) {
                    jScalb = 18000000;
                }
                return j3 + jScalb;
            }
            if (z2) {
                long j9 = i3 == 0 ? j3 + j4 : j3 + j6;
                return (j5 == j6 || i3 != 0) ? j9 : (j6 - j5) + j9;
            }
            if (j3 == -1) {
                return Long.MAX_VALUE;
            }
            return j3 + j4;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/work/impl/model/WorkSpec$IdAndState;", "", "", b.a.f24015b, "Landroidx/work/WorkInfo$State;", "state", "<init>", "(Ljava/lang/String;Landroidx/work/WorkInfo$State;)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class IdAndState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f20519a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final WorkInfo.State f20520b;

        public IdAndState(String str, WorkInfo.State state) {
            str.getClass();
            state.getClass();
            this.f20519a = str;
            this.f20520b = state;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IdAndState)) {
                return false;
            }
            IdAndState idAndState = (IdAndState) obj;
            return Intrinsics.c(this.f20519a, idAndState.f20519a) && this.f20520b == idAndState.f20520b;
        }

        public final int hashCode() {
            return this.f20520b.hashCode() + (this.f20519a.hashCode() * 31);
        }

        public final String toString() {
            return "IdAndState(id=" + this.f20519a + ", state=" + this.f20520b + ')';
        }
    }

    static {
        Logger.b("WorkSpec");
    }

    public /* synthetic */ WorkSpec(String str, WorkInfo.State state, String str2, String str3, Data data, Data data2, long j2, long j3, long j4, Constraints constraints, int i2, BackoffPolicy backoffPolicy, long j5, long j6, long j7, long j8, boolean z2, OutOfQuotaPolicy outOfQuotaPolicy, int i3, int i4, long j9, int i5, int i6, String str4, Boolean bool, int i7, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i7 & 2) != 0 ? WorkInfo.State.ENQUEUED : state, str2, (i7 & 8) != 0 ? OverwritingInputMerger.class.getName() : str3, (i7 & 16) != 0 ? Data.f20244c : data, (i7 & 32) != 0 ? Data.f20244c : data2, (i7 & 64) != 0 ? 0L : j2, (i7 & 128) != 0 ? 0L : j3, (i7 & 256) != 0 ? 0L : j4, (i7 & 512) != 0 ? Constraints.f20225j : constraints, (i7 & 1024) != 0 ? 0 : i2, (i7 & 2048) != 0 ? BackoffPolicy.EXPONENTIAL : backoffPolicy, (i7 & 4096) != 0 ? 30000L : j5, (i7 & 8192) != 0 ? -1L : j6, (i7 & 16384) == 0 ? j7 : 0L, (32768 & i7) != 0 ? -1L : j8, (65536 & i7) != 0 ? false : z2, (131072 & i7) != 0 ? OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST : outOfQuotaPolicy, (262144 & i7) != 0 ? 0 : i3, (524288 & i7) != 0 ? 0 : i4, (1048576 & i7) != 0 ? Long.MAX_VALUE : j9, (2097152 & i7) != 0 ? 0 : i5, (4194304 & i7) != 0 ? -256 : i6, (8388608 & i7) != 0 ? null : str4, (i7 & 16777216) != 0 ? Boolean.FALSE : bool);
    }

    public final long a() {
        boolean z2 = this.f20511b == WorkInfo.State.ENQUEUED && this.f20518k > 0;
        long j2 = this.n;
        boolean zB = b();
        z.getClass();
        return Companion.a(z2, this.f20518k, this.l, this.m, j2, this.s, zB, this.g, this.f20516i, this.f20515h, this.u);
    }

    public final boolean b() {
        return this.f20515h != 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WorkSpec)) {
            return false;
        }
        WorkSpec workSpec = (WorkSpec) obj;
        return Intrinsics.c(this.f20510a, workSpec.f20510a) && this.f20511b == workSpec.f20511b && Intrinsics.c(this.f20512c, workSpec.f20512c) && Intrinsics.c(this.d, workSpec.d) && Intrinsics.c(this.f20513e, workSpec.f20513e) && Intrinsics.c(this.f20514f, workSpec.f20514f) && this.g == workSpec.g && this.f20515h == workSpec.f20515h && this.f20516i == workSpec.f20516i && Intrinsics.c(this.f20517j, workSpec.f20517j) && this.f20518k == workSpec.f20518k && this.l == workSpec.l && this.m == workSpec.m && this.n == workSpec.n && this.o == workSpec.o && this.p == workSpec.p && this.q == workSpec.q && this.r == workSpec.r && this.s == workSpec.s && this.t == workSpec.t && this.u == workSpec.u && this.v == workSpec.v && this.w == workSpec.w && Intrinsics.c(this.x, workSpec.x) && Intrinsics.c(this.y, workSpec.y);
    }

    public final int hashCode() {
        int iB = tr.b(this.w, tr.b(this.v, fc.a(tr.b(this.t, tr.b(this.s, (this.r.hashCode() + o60.b(fc.a(fc.a(fc.a(fc.a((this.l.hashCode() + tr.b(this.f20518k, (this.f20517j.hashCode() + fc.a(fc.a(fc.a((this.f20514f.hashCode() + ((this.f20513e.hashCode() + fc.b(fc.b((this.f20511b.hashCode() + (this.f20510a.hashCode() * 31)) * 31, 31, this.f20512c), 31, this.d)) * 31)) * 31, 31, this.g), 31, this.f20515h), 31, this.f20516i)) * 31, 31)) * 31, 31, this.m), 31, this.n), 31, this.o), 31, this.p), 31, this.q)) * 31, 31), 31), 31, this.u), 31), 31);
        String str = this.x;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.y;
        return iHashCode + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        return fc.l(new StringBuilder("{WorkSpec: "), this.f20510a, '}');
    }

    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B©\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\b\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0010\u0012\b\b\u0002\u0010\u0012\u001a\u00020\b\u0012\b\b\u0002\u0010\u0013\u001a\u00020\b\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u000e\u0012\u0006\u0010\u0015\u001a\u00020\u000e\u0012\u0006\u0010\u0016\u001a\u00020\b\u0012\u0006\u0010\u0017\u001a\u00020\u000e\u0012\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00020\u0018\u0012\f\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00060\u0018¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006\u001d"}, d2 = {"Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;", "", "", b.a.f24015b, "Landroidx/work/WorkInfo$State;", "state", "Landroidx/work/Data;", "output", "", "initialDelay", "intervalDuration", "flexDuration", "Landroidx/work/Constraints;", CryptoServicesPermission.CONSTRAINTS, "", "runAttemptCount", "Landroidx/work/BackoffPolicy;", "backoffPolicy", "backoffDelayDuration", "lastEnqueueTime", "periodCount", "generation", "nextScheduleTimeOverride", "stopReason", "", "tags", "progress", "<init>", "(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class WorkInfoPojo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f20521a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final WorkInfo.State f20522b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Data f20523c;
        public final long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f20524e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f20525f;
        public final Constraints g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f20526h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final BackoffPolicy f20527i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f20528j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final long f20529k;
        public final int l;
        public final int m;
        public final long n;
        public final int o;
        public final List p;
        public final List q;

        public /* synthetic */ WorkInfoPojo(String str, WorkInfo.State state, Data data, long j2, long j3, long j4, Constraints constraints, int i2, BackoffPolicy backoffPolicy, long j5, long j6, int i3, int i4, long j7, int i5, List list, List list2, int i6, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, state, data, (i6 & 8) != 0 ? 0L : j2, (i6 & 16) != 0 ? 0L : j3, (i6 & 32) != 0 ? 0L : j4, constraints, i2, (i6 & 256) != 0 ? BackoffPolicy.EXPONENTIAL : backoffPolicy, (i6 & 512) != 0 ? 30000L : j5, (i6 & 1024) != 0 ? 0L : j6, (i6 & 2048) != 0 ? 0 : i3, i4, j7, i5, list, list2);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WorkInfoPojo)) {
                return false;
            }
            WorkInfoPojo workInfoPojo = (WorkInfoPojo) obj;
            return Intrinsics.c(this.f20521a, workInfoPojo.f20521a) && this.f20522b == workInfoPojo.f20522b && Intrinsics.c(this.f20523c, workInfoPojo.f20523c) && this.d == workInfoPojo.d && this.f20524e == workInfoPojo.f20524e && this.f20525f == workInfoPojo.f20525f && Intrinsics.c(this.g, workInfoPojo.g) && this.f20526h == workInfoPojo.f20526h && this.f20527i == workInfoPojo.f20527i && this.f20528j == workInfoPojo.f20528j && this.f20529k == workInfoPojo.f20529k && this.l == workInfoPojo.l && this.m == workInfoPojo.m && this.n == workInfoPojo.n && this.o == workInfoPojo.o && Intrinsics.c(this.p, workInfoPojo.p) && Intrinsics.c(this.q, workInfoPojo.q);
        }

        public final int hashCode() {
            return this.q.hashCode() + n00.a(tr.b(this.o, fc.a(tr.b(this.m, tr.b(this.l, fc.a(fc.a((this.f20527i.hashCode() + tr.b(this.f20526h, (this.g.hashCode() + fc.a(fc.a(fc.a((this.f20523c.hashCode() + ((this.f20522b.hashCode() + (this.f20521a.hashCode() * 31)) * 31)) * 31, 31, this.d), 31, this.f20524e), 31, this.f20525f)) * 31, 31)) * 31, 31, this.f20528j), 31, this.f20529k), 31), 31), 31, this.n), 31), 31, this.p);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("WorkInfoPojo(id=");
            sb.append(this.f20521a);
            sb.append(", state=");
            sb.append(this.f20522b);
            sb.append(", output=");
            sb.append(this.f20523c);
            sb.append(", initialDelay=");
            sb.append(this.d);
            sb.append(", intervalDuration=");
            sb.append(this.f20524e);
            sb.append(", flexDuration=");
            sb.append(this.f20525f);
            sb.append(", constraints=");
            sb.append(this.g);
            sb.append(", runAttemptCount=");
            sb.append(this.f20526h);
            sb.append(", backoffPolicy=");
            sb.append(this.f20527i);
            sb.append(", backoffDelayDuration=");
            sb.append(this.f20528j);
            sb.append(", lastEnqueueTime=");
            sb.append(this.f20529k);
            sb.append(", periodCount=");
            sb.append(this.l);
            sb.append(", generation=");
            sb.append(this.m);
            sb.append(", nextScheduleTimeOverride=");
            sb.append(this.n);
            sb.append(", stopReason=");
            sb.append(this.o);
            sb.append(", tags=");
            sb.append(this.p);
            sb.append(", progress=");
            return tr.m(sb, this.q, ')');
        }

        public WorkInfoPojo(String str, WorkInfo.State state, Data data, long j2, long j3, long j4, Constraints constraints, int i2, BackoffPolicy backoffPolicy, long j5, long j6, int i3, int i4, long j7, int i5, List<String> list, List<Data> list2) {
            str.getClass();
            state.getClass();
            data.getClass();
            constraints.getClass();
            backoffPolicy.getClass();
            list.getClass();
            list2.getClass();
            this.f20521a = str;
            this.f20522b = state;
            this.f20523c = data;
            this.d = j2;
            this.f20524e = j3;
            this.f20525f = j4;
            this.g = constraints;
            this.f20526h = i2;
            this.f20527i = backoffPolicy;
            this.f20528j = j5;
            this.f20529k = j6;
            this.l = i3;
            this.m = i4;
            this.n = j7;
            this.o = i5;
            this.p = list;
            this.q = list2;
        }
    }

    public WorkSpec(String str, WorkInfo.State state, String str2, String str3, Data data, Data data2, long j2, long j3, long j4, Constraints constraints, int i2, BackoffPolicy backoffPolicy, long j5, long j6, long j7, long j8, boolean z2, OutOfQuotaPolicy outOfQuotaPolicy, int i3, int i4, long j9, int i5, int i6, String str4, Boolean bool) {
        str.getClass();
        state.getClass();
        str2.getClass();
        str3.getClass();
        data.getClass();
        data2.getClass();
        constraints.getClass();
        backoffPolicy.getClass();
        outOfQuotaPolicy.getClass();
        this.f20510a = str;
        this.f20511b = state;
        this.f20512c = str2;
        this.d = str3;
        this.f20513e = data;
        this.f20514f = data2;
        this.g = j2;
        this.f20515h = j3;
        this.f20516i = j4;
        this.f20517j = constraints;
        this.f20518k = i2;
        this.l = backoffPolicy;
        this.m = j5;
        this.n = j6;
        this.o = j7;
        this.p = j8;
        this.q = z2;
        this.r = outOfQuotaPolicy;
        this.s = i3;
        this.t = i4;
        this.u = j9;
        this.v = i5;
        this.w = i6;
        this.x = str4;
        this.y = bool;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkSpec(String str, String str2) {
        this(str, null, str2, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, null, null, 33554426, null);
        str.getClass();
        str2.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkSpec(String str, WorkSpec workSpec) {
        this(str, workSpec.f20511b, workSpec.f20512c, workSpec.d, new Data(workSpec.f20513e), new Data(workSpec.f20514f), workSpec.g, workSpec.f20515h, workSpec.f20516i, new Constraints(workSpec.f20517j), workSpec.f20518k, workSpec.l, workSpec.m, workSpec.n, workSpec.o, workSpec.p, workSpec.q, workSpec.r, workSpec.s, 0, workSpec.u, workSpec.v, workSpec.w, workSpec.x, workSpec.y, 524288, null);
        str.getClass();
        workSpec.getClass();
    }
}
