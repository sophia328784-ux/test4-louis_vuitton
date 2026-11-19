package org.bouncycastle.oer;

import defpackage.az;
import java.io.ByteArrayOutputStream;
import org.bouncycastle.asn1.ASN1Encodable;

/* JADX INFO: loaded from: classes5.dex */
public class OEREncoder {
    public static byte[] toByteArray(ASN1Encodable aSN1Encodable, Element element) {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            new OEROutputStream(byteArrayOutputStream).write(aSN1Encodable, element);
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (Exception e2) {
            az.s(e2.getMessage(), e2);
            return null;
        }
    }
}
