package org.bouncycastle.est;

import defpackage.a61;
import defpackage.az;
import defpackage.md;
import defpackage.mt;
import defpackage.pq0;
import java.io.IOException;
import java.io.InputStream;
import java.util.Set;
import org.bouncycastle.util.Properties;
import org.bouncycastle.util.Strings;

/* JADX INFO: loaded from: classes5.dex */
public class ESTResponse {
    private static final Long ZERO = 0L;
    private String HttpVersion;
    private Long absoluteReadLimit;
    private Long contentLength;
    private final HttpUtil.Headers headers;
    private InputStream inputStream;
    private final byte[] lineBuffer;
    private final ESTRequest originalRequest;
    private long read = 0;
    private final Source source;
    private int statusCode;
    private String statusMessage;

    public static class PrintingInputStream extends InputStream {
        private final InputStream src;

        private PrintingInputStream(InputStream inputStream) {
            this.src = inputStream;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return this.src.available();
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.src.close();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            return this.src.read();
        }
    }

    public ESTResponse(ESTRequest eSTRequest, Source source) throws IOException {
        this.originalRequest = eSTRequest;
        this.source = source;
        if (source instanceof LimitedSource) {
            this.absoluteReadLimit = ((LimitedSource) source).getAbsoluteReadLimit();
        }
        Set<String> setAsKeySet = Properties.asKeySet("org.bouncycastle.debug.est");
        this.inputStream = (setAsKeySet.contains("input") || setAsKeySet.contains("all")) ? new PrintingInputStream(source.getInputStream()) : source.getInputStream();
        this.headers = new HttpUtil.Headers();
        this.lineBuffer = new byte[1024];
        process();
    }

    public static /* synthetic */ long access$108(ESTResponse eSTResponse) {
        long j2 = eSTResponse.read;
        eSTResponse.read = 1 + j2;
        return j2;
    }

    private void process() throws IOException {
        this.HttpVersion = readStringIncluding(' ');
        this.statusCode = Integer.parseInt(readStringIncluding(' '));
        this.statusMessage = readStringIncluding('\n');
        while (true) {
            String stringIncluding = readStringIncluding('\n');
            if (stringIncluding.length() <= 0) {
                break;
            }
            int iIndexOf = stringIncluding.indexOf(58);
            if (iIndexOf > -1) {
                this.headers.add(Strings.toLowerCase(stringIncluding.substring(0, iIndexOf).trim()), stringIncluding.substring(iIndexOf + 1).trim());
            }
        }
        boolean zEqualsIgnoreCase = this.headers.getFirstValueOrEmpty("Transfer-Encoding").equalsIgnoreCase("chunked");
        if (zEqualsIgnoreCase) {
            this.contentLength = 0L;
        } else {
            this.contentLength = getContentLength();
        }
        int i2 = this.statusCode;
        if (i2 == 204 || i2 == 202) {
            Long l = this.contentLength;
            if (l == null) {
                this.contentLength = 0L;
            } else if (i2 == 204 && l.longValue() > 0) {
                az.o("Got HTTP status 204 but Content-length > 0.");
                return;
            }
        }
        Long l2 = this.contentLength;
        if (l2 == null) {
            az.o("No Content-length header.");
            return;
        }
        if (l2.equals(ZERO) && !zEqualsIgnoreCase) {
            this.inputStream = new InputStream() { // from class: org.bouncycastle.est.ESTResponse.1
                @Override // java.io.InputStream
                public int read() throws IOException {
                    return -1;
                }
            };
        }
        long jLongValue = this.contentLength.longValue();
        Long l3 = this.absoluteReadLimit;
        if (jLongValue < 0) {
            a61.n(l3, "Server returned negative content length: ");
            return;
        }
        if (l3 != null && this.contentLength.longValue() >= this.absoluteReadLimit.longValue()) {
            StringBuilder sb = new StringBuilder("Content length longer than absolute read limit: ");
            sb.append(this.absoluteReadLimit);
            Long l4 = this.contentLength;
            sb.append(" Content-Length: ");
            sb.append(l4);
            throw new IOException(sb.toString());
        }
        this.inputStream = wrapWithCounter(this.inputStream, this.absoluteReadLimit);
        if (zEqualsIgnoreCase) {
            this.inputStream = new CTEChunkedInputStream(this.inputStream);
        }
        if ("base64".equalsIgnoreCase(getHeader("content-transfer-encoding"))) {
            InputStream inputStream = this.inputStream;
            if (zEqualsIgnoreCase) {
                this.inputStream = new CTEBase64InputStream(inputStream);
            } else {
                this.inputStream = new CTEBase64InputStream(inputStream, this.contentLength);
            }
        }
    }

    public void close() throws IOException {
        InputStream inputStream = this.inputStream;
        if (inputStream != null) {
            inputStream.close();
        }
        this.source.close();
    }

    public long getAbsoluteReadLimit() {
        Long l = this.absoluteReadLimit;
        if (l == null) {
            return Long.MAX_VALUE;
        }
        return l.longValue();
    }

    public Long getContentLength() {
        String firstValue = this.headers.getFirstValue("Content-Length");
        if (firstValue == null) {
            return null;
        }
        try {
            return Long.valueOf(Long.parseLong(firstValue));
        } catch (RuntimeException e2) {
            StringBuilder sbR = pq0.r("Content Length: '", firstValue, "' invalid. ");
            sbR.append(e2.getMessage());
            throw new RuntimeException(sbR.toString());
        }
    }

    public String getHeader(String str) {
        return this.headers.getFirstValue(str);
    }

    public String getHeaderOrEmpty(String str) {
        return this.headers.getFirstValueOrEmpty(str);
    }

    public HttpUtil.Headers getHeaders() {
        return this.headers;
    }

    public String getHttpVersion() {
        return this.HttpVersion;
    }

    public InputStream getInputStream() {
        return this.inputStream;
    }

    public ESTRequest getOriginalRequest() {
        return this.originalRequest;
    }

    public Source getSource() {
        return this.source;
    }

    public int getStatusCode() {
        return this.statusCode;
    }

    public String getStatusMessage() {
        return this.statusMessage;
    }

    public String readStringIncluding(char c2) throws IOException {
        int i2 = 0;
        while (true) {
            int i3 = this.inputStream.read();
            byte[] bArr = this.lineBuffer;
            int i4 = i2 + 1;
            bArr[i2] = (byte) i3;
            if (i4 >= bArr.length) {
                mt.e(this.lineBuffer.length, "Server sent line > ");
                return null;
            }
            if (i3 == c2 || i3 <= -1) {
                if (i3 != -1) {
                    return new String(bArr, 0, i4).trim();
                }
                md.e();
                return null;
            }
            i2 = i4;
        }
    }

    public InputStream wrapWithCounter(final InputStream inputStream, final Long l) {
        return new InputStream() { // from class: org.bouncycastle.est.ESTResponse.2
            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                if (ESTResponse.this.contentLength == null || ESTResponse.this.contentLength.longValue() - 1 <= ESTResponse.this.read) {
                    if (inputStream.available() <= 0) {
                        inputStream.close();
                        return;
                    } else {
                        az.o("Stream closed with extra content in pipe that exceeds content length.");
                        return;
                    }
                }
                throw new IOException("Stream closed before limit fully read, Read: " + ESTResponse.this.read + " ContentLength: " + ESTResponse.this.contentLength);
            }

            @Override // java.io.InputStream
            public int read() throws IOException {
                int i2 = inputStream.read();
                if (i2 > -1) {
                    ESTResponse.access$108(ESTResponse.this);
                    if (l != null && ESTResponse.this.read >= l.longValue()) {
                        az.y(l, "Absolute Read Limit exceeded: ");
                        return 0;
                    }
                }
                return i2;
            }
        };
    }
}
