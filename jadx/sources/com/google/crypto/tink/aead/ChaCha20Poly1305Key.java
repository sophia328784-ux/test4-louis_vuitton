package com.google.crypto.tink.aead;

import com.google.crypto.tink.util.Bytes;
import com.google.crypto.tink.util.SecretBytes;
import com.google.errorprone.annotations.Immutable;
import defpackage.a61;
import defpackage.bm;
import defpackage.v40;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public final class ChaCha20Poly1305Key extends AeadKey {
    public static ChaCha20Poly1305Key a(ChaCha20Poly1305Parameters.Variant variant, SecretBytes secretBytes, Integer num) throws GeneralSecurityException {
        Bytes bytes = secretBytes.f34324a;
        ChaCha20Poly1305Parameters.Variant variant2 = ChaCha20Poly1305Parameters.Variant.d;
        if (variant != variant2 && num == null) {
            bm.f("For given Variant ", variant, " the value of idRequirement must be non-null");
            return null;
        }
        if (variant == variant2 && num != null) {
            v40.j("For given Variant NO_PREFIX the value of idRequirement must be null");
            return null;
        }
        if (bytes.f34323a.length != 32) {
            throw new GeneralSecurityException("ChaCha20Poly1305 key must be constructed with key of length 32 bytes, not " + bytes.f34323a.length);
        }
        ChaCha20Poly1305Parameters.Variant variant3 = new ChaCha20Poly1305Parameters(variant).f33929a;
        if (variant3 == variant2) {
            Bytes.a(new byte[0]);
        } else if (variant3 == ChaCha20Poly1305Parameters.Variant.f33931c) {
            Bytes.a(ByteBuffer.allocate(5).put((byte) 0).putInt(num.intValue()).array());
        } else {
            if (variant3 != ChaCha20Poly1305Parameters.Variant.f33930b) {
                a61.q(variant3, "Unknown Variant: ");
                return null;
            }
            Bytes.a(ByteBuffer.allocate(5).put((byte) 1).putInt(num.intValue()).array());
        }
        return new ChaCha20Poly1305Key();
    }
}
