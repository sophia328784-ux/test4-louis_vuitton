package com.google.firebase.crashlytics.internal.model;

import defpackage.a;
import defpackage.md;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame extends CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f34925a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f34927c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f34928e;

    public static final class Builder extends CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f34929a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f34930b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f34931c;
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f34932e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public byte f34933f;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame a() {
            String str;
            if (this.f34933f == 7 && (str = this.f34930b) != null) {
                return new AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame(this.f34929a, str, this.f34931c, this.d, this.f34932e);
            }
            StringBuilder sb = new StringBuilder();
            if ((this.f34933f & 1) == 0) {
                sb.append(" pc");
            }
            if (this.f34930b == null) {
                sb.append(" symbol");
            }
            if ((this.f34933f & 2) == 0) {
                sb.append(" offset");
            }
            if ((this.f34933f & 4) == 0) {
                sb.append(" importance");
            }
            md.k(a.k("Missing required properties:", sb));
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder b(String str) {
            this.f34931c = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder c(int i2) {
            this.f34932e = i2;
            this.f34933f = (byte) (this.f34933f | 4);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder d(long j2) {
            this.d = j2;
            this.f34933f = (byte) (this.f34933f | 2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder e(long j2) {
            this.f34929a = j2;
            this.f34933f = (byte) (this.f34933f | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.Builder f(String str) {
            if (str != null) {
                this.f34930b = str;
                return this;
            }
            r81.d("Null symbol");
            return null;
        }
    }

    public AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame(long j2, String str, String str2, long j3, int i2) {
        this.f34925a = j2;
        this.f34926b = str;
        this.f34927c = str2;
        this.d = j3;
        this.f34928e = i2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame
    public final String b() {
        return this.f34927c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame
    public final int c() {
        return this.f34928e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame
    public final long d() {
        return this.d;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame
    public final long e() {
        return this.f34925a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame)) {
            return false;
        }
        CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame frame = (CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame) obj;
        if (this.f34925a != frame.e() || !this.f34926b.equals(frame.f())) {
            return false;
        }
        String str = this.f34927c;
        if (str == null) {
            if (frame.b() != null) {
                return false;
            }
        } else if (!str.equals(frame.b())) {
            return false;
        }
        return this.d == frame.d() && this.f34928e == frame.c();
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame
    public final String f() {
        return this.f34926b;
    }

    public final int hashCode() {
        long j2 = this.f34925a;
        int iHashCode = (((((int) (j2 ^ (j2 >>> 32))) ^ 1000003) * 1000003) ^ this.f34926b.hashCode()) * 1000003;
        String str = this.f34927c;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j3 = this.d;
        return this.f34928e ^ ((iHashCode2 ^ ((int) ((j3 >>> 32) ^ j3))) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Frame{pc=");
        sb.append(this.f34925a);
        sb.append(", symbol=");
        sb.append(this.f34926b);
        sb.append(", file=");
        sb.append(this.f34927c);
        sb.append(", offset=");
        sb.append(this.d);
        sb.append(", importance=");
        return a.i(this.f34928e, "}", sb);
    }
}
