package com.google.android.gms.cloudmessaging;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;

/* JADX INFO: loaded from: classes2.dex */
public class RegisterRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<RegisterRequest> CREATOR = new zzx();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f28903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28904c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f28905e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f28906f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f28907h;

    public RegisterRequest(String str, String str2, String str3, String str4, String str5, int i2, String str6) {
        this.f28903b = str;
        this.f28904c = str2;
        this.d = str3;
        this.f28905e = str4;
        this.f28906f = str5;
        this.g = i2;
        this.f28907h = str6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.k(parcel, 1, this.f28903b, false);
        SafeParcelWriter.k(parcel, 2, this.f28904c, false);
        SafeParcelWriter.k(parcel, 3, this.d, false);
        SafeParcelWriter.k(parcel, 4, this.f28905e, false);
        SafeParcelWriter.k(parcel, 5, this.f28906f, false);
        int i3 = this.g;
        SafeParcelWriter.p(parcel, 6, 4);
        parcel.writeInt(i3);
        SafeParcelWriter.k(parcel, 7, this.f28907h, false);
        SafeParcelWriter.r(iQ, parcel);
    }

    public RegisterRequest(String str, String str2, String str3, String str4, String str5, String str6) {
        this.f28903b = str;
        this.f28904c = str2;
        this.d = str3;
        this.f28905e = str4;
        this.f28906f = str5;
        this.f28907h = str6;
    }
}
