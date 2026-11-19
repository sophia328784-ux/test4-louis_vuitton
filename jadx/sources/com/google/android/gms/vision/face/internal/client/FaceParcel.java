package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class FaceParcel extends AbstractSafeParcelable {
    public static final Parcelable.Creator<FaceParcel> CREATOR = new zzd();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f32184b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f32185c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f32186e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f32187f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f32188h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f32189i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f32190j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LandmarkParcel[] f32191k;
    public final float l;
    public final float m;
    public final float n;
    public final zza[] o;
    public final float p;

    public FaceParcel(int i2, int i3, float f2, float f3, float f4, float f5, float f6, float f7, LandmarkParcel[] landmarkParcelArr, float f8, float f9, float f10) {
        this(i2, i3, f2, f3, f4, f5, f6, f7, Call.Parameters.DEFAULT_CAMERA_ZOOM, landmarkParcelArr, f8, f9, f10, new zza[0], -1.0f);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f32184b);
        SafeParcelWriter.p(parcel, 2, 4);
        parcel.writeInt(this.f32185c);
        SafeParcelWriter.p(parcel, 3, 4);
        parcel.writeFloat(this.d);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeFloat(this.f32186e);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeFloat(this.f32187f);
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeFloat(this.g);
        SafeParcelWriter.p(parcel, 7, 4);
        parcel.writeFloat(this.f32188h);
        SafeParcelWriter.p(parcel, 8, 4);
        parcel.writeFloat(this.f32189i);
        SafeParcelWriter.n(parcel, 9, this.f32191k, i2);
        SafeParcelWriter.p(parcel, 10, 4);
        parcel.writeFloat(this.l);
        SafeParcelWriter.p(parcel, 11, 4);
        parcel.writeFloat(this.m);
        SafeParcelWriter.p(parcel, 12, 4);
        parcel.writeFloat(this.n);
        SafeParcelWriter.n(parcel, 13, this.o, i2);
        SafeParcelWriter.p(parcel, 14, 4);
        parcel.writeFloat(this.f32190j);
        SafeParcelWriter.p(parcel, 15, 4);
        parcel.writeFloat(this.p);
        SafeParcelWriter.r(iQ, parcel);
    }

    public FaceParcel(int i2, int i3, float f2, float f3, float f4, float f5, float f6, float f7, float f8, LandmarkParcel[] landmarkParcelArr, float f9, float f10, float f11, zza[] zzaVarArr, float f12) {
        this.f32184b = i2;
        this.f32185c = i3;
        this.d = f2;
        this.f32186e = f3;
        this.f32187f = f4;
        this.g = f5;
        this.f32188h = f6;
        this.f32189i = f7;
        this.f32190j = f8;
        this.f32191k = landmarkParcelArr;
        this.l = f9;
        this.m = f10;
        this.n = f11;
        this.o = zzaVarArr;
        this.p = f12;
    }
}
