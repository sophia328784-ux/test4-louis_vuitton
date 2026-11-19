package com.google.firebase.crashlytics.internal.model;

import defpackage.a;
import defpackage.md;
import defpackage.o60;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal extends CrashlyticsReport.Session.Event.Application.Execution.Signal {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34913a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34914b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f34915c;

    public static final class Builder extends CrashlyticsReport.Session.Event.Application.Execution.Signal.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f34916a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f34917b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f34918c;
        public byte d;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Signal.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Signal a() {
            String str;
            String str2;
            if (this.d == 1 && (str = this.f34916a) != null && (str2 = this.f34917b) != null) {
                return new AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal(str, str2, this.f34918c);
            }
            StringBuilder sb = new StringBuilder();
            if (this.f34916a == null) {
                sb.append(" name");
            }
            if (this.f34917b == null) {
                sb.append(" code");
            }
            if ((this.d & 1) == 0) {
                sb.append(" address");
            }
            md.k(a.k("Missing required properties:", sb));
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Signal.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Signal.Builder b(long j2) {
            this.f34918c = j2;
            this.d = (byte) (this.d | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Signal.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Signal.Builder c(String str) {
            if (str != null) {
                this.f34917b = str;
                return this;
            }
            r81.d("Null code");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Signal.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Signal.Builder d(String str) {
            if (str != null) {
                this.f34916a = str;
                return this;
            }
            r81.d("Null name");
            return null;
        }
    }

    public AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal(String str, String str2, long j2) {
        this.f34913a = str;
        this.f34914b = str2;
        this.f34915c = j2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Signal
    public final long b() {
        return this.f34915c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Signal
    public final String c() {
        return this.f34914b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Signal
    public final String d() {
        return this.f34913a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.Session.Event.Application.Execution.Signal)) {
            return false;
        }
        CrashlyticsReport.Session.Event.Application.Execution.Signal signal = (CrashlyticsReport.Session.Event.Application.Execution.Signal) obj;
        return this.f34913a.equals(signal.d()) && this.f34914b.equals(signal.c()) && this.f34915c == signal.b();
    }

    public final int hashCode() {
        int iHashCode = (((this.f34913a.hashCode() ^ 1000003) * 1000003) ^ this.f34914b.hashCode()) * 1000003;
        long j2 = this.f34915c;
        return ((int) ((j2 >>> 32) ^ j2)) ^ iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Signal{name=");
        sb.append(this.f34913a);
        sb.append(", code=");
        sb.append(this.f34914b);
        sb.append(", address=");
        return o60.j(this.f34915c, "}", sb);
    }
}
