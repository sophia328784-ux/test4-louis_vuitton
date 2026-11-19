package com.google.firebase.crashlytics.internal.settings;

/* JADX INFO: loaded from: classes2.dex */
public class Settings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SessionData f35036a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FeatureFlagData f35037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f35038c;
    public final double d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final double f35039e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f35040f;

    public static class FeatureFlagData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final boolean f35041a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f35042b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f35043c;

        public FeatureFlagData(boolean z, boolean z2, boolean z3) {
            this.f35041a = z;
            this.f35042b = z2;
            this.f35043c = z3;
        }
    }

    public static class SessionData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f35044a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f35045b;

        public SessionData(int i2, int i3) {
            this.f35044a = i2;
            this.f35045b = i3;
        }
    }

    public Settings(long j2, SessionData sessionData, FeatureFlagData featureFlagData, int i2, int i3, double d, double d2, int i4) {
        this.f35038c = j2;
        this.f35036a = sessionData;
        this.f35037b = featureFlagData;
        this.d = d;
        this.f35039e = d2;
        this.f35040f = i4;
    }
}
