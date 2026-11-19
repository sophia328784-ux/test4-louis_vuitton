package com.linecorp.linesdk;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.fc;

/* JADX INFO: loaded from: classes2.dex */
public class LineAccessToken implements Parcelable {
    public static final Parcelable.Creator<LineAccessToken> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f36057b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f36058c;
    public final long d;

    /* JADX INFO: renamed from: com.linecorp.linesdk.LineAccessToken$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<LineAccessToken> {
        @Override // android.os.Parcelable.Creator
        public final LineAccessToken createFromParcel(Parcel parcel) {
            return new LineAccessToken(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final LineAccessToken[] newArray(int i2) {
            return new LineAccessToken[i2];
        }
    }

    public LineAccessToken(Parcel parcel) {
        this.f36057b = parcel.readString();
        this.f36058c = parcel.readLong();
        this.d = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        LineAccessToken lineAccessToken = (LineAccessToken) obj;
        if (this.f36058c == lineAccessToken.f36058c && this.d == lineAccessToken.d) {
            return this.f36057b.equals(lineAccessToken.f36057b);
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f36057b.hashCode() * 31;
        long j2 = this.f36058c;
        int i2 = (iHashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.d;
        return i2 + ((int) (j3 ^ (j3 >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LineAccessToken{accessToken='#####', expiresInMillis=");
        sb.append(this.f36058c);
        sb.append(", issuedClientTimeMillis=");
        return fc.k(sb, this.d, '}');
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f36057b);
        parcel.writeLong(this.f36058c);
        parcel.writeLong(this.d);
    }

    public LineAccessToken(String str, long j2, long j3) {
        this.f36057b = str;
        this.f36058c = j2;
        this.d = j3;
    }
}
