package com.google.firebase.crashlytics.internal.model;

import defpackage.md;
import defpackage.n00;
import defpackage.r81;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_FilesPayload extends CrashlyticsReport.FilesPayload {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f34810a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34811b;

    public static final class Builder extends CrashlyticsReport.FilesPayload.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public List f34812a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f34813b;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload.Builder
        public final CrashlyticsReport.FilesPayload a() {
            List list = this.f34812a;
            if (list != null) {
                return new AutoValue_CrashlyticsReport_FilesPayload(list, this.f34813b);
            }
            md.k("Missing required properties: files");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload.Builder
        public final CrashlyticsReport.FilesPayload.Builder b(List list) {
            if (list != null) {
                this.f34812a = list;
                return this;
            }
            r81.d("Null files");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload.Builder
        public final CrashlyticsReport.FilesPayload.Builder c(String str) {
            this.f34813b = str;
            return this;
        }
    }

    public AutoValue_CrashlyticsReport_FilesPayload(List list, String str) {
        this.f34810a = list;
        this.f34811b = str;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload
    public final List b() {
        return this.f34810a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.FilesPayload
    public final String c() {
        return this.f34811b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.FilesPayload)) {
            return false;
        }
        CrashlyticsReport.FilesPayload filesPayload = (CrashlyticsReport.FilesPayload) obj;
        if (!this.f34810a.equals(filesPayload.b())) {
            return false;
        }
        String str = this.f34811b;
        if (str == null) {
            return filesPayload.c() == null;
        }
        return str.equals(filesPayload.c());
    }

    public final int hashCode() {
        int iHashCode = (this.f34810a.hashCode() ^ 1000003) * 1000003;
        String str = this.f34811b;
        return (str == null ? 0 : str.hashCode()) ^ iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FilesPayload{files=");
        sb.append(this.f34810a);
        sb.append(", orgId=");
        return n00.r(this.f34811b, "}", sb);
    }
}
