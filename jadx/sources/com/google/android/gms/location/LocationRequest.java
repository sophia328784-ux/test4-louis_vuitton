package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.WorkSource;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.WorkSourceUtil;
import com.google.android.gms.internal.location.zzen;
import com.networkbench.agent.impl.performance.coulometry.b.j;
import defpackage.ct0;
import defpackage.n00;
import java.util.Arrays;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class LocationRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationRequest> CREATOR = new zzae();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f31345b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f31346c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f31347e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f31348f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f31349h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f31350i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f31351j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f31352k;
    public final int l;
    public final boolean m;
    public final WorkSource n;
    public final com.google.android.gms.internal.location.zzd o;

    public LocationRequest(int i2, long j2, long j3, long j4, long j5, long j6, int i3, float f2, boolean z, long j7, int i4, int i5, boolean z2, WorkSource workSource, com.google.android.gms.internal.location.zzd zzdVar) {
        this.f31345b = i2;
        this.f31346c = j2;
        this.d = j3;
        this.f31347e = j4;
        this.f31348f = j5 != Long.MAX_VALUE ? Math.min(Math.max(1L, j5 - SystemClock.elapsedRealtime()), j6) : j6;
        this.g = i3;
        this.f31349h = f2;
        this.f31350i = z;
        this.f31351j = j7;
        this.f31352k = i4;
        this.l = i5;
        this.m = z2;
        this.n = workSource;
        this.o = zzdVar;
    }

    public static String Z1(long j2) {
        String string;
        if (j2 == Long.MAX_VALUE) {
            return "∞";
        }
        StringBuilder sb = zzen.f30258b;
        synchronized (sb) {
            sb.setLength(0);
            zzen.a(j2, sb);
            string = sb.toString();
        }
        return string;
    }

    public final long W1() {
        if (this.f31345b == 105) {
            return Long.MAX_VALUE;
        }
        return this.f31346c;
    }

    public final long X1() {
        long j2 = this.d;
        return j2 == -1 ? this.f31346c / 2 : j2;
    }

    public final boolean Y1() {
        long j2 = this.f31347e;
        return j2 > 0 && (j2 >> 1) >= W1();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof LocationRequest)) {
            return false;
        }
        LocationRequest locationRequest = (LocationRequest) obj;
        boolean zY1 = Y1();
        int i2 = this.f31345b;
        if (i2 != locationRequest.f31345b) {
            return false;
        }
        if ((i2 == 105 || this.f31346c == locationRequest.f31346c) && X1() == locationRequest.X1() && zY1 == locationRequest.Y1()) {
            return (!zY1 || this.f31347e == locationRequest.f31347e) && this.f31348f == locationRequest.f31348f && this.g == locationRequest.g && this.f31349h == locationRequest.f31349h && this.f31350i == locationRequest.f31350i && this.f31352k == locationRequest.f31352k && this.l == locationRequest.l && this.m == locationRequest.m && this.n.equals(locationRequest.n) && Objects.a(this.o, locationRequest.o);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f31345b), Long.valueOf(W1()), Long.valueOf(X1()), this.n});
    }

    public final String toString() {
        String str;
        StringBuilder sbT = n00.t("Request[");
        int i2 = this.f31345b;
        long j2 = this.f31347e;
        if (i2 == 105) {
            sbT.append(zzak.b(i2));
            if (j2 > 0) {
                sbT.append("/");
                zzen.a(j2, sbT);
            }
        } else {
            sbT.append("@");
            if (Y1()) {
                zzen.a(W1(), sbT);
                sbT.append("/");
                zzen.a(j2, sbT);
            } else {
                zzen.a(W1(), sbT);
            }
            sbT.append(" ");
            sbT.append(zzak.b(this.f31345b));
        }
        int i3 = this.f31345b;
        long j3 = this.d;
        if (i3 == 105 || j3 != -1) {
            sbT.append(", minUpdateInterval=");
            sbT.append(Z1(j3));
        }
        float f2 = this.f31349h;
        if (f2 > 0.0d) {
            sbT.append(", minUpdateDistance=");
            sbT.append(f2);
        }
        long j4 = this.f31351j;
        if (j4 != -1) {
            sbT.append(", maxUpdateAge=");
            sbT.append(Z1(j4));
        }
        long j5 = this.f31348f;
        if (j5 != Long.MAX_VALUE) {
            sbT.append(", duration=");
            zzen.a(j5, sbT);
        }
        int i4 = this.g;
        if (i4 != Integer.MAX_VALUE) {
            sbT.append(", maxUpdates=");
            sbT.append(i4);
        }
        int i5 = this.l;
        if (i5 != 0) {
            sbT.append(", ");
            if (i5 == 0) {
                str = "THROTTLE_BACKGROUND";
            } else if (i5 == 1) {
                str = "THROTTLE_ALWAYS";
            } else {
                if (i5 != 2) {
                    ct0.c();
                    return null;
                }
                str = "THROTTLE_NEVER";
            }
            sbT.append(str);
        }
        int i6 = this.f31352k;
        if (i6 != 0) {
            sbT.append(", ");
            sbT.append(zzp.a(i6));
        }
        if (this.f31350i) {
            sbT.append(", waitForAccurateLocation");
        }
        if (this.m) {
            sbT.append(", bypass");
        }
        WorkSource workSource = this.n;
        if (!WorkSourceUtil.b(workSource)) {
            sbT.append(", ");
            sbT.append(workSource);
        }
        com.google.android.gms.internal.location.zzd zzdVar = this.o;
        if (zzdVar != null) {
            sbT.append(", impersonation=");
            sbT.append(zzdVar);
        }
        sbT.append(']');
        return sbT.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        int i3 = this.f31345b;
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(i3);
        long jW1 = W1();
        SafeParcelWriter.p(parcel, 2, 8);
        parcel.writeLong(jW1);
        long jX1 = X1();
        SafeParcelWriter.p(parcel, 3, 8);
        parcel.writeLong(jX1);
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(this.g);
        SafeParcelWriter.p(parcel, 7, 4);
        parcel.writeFloat(this.f31349h);
        SafeParcelWriter.p(parcel, 8, 8);
        parcel.writeLong(this.f31347e);
        SafeParcelWriter.p(parcel, 9, 4);
        parcel.writeInt(this.f31350i ? 1 : 0);
        SafeParcelWriter.p(parcel, 10, 8);
        parcel.writeLong(this.f31348f);
        long j2 = this.f31351j;
        if (j2 == -1) {
            j2 = this.f31346c;
        }
        SafeParcelWriter.p(parcel, 11, 8);
        parcel.writeLong(j2);
        SafeParcelWriter.p(parcel, 12, 4);
        parcel.writeInt(this.f31352k);
        SafeParcelWriter.p(parcel, 13, 4);
        parcel.writeInt(this.l);
        SafeParcelWriter.p(parcel, 15, 4);
        parcel.writeInt(this.m ? 1 : 0);
        SafeParcelWriter.j(parcel, 16, this.n, i2, false);
        SafeParcelWriter.j(parcel, 17, this.o, i2, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    @Deprecated
    public LocationRequest() {
        this(102, 3600000L, j.f37873a, 0L, Long.MAX_VALUE, Long.MAX_VALUE, Integer.MAX_VALUE, Call.Parameters.DEFAULT_CAMERA_ZOOM, true, 3600000L, 0, 0, false, new WorkSource(), null);
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f31353a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f31354b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f31355c;
        public final long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f31356e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f31357f;
        public final float g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f31358h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f31359i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f31360j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f31361k;
        public boolean l;
        public WorkSource m;
        public final com.google.android.gms.internal.location.zzd n;

        /* JADX WARN: Code duplicated, block: B:47:0x00af  */
        /* JADX WARN: Code duplicated, block: B:50:0x00cc  */
        /* JADX WARN: Code duplicated, block: B:53:0x00d1  */
        public Builder(LocationRequest locationRequest) {
            int i2;
            boolean z;
            int i3;
            boolean z2;
            this(locationRequest.f31345b, locationRequest.W1());
            long jX1 = locationRequest.X1();
            Preconditions.b(jX1 == -1 || jX1 >= 0, "minUpdateIntervalMillis must be greater than or equal to 0, or IMPLICIT_MIN_UPDATE_INTERVAL");
            this.f31355c = jX1;
            long j2 = locationRequest.f31347e;
            Preconditions.b(j2 >= 0, "maxUpdateDelayMillis must be greater than or equal to 0");
            this.d = j2;
            long j3 = locationRequest.f31348f;
            Preconditions.b(j3 > 0, "durationMillis must be greater than 0");
            this.f31356e = j3;
            int i4 = locationRequest.g;
            Preconditions.b(i4 > 0, "maxUpdates must be greater than 0");
            this.f31357f = i4;
            float f2 = locationRequest.f31349h;
            Preconditions.b(f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM, "minUpdateDistanceMeters must be greater than or equal to 0");
            this.g = f2;
            this.f31358h = locationRequest.f31350i;
            long j4 = locationRequest.f31351j;
            j4 = j4 == -1 ? locationRequest.f31346c : j4;
            Preconditions.b(j4 == -1 || j4 >= 0, "maxUpdateAgeMillis must be greater than or equal to 0, or IMPLICIT_MAX_UPDATE_AGE");
            this.f31359i = j4;
            int i5 = locationRequest.f31352k;
            int i6 = 2;
            if (i5 != 0 && i5 != 1) {
                if (i5 == 2) {
                    i2 = 2;
                } else {
                    i2 = i5;
                    z = false;
                }
                Preconditions.c(z, "granularity %d must be a Granularity.GRANULARITY_* constant", Integer.valueOf(i2));
                this.f31360j = i5;
                i3 = locationRequest.l;
                if (i3 == 0 && i3 != 1) {
                    if (i3 != 2) {
                        i6 = i3;
                        z2 = false;
                    }
                    Preconditions.c(z2, "throttle behavior %d must be a ThrottleBehavior.THROTTLE_* constant", Integer.valueOf(i6));
                    this.f31361k = i3;
                    this.l = locationRequest.m;
                    this.m = locationRequest.n;
                    com.google.android.gms.internal.location.zzd zzdVar = locationRequest.o;
                    Preconditions.a(zzdVar != null || zzdVar.g == null);
                    this.n = zzdVar;
                }
                i6 = i3;
                z2 = true;
                Preconditions.c(z2, "throttle behavior %d must be a ThrottleBehavior.THROTTLE_* constant", Integer.valueOf(i6));
                this.f31361k = i3;
                this.l = locationRequest.m;
                this.m = locationRequest.n;
                com.google.android.gms.internal.location.zzd zzdVar2 = locationRequest.o;
                Preconditions.a(zzdVar2 != null || zzdVar2.g == null);
                this.n = zzdVar2;
            }
            i2 = i5;
            z = true;
            Preconditions.c(z, "granularity %d must be a Granularity.GRANULARITY_* constant", Integer.valueOf(i2));
            this.f31360j = i5;
            i3 = locationRequest.l;
            if (i3 == 0) {
                i6 = i3;
                z2 = true;
            } else {
                i6 = i3;
                z2 = true;
            }
            Preconditions.c(z2, "throttle behavior %d must be a ThrottleBehavior.THROTTLE_* constant", Integer.valueOf(i6));
            this.f31361k = i3;
            this.l = locationRequest.m;
            this.m = locationRequest.n;
            com.google.android.gms.internal.location.zzd zzdVar3 = locationRequest.o;
            Preconditions.a(zzdVar3 != null || zzdVar3.g == null);
            this.n = zzdVar3;
        }

        public final LocationRequest a() {
            int i2 = this.f31353a;
            long j2 = this.f31354b;
            long jMin = this.f31355c;
            if (i2 != 105) {
                jMin = Math.min(jMin, j2);
            }
            return new LocationRequest(i2, j2, jMin, Math.max(this.d, this.f31354b), Long.MAX_VALUE, this.f31356e, this.f31357f, this.g, this.f31358h, this.f31359i, this.f31360j, this.f31361k, this.l, new WorkSource(this.m), this.n);
        }

        public Builder(int i2, long j2) {
            this(j2);
            zzak.a(i2);
            this.f31353a = i2;
        }

        public Builder(long j2) {
            this.f31353a = 102;
            this.f31355c = -1L;
            this.d = 0L;
            this.f31356e = Long.MAX_VALUE;
            this.f31357f = Integer.MAX_VALUE;
            this.g = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            this.f31358h = true;
            this.f31359i = -1L;
            this.f31360j = 0;
            this.f31361k = 0;
            this.l = false;
            this.m = null;
            this.n = null;
            Preconditions.b(j2 >= 0, "intervalMillis must be greater than or equal to 0");
            this.f31354b = j2;
        }
    }
}
