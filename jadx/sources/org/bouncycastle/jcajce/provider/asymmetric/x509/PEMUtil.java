package org.bouncycastle.jcajce.provider.asymmetric.x509;

import defpackage.az;
import defpackage.fc;
import defpackage.tr;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.openssl.PEMParser;
import org.bouncycastle.util.encoders.Base64;

/* JADX INFO: loaded from: classes5.dex */
class PEMUtil {
    private final Boundaries[] _supportedBoundaries;

    public static class Boundaries {
        private final String _footer;
        private final String _header;

        private Boundaries(String str) {
            this._header = fc.h("-----BEGIN ", str, "-----");
            this._footer = fc.h("-----END ", str, "-----");
        }

        public boolean isTheExpectedFooter(String str) {
            return str.startsWith(this._footer);
        }

        public boolean isTheExpectedHeader(String str) {
            return str.startsWith(this._header);
        }
    }

    public PEMUtil(String str) {
        this._supportedBoundaries = new Boundaries[]{new Boundaries(str), new Boundaries(tr.g("X509 ", str)), new Boundaries(PEMParser.TYPE_PKCS7)};
    }

    private Boundaries getBoundaries(String str) {
        int i2 = 0;
        while (true) {
            Boundaries[] boundariesArr = this._supportedBoundaries;
            if (i2 == boundariesArr.length) {
                return null;
            }
            Boundaries boundaries = boundariesArr[i2];
            if (boundaries.isTheExpectedHeader(str) || boundaries.isTheExpectedFooter(str)) {
                return boundaries;
            }
            i2++;
        }
    }

    private String readLine(InputStream inputStream) throws IOException {
        int i2;
        StringBuffer stringBuffer = new StringBuffer();
        while (true) {
            i2 = inputStream.read();
            if (i2 != 13 && i2 != 10 && i2 >= 0) {
                stringBuffer.append((char) i2);
            } else if (i2 < 0 || stringBuffer.length() != 0) {
                break;
            }
        }
        if (i2 < 0) {
            if (stringBuffer.length() == 0) {
                return null;
            }
            return stringBuffer.toString();
        }
        if (i2 == 13) {
            inputStream.mark(1);
            int i3 = inputStream.read();
            if (i3 == 10) {
                inputStream.mark(1);
            }
            if (i3 > 0) {
                inputStream.reset();
            }
        }
        return stringBuffer.toString();
    }

    public ASN1Sequence readPEMObject(InputStream inputStream, boolean z) throws IOException {
        String str;
        StringBuffer stringBuffer = new StringBuffer();
        Boundaries boundaries = null;
        while (boundaries == null) {
            String line = readLine(inputStream);
            if (line == null) {
                break;
            }
            boundaries = getBoundaries(line);
            if (boundaries != null && !boundaries.isTheExpectedHeader(line)) {
                str = "malformed PEM data: found footer where header was expected";
            }
            az.o(str);
            return null;
        }
        if (boundaries != null) {
            Boundaries boundaries2 = null;
            while (boundaries2 == null) {
                String line2 = readLine(inputStream);
                if (line2 == null) {
                    break;
                }
                boundaries2 = getBoundaries(line2);
                if (boundaries2 == null) {
                    stringBuffer.append(line2);
                } else if (!boundaries.isTheExpectedFooter(line2)) {
                    str = "malformed PEM data: header/footer mismatch";
                }
            }
            if (boundaries2 == null) {
                str = "malformed PEM data: no footer found";
            } else {
                if (stringBuffer.length() == 0) {
                    return null;
                }
                try {
                    return ASN1Sequence.getInstance(Base64.decode(stringBuffer.toString()));
                } catch (Exception unused) {
                    str = "malformed PEM data encountered";
                }
            }
        } else {
            if (!z) {
                return null;
            }
            str = "malformed PEM data: no header found";
        }
        az.o(str);
        return null;
    }
}
