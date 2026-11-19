package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class TokenData extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<TokenData> CREATOR = new zzm();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28690b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f28691c;
    public final Long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f28692e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f28693f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f28694h;

    public TokenData(int i2, String str, Long l, boolean z, boolean z2, ArrayList arrayList, String str2) {
        this.f28690b = i2;
        Preconditions.e(str);
        this.f28691c = str;
        this.d = l;
        this.f28692e = z;
        this.f28693f = z2;
        this.g = arrayList;
        this.f28694h = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.f28691c, tokenData.f28691c) && Objects.a(this.d, tokenData.d) && this.f28692e == tokenData.f28692e && this.f28693f == tokenData.f28693f && Objects.a(this.g, tokenData.g) && Objects.a(this.f28694h, tokenData.f28694h);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f28691c, this.d, Boolean.valueOf(this.f28692e), Boolean.valueOf(this.f28693f), this.g, this.f28694h});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iQ = SafeParcelWriter.q(20293, parcel);
        SafeParcelWriter.p(parcel, 1, 4);
        parcel.writeInt(this.f28690b);
        SafeParcelWriter.k(parcel, 2, this.f28691c, false);
        SafeParcelWriter.i(parcel, 3, this.d);
        SafeParcelWriter.p(parcel, 4, 4);
        parcel.writeInt(this.f28692e ? 1 : 0);
        SafeParcelWriter.p(parcel, 5, 4);
        parcel.writeInt(this.f28693f ? 1 : 0);
        SafeParcelWriter.m(parcel, 6, this.g);
        SafeParcelWriter.k(parcel, 7, this.f28694h, false);
        SafeParcelWriter.r(iQ, parcel);
    }
}
