package org.bouncycastle.jcajce.spec;

import defpackage.az;
import defpackage.md;
import java.security.spec.EncodedKeySpec;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
public class OpenSSHPublicKeySpec extends EncodedKeySpec {
    private static final String[] allowedTypes = {"ssh-rsa", "ssh-ed25519", "ssh-dss"};
    private final String type;

    public OpenSSHPublicKeySpec(byte[] bArr) {
        super(bArr);
        int i2 = 0;
        int i3 = (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) + 4;
        if (i3 >= bArr.length) {
            md.n("invalid public key blob: type field longer than blob");
            throw null;
        }
        String strFromByteArray = Strings.fromByteArray(Arrays.copyOfRange(bArr, 4, i3));
        this.type = strFromByteArray;
        if (strFromByteArray.startsWith("ecdsa")) {
            return;
        }
        while (true) {
            String[] strArr = allowedTypes;
            if (i2 >= strArr.length) {
                az.w(this.type, "unrecognised public key type ");
                throw null;
            }
            if (strArr[i2].equals(this.type)) {
                return;
            } else {
                i2++;
            }
        }
    }

    @Override // java.security.spec.EncodedKeySpec
    public String getFormat() {
        return "OpenSSH";
    }

    public String getType() {
        return this.type;
    }
}
