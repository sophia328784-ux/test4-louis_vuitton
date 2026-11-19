package com.google.firebase.crashlytics.internal.model;

import defpackage.a;
import defpackage.md;
import defpackage.r81;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread extends CrashlyticsReport.Session.Event.Application.Execution.Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f34920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f34921c;

    public static final class Builder extends CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f34922a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f34923b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public List f34924c;
        public byte d;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Thread a() {
            String str;
            List list;
            if (this.d == 1 && (str = this.f34922a) != null && (list = this.f34924c) != null) {
                return new AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread(this.f34923b, list, str);
            }
            StringBuilder sb = new StringBuilder();
            if (this.f34922a == null) {
                sb.append(" name");
            }
            if ((1 & this.d) == 0) {
                sb.append(" importance");
            }
            if (this.f34924c == null) {
                sb.append(" frames");
            }
            md.k(a.k("Missing required properties:", sb));
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder b(List list) {
            if (list != null) {
                this.f34924c = list;
                return this;
            }
            r81.d("Null frames");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder c(int i2) {
            this.f34923b = i2;
            this.d = (byte) (this.d | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.Thread.Builder d(String str) {
            if (str != null) {
                this.f34922a = str;
                return this;
            }
            r81.d("Null name");
            return null;
        }
    }

    public AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread(int i2, List list, String str) {
        this.f34919a = str;
        this.f34920b = i2;
        this.f34921c = list;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread
    public final List b() {
        return this.f34921c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread
    public final int c() {
        return this.f34920b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.Thread
    public final String d() {
        return this.f34919a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.Session.Event.Application.Execution.Thread)) {
            return false;
        }
        CrashlyticsReport.Session.Event.Application.Execution.Thread thread = (CrashlyticsReport.Session.Event.Application.Execution.Thread) obj;
        return this.f34919a.equals(thread.d()) && this.f34920b == thread.c() && this.f34921c.equals(thread.b());
    }

    public final int hashCode() {
        return this.f34921c.hashCode() ^ ((((this.f34919a.hashCode() ^ 1000003) * 1000003) ^ this.f34920b) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Thread{name=");
        sb.append(this.f34919a);
        sb.append(", importance=");
        sb.append(this.f34920b);
        sb.append(", frames=");
        return a.o(sb, this.f34921c, "}");
    }
}
