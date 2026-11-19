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
public final class HmacKey extends MacKey {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HmacParameters f34053a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bytes f34054b;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public HmacParameters f34055a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SecretBytes f34056b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Integer f34057c;

        public final HmacKey a() throws GeneralSecurityException {
            SecretBytes secretBytes;
            Bytes bytesA;
            HmacParameters hmacParameters = this.f34055a;
            if (hmacParameters == null || (secretBytes = this.f34056b) == null) {
                v40.j("Cannot build without parameters and/or key material");
                return null;
            }
            if (hmacParameters.f34059a != secretBytes.f34324a.f34323a.length) {
                v40.j("Key size mismatch");
                return null;
            }
            HmacParameters.Variant variant = hmacParameters.f34061c;
            HmacParameters.Variant variant2 = HmacParameters.Variant.f34072e;
            if (variant != variant2 && this.f34057c == null) {
                v40.j("Cannot create key without ID requirement with parameters with ID requirement");
                return null;
            }
            if (variant == variant2 && this.f34057c != null) {
                v40.j("Cannot create key with ID requirement with parameters without ID requirement");
                return null;
            }
            if (variant == variant2) {
                bytesA = Bytes.a(new byte[0]);
            } else if (variant == HmacParameters.Variant.d || variant == HmacParameters.Variant.f34071c) {
                bytesA = Bytes.a(ByteBuffer.allocate(5).put((byte) 0).putInt(this.f34057c.intValue()).array());
            } else {
                if (variant != HmacParameters.Variant.f34070b) {
                    ct0.o(this.f34055a.f34061c, "Unknown HmacParameters.Variant: ");
                    return null;
                }
                bytesA = Bytes.a(ByteBuffer.allocate(5).put((byte) 1).putInt(this.f34057c.intValue()).array());
            }
            return new HmacKey(this.f34055a, bytesA);
        }
    }

    public HmacKey(HmacParameters hmacParameters, Bytes bytes) {
        this.f34053a = hmacParameters;
        this.f34054b = bytes;
    }

    @Override // com.google.crypto.tink.mac.MacKey
    public final Bytes a() {
        return this.f34054b;
    }

    @Override // com.google.crypto.tink.mac.MacKey
    public final MacParameters b() {
        return this.f34053a;
    }
}
