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
public final class AesGcmKey extends AeadKey {

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public AesGcmParameters f33899a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SecretBytes f33900b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Integer f33901c;

        public final AesGcmKey a() throws GeneralSecurityException {
            SecretBytes secretBytes;
            AesGcmParameters aesGcmParameters = this.f33899a;
            if (aesGcmParameters == null || (secretBytes = this.f33900b) == null) {
                v40.j("Cannot build without parameters and/or key material");
                return null;
            }
            if (aesGcmParameters.f33902a != secretBytes.f34324a.f34323a.length) {
                v40.j("Key size mismatch");
                return null;
            }
            AesGcmParameters.Variant variant = aesGcmParameters.d;
            AesGcmParameters.Variant variant2 = AesGcmParameters.Variant.d;
            if (variant != variant2 && this.f33901c == null) {
                v40.j("Cannot create key without ID requirement with parameters with ID requirement");
                return null;
            }
            if (variant == variant2 && this.f33901c != null) {
                v40.j("Cannot create key with ID requirement with parameters without ID requirement");
                return null;
            }
            if (variant == variant2) {
                Bytes.a(new byte[0]);
            } else if (variant == AesGcmParameters.Variant.f33909c) {
                Bytes.a(ByteBuffer.allocate(5).put((byte) 0).putInt(this.f33901c.intValue()).array());
            } else {
                if (variant != AesGcmParameters.Variant.f33908b) {
                    ct0.o(this.f33899a.d, "Unknown AesGcmParameters.Variant: ");
                    return null;
                }
                Bytes.a(ByteBuffer.allocate(5).put((byte) 1).putInt(this.f33901c.intValue()).array());
            }
            return new AesGcmKey();
        }
    }
}
