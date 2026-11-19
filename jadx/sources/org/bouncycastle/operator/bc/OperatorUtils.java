package org.bouncycastle.operator.bc;

import defpackage.md;
import java.security.Key;
import org.bouncycastle.operator.GenericKey;

/* JADX INFO: loaded from: classes5.dex */
class OperatorUtils {
    public static byte[] getKeyBytes(GenericKey genericKey) {
        if (genericKey.getRepresentation() instanceof Key) {
            return ((Key) genericKey.getRepresentation()).getEncoded();
        }
        if (genericKey.getRepresentation() instanceof byte[]) {
            return (byte[]) genericKey.getRepresentation();
        }
        md.n("unknown generic key type");
        return null;
    }
}
