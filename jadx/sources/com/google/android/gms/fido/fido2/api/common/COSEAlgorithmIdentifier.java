package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.fc;
import defpackage.n00;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class COSEAlgorithmIdentifier implements Parcelable {
    public static final Parcelable.Creator<COSEAlgorithmIdentifier> CREATOR = new zzp();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Algorithm f29445b;

    public static class UnsupportedAlgorithmIdentifierException extends Exception {
        public UnsupportedAlgorithmIdentifierException(int i2) {
            super(n00.m(i2, "Algorithm with COSE value ", " not supported"));
        }
    }

    public COSEAlgorithmIdentifier(Algorithm algorithm) {
        Preconditions.h(algorithm);
        this.f29445b = algorithm;
    }

    public static COSEAlgorithmIdentifier a(int i2) throws UnsupportedAlgorithmIdentifierException {
        Algorithm algorithm;
        if (i2 != RSAAlgorithm.LEGACY_RS1.a()) {
            for (RSAAlgorithm rSAAlgorithm : RSAAlgorithm.values()) {
                if (rSAAlgorithm.a() == i2) {
                    algorithm = rSAAlgorithm;
                }
            }
            for (EC2Algorithm eC2Algorithm : EC2Algorithm.values()) {
                if (eC2Algorithm.a() == i2) {
                    algorithm = eC2Algorithm;
                }
            }
            throw new UnsupportedAlgorithmIdentifierException(i2);
        }
        algorithm = RSAAlgorithm.RS1;
        return new COSEAlgorithmIdentifier(algorithm);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof COSEAlgorithmIdentifier) && this.f29445b.a() == ((COSEAlgorithmIdentifier) obj).f29445b.a();
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f29445b});
    }

    public final String toString() {
        return fc.h("COSEAlgorithmIdentifier{algorithm=", String.valueOf(this.f29445b), "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.f29445b.a());
    }
}
