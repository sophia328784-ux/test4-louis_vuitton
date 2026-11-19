package com.google.firebase.crashlytics.internal.model;

import defpackage.a;
import defpackage.md;
import defpackage.r81;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_Session_Event_Application_Execution extends CrashlyticsReport.Session.Event.Application.Execution {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f34887a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CrashlyticsReport.Session.Event.Application.Execution.Exception f34888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CrashlyticsReport.ApplicationExitInfo f34889c;
    public final CrashlyticsReport.ProfilingManagerInfo d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CrashlyticsReport.Session.Event.Application.Execution.Signal f34890e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f34891f;

    public static final class Builder extends CrashlyticsReport.Session.Event.Application.Execution.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public List f34892a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public CrashlyticsReport.Session.Event.Application.Execution.Exception f34893b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public CrashlyticsReport.ApplicationExitInfo f34894c;
        public CrashlyticsReport.ProfilingManagerInfo d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public CrashlyticsReport.Session.Event.Application.Execution.Signal f34895e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public List f34896f;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution a() {
            List list;
            CrashlyticsReport.Session.Event.Application.Execution.Signal signal = this.f34895e;
            if (signal != null && (list = this.f34896f) != null) {
                return new AutoValue_CrashlyticsReport_Session_Event_Application_Execution(this.f34892a, this.f34893b, this.f34894c, this.d, signal, list);
            }
            StringBuilder sb = new StringBuilder();
            if (this.f34895e == null) {
                sb.append(" signal");
            }
            if (this.f34896f == null) {
                sb.append(" binaries");
            }
            md.k(a.k("Missing required properties:", sb));
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Builder b(CrashlyticsReport.ApplicationExitInfo applicationExitInfo) {
            this.f34894c = applicationExitInfo;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Builder c(List list) {
            if (list != null) {
                this.f34896f = list;
                return this;
            }
            r81.d("Null binaries");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Builder d(CrashlyticsReport.Session.Event.Application.Execution.Exception exception) {
            this.f34893b = exception;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Builder e(CrashlyticsReport.ProfilingManagerInfo profilingManagerInfo) {
            this.d = profilingManagerInfo;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Builder f(CrashlyticsReport.Session.Event.Application.Execution.Signal signal) {
            if (signal != null) {
                this.f34895e = signal;
                return this;
            }
            r81.d("Null signal");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Builder g(List list) {
            this.f34892a = list;
            return this;
        }
    }

    public AutoValue_CrashlyticsReport_Session_Event_Application_Execution(List list, CrashlyticsReport.Session.Event.Application.Execution.Exception exception, CrashlyticsReport.ApplicationExitInfo applicationExitInfo, CrashlyticsReport.ProfilingManagerInfo profilingManagerInfo, CrashlyticsReport.Session.Event.Application.Execution.Signal signal, List list2) {
        this.f34887a = list;
        this.f34888b = exception;
        this.f34889c = applicationExitInfo;
        this.d = profilingManagerInfo;
        this.f34890e = signal;
        this.f34891f = list2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution
    public final CrashlyticsReport.ApplicationExitInfo b() {
        return this.f34889c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution
    public final List c() {
        return this.f34891f;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution
    public final CrashlyticsReport.Session.Event.Application.Execution.Exception d() {
        return this.f34888b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution
    public final CrashlyticsReport.ProfilingManagerInfo e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.Session.Event.Application.Execution)) {
            return false;
        }
        CrashlyticsReport.Session.Event.Application.Execution execution = (CrashlyticsReport.Session.Event.Application.Execution) obj;
        List list = this.f34887a;
        if (list == null) {
            if (execution.g() != null) {
                return false;
            }
        } else if (!list.equals(execution.g())) {
            return false;
        }
        CrashlyticsReport.Session.Event.Application.Execution.Exception exception = this.f34888b;
        if (exception == null) {
            if (execution.d() != null) {
                return false;
            }
        } else if (!exception.equals(execution.d())) {
            return false;
        }
        CrashlyticsReport.ApplicationExitInfo applicationExitInfo = this.f34889c;
        if (applicationExitInfo == null) {
            if (execution.b() != null) {
                return false;
            }
        } else if (!applicationExitInfo.equals(execution.b())) {
            return false;
        }
        CrashlyticsReport.ProfilingManagerInfo profilingManagerInfo = this.d;
        if (profilingManagerInfo == null) {
            if (execution.e() != null) {
                return false;
            }
        } else if (!profilingManagerInfo.equals(execution.e())) {
            return false;
        }
        return this.f34890e.equals(execution.f()) && this.f34891f.equals(execution.c());
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution
    public final CrashlyticsReport.Session.Event.Application.Execution.Signal f() {
        return this.f34890e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution
    public final List g() {
        return this.f34887a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution
    public final CrashlyticsReport.Session.Event.Application.Execution.Builder h() {
        Builder builder = new Builder();
        builder.f34892a = this.f34887a;
        builder.f34893b = this.f34888b;
        builder.f34894c = this.f34889c;
        builder.d = this.d;
        builder.f34895e = this.f34890e;
        builder.f34896f = this.f34891f;
        return builder;
    }

    public final int hashCode() {
        List list = this.f34887a;
        int iHashCode = ((list == null ? 0 : list.hashCode()) ^ 1000003) * 1000003;
        CrashlyticsReport.Session.Event.Application.Execution.Exception exception = this.f34888b;
        int iHashCode2 = (iHashCode ^ (exception == null ? 0 : exception.hashCode())) * 1000003;
        CrashlyticsReport.ApplicationExitInfo applicationExitInfo = this.f34889c;
        int iHashCode3 = (iHashCode2 ^ (applicationExitInfo == null ? 0 : applicationExitInfo.hashCode())) * 1000003;
        CrashlyticsReport.ProfilingManagerInfo profilingManagerInfo = this.d;
        return this.f34891f.hashCode() ^ (((((profilingManagerInfo != null ? profilingManagerInfo.hashCode() : 0) ^ iHashCode3) * 1000003) ^ this.f34890e.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Execution{threads=");
        sb.append(this.f34887a);
        sb.append(", exception=");
        sb.append(this.f34888b);
        sb.append(", appExitInfo=");
        sb.append(this.f34889c);
        sb.append(", profilingManagerInfo=");
        sb.append(this.d);
        sb.append(", signal=");
        sb.append(this.f34890e);
        sb.append(", binaries=");
        return a.o(sb, this.f34891f, "}");
    }
}
