package com.linecorp.linesdk.internal.pkce;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import defpackage.n00;
import defpackage.x1;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes2.dex */
public class PKCECode implements Parcelable {
    public static final Parcelable.Creator<PKCECode> CREATOR = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f36246b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f36247c;

    /* JADX INFO: renamed from: com.linecorp.linesdk.internal.pkce.PKCECode$1, reason: invalid class name */
    public class AnonymousClass1 implements Parcelable.Creator<PKCECode> {
        @Override // android.os.Parcelable.Creator
        public final PKCECode createFromParcel(Parcel parcel) {
            return new PKCECode(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final PKCECode[] newArray(int i2) {
            return new PKCECode[i2];
        }
    }

    public PKCECode(Parcel parcel) {
        String string = parcel.readString();
        this.f36246b = string;
        this.f36247c = a(string);
    }

    public static String a(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(str.getBytes());
            return Base64.encodeToString(messageDigest.digest(), 11);
        } catch (NoSuchAlgorithmException e2) {
            x1.m(e2);
            return null;
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PKCECode)) {
            return false;
        }
        PKCECode pKCECode = (PKCECode) obj;
        if (this.f36246b.equals(pKCECode.f36246b)) {
            return this.f36247c.equals(pKCECode.f36247c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f36247c.hashCode() + (this.f36246b.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PKCECode{verifier='");
        sb.append(this.f36246b);
        sb.append("', challenge='");
        return n00.r(this.f36247c, "'}", sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.f36246b);
    }

    public PKCECode(String str) {
        this.f36246b = str;
        this.f36247c = a(str);
    }
}
