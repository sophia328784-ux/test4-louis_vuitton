package com.google.crypto.tink.aead;

import com.google.errorprone.annotations.Immutable;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class AesGcmParameters extends AeadParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f33902a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f33903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f33904c;
    public final Variant d;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Integer f33905a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Integer f33906b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Integer f33907c;
        public Variant d;

        public final AesGcmParameters a() throws GeneralSecurityException {
            Integer num = this.f33905a;
            if (num == null) {
                v40.j("Key size is not set");
                return null;
            }
            if (this.d == null) {
                v40.j("Variant is not set");
                return null;
            }
            if (this.f33906b == null) {
                v40.j("IV size is not set");
                return null;
            }
            if (this.f33907c != null) {
                return new AesGcmParameters(num.intValue(), this.f33906b.intValue(), this.f33907c.intValue(), this.d);
            }
            v40.j("Tag size is not set");
            return null;
        }
    }

    @Immutable
    public static final class Variant {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Variant f33908b = new Variant("TINK");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Variant f33909c = new Variant("CRUNCHY");
        public static final Variant d = new Variant("NO_PREFIX");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f33910a;

        public Variant(String str) {
            this.f33910a = str;
        }

        public final String toString() {
            return this.f33910a;
        }
    }

    public AesGcmParameters(int i2, int i3, int i4, Variant variant) {
        this.f33902a = i2;
        this.f33903b = i3;
        this.f33904c = i4;
        this.d = variant;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AesGcmParameters)) {
            return false;
        }
        AesGcmParameters aesGcmParameters = (AesGcmParameters) obj;
        return aesGcmParameters.f33902a == this.f33902a && aesGcmParameters.f33903b == this.f33903b && aesGcmParameters.f33904c == this.f33904c && aesGcmParameters.d == this.d;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f33902a), Integer.valueOf(this.f33903b), Integer.valueOf(this.f33904c), this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AesGcm Parameters (variant: ");
        sb.append(this.d);
        sb.append(", ");
        sb.append(this.f33903b);
        sb.append("-byte IV, ");
        sb.append(this.f33904c);
        sb.append("-byte tag, and ");
        return defpackage.a.i(this.f33902a, "-byte key)", sb);
    }
}
