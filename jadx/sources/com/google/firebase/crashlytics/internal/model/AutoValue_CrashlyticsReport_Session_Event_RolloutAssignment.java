package com.google.firebase.crashlytics.internal.model;

import defpackage.a;
import defpackage.md;
import defpackage.o60;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_Session_Event_RolloutAssignment extends CrashlyticsReport.Session.Event.RolloutAssignment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant f34953a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f34955c;
    public final long d;

    public static final class Builder extends CrashlyticsReport.Session.Event.RolloutAssignment.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant f34956a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f34957b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f34958c;
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte f34959e;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutAssignment.Builder
        public final CrashlyticsReport.Session.Event.RolloutAssignment a() {
            CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant rolloutVariant;
            String str;
            String str2;
            if (this.f34959e == 1 && (rolloutVariant = this.f34956a) != null && (str = this.f34957b) != null && (str2 = this.f34958c) != null) {
                return new AutoValue_CrashlyticsReport_Session_Event_RolloutAssignment(rolloutVariant, str, str2, this.d);
            }
            StringBuilder sb = new StringBuilder();
            if (this.f34956a == null) {
                sb.append(" rolloutVariant");
            }
            if (this.f34957b == null) {
                sb.append(" parameterKey");
            }
            if (this.f34958c == null) {
                sb.append(" parameterValue");
            }
            if ((this.f34959e & 1) == 0) {
                sb.append(" templateVersion");
            }
            md.k(a.k("Missing required properties:", sb));
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutAssignment.Builder
        public final CrashlyticsReport.Session.Event.RolloutAssignment.Builder b(String str) {
            if (str != null) {
                this.f34957b = str;
                return this;
            }
            r81.d("Null parameterKey");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutAssignment.Builder
        public final CrashlyticsReport.Session.Event.RolloutAssignment.Builder c(String str) {
            if (str != null) {
                this.f34958c = str;
                return this;
            }
            r81.d("Null parameterValue");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutAssignment.Builder
        public final CrashlyticsReport.Session.Event.RolloutAssignment.Builder d(CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant rolloutVariant) {
            if (rolloutVariant != null) {
                this.f34956a = rolloutVariant;
                return this;
            }
            r81.d("Null rolloutVariant");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutAssignment.Builder
        public final CrashlyticsReport.Session.Event.RolloutAssignment.Builder e(long j2) {
            this.d = j2;
            this.f34959e = (byte) (this.f34959e | 1);
            return this;
        }
    }

    public AutoValue_CrashlyticsReport_Session_Event_RolloutAssignment(CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant rolloutVariant, String str, String str2, long j2) {
        this.f34953a = rolloutVariant;
        this.f34954b = str;
        this.f34955c = str2;
        this.d = j2;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutAssignment
    public final String b() {
        return this.f34954b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutAssignment
    public final String c() {
        return this.f34955c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutAssignment
    public final CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant d() {
        return this.f34953a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.RolloutAssignment
    public final long e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.Session.Event.RolloutAssignment)) {
            return false;
        }
        CrashlyticsReport.Session.Event.RolloutAssignment rolloutAssignment = (CrashlyticsReport.Session.Event.RolloutAssignment) obj;
        return this.f34953a.equals(rolloutAssignment.d()) && this.f34954b.equals(rolloutAssignment.b()) && this.f34955c.equals(rolloutAssignment.c()) && this.d == rolloutAssignment.e();
    }

    public final int hashCode() {
        int iHashCode = (((((this.f34953a.hashCode() ^ 1000003) * 1000003) ^ this.f34954b.hashCode()) * 1000003) ^ this.f34955c.hashCode()) * 1000003;
        long j2 = this.d;
        return ((int) ((j2 >>> 32) ^ j2)) ^ iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RolloutAssignment{rolloutVariant=");
        sb.append(this.f34953a);
        sb.append(", parameterKey=");
        sb.append(this.f34954b);
        sb.append(", parameterValue=");
        sb.append(this.f34955c);
        sb.append(", templateVersion=");
        return o60.j(this.d, "}", sb);
    }
}
