package com.google.crypto.tink.mac;

import com.google.errorprone.annotations.Immutable;
import defpackage.md;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class HmacParameters extends MacParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f34059a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f34060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Variant f34061c;
    public final HashType d;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Integer f34062a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Integer f34063b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public HashType f34064c;
        public Variant d;

        public final HmacParameters a() throws GeneralSecurityException {
            Integer num = this.f34062a;
            if (num == null) {
                v40.j("key size is not set");
                return null;
            }
            if (this.f34063b == null) {
                v40.j("tag size is not set");
                return null;
            }
            if (this.f34064c == null) {
                v40.j("hash type is not set");
                return null;
            }
            if (this.d == null) {
                v40.j("variant is not set");
                return null;
            }
            if (num.intValue() < 16) {
                throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; must be at least 16 bytes", this.f34062a));
            }
            Integer num2 = this.f34063b;
            int iIntValue = num2.intValue();
            HashType hashType = this.f34064c;
            if (iIntValue < 10) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", num2));
            }
            if (hashType == HashType.f34065b) {
                if (iIntValue > 20) {
                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", num2));
                }
            } else if (hashType == HashType.f34066c) {
                if (iIntValue > 28) {
                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", num2));
                }
            } else if (hashType == HashType.d) {
                if (iIntValue > 32) {
                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", num2));
                }
            } else if (hashType == HashType.f34067e) {
                if (iIntValue > 48) {
                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", num2));
                }
            } else {
                if (hashType != HashType.f34068f) {
                    v40.j("unknown hash type; must be SHA256, SHA384 or SHA512");
                    return null;
                }
                if (iIntValue > 64) {
                    throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", num2));
                }
            }
            return new HmacParameters(this.f34062a.intValue(), this.f34063b.intValue(), this.d, this.f34064c);
        }
    }

    @Immutable
    public static final class HashType {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final HashType f34065b = new HashType("SHA1");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final HashType f34066c = new HashType("SHA224");
        public static final HashType d = new HashType("SHA256");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final HashType f34067e = new HashType("SHA384");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final HashType f34068f = new HashType("SHA512");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f34069a;

        public HashType(String str) {
            this.f34069a = str;
        }

        public final String toString() {
            return this.f34069a;
        }
    }

    @Immutable
    public static final class Variant {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Variant f34070b = new Variant("TINK");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Variant f34071c = new Variant("CRUNCHY");
        public static final Variant d = new Variant("LEGACY");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Variant f34072e = new Variant("NO_PREFIX");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f34073a;

        public Variant(String str) {
            this.f34073a = str;
        }

        public final String toString() {
            return this.f34073a;
        }
    }

    public HmacParameters(int i2, int i3, Variant variant, HashType hashType) {
        this.f34059a = i2;
        this.f34060b = i3;
        this.f34061c = variant;
        this.d = hashType;
    }

    public final int a() {
        Variant variant = Variant.f34072e;
        int i2 = this.f34060b;
        Variant variant2 = this.f34061c;
        if (variant2 == variant) {
            return i2;
        }
        if (variant2 != Variant.f34070b && variant2 != Variant.f34071c && variant2 != Variant.d) {
            md.k("Unknown variant");
            return 0;
        }
        return i2 + 5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof HmacParameters)) {
            return false;
        }
        HmacParameters hmacParameters = (HmacParameters) obj;
        return hmacParameters.f34059a == this.f34059a && hmacParameters.a() == a() && hmacParameters.f34061c == this.f34061c && hmacParameters.d == this.d;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f34059a), Integer.valueOf(this.f34060b), this.f34061c, this.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("HMAC Parameters (variant: ");
        sb.append(this.f34061c);
        sb.append(", hashType: ");
        sb.append(this.d);
        sb.append(", ");
        sb.append(this.f34060b);
        sb.append("-byte tags, and ");
        return defpackage.a.i(this.f34059a, "-byte key)", sb);
    }
}
