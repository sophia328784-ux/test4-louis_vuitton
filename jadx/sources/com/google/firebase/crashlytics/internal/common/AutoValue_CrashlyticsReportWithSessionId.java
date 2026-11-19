package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import defpackage.r81;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReportWithSessionId extends CrashlyticsReportWithSessionId {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CrashlyticsReport f34499a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34500b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final File f34501c;

    public AutoValue_CrashlyticsReportWithSessionId(CrashlyticsReport crashlyticsReport, String str, File file) {
        if (crashlyticsReport == null) {
            r81.d("Null report");
            throw null;
        }
        this.f34499a = crashlyticsReport;
        if (str == null) {
            r81.d("Null sessionId");
            throw null;
        }
        this.f34500b = str;
        if (file != null) {
            this.f34501c = file;
        } else {
            r81.d("Null reportFile");
            throw null;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId
    public final CrashlyticsReport a() {
        return this.f34499a;
    }

    @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId
    public final File b() {
        return this.f34501c;
    }

    @Override // com.google.firebase.crashlytics.internal.common.CrashlyticsReportWithSessionId
    public final String c() {
        return this.f34500b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReportWithSessionId)) {
            return false;
        }
        CrashlyticsReportWithSessionId crashlyticsReportWithSessionId = (CrashlyticsReportWithSessionId) obj;
        return this.f34499a.equals(crashlyticsReportWithSessionId.a()) && this.f34500b.equals(crashlyticsReportWithSessionId.c()) && this.f34501c.equals(crashlyticsReportWithSessionId.b());
    }

    public final int hashCode() {
        return this.f34501c.hashCode() ^ ((((this.f34499a.hashCode() ^ 1000003) * 1000003) ^ this.f34500b.hashCode()) * 1000003);
    }

    public final String toString() {
        return "CrashlyticsReportWithSessionId{report=" + this.f34499a + ", sessionId=" + this.f34500b + ", reportFile=" + this.f34501c + "}";
    }
}
