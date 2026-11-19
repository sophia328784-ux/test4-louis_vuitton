package org.bouncycastle.jcajce.spec;

import defpackage.r81;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class SM2ParameterSpec implements AlgorithmParameterSpec {
    private byte[] id;

    public SM2ParameterSpec(byte[] bArr) {
        if (bArr != null) {
            this.id = Arrays.clone(bArr);
        } else {
            r81.d("id string cannot be null");
            throw null;
        }
    }

    public byte[] getID() {
        return Arrays.clone(this.id);
    }
}
