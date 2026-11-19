package com.google.firebase.crashlytics.internal.model;

import defpackage.a;
import defpackage.md;
import defpackage.o60;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_Session_Event_Device extends CrashlyticsReport.Session.Event.Device {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Double f34941a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f34942b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f34943c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f34944e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f34945f;

    public static final class Builder extends CrashlyticsReport.Session.Event.Device.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Double f34946a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f34947b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f34948c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f34949e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f34950f;
        public byte g;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device.Builder
        public final CrashlyticsReport.Session.Event.Device a() {
            if (this.g == 31) {
                return new AutoValue_CrashlyticsReport_Session_Event_Device(this.f34946a, this.f34947b, this.f34948c, this.d, this.f34949e, this.f34950f);
            }
            StringBuilder sb = new StringBuilder();
            if ((this.g & 1) == 0) {
                sb.append(" batteryVelocity");
            }
            if ((this.g & 2) == 0) {
                sb.append(" proximityOn");
            }
            if ((this.g & 4) == 0) {
                sb.append(" orientation");
            }
            if ((this.g & 8) == 0) {
                sb.append(" ramUsed");
            }
            if ((this.g & 16) == 0) {
                sb.append(" diskUsed");
            }
            md.k(a.k("Missing required properties:", sb));
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device.Builder
        public final CrashlyticsReport.Session.Event.Device.Builder b(Double d) {
            this.f34946a = d;
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device.Builder
        public final CrashlyticsReport.Session.Event.Device.Builder c(int i2) {
            this.f34947b = i2;
            this.g = (byte) (this.g | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device.Builder
        public final CrashlyticsReport.Session.Event.Device.Builder d(long j2) {
            this.f34950f = j2;
            this.g = (byte) (this.g | 16);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device.Builder
        public final CrashlyticsReport.Session.Event.Device.Builder e(int i2) {
            this.d = i2;
            this.g = (byte) (this.g | 4);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device.Builder
        public final CrashlyticsReport.Session.Event.Device.Builder f(boolean z) {
            this.f34948c = z;
            this.g = (byte) (this.g | 2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device.Builder
        public final CrashlyticsReport.Session.Event.Device.Builder g(long j2) {
            this.f34949e = j2;
            this.g = (byte) (this.g | 8);
            return this;
        }
    }

    public AutoValue_CrashlyticsReport_Session_Event_Device(Double d, int i2, boolean z, int i3, long j2, long j3) {
        this.f34941a = d;
        this.f34942b = i2;
        this.f34943c = z;
        this.d = i3;
        this.f34944e = j2;
        this.f34945f = j3;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device
    public final Double b() {
        return this.f34941a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device
    public final int c() {
        return this.f34942b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device
    public final long d() {
        return this.f34945f;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device
    public final int e() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.Session.Event.Device)) {
            return false;
        }
        CrashlyticsReport.Session.Event.Device device = (CrashlyticsReport.Session.Event.Device) obj;
        Double d = this.f34941a;
        if (d == null) {
            if (device.b() != null) {
                return false;
            }
        } else if (!d.equals(device.b())) {
            return false;
        }
        return this.f34942b == device.c() && this.f34943c == device.g() && this.d == device.e() && this.f34944e == device.f() && this.f34945f == device.d();
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device
    public final long f() {
        return this.f34944e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Event.Device
    public final boolean g() {
        return this.f34943c;
    }

    public final int hashCode() {
        Double d = this.f34941a;
        int iHashCode = ((((((((d == null ? 0 : d.hashCode()) ^ 1000003) * 1000003) ^ this.f34942b) * 1000003) ^ (this.f34943c ? 1231 : 1237)) * 1000003) ^ this.d) * 1000003;
        long j2 = this.f34944e;
        long j3 = this.f34945f;
        return ((int) (j3 ^ (j3 >>> 32))) ^ ((iHashCode ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Device{batteryLevel=");
        sb.append(this.f34941a);
        sb.append(", batteryVelocity=");
        sb.append(this.f34942b);
        sb.append(", proximityOn=");
        sb.append(this.f34943c);
        sb.append(", orientation=");
        sb.append(this.d);
        sb.append(", ramUsed=");
        sb.append(this.f34944e);
        sb.append(", diskUsed=");
        return o60.j(this.f34945f, "}", sb);
    }
}
