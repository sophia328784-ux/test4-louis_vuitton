package org.bouncycastle.jce.provider;

import defpackage.az;
import defpackage.fc;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.util.encoders.Base64;

/* JADX INFO: loaded from: classes5.dex */
public class PEMUtil {
    private final String _footer1;
    private final String _footer2;
    private final String _header1;
    private final String _header2;

    public PEMUtil(String str) {
        this._header1 = fc.h("-----BEGIN ", str, "-----");
        this._header2 = fc.h("-----BEGIN X509 ", str, "-----");
        this._footer1 = fc.h("-----END ", str, "-----");
        this._footer2 = fc.h("-----END X509 ", str, "-----");
    }

    private String readLine(InputStream inputStream) throws IOException {
        int i2;
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            i2 = inputStream.read();
            if (i2 == 13 || i2 == 10 || i2 < 0) {
                if (i2 < 0 || stringBuffer.length() != 0) {
                    break;
                }
            } else if (i2 != 13) {
                stringBuffer.append((char) i2);
            }
        }
        if (i2 < 0) {
            return null;
        }
        return stringBuffer.toString();
    }

    public ASN1Sequence readPEMObject(InputStream inputStream) throws IOException {
        String line;
        StringBuffer stringBuffer = new StringBuffer();
        do {
            line = readLine(inputStream);
            if (line == null || line.startsWith(this._header1)) {
                break;
            }
        } while (!line.startsWith(this._header2));
        while (true) {
            String line2 = readLine(inputStream);
            if (line2 == null || line2.startsWith(this._footer1) || line2.startsWith(this._footer2)) {
                break;
            }
            stringBuffer.append(line2);
        }
        if (stringBuffer.length() != 0) {
            ASN1Primitive object = new ASN1InputStream(Base64.decode(stringBuffer.toString())).readObject();
            if (object instanceof ASN1Sequence) {
                return (ASN1Sequence) object;
            }
            az.o("malformed PEM data encountered");
        }
        return null;
    }
}
