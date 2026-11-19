package com.google.crypto.tink.aead;

import com.google.errorprone.annotations.Immutable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class ChaCha20Poly1305Parameters extends AeadParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Variant f33929a;

    @Immutable
    public static final class Variant {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Variant f33930b = new Variant("TINK");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Variant f33931c = new Variant("CRUNCHY");
        public static final Variant d = new Variant("NO_PREFIX");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f33932a;

        public Variant(String str) {
            this.f33932a = str;
        }

        public final String toString() {
            return this.f33932a;
        }
    }

    public ChaCha20Poly1305Parameters(Variant variant) {
        this.f33929a = variant;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof ChaCha20Poly1305Parameters) && ((ChaCha20Poly1305Parameters) obj).f33929a == this.f33929a;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f33929a);
    }

    public final String toString() {
        return "ChaCha20Poly1305 Parameters (variant: " + this.f33929a + ")";
    }
}
