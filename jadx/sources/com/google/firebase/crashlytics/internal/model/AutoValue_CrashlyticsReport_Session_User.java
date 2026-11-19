package com.google.firebase.crashlytics.internal.model;

import defpackage.md;
import defpackage.n00;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_Session_User extends CrashlyticsReport.Session.User {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34973a;

    public static final class Builder extends CrashlyticsReport.Session.User.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f34974a;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.User.Builder
        public final CrashlyticsReport.Session.User a() {
            String str = this.f34974a;
            if (str != null) {
                return new AutoValue_CrashlyticsReport_Session_User(str);
            }
            md.k("Missing required properties: identifier");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.User.Builder
        public final CrashlyticsReport.Session.User.Builder b(String str) {
            if (str != null) {
                this.f34974a = str;
                return this;
            }
            r81.d("Null identifier");
            return null;
        }
    }

    public AutoValue_CrashlyticsReport_Session_User(String str) {
        this.f34973a = str;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.User
    public final String b() {
        return this.f34973a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CrashlyticsReport.Session.User) {
            return this.f34973a.equals(((CrashlyticsReport.Session.User) obj).b());
        }
        return false;
    }

    public final int hashCode() {
        return this.f34973a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return n00.r(this.f34973a, "}", new StringBuilder("User{identifier="));
    }
}
