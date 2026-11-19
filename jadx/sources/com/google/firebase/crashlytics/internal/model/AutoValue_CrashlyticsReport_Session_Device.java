package com.google.firebase.crashlytics.internal.model;

import defpackage.a;
import defpackage.md;
import defpackage.n00;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_CrashlyticsReport_Session_Device extends CrashlyticsReport.Session.Device {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f34851a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34852b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f34853c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f34854e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f34855f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f34856h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f34857i;

    public static final class Builder extends CrashlyticsReport.Session.Device.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f34858a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f34859b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f34860c;
        public long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f34861e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f34862f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f34863h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f34864i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public byte f34865j;

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public final CrashlyticsReport.Session.Device a() {
            String str;
            String str2;
            String str3;
            if (this.f34865j == 63 && (str = this.f34859b) != null && (str2 = this.f34863h) != null && (str3 = this.f34864i) != null) {
                return new AutoValue_CrashlyticsReport_Session_Device(this.f34858a, str, this.f34860c, this.d, this.f34861e, this.f34862f, this.g, str2, str3);
            }
            StringBuilder sb = new StringBuilder();
            if ((this.f34865j & 1) == 0) {
                sb.append(" arch");
            }
            if (this.f34859b == null) {
                sb.append(" model");
            }
            if ((this.f34865j & 2) == 0) {
                sb.append(" cores");
            }
            if ((this.f34865j & 4) == 0) {
                sb.append(" ram");
            }
            if ((this.f34865j & 8) == 0) {
                sb.append(" diskSpace");
            }
            if ((this.f34865j & 16) == 0) {
                sb.append(" simulator");
            }
            if ((this.f34865j & 32) == 0) {
                sb.append(" state");
            }
            if (this.f34863h == null) {
                sb.append(" manufacturer");
            }
            if (this.f34864i == null) {
                sb.append(" modelClass");
            }
            md.k(a.k("Missing required properties:", sb));
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public final CrashlyticsReport.Session.Device.Builder b(int i2) {
            this.f34858a = i2;
            this.f34865j = (byte) (this.f34865j | 1);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public final CrashlyticsReport.Session.Device.Builder c(int i2) {
            this.f34860c = i2;
            this.f34865j = (byte) (this.f34865j | 2);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public final CrashlyticsReport.Session.Device.Builder d(long j2) {
            this.f34861e = j2;
            this.f34865j = (byte) (this.f34865j | 8);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public final CrashlyticsReport.Session.Device.Builder e(String str) {
            if (str != null) {
                this.f34863h = str;
                return this;
            }
            r81.d("Null manufacturer");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public final CrashlyticsReport.Session.Device.Builder f(String str) {
            if (str != null) {
                this.f34859b = str;
                return this;
            }
            r81.d("Null model");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public final CrashlyticsReport.Session.Device.Builder g(String str) {
            if (str != null) {
                this.f34864i = str;
                return this;
            }
            r81.d("Null modelClass");
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public final CrashlyticsReport.Session.Device.Builder h(long j2) {
            this.d = j2;
            this.f34865j = (byte) (this.f34865j | 4);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public final CrashlyticsReport.Session.Device.Builder i(boolean z) {
            this.f34862f = z;
            this.f34865j = (byte) (this.f34865j | 16);
            return this;
        }

        @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device.Builder
        public final CrashlyticsReport.Session.Device.Builder j(int i2) {
            this.g = i2;
            this.f34865j = (byte) (this.f34865j | 32);
            return this;
        }
    }

    public AutoValue_CrashlyticsReport_Session_Device(int i2, String str, int i3, long j2, long j3, boolean z, int i4, String str2, String str3) {
        this.f34851a = i2;
        this.f34852b = str;
        this.f34853c = i3;
        this.d = j2;
        this.f34854e = j3;
        this.f34855f = z;
        this.g = i4;
        this.f34856h = str2;
        this.f34857i = str3;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device
    public final int b() {
        return this.f34851a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device
    public final int c() {
        return this.f34853c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device
    public final long d() {
        return this.f34854e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device
    public final String e() {
        return this.f34856h;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CrashlyticsReport.Session.Device)) {
            return false;
        }
        CrashlyticsReport.Session.Device device = (CrashlyticsReport.Session.Device) obj;
        return this.f34851a == device.b() && this.f34852b.equals(device.f()) && this.f34853c == device.c() && this.d == device.h() && this.f34854e == device.d() && this.f34855f == device.j() && this.g == device.i() && this.f34856h.equals(device.e()) && this.f34857i.equals(device.g());
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device
    public final String f() {
        return this.f34852b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device
    public final String g() {
        return this.f34857i;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device
    public final long h() {
        return this.d;
    }

    public final int hashCode() {
        int iHashCode = (((((this.f34851a ^ 1000003) * 1000003) ^ this.f34852b.hashCode()) * 1000003) ^ this.f34853c) * 1000003;
        long j2 = this.d;
        int i2 = (iHashCode ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        long j3 = this.f34854e;
        return this.f34857i.hashCode() ^ ((((((((i2 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003) ^ (this.f34855f ? 1231 : 1237)) * 1000003) ^ this.g) * 1000003) ^ this.f34856h.hashCode()) * 1000003);
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device
    public final int i() {
        return this.g;
    }

    @Override // com.google.firebase.crashlytics.internal.model.CrashlyticsReport.Session.Device
    public final boolean j() {
        return this.f34855f;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Device{arch=");
        sb.append(this.f34851a);
        sb.append(", model=");
        sb.append(this.f34852b);
        sb.append(", cores=");
        sb.append(this.f34853c);
        sb.append(", ram=");
        sb.append(this.d);
        sb.append(", diskSpace=");
        sb.append(this.f34854e);
        sb.append(", simulator=");
        sb.append(this.f34855f);
        sb.append(", state=");
        sb.append(this.g);
        sb.append(", manufacturer=");
        sb.append(this.f34856h);
        sb.append(", modelClass=");
        return n00.r(this.f34857i, "}", sb);
    }
}
