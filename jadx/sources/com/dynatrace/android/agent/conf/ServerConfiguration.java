package com.dynatrace.android.agent.conf;

import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.fc;

/* JADX INFO: loaded from: classes2.dex */
public class ServerConfiguration {
    public static final Status p = Status.OK;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f27409a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f27410b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SessionSplitConfiguration f27411c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f27412e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RageTapConfiguration f27413f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f27414h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f27415i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ReplayConfiguration f27416j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f27417k;
    public final int l;
    public final boolean m;
    public final Status n;
    public final long o;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Status {
        private static final /* synthetic */ Status[] $VALUES;
        public static final Status ERROR;
        public static final Status OK;

        static {
            Status status = new Status(Payload.RESPONSE_OK, 0);
            OK = status;
            Status status2 = new Status("ERROR", 1);
            ERROR = status2;
            $VALUES = new Status[]{status, status2};
        }

        public static Status valueOf(String str) {
            return (Status) Enum.valueOf(Status.class, str);
        }

        public static Status[] values() {
            return (Status[]) $VALUES.clone();
        }
    }

    public ServerConfiguration(Builder builder) {
        this.f27409a = builder.f27418a;
        this.f27410b = builder.f27419b;
        this.f27411c = builder.f27420c;
        this.d = builder.d;
        this.f27412e = builder.f27421e;
        this.f27413f = builder.f27422f;
        this.g = builder.g;
        this.f27414h = builder.f27423h;
        this.f27416j = builder.f27425j;
        this.f27415i = builder.f27424i;
        this.f27417k = builder.f27426k;
        this.l = builder.l;
        this.m = builder.m;
        this.o = builder.o;
        this.n = builder.n;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ServerConfiguration serverConfiguration = (ServerConfiguration) obj;
            if (this.f27409a == serverConfiguration.f27409a && this.f27410b == serverConfiguration.f27410b && this.f27411c.equals(serverConfiguration.f27411c) && this.d == serverConfiguration.d && this.f27412e == serverConfiguration.f27412e && this.f27413f.equals(serverConfiguration.f27413f) && this.g == serverConfiguration.g && this.f27414h == serverConfiguration.f27414h && this.f27415i == serverConfiguration.f27415i && this.f27416j.equals(serverConfiguration.f27416j) && this.f27417k == serverConfiguration.f27417k && this.l == serverConfiguration.l && this.m == serverConfiguration.m && this.o == serverConfiguration.o && this.n == serverConfiguration.n) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.n.hashCode() + ((((((((this.f27416j.hashCode() + ((((((((this.f27413f.hashCode() + ((((((this.f27411c.hashCode() + (((this.f27409a * 31) + (this.f27410b ? 1 : 0)) * 31)) * 31) + this.d) * 31) + this.f27412e) * 31)) * 31) + this.g) * 31) + this.f27414h) * 31) + (this.f27415i ? 1 : 0)) * 31)) * 31) + this.f27417k) * 31) + this.l) * 31) + (this.m ? 1 : 0)) * 31)) * 31;
        long j2 = this.o;
        return iHashCode + ((int) (j2 ^ (j2 >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ServerConfiguration{maxBeaconSizeKb=");
        sb.append(this.f27409a);
        sb.append(", selfmonitoring=");
        sb.append(this.f27410b);
        sb.append(", sessionSplitConfiguration=");
        sb.append(this.f27411c);
        sb.append(", sendIntervalSec=");
        sb.append(this.d);
        sb.append(", maxCachedCrashesCount=");
        sb.append(this.f27412e);
        sb.append(", rageTapConfiguration=");
        sb.append(this.f27413f);
        sb.append(", capture=");
        sb.append(this.g);
        sb.append(", trafficControlPercentage=");
        sb.append(this.f27414h);
        sb.append(", gen3Enabled=");
        sb.append(this.f27415i);
        sb.append(", replayConfiguration=");
        sb.append(this.f27416j);
        sb.append(", multiplicity=");
        sb.append(this.f27417k);
        sb.append(", serverId=");
        sb.append(this.l);
        sb.append(", switchServer=");
        sb.append(this.m);
        sb.append(", status=");
        sb.append(this.n);
        sb.append(", timestamp=");
        return fc.k(sb, this.o, '}');
    }

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f27418a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f27419b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public SessionSplitConfiguration f27420c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f27421e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public RageTapConfiguration f27422f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f27423h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f27424i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ReplayConfiguration f27425j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f27426k;
        public int l;
        public boolean m;
        public Status n;
        public long o;

        public Builder(ServerConfiguration serverConfiguration, boolean z) {
            this.f27418a = serverConfiguration.f27409a;
            this.f27419b = serverConfiguration.f27410b;
            this.f27420c = serverConfiguration.f27411c;
            this.d = serverConfiguration.d;
            this.f27421e = serverConfiguration.f27412e;
            this.f27422f = serverConfiguration.f27413f;
            this.g = serverConfiguration.g;
            this.f27423h = serverConfiguration.f27414h;
            this.f27424i = serverConfiguration.f27415i;
            ReplayConfiguration replayConfiguration = serverConfiguration.f27416j;
            replayConfiguration.getClass();
            this.f27425j = new ReplayConfiguration(new ReplayConfiguration.Builder(replayConfiguration));
            this.o = serverConfiguration.o;
            if (z) {
                this.f27426k = 1;
                this.l = 1;
                this.m = false;
                this.n = ServerConfiguration.p;
                return;
            }
            this.f27426k = serverConfiguration.f27417k;
            this.l = serverConfiguration.l;
            this.m = serverConfiguration.m;
            this.n = serverConfiguration.n;
        }

        public Builder() {
            this.f27418a = 150;
            this.f27419b = true;
            this.f27420c = SessionSplitConfiguration.f27430c;
            this.d = 120;
            this.f27421e = 0;
            this.f27422f = RageTapConfiguration.f27385e;
            this.g = 1;
            this.f27423h = 100;
            this.f27424i = false;
            this.f27425j = ReplayConfiguration.f27392k;
            this.f27426k = 1;
            this.l = 1;
            this.m = false;
            this.n = ServerConfiguration.p;
            this.o = 0L;
        }

        public Builder(ServerConfiguration serverConfiguration) {
            this(serverConfiguration, false);
        }
    }
}
