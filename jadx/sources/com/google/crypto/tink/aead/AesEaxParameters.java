package com.google.crypto.tink.aead;

import com.google.errorprone.annotations.Immutable;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class AesEaxParameters extends AeadParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f33886a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f33887b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f33888c;
    public final Variant d;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Integer f33889a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Integer f33890b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Integer f33891c;
        public Variant d;

        public final AesEaxParameters a() throws GeneralSecurityException {
            Integer num = this.f33889a;
            if (num == null) {
                v40.j("Key size is not set");
                return null;
            }
            if (this.f33890b == null) {
                v40.j("IV size is not set");
                return null;
            }
            if (this.d == null) {
                v40.j("Variant is not set");
                return null;
            }
            if (this.f33891c != null) {
                return new AesEaxParameters(num.intValue(), this.f33890b.intValue(), this.f33891c.intValue(), this.d);
            }
            v40.j("Tag size is not set");
            return null;
        }
    }

    @Immutable
    public static final class Variant {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Variant f33892b = new Variant("TINK");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Variant f33893c = new Variant("CRUNCHY");
        public static final Variant d = new Variant("NO_PREFIX");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f33894a;

        public Variant(String str) {
            this.f33894a = str;
        }

        public final String toString() {
            return this.f33894a;
        }
    }

    public AesEaxParameters(int i2, int i3, int i4, Variant variant) {
        this.f33886a = i2;
        this.f33887b = i3;
        this.f33888c = i4;
        this.d = variant;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AesEaxParameters)) {
            return false;
        }
        AesEaxParameters aesEaxParameters = (AesEaxParameters) obj;
        return aesEaxParameters.f33886a == this.f33886a && aesEaxParameters.f33887b == this.f33887b && aesEaxParameters.f33888c == this.f33888c && aesEaxParameters.d == this.d;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f33886a), Integer.valueOf(this.f33887b), Integer.valueOf(this.f33888c), this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AesEax Parameters (variant: ");
        sb.append(this.d);
        sb.append(", ");
        sb.append(this.f33887b);
        sb.append("-byte IV, ");
        sb.append(this.f33888c);
        sb.append("-byte tag, and ");
        return defpackage.a.i(this.f33886a, "-byte key)", sb);
    }
}
