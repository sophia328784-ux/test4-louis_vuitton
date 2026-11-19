package com.google.firebase.crashlytics.internal.model;

import defpackage.a;
import defpackage.md;
import defpackage.n00;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_ApplicationExitInfo_BuildIdMappingForArch extends CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34800a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34801b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f34802c;

    public static final class Builder extends CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f34803a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f34804b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f34805c;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch.Builder
        public final CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch a() {
            String str;
            String str2;
            String str3 = this.f34803a;
            if (str3 != null && (str = this.f34804b) != null && (str2 = this.f34805c) != null) {
                return new AutoValue_CrashlyticsReport_ApplicationExitInfo_BuildIdMappingForArch(str3, str, str2);
            }
            StringBuilder sb = new StringBuilder();
            if (this.f34803a == null) {
                sb.append(" arch");
            }
            if (this.f34804b == null) {
                sb.append(" libraryName");
            }
            if (this.f34805c == null) {
                sb.append(" buildId");
            }
            md.k(a.k("Missing required properties:", sb));
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch.Builder
        public final CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch.Builder b(String str) {
            if (str != null) {
                this.f34803a = str;
                return this;
            }
            r81.d("Null arch");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch.Builder
        public final CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch.Builder c(String str) {
            if (str != null) {
                this.f34805c = str;
                return this;
            }
            r81.d("Null buildId");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch.Builder
        public final CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch.Builder d(String str) {
            if (str != null) {
                this.f34804b = str;
                return this;
            }
            r81.d("Null libraryName");
            return null;
        }
    }

    public AutoValue_CrashlyticsReport_ApplicationExitInfo_BuildIdMappingForArch(String str, String str2, String str3) {
        this.f34800a = str;
        this.f34801b = str2;
        this.f34802c = str3;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch
    public final String b() {
        return this.f34800a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch
    public final String c() {
        return this.f34802c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch
    public final String d() {
        return this.f34801b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch)) {
            return false;
        }
        CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch buildIdMappingForArch = (CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch) obj;
        return this.f34800a.equals(buildIdMappingForArch.b()) && this.f34801b.equals(buildIdMappingForArch.d()) && this.f34802c.equals(buildIdMappingForArch.c());
    }

    public final int hashCode() {
        return this.f34802c.hashCode() ^ ((((this.f34800a.hashCode() ^ 1000003) * 1000003) ^ this.f34801b.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BuildIdMappingForArch{arch=");
        sb.append(this.f34800a);
        sb.append(", libraryName=");
        sb.append(this.f34801b);
        sb.append(", buildId=");
        return n00.r(this.f34802c, "}", sb);
    }
}
