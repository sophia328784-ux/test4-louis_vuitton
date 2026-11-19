package com.google.firebase.crashlytics.internal.model;

import android.os.Build;
import defpackage.n00;
import defpackage.r81;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_StaticSessionData_DeviceData extends StaticSessionData.DeviceData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f34983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f34984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f34985c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f34986e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f34987f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f34988h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f34989i;

    public AutoValue_StaticSessionData_DeviceData(int i2, int i3, long j2, long j3, boolean z, int i4) {
        String str = Build.MODEL;
        String str2 = Build.MANUFACTURER;
        String str3 = Build.PRODUCT;
        this.f34983a = i2;
        if (str == null) {
            r81.d("Null model");
            throw null;
        }
        this.f34984b = str;
        this.f34985c = i3;
        this.d = j2;
        this.f34986e = j3;
        this.f34987f = z;
        this.g = i4;
        if (str2 == null) {
            r81.d("Null manufacturer");
            throw null;
        }
        this.f34988h = str2;
        if (str3 != null) {
            this.f34989i = str3;
        } else {
            r81.d("Null modelClass");
            throw null;
        }
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData.DeviceData
    public final int a() {
        return this.f34983a;
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData.DeviceData
    public final int b() {
        return this.f34985c;
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData.DeviceData
    public final long d() {
        return this.f34986e;
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData.DeviceData
    public final boolean e() {
        return this.f34987f;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof StaticSessionData.DeviceData)) {
            return false;
        }
        StaticSessionData.DeviceData deviceData = (StaticSessionData.DeviceData) obj;
        return this.f34983a == deviceData.a() && this.f34984b.equals(deviceData.g()) && this.f34985c == deviceData.b() && this.d == deviceData.j() && this.f34986e == deviceData.d() && this.f34987f == deviceData.e() && this.g == deviceData.i() && this.f34988h.equals(deviceData.f()) && this.f34989i.equals(deviceData.h());
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData.DeviceData
    public final String f() {
        return this.f34988h;
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData.DeviceData
    public final String g() {
        return this.f34984b;
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData.DeviceData
    public final String h() {
        return this.f34989i;
    }

    public final int hashCode() {
        int iHashCode = (((((this.f34983a ^ 1000003) * 1000003) ^ this.f34984b.hashCode()) * 1000003) ^ this.f34985c) * 1000003;
        long j2 = this.d;
        int i2 = (iHashCode ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        long j3 = this.f34986e;
        return this.f34989i.hashCode() ^ ((((((((i2 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003) ^ (this.f34987f ? 1231 : 1237)) * 1000003) ^ this.g) * 1000003) ^ this.f34988h.hashCode()) * 1000003);
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData.DeviceData
    public final int i() {
        return this.g;
    }

    @Override // com.google.firebase.crashlytics.internal.model.StaticSessionData.DeviceData
    public final long j() {
        return this.d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DeviceData{arch=");
        sb.append(this.f34983a);
        sb.append(", model=");
        sb.append(this.f34984b);
        sb.append(", availableProcessors=");
        sb.append(this.f34985c);
        sb.append(", totalRam=");
        sb.append(this.d);
        sb.append(", diskSpace=");
        sb.append(this.f34986e);
        sb.append(", isEmulator=");
        sb.append(this.f34987f);
        sb.append(", state=");
        sb.append(this.g);
        sb.append(", manufacturer=");
        sb.append(this.f34988h);
        sb.append(", modelClass=");
        return n00.r(this.f34989i, "}", sb);
    }
}
