package com.networkbench.agent.impl.harvest;

import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import defpackage.az;
import defpackage.d21;
import defpackage.pq0;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

/* JADX INFO: loaded from: classes2.dex */
public class HttpMultiPart {
    private static final String LINE_FEED = "\r\n";
    private final String boundary = "newlensboundary";
    private String charset;
    private HttpURLConnection httpConn;
    private OutputStream outputStream;
    private PrintWriter writer;

    public HttpMultiPart(String str, String str2) throws IOException {
        this.charset = str2;
        URLConnection uRLConnectionOpenConnection = new URL(str).openConnection();
        Callback.C(uRLConnectionOpenConnection);
        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
        this.httpConn = httpURLConnection;
        httpURLConnection.setUseCaches(false);
        this.httpConn.setDoOutput(true);
        this.httpConn.setDoInput(true);
        this.httpConn.setRequestProperty("Content-Type", "multipart/form-data; boundary=newlensboundary");
        this.httpConn.setRequestProperty("X-License-Key", r.u().z());
        this.outputStream = Callback.i(this.httpConn);
        this.writer = new PrintWriter((Writer) new OutputStreamWriter(this.outputStream, str2), true);
    }

    public void addFilePart(String str, File file) throws IOException {
        String name = file.getName();
        this.writer.append((CharSequence) ("--" + this.boundary)).append((CharSequence) LINE_FEED);
        this.writer.append((CharSequence) d21.l("Content-Disposition: form-data; name=\"", str, "\"; filename=\"", name, "\"")).append((CharSequence) LINE_FEED);
        this.writer.append((CharSequence) ("Content-Type: " + URLConnection.guessContentTypeFromName(name))).append((CharSequence) LINE_FEED);
        this.writer.append((CharSequence) "Content-Transfer-Encoding: binary").append((CharSequence) LINE_FEED);
        this.writer.append((CharSequence) LINE_FEED);
        this.writer.flush();
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                byte[] bArr = new byte[4096];
                while (true) {
                    int i2 = fileInputStream2.read(bArr);
                    OutputStream outputStream = this.outputStream;
                    if (i2 == -1) {
                        outputStream.flush();
                        this.writer.append((CharSequence) LINE_FEED);
                        this.writer.flush();
                        ak.b(fileInputStream2);
                        return;
                    }
                    outputStream.write(bArr, 0, i2);
                }
            } catch (Throwable unused) {
                fileInputStream = fileInputStream2;
                ak.b(fileInputStream);
            }
        } catch (Throwable unused2) {
        }
    }

    public void addFormField(String str, String str2) {
        this.writer.append((CharSequence) ("--" + this.boundary)).append((CharSequence) LINE_FEED);
        this.writer.append((CharSequence) ("Content-Disposition: form-data; name=\"" + str + "\"")).append((CharSequence) LINE_FEED);
        this.writer.append((CharSequence) ("Content-Type: text/plain; charset=" + this.charset)).append((CharSequence) LINE_FEED);
        this.writer.append((CharSequence) LINE_FEED);
        this.writer.append((CharSequence) str2).append((CharSequence) LINE_FEED);
        this.writer.flush();
    }

    public void addHeaderField(String str, String str2) {
        this.writer.append((CharSequence) (str + ": " + str2)).append((CharSequence) LINE_FEED);
        this.writer.flush();
    }

    public String finish() throws IOException {
        this.writer.append((CharSequence) LINE_FEED).flush();
        this.writer.append((CharSequence) ("--" + this.boundary + "--")).append((CharSequence) LINE_FEED);
        this.writer.close();
        int iK = Callback.k(this.httpConn);
        if (iK != 200) {
            az.o(pq0.k(iK, "Server returned non-OK status: "));
            return null;
        }
        String strA = ak.a(Callback.g(this.httpConn));
        this.httpConn.disconnect();
        return strA;
    }
}
