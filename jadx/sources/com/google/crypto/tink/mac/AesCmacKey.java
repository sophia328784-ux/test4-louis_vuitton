package com.google.crypto.tink.mac;

import com.google.crypto.tink.util.Bytes;
import com.google.crypto.tink.util.SecretBytes;
import com.google.errorprone.annotations.Immutable;
import defpackage.ct0;
import defpackage.v40;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public final class AesCmacKey extends MacKey {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AesCmacParameters f34033a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bytes f34034b;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public AesCmacParameters f34035a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SecretBytes f34036b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Integer f34037c;

        public final AesCmacKey a() throws GeneralSecurityException {
            SecretBytes secretBytes;
            Bytes bytesA;
            AesCmacParameters aesCmacParameters = this.f34035a;
            if (aesCmacParameters == null || (secretBytes = this.f34036b) == null) {
                v40.j("Cannot build without parameters and/or key material");
                return null;
            }
            if (aesCmacParameters.f34038a != secretBytes.f34324a.f34323a.length) {
                v40.j("Key size mismatch");
                return null;
            }
            AesCmacParameters.Variant variant = aesCmacParameters.f34040c;
            AesCmacParameters.Variant variant2 = AesCmacParameters.Variant.f34046e;
            if (variant != variant2 && this.f34037c == null) {
                v40.j("Cannot create key without ID requirement with parameters with ID requirement");
                return null;
            }
            if (variant == variant2 && this.f34037c != null) {
                v40.j("Cannot create key with ID requirement with parameters without ID requirement");
                return null;
            }
            if (variant == variant2) {
                bytesA = Bytes.a(new byte[0]);
            } else if (variant == AesCmacParameters.Variant.d || variant == AesCmacParameters.Variant.f34045c) {
                bytesA = Bytes.a(ByteBuffer.allocate(5).put((byte) 0).putInt(this.f34037c.intValue()).array());
            } else {
                if (variant != AesCmacParameters.Variant.f34044b) {
                    ct0.o(this.f34035a.f34040c, "Unknown AesCmacParametersParameters.Variant: ");
                    return null;
                }
                bytesA = Bytes.a(ByteBuffer.allocate(5).put((byte) 1).putInt(this.f34037c.intValue()).array());
            }
            return new AesCmacKey(this.f34035a, bytesA);
        }
    }

    public AesCmacKey(AesCmacParameters aesCmacParameters, Bytes bytes) {
        this.f34033a = aesCmacParameters;
        this.f34034b = bytes;
    }

    @Override // com.google.crypto.tink.mac.MacKey
    public final Bytes a() {
        return this.f34034b;
    }

    @Override // com.google.crypto.tink.mac.MacKey
    public final MacParameters b() {
        return this.f34033a;
    }
}
