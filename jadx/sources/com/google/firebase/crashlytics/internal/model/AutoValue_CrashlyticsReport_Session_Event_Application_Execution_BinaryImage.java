package com.google.firebase.crashlytics.internal.model;

import defpackage.a;
import defpackage.md;
import defpackage.n00;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage extends CrashlyticsReport.Session.Event.Application.Execution.BinaryImage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f34897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f34898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f34899c;
    public final String d;

    public static final class Builder extends CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f34900a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f34901b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f34902c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte f34903e;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.BinaryImage a() {
            String str;
            if (this.f34903e == 3 && (str = this.f34902c) != null) {
                return new AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage(this.f34900a, this.f34901b, str, this.d);
            }
            StringBuilder sb = new StringBuilder();
            if ((this.f34903e & 1) == 0) {
                sb.append(" baseAddress");
            }
            if ((this.f34903e & 2) == 0) {
                sb.append(" size");
            }
            if (this.f34902c == null) {
                sb.append(" name");
            }
            md.k(a.k("Missing required properties:", sb));
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.Builder b(long j2) {
            this.f34900a = j2;
            this.f34903e = (byte) (this.f34903e | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.Builder c(String str) {
            if (str != null) {
                this.f34902c = str;
                return this;
            }
            r81.d("Null name");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.Builder d(long j2) {
            this.f34901b = j2;
            this.f34903e = (byte) (this.f34903e | 2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.Builder
        public final CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.Builder e(String str) {
            this.d = str;
            return this;
        }
    }

    public AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage(long j2, long j3, String str, String str2) {
        this.f34897a = j2;
        this.f34898b = j3;
        this.f34899c = str;
        this.d = str2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.BinaryImage
    public final long b() {
        return this.f34897a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.BinaryImage
    public final String c() {
        return this.f34899c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.BinaryImage
    public final long d() {
        return this.f34898b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Application.Execution.BinaryImage
    public final String e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.Session.Event.Application.Execution.BinaryImage)) {
            return false;
        }
        CrashlyticsReport.Session.Event.Application.Execution.BinaryImage binaryImage = (CrashlyticsReport.Session.Event.Application.Execution.BinaryImage) obj;
        if (this.f34897a != binaryImage.b() || this.f34898b != binaryImage.d() || !this.f34899c.equals(binaryImage.c())) {
            return false;
        }
        String str = this.d;
        if (str == null) {
            return binaryImage.e() == null;
        }
        return str.equals(binaryImage.e());
    }

    public final int hashCode() {
        long j2 = this.f34897a;
        long j3 = this.f34898b;
        int iHashCode = (((((((int) (j2 ^ (j2 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j3 >>> 32) ^ j3))) * 1000003) ^ this.f34899c.hashCode()) * 1000003;
        String str = this.d;
        return (str == null ? 0 : str.hashCode()) ^ iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BinaryImage{baseAddress=");
        sb.append(this.f34897a);
        sb.append(", size=");
        sb.append(this.f34898b);
        sb.append(", name=");
        sb.append(this.f34899c);
        sb.append(", uuid=");
        return n00.r(this.d, "}", sb);
    }
}
