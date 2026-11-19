package com.google.crypto.tink.aead;

import com.google.errorprone.annotations.Immutable;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class XChaCha20Poly1305Parameters extends AeadParameters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Variant f33940a;

    @Immutable
    public static final class Variant {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Variant f33941b = new Variant("TINK");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Variant f33942c = new Variant("CRUNCHY");
        public static final Variant d = new Variant("NO_PREFIX");

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f33943a;

        public Variant(String str) {
            this.f33943a = str;
        }

        public final String toString() {
            return this.f33943a;
        }
    }

    public XChaCha20Poly1305Parameters(Variant variant) {
        this.f33940a = variant;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof XChaCha20Poly1305Parameters) && ((XChaCha20Poly1305Parameters) obj).f33940a == this.f33940a;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f33940a);
    }

    public final String toString() {
        return "XChaCha20Poly1305 Parameters (variant: " + this.f33940a + ")";
    }
}
