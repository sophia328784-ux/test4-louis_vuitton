package com.google.firebase.installations.local;

import defpackage.a;
import defpackage.md;
import defpackage.n00;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_PersistedInstallationEntry extends PersistedInstallationEntry {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f35175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PersistedInstallation.RegistrationStatus f35176c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f35177e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f35178f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f35179h;

    public static final class Builder extends PersistedInstallationEntry.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f35180a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public PersistedInstallation.RegistrationStatus f35181b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f35182c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f35183e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f35184f;
        public String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public byte f35185h;

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public final PersistedInstallationEntry a() {
            if (this.f35185h == 3 && this.f35181b != null) {
                return new AutoValue_PersistedInstallationEntry(this.f35180a, this.f35181b, this.f35182c, this.d, this.f35183e, this.f35184f, this.g);
            }
            StringBuilder sb = new StringBuilder();
            if (this.f35181b == null) {
                sb.append(" registrationStatus");
            }
            if ((this.f35185h & 1) == 0) {
                sb.append(" expiresInSecs");
            }
            if ((this.f35185h & 2) == 0) {
                sb.append(" tokenCreationEpochInSecs");
            }
            md.k(a.k("Missing required properties:", sb));
            return null;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public final PersistedInstallationEntry.Builder b(String str) {
            this.f35182c = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public final PersistedInstallationEntry.Builder c(long j2) {
            this.f35183e = j2;
            this.f35185h = (byte) (this.f35185h | 1);
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public final PersistedInstallationEntry.Builder d(String str) {
            this.f35180a = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public final PersistedInstallationEntry.Builder e(String str) {
            this.d = str;
            return this;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public final PersistedInstallationEntry.Builder f(PersistedInstallation.RegistrationStatus registrationStatus) {
            if (registrationStatus != null) {
                this.f35181b = registrationStatus;
                return this;
            }
            r81.d("Null registrationStatus");
            return null;
        }

        @Override // com.google.firebase.installations.local.PersistedInstallationEntry.Builder
        public final PersistedInstallationEntry.Builder g(long j2) {
            this.f35184f = j2;
            this.f35185h = (byte) (this.f35185h | 2);
            return this;
        }
    }

    public AutoValue_PersistedInstallationEntry(String str, PersistedInstallation.RegistrationStatus registrationStatus, String str2, String str3, long j2, long j3, String str4) {
        this.f35175b = str;
        this.f35176c = registrationStatus;
        this.d = str2;
        this.f35177e = str3;
        this.f35178f = j2;
        this.g = j3;
        this.f35179h = str4;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public final String a() {
        return this.d;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public final long b() {
        return this.f35178f;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public final String c() {
        return this.f35175b;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public final String d() {
        return this.f35179h;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public final String e() {
        return this.f35177e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PersistedInstallationEntry)) {
            return false;
        }
        PersistedInstallationEntry persistedInstallationEntry = (PersistedInstallationEntry) obj;
        String str = this.f35175b;
        if (str == null) {
            if (persistedInstallationEntry.c() != null) {
                return false;
            }
        } else if (!str.equals(persistedInstallationEntry.c())) {
            return false;
        }
        if (!this.f35176c.equals(persistedInstallationEntry.f())) {
            return false;
        }
        String str2 = this.d;
        if (str2 == null) {
            if (persistedInstallationEntry.a() != null) {
                return false;
            }
        } else if (!str2.equals(persistedInstallationEntry.a())) {
            return false;
        }
        String str3 = this.f35177e;
        if (str3 == null) {
            if (persistedInstallationEntry.e() != null) {
                return false;
            }
        } else if (!str3.equals(persistedInstallationEntry.e())) {
            return false;
        }
        if (this.f35178f != persistedInstallationEntry.b() || this.g != persistedInstallationEntry.g()) {
            return false;
        }
        String str4 = this.f35179h;
        if (str4 == null) {
            return persistedInstallationEntry.d() == null;
        }
        return str4.equals(persistedInstallationEntry.d());
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public final PersistedInstallation.RegistrationStatus f() {
        return this.f35176c;
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public final long g() {
        return this.g;
    }

    public final int hashCode() {
        String str = this.f35175b;
        int iHashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.f35176c.hashCode()) * 1000003;
        String str2 = this.d;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f35177e;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j2 = this.f35178f;
        int i2 = (iHashCode3 ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        long j3 = this.g;
        int i3 = (i2 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        String str4 = this.f35179h;
        return i3 ^ (str4 != null ? str4.hashCode() : 0);
    }

    @Override // com.google.firebase.installations.local.PersistedInstallationEntry
    public final PersistedInstallationEntry.Builder i() {
        Builder builder = new Builder();
        builder.f35180a = c();
        builder.f35181b = f();
        builder.f35182c = a();
        builder.d = e();
        builder.f35183e = b();
        builder.f35184f = g();
        builder.g = d();
        builder.f35185h = (byte) 3;
        return builder;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PersistedInstallationEntry{firebaseInstallationId=");
        sb.append(this.f35175b);
        sb.append(", registrationStatus=");
        sb.append(this.f35176c);
        sb.append(", authToken=");
        sb.append(this.d);
        sb.append(", refreshToken=");
        sb.append(this.f35177e);
        sb.append(", expiresInSecs=");
        sb.append(this.f35178f);
        sb.append(", tokenCreationEpochInSecs=");
        sb.append(this.g);
        sb.append(", fisError=");
        return n00.r(this.f35179h, "}", sb);
    }
}
