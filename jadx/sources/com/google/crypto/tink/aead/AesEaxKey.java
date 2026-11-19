package com.google.crypto.tink.aead;

import com.google.crypto.tink.util.Bytes;
import com.google.crypto.tink.util.SecretBytes;
import com.google.errorprone.annotations.Immutable;
import defpackage.ct0;
import defpackage.v40;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public final class AesEaxKey extends AeadKey {

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public AesEaxParameters f33883a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SecretBytes f33884b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Integer f33885c;

        public final AesEaxKey a() throws GeneralSecurityException {
            SecretBytes secretBytes;
            AesEaxParameters aesEaxParameters = this.f33883a;
            if (aesEaxParameters == null || (secretBytes = this.f33884b) == null) {
                v40.j("Cannot build without parameters and/or key material");
                return null;
            }
            if (aesEaxParameters.f33886a != secretBytes.f34324a.f34323a.length) {
                v40.j("Key size mismatch");
                return null;
            }
            AesEaxParameters.Variant variant = aesEaxParameters.d;
            AesEaxParameters.Variant variant2 = AesEaxParameters.Variant.d;
            if (variant != variant2 && this.f33885c == null) {
                v40.j("Cannot create key without ID requirement with parameters with ID requirement");
                return null;
            }
            if (variant == variant2 && this.f33885c != null) {
                v40.j("Cannot create key with ID requirement with parameters without ID requirement");
                return null;
            }
            if (variant == variant2) {
                Bytes.a(new byte[0]);
            } else if (variant == AesEaxParameters.Variant.f33893c) {
                Bytes.a(ByteBuffer.allocate(5).put((byte) 0).putInt(this.f33885c.intValue()).array());
            } else {
                if (variant != AesEaxParameters.Variant.f33892b) {
                    ct0.o(this.f33883a.d, "Unknown AesEaxParameters.Variant: ");
                    return null;
                }
                Bytes.a(ByteBuffer.allocate(5).put((byte) 1).putInt(this.f33885c.intValue()).array());
            }
            return new AesEaxKey();
        }
    }
}
