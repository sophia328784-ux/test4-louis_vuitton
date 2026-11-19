package org.bouncycastle.jcajce.spec;

import defpackage.md;
import java.security.spec.EncodedKeySpec;

/* JADX INFO: loaded from: classes5.dex */
public class OpenSSHPrivateKeySpec extends EncodedKeySpec {
    private final String format;

    public OpenSSHPrivateKeySpec(byte[] bArr) {
        String str;
        super(bArr);
        byte b2 = bArr[0];
        if (b2 == 48) {
            str = "ASN.1";
        } else {
            if (b2 != 111) {
                md.n("unknown byte encoding");
                throw null;
            }
            str = "OpenSSH";
        }
        this.format = str;
    }

    @Override // java.security.spec.EncodedKeySpec
    public String getFormat() {
        return this.format;
    }
}
