package com.networkbench.agent.impl.harvest;

import android.text.TextUtils;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.c.j;
import com.networkbench.agent.impl.h.d;
import com.networkbench.agent.impl.harvest.a.e;
import com.networkbench.agent.impl.harvest.a.h;
import com.networkbench.agent.impl.harvest.a.n;
import com.networkbench.agent.impl.harvest.d.c;
import com.networkbench.agent.impl.l.a;
import com.networkbench.agent.impl.util.ah;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.z;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class HarvestURLConnection implements HarvestConnectionInterface {
    private static final String X_TINGYUNAPPDATA_SIGN = "X-TingyunAppData-Sign";
    private InitUrlConnection initUrlConnection;
    private a nbsTicToc = new a();

    public HarvestURLConnection(String str, String str2, String str3) {
        this.initUrlConnection = new InitUrlConnection(str, str2, str3);
    }

    private String calcuByteSHA256(byte[] bArr) {
        return ah.b(new String(bArr));
    }

    private String calcuWithRSA(byte[] bArr) throws Exception {
        return r.u().i().c(calcuByteSHA256(bArr));
    }

    private byte[] composeByteData(byte[] bArr) throws Exception {
        byte[] bytes = this.initUrlConnection.composeHeadValue().getBytes("utf-8");
        byte[] bytes2 = new byte[0];
        if (!TextUtils.isEmpty(r.u().K())) {
            r.A.a("composeByteData token:" + r.u().K());
            bytes2 = r.u().K().getBytes("utf-8");
        }
        byte[] bArr2 = new byte[bArr.length + bytes.length + bytes2.length];
        System.arraycopy(bytes, 0, bArr2, 0, bytes.length);
        System.arraycopy(bArr, 0, bArr2, bytes.length, bArr.length);
        System.arraycopy(bytes2, 0, bArr2, bytes.length + bArr.length, bytes2.length);
        return bArr2;
    }

    private byte[] createIfNull(byte[] bArr) {
        return bArr == null ? new byte[0] : bArr;
    }

    public static byte[] encryptContent(String str) {
        try {
            if (str == null) {
                return new byte[0];
            }
            if (!r.u().B) {
                return str.getBytes("utf-8");
            }
            r.A.a("SDKSymmetryKey value is:" + e.f37259c);
            System.currentTimeMillis();
            return z.a().a(str.getBytes("utf-8"));
        } catch (Throwable unused) {
            return new byte[0];
        }
    }

    private void writeStream(OutputStream outputStream, byte[] bArr) throws Exception {
        outputStream.write(bArr);
        outputStream.flush();
        outputStream.close();
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestConnectionInterface
    public synchronized c sendDataFile(Map<String, String[]> map, h hVar) throws Exception {
        c cVarB;
        cVarB = hVar.b();
        this.nbsTicToc.a();
        cVarB.b(this.nbsTicToc.b());
        return cVarB;
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestConnectionInterface
    public synchronized c sendDataGet(h hVar) throws Exception {
        c cVarB;
        cVarB = hVar.b();
        InputStream inputStreamG = null;
        try {
            try {
                URLConnection uRLConnectionOpenConnection = new URL(hVar.a()).openConnection();
                Callback.C(uRLConnectionOpenConnection);
                HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                httpURLConnection.setRequestProperty("X-License-Key", r.u().z());
                cVarB.a(Callback.k(httpURLConnection));
                inputStreamG = Callback.g(httpURLConnection);
                cVarB = hVar.a(ak.a(inputStreamG), cVarB);
                httpURLConnection.disconnect();
                if (inputStreamG != null) {
                    inputStreamG.close();
                }
            } catch (Throwable unused) {
                cVarB.c("error");
                cVarB.b(1);
                if (inputStreamG != null) {
                }
            }
            cVarB.b(this.nbsTicToc.b());
        } catch (Throwable th) {
            if (inputStreamG != null) {
                inputStreamG.close();
            }
            throw th;
        }
        return cVarB;
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestConnectionInterface
    public c sendDataOutputStream(byte[] bArr, h hVar) throws Exception {
        InputStream inputStream;
        c cVarB = hVar.b();
        this.nbsTicToc.a();
        OutputStream outputStream = null;
        InputStream inputStreamD = null;
        try {
            j.b("send dest:" + hVar.a() + ", arraysource.length:" + bArr.length);
            HttpURLConnection httpURLConnectionConfigureUrlConnection = this.initUrlConnection.configureUrlConnection(hVar.a(), bArr.length);
            hVar.b(httpURLConnectionConfigureUrlConnection);
            if (r.u().D) {
                httpURLConnectionConfigureUrlConnection.setRequestProperty(X_TINGYUNAPPDATA_SIGN, calcuWithRSA(composeByteData(bArr)));
            }
            byte[] bArrD = ak.d(bArr);
            hVar.a(httpURLConnectionConfigureUrlConnection);
            OutputStream outputStreamI = Callback.i(httpURLConnectionConfigureUrlConnection);
            try {
                writeStream(outputStreamI, bArrD);
                cVarB.a(Callback.k(httpURLConnectionConfigureUrlConnection));
                r.A.a("responseCode:" + Callback.k(httpURLConnectionConfigureUrlConnection));
                inputStreamD = Callback.k(httpURLConnectionConfigureUrlConnection) == 409 ? Callback.d(httpURLConnectionConfigureUrlConnection) : Callback.g(httpURLConnectionConfigureUrlConnection);
                cVarB = hVar.a(ak.a(inputStreamD), cVarB);
                hVar.c(httpURLConnectionConfigureUrlConnection);
                if (Global.f27308b.get()) {
                    Callback.D(httpURLConnectionConfigureUrlConnection);
                }
                hVar.a(httpURLConnectionConfigureUrlConnection.getDate());
                httpURLConnectionConfigureUrlConnection.disconnect();
                if (outputStreamI != null) {
                    outputStreamI.close();
                }
                if (inputStreamD != null) {
                    inputStreamD.close();
                }
            } catch (Throwable th) {
                th = th;
                inputStream = inputStreamD;
                outputStream = outputStreamI;
                try {
                    r.A.a("sendDataStr error ", th);
                    cVarB.c("error");
                    cVarB.b(1);
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                } catch (Throwable th2) {
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
        cVarB.b(this.nbsTicToc.b());
        return cVarB;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x008f  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ff A[Catch: all -> 0x01ca, TRY_ENTER, TRY_LEAVE, TryCatch #5 {all -> 0x01ca, blocks: (B:28:0x00cc, B:35:0x00ff), top: B:98:0x00cc }] */
    /* JADX WARN: Code duplicated, block: B:39:0x010c A[ADDED_TO_REGION, Catch: all -> 0x0111, REMOVE, TRY_ENTER, TRY_LEAVE, TryCatch #0 {all -> 0x0111, blocks: (B:39:0x010c, B:46:0x011d, B:50:0x015a, B:48:0x0121), top: B:88:0x010a, inners: #4 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x0119 A[Catch: all -> 0x01c3, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x01c3, blocks: (B:37:0x0104, B:53:0x0163, B:55:0x0172, B:56:0x0175, B:44:0x0119, B:52:0x015f), top: B:90:0x0104 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x0172 A[Catch: all -> 0x01c3, TryCatch #1 {all -> 0x01c3, blocks: (B:37:0x0104, B:53:0x0163, B:55:0x0172, B:56:0x0175, B:44:0x0119, B:52:0x015f), top: B:90:0x0104 }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0181  */
    /* JADX WARN: Code duplicated, block: B:60:0x0186  */
    /* JADX WARN: Code duplicated, block: B:63:0x0193  */
    /* JADX WARN: Code duplicated, block: B:71:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:73:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:76:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:92:0x00f3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.networkbench.agent.impl.harvest.HarvestConnectionInterface
    public c sendDataStr(String str, h hVar) throws Exception {
        StringBuilder sb;
        InputStream inputStream;
        OutputStream outputStream;
        OutputStream outputStreamI;
        com.networkbench.agent.impl.c.e eVar;
        InputStream inputStreamD;
        String strA;
        String str2 = "\n\n response_content = ";
        byte[] bArrEncryptContent = encryptContent(str);
        c cVarB = hVar.b();
        this.nbsTicToc.a();
        try {
            j.b("url:" + hVar.a() + ", arraysource.length:" + bArrEncryptContent.length);
            HttpURLConnection httpURLConnectionConfigureUrlConnection = this.initUrlConnection.configureUrlConnection(hVar.a(), bArrEncryptContent.length);
            httpURLConnectionConfigureUrlConnection.setRequestProperty("Content-Type", InitUrlConnection.CONTENT_TYPE_VALUE);
            hVar.b(httpURLConnectionConfigureUrlConnection);
            if (r.u().D) {
                httpURLConnectionConfigureUrlConnection.setRequestProperty(X_TINGYUNAPPDATA_SIGN, calcuWithRSA(composeByteData(bArrEncryptContent)));
            }
            if (r.u().B) {
                try {
                    if ((hVar instanceof com.networkbench.agent.impl.harvest.a.a) || (hVar instanceof n)) {
                        str2 = "\n\n response_content = ";
                        byte[] bArrD = ak.d(bArrEncryptContent);
                        hVar.a(httpURLConnectionConfigureUrlConnection);
                        outputStreamI = Callback.i(httpURLConnectionConfigureUrlConnection);
                        try {
                            writeStream(outputStreamI, bArrD);
                            eVar = r.A;
                            eVar.a("responseCode:" + Callback.k(httpURLConnectionConfigureUrlConnection));
                            cVarB.a(Callback.k(httpURLConnectionConfigureUrlConnection));
                            if (Callback.k(httpURLConnectionConfigureUrlConnection) == 409) {
                                try {
                                    inputStreamD = Callback.d(httpURLConnectionConfigureUrlConnection);
                                } catch (Throwable th) {
                                    th = th;
                                    outputStream = outputStreamI;
                                    str2 = str2;
                                    inputStream = null;
                                    try {
                                        r.A.a("sendDataStr error ", th);
                                        cVarB.c("error");
                                        cVarB.b(1);
                                        if (outputStream != null) {
                                            outputStream.close();
                                        }
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                        if (r.u().j()) {
                                            sb = new StringBuilder(" sendDataStr :  type  = ");
                                            sb.append(hVar.c());
                                            sb.append("\n url = ");
                                            sb.append(hVar.a());
                                            sb.append("\n request_content = ");
                                            sb.append(str);
                                            sb.append(str2);
                                            sb.append(cVarB.toString());
                                            g.n(sb.toString());
                                        }
                                        cVarB.b(this.nbsTicToc.b());
                                        return cVarB;
                                    } catch (Throwable th2) {
                                        if (outputStream != null) {
                                            outputStream.close();
                                        }
                                        if (inputStream != null) {
                                            inputStream.close();
                                        }
                                        if (r.u().j()) {
                                            g.n(" sendDataStr :  type  = " + hVar.c() + "\n url = " + hVar.a() + "\n request_content = " + str + str2 + cVarB.toString());
                                        }
                                        throw th2;
                                    }
                                }
                            } else {
                                inputStreamD = Callback.g(httpURLConnectionConfigureUrlConnection);
                            }
                            inputStream = inputStreamD;
                            try {
                                try {
                                    if (r.u().B || (hVar instanceof com.networkbench.agent.impl.harvest.a.a) || (hVar instanceof n)) {
                                        strA = ak.a(inputStream);
                                    } else {
                                        try {
                                            byte[] bArrB = ak.b(inputStream);
                                            eVar.a("sm4 before slurpByte : " + bArrB.length + ", sm4 raw value: " + e.f37259c);
                                            System.currentTimeMillis();
                                            String str3 = new String(d.d(ak.d(e.f37259c), bArrB));
                                            eVar.a("sm4 after slurp : ".concat(str3));
                                            strA = str3;
                                        } catch (Throwable unused) {
                                            strA = ak.a(inputStream);
                                        }
                                    }
                                    cVarB = hVar.a(strA, cVarB);
                                    hVar.c(httpURLConnectionConfigureUrlConnection);
                                    if (Global.f27308b.get()) {
                                        Callback.D(httpURLConnectionConfigureUrlConnection);
                                    }
                                    hVar.a(httpURLConnectionConfigureUrlConnection.getDate());
                                    httpURLConnectionConfigureUrlConnection.disconnect();
                                    if (outputStreamI != null) {
                                        outputStreamI.close();
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    if (r.u().j()) {
                                        sb = new StringBuilder(" sendDataStr :  type  = ");
                                        sb.append(hVar.c());
                                        sb.append("\n url = ");
                                        sb.append(hVar.a());
                                        sb.append("\n request_content = ");
                                        sb.append(str);
                                        str2 = str2;
                                        sb.append(str2);
                                        sb.append(cVarB.toString());
                                        g.n(sb.toString());
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    outputStream = outputStreamI;
                                    r.A.a("sendDataStr error ", th);
                                    cVarB.c("error");
                                    cVarB.b(1);
                                    if (outputStream != null) {
                                        outputStream.close();
                                    }
                                    if (inputStream != null) {
                                        inputStream.close();
                                    }
                                    if (r.u().j()) {
                                        sb = new StringBuilder(" sendDataStr :  type  = ");
                                        sb.append(hVar.c());
                                        sb.append("\n url = ");
                                        sb.append(hVar.a());
                                        sb.append("\n request_content = ");
                                        sb.append(str);
                                    }
                                    cVarB.b(this.nbsTicToc.b());
                                    return cVarB;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            str2 = str2;
                            outputStream = outputStreamI;
                        }
                    } else if (TextUtils.isEmpty(str)) {
                        httpURLConnectionConfigureUrlConnection.setRequestProperty(ConfigurationName.BODY_ABSTRACT, "");
                        str2 = "\n\n response_content = ";
                        byte[] bArrD2 = ak.d(bArrEncryptContent);
                        hVar.a(httpURLConnectionConfigureUrlConnection);
                        outputStreamI = Callback.i(httpURLConnectionConfigureUrlConnection);
                        writeStream(outputStreamI, bArrD2);
                        eVar = r.A;
                        eVar.a("responseCode:" + Callback.k(httpURLConnectionConfigureUrlConnection));
                        cVarB.a(Callback.k(httpURLConnectionConfigureUrlConnection));
                        if (Callback.k(httpURLConnectionConfigureUrlConnection) == 409) {
                            inputStreamD = Callback.d(httpURLConnectionConfigureUrlConnection);
                        } else {
                            inputStreamD = Callback.g(httpURLConnectionConfigureUrlConnection);
                        }
                        inputStream = inputStreamD;
                        if (r.u().B) {
                            strA = ak.a(inputStream);
                        } else {
                            byte[] bArrB2 = ak.b(inputStream);
                            eVar.a("sm4 before slurpByte : " + bArrB2.length + ", sm4 raw value: " + e.f37259c);
                            System.currentTimeMillis();
                            String str4 = new String(d.d(ak.d(e.f37259c), bArrB2));
                            eVar.a("sm4 after slurp : ".concat(str4));
                            strA = str4;
                        }
                        cVarB = hVar.a(strA, cVarB);
                        hVar.c(httpURLConnectionConfigureUrlConnection);
                        if (Global.f27308b.get()) {
                            Callback.D(httpURLConnectionConfigureUrlConnection);
                        }
                        hVar.a(httpURLConnectionConfigureUrlConnection.getDate());
                        httpURLConnectionConfigureUrlConnection.disconnect();
                        if (outputStreamI != null) {
                            outputStreamI.close();
                        }
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        if (r.u().j()) {
                            sb = new StringBuilder(" sendDataStr :  type  = ");
                            sb.append(hVar.c());
                            sb.append("\n url = ");
                            sb.append(hVar.a());
                            sb.append("\n request_content = ");
                            sb.append(str);
                            str2 = str2;
                            sb.append(str2);
                            sb.append(cVarB.toString());
                            g.n(sb.toString());
                        }
                    } else {
                        String strB = ak.b(com.networkbench.agent.impl.util.a.g.a(str.getBytes()));
                        str2 = "\n\n response_content = ";
                        try {
                            r.A.a("abstruct value:" + strB);
                            httpURLConnectionConfigureUrlConnection.setRequestProperty(ConfigurationName.BODY_ABSTRACT, strB);
                            byte[] bArrD3 = ak.d(bArrEncryptContent);
                            hVar.a(httpURLConnectionConfigureUrlConnection);
                            outputStreamI = Callback.i(httpURLConnectionConfigureUrlConnection);
                            writeStream(outputStreamI, bArrD3);
                            eVar = r.A;
                            eVar.a("responseCode:" + Callback.k(httpURLConnectionConfigureUrlConnection));
                            cVarB.a(Callback.k(httpURLConnectionConfigureUrlConnection));
                            if (Callback.k(httpURLConnectionConfigureUrlConnection) == 409) {
                                inputStreamD = Callback.d(httpURLConnectionConfigureUrlConnection);
                            } else {
                                inputStreamD = Callback.g(httpURLConnectionConfigureUrlConnection);
                            }
                            inputStream = inputStreamD;
                            if (r.u().B) {
                                strA = ak.a(inputStream);
                            } else {
                                byte[] bArrB3 = ak.b(inputStream);
                                eVar.a("sm4 before slurpByte : " + bArrB3.length + ", sm4 raw value: " + e.f37259c);
                                System.currentTimeMillis();
                                String str5 = new String(d.d(ak.d(e.f37259c), bArrB3));
                                eVar.a("sm4 after slurp : ".concat(str5));
                                strA = str5;
                            }
                            cVarB = hVar.a(strA, cVarB);
                            hVar.c(httpURLConnectionConfigureUrlConnection);
                            if (Global.f27308b.get()) {
                                Callback.D(httpURLConnectionConfigureUrlConnection);
                            }
                            hVar.a(httpURLConnectionConfigureUrlConnection.getDate());
                            httpURLConnectionConfigureUrlConnection.disconnect();
                            if (outputStreamI != null) {
                                outputStreamI.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            if (r.u().j()) {
                                sb = new StringBuilder(" sendDataStr :  type  = ");
                                sb.append(hVar.c());
                                sb.append("\n url = ");
                                sb.append(hVar.a());
                                sb.append("\n request_content = ");
                                sb.append(str);
                                str2 = str2;
                                sb.append(str2);
                                sb.append(cVarB.toString());
                                g.n(sb.toString());
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            str2 = str2;
                            outputStream = null;
                            inputStream = null;
                            r.A.a("sendDataStr error ", th);
                            cVarB.c("error");
                            cVarB.b(1);
                            if (outputStream != null) {
                                outputStream.close();
                            }
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            if (r.u().j()) {
                                sb = new StringBuilder(" sendDataStr :  type  = ");
                                sb.append(hVar.c());
                                sb.append("\n url = ");
                                sb.append(hVar.a());
                                sb.append("\n request_content = ");
                                sb.append(str);
                                sb.append(str2);
                                sb.append(cVarB.toString());
                                g.n(sb.toString());
                            }
                            cVarB.b(this.nbsTicToc.b());
                            return cVarB;
                        }
                    }
                } catch (Throwable th7) {
                    th = th7;
                    outputStream = null;
                    inputStream = null;
                    r.A.a("sendDataStr error ", th);
                    cVarB.c("error");
                    cVarB.b(1);
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    if (r.u().j()) {
                        sb = new StringBuilder(" sendDataStr :  type  = ");
                        sb.append(hVar.c());
                        sb.append("\n url = ");
                        sb.append(hVar.a());
                        sb.append("\n request_content = ");
                        sb.append(str);
                        sb.append(str2);
                        sb.append(cVarB.toString());
                        g.n(sb.toString());
                    }
                    cVarB.b(this.nbsTicToc.b());
                    return cVarB;
                }
            } else {
                str2 = "\n\n response_content = ";
                byte[] bArrD4 = ak.d(bArrEncryptContent);
                hVar.a(httpURLConnectionConfigureUrlConnection);
                outputStreamI = Callback.i(httpURLConnectionConfigureUrlConnection);
                writeStream(outputStreamI, bArrD4);
                eVar = r.A;
                eVar.a("responseCode:" + Callback.k(httpURLConnectionConfigureUrlConnection));
                cVarB.a(Callback.k(httpURLConnectionConfigureUrlConnection));
                if (Callback.k(httpURLConnectionConfigureUrlConnection) == 409) {
                    inputStreamD = Callback.d(httpURLConnectionConfigureUrlConnection);
                } else {
                    inputStreamD = Callback.g(httpURLConnectionConfigureUrlConnection);
                }
                inputStream = inputStreamD;
                if (r.u().B) {
                    strA = ak.a(inputStream);
                } else {
                    byte[] bArrB4 = ak.b(inputStream);
                    eVar.a("sm4 before slurpByte : " + bArrB4.length + ", sm4 raw value: " + e.f37259c);
                    System.currentTimeMillis();
                    String str6 = new String(d.d(ak.d(e.f37259c), bArrB4));
                    eVar.a("sm4 after slurp : ".concat(str6));
                    strA = str6;
                }
                cVarB = hVar.a(strA, cVarB);
                hVar.c(httpURLConnectionConfigureUrlConnection);
                if (Global.f27308b.get()) {
                    Callback.D(httpURLConnectionConfigureUrlConnection);
                }
                hVar.a(httpURLConnectionConfigureUrlConnection.getDate());
                httpURLConnectionConfigureUrlConnection.disconnect();
                if (outputStreamI != null) {
                    outputStreamI.close();
                }
                if (inputStream != null) {
                    inputStream.close();
                }
                if (r.u().j()) {
                    sb = new StringBuilder(" sendDataStr :  type  = ");
                    sb.append(hVar.c());
                    sb.append("\n url = ");
                    sb.append(hVar.a());
                    sb.append("\n request_content = ");
                    sb.append(str);
                    str2 = str2;
                    sb.append(str2);
                    sb.append(cVarB.toString());
                    g.n(sb.toString());
                }
            }
        } catch (Throwable th8) {
            th = th8;
        }
        cVarB.b(this.nbsTicToc.b());
        return cVarB;
    }

    public void setInitUrlConnection(InitUrlConnection initUrlConnection) {
        this.initUrlConnection = initUrlConnection;
    }
}
