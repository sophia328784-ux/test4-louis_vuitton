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
public final class AesGcmSivKey extends AeadKey {

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public AesGcmSivParameters f33915a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SecretBytes f33916b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Integer f33917c;

        public final AesGcmSivKey a() throws GeneralSecurityException {
            SecretBytes secretBytes;
            AesGcmSivParameters aesGcmSivParameters = this.f33915a;
            if (aesGcmSivParameters == null || (secretBytes = this.f33916b) == null) {
                v40.j("Cannot build without parameters and/or key material");
                return null;
            }
            if (aesGcmSivParameters.f33918a != secretBytes.f34324a.f34323a.length) {
                v40.j("Key size mismatch");
                return null;
            }
            AesGcmSivParameters.Variant variant = aesGcmSivParameters.f33919b;
            AesGcmSivParameters.Variant variant2 = AesGcmSivParameters.Variant.d;
            if (variant != variant2 && this.f33917c == null) {
                v40.j("Cannot create key without ID requirement with parameters with ID requirement");
                return null;
            }
            if (variant == variant2 && this.f33917c != null) {
                v40.j("Cannot create key with ID requirement with parameters without ID requirement");
                return null;
            }
            if (variant == variant2) {
                Bytes.a(new byte[0]);
            } else if (variant == AesGcmSivParameters.Variant.f33923c) {
                Bytes.a(ByteBuffer.allocate(5).put((byte) 0).putInt(this.f33917c.intValue()).array());
            } else {
                if (variant != AesGcmSivParameters.Variant.f33922b) {
                    ct0.o(this.f33915a.f33919b, "Unknown AesGcmSivParameters.Variant: ");
                    return null;
                }
                Bytes.a(ByteBuffer.allocate(5).put((byte) 1).putInt(this.f33917c.intValue()).array());
            }
            return new AesGcmSivKey();
        }
    }
}
