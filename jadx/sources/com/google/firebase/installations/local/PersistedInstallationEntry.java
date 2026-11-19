package com.google.firebase.installations.local;

/* JADX INFO: loaded from: classes2.dex */
public abstract class PersistedInstallationEntry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f35192a = 0;

    public static abstract class Builder {
        public abstract PersistedInstallationEntry a();

        public abstract Builder b(String str);

        public abstract Builder c(long j2);

        public abstract Builder d(String str);

        public abstract Builder e(String str);

        public abstract Builder f(PersistedInstallation.RegistrationStatus registrationStatus);

        public abstract Builder g(long j2);
    }

    static {
        AutoValue_PersistedInstallationEntry.Builder builder = new AutoValue_PersistedInstallationEntry.Builder();
        builder.g(0L);
        builder.f(PersistedInstallation.RegistrationStatus.ATTEMPT_MIGRATION);
        builder.c(0L);
        builder.a();
    }

    public abstract String a();

    public abstract long b();

    public abstract String c();

    public abstract String d();

    public abstract String e();

    public abstract PersistedInstallation.RegistrationStatus f();

    public abstract long g();

    public final boolean h() {
        return f() == PersistedInstallation.RegistrationStatus.REGISTERED;
    }

    public abstract Builder i();

    public final PersistedInstallationEntry j() {
        AutoValue_PersistedInstallationEntry.Builder builder = (AutoValue_PersistedInstallationEntry.Builder) i();
        builder.g = "BAD CONFIG";
        builder.f(PersistedInstallation.RegistrationStatus.REGISTER_ERROR);
        return builder.a();
    }
}
