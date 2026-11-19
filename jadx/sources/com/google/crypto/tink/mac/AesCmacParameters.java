package com.google.crypto.tink.mac;

import com.google.errorprone.annotations.Immutable;
import defpackage.md;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class AesCmacParameters extends MacParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f34038a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f34039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Variant f34040c;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Integer f34041a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Integer f34042b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Variant f34043c;

        public final AesCmacParameters a() throws GeneralSecurityException {
            Integer num = this.f34041a;
            if (num == null) {
                v40.j("key size not set");
                return null;
            }
            if (this.f34042b == null) {
                v40.j("tag size not set");
                return null;
            }
            if (this.f34043c != null) {
                return new AesCmacParameters(num.intValue(), this.f34042b.intValue(), this.f34043c);
            }
            v40.j("variant not set");
            return null;
        }

        public final void b(int i2) throws InvalidAlgorithmParameterException {
            if (i2 != 16 && i2 != 32) {
                throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 128-bit and 256-bit AES keys are supported", Integer.valueOf(i2 * 8)));
            }
            this.f34041a = Integer.valueOf(i2);
        }
    }

    @Immutable
    public static final class Variant {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Variant f34044b = new Variant("TINK");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Variant f34045c = new Variant("CRUNCHY");
        public static final Variant d = new Variant("LEGACY");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Variant f34046e = new Variant("NO_PREFIX");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f34047a;

        public Variant(String str) {
            this.f34047a = str;
        }

        public final String toString() {
            return this.f34047a;
        }
    }

    public AesCmacParameters(int i2, int i3, Variant variant) {
        this.f34038a = i2;
        this.f34039b = i3;
        this.f34040c = variant;
    }

    public final int a() {
        Variant variant = Variant.f34046e;
        int i2 = this.f34039b;
        Variant variant2 = this.f34040c;
        if (variant2 == variant) {
            return i2;
        }
        if (variant2 != Variant.f34044b && variant2 != Variant.f34045c && variant2 != Variant.d) {
            md.k("Unknown variant");
            return 0;
        }
        return i2 + 5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AesCmacParameters)) {
            return false;
        }
        AesCmacParameters aesCmacParameters = (AesCmacParameters) obj;
        return aesCmacParameters.f34038a == this.f34038a && aesCmacParameters.a() == a() && aesCmacParameters.f34040c == this.f34040c;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f34038a), Integer.valueOf(this.f34039b), this.f34040c);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AES-CMAC Parameters (variant: ");
        sb.append(this.f34040c);
        sb.append(", ");
        sb.append(this.f34039b);
        sb.append("-byte tags, and ");
        return defpackage.a.i(this.f34038a, "-byte key)", sb);
    }
}
