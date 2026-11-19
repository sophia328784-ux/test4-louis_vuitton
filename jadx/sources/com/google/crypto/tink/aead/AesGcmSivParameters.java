package com.google.crypto.tink.aead;

import com.google.errorprone.annotations.Immutable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class AesGcmSivParameters extends AeadParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f33918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Variant f33919b;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Integer f33920a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Variant f33921b;
    }

    @Immutable
    public static final class Variant {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Variant f33922b = new Variant("TINK");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Variant f33923c = new Variant("CRUNCHY");
        public static final Variant d = new Variant("NO_PREFIX");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f33924a;

        public Variant(String str) {
            this.f33924a = str;
        }

        public final String toString() {
            return this.f33924a;
        }
    }

    public AesGcmSivParameters(int i2, Variant variant) {
        this.f33918a = i2;
        this.f33919b = variant;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AesGcmSivParameters)) {
            return false;
        }
        AesGcmSivParameters aesGcmSivParameters = (AesGcmSivParameters) obj;
        return aesGcmSivParameters.f33918a == this.f33918a && aesGcmSivParameters.f33919b == this.f33919b;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f33918a), this.f33919b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AesGcmSiv Parameters (variant: ");
        sb.append(this.f33919b);
        sb.append(", ");
        return defpackage.a.i(this.f33918a, "-byte key)", sb);
    }
}
