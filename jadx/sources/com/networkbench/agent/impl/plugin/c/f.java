package com.networkbench.agent.impl.plugin.c;

import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.harvest.InitUrlConnection;
import com.networkbench.agent.impl.harvest.NBSUploadDataInterface;
import com.networkbench.agent.impl.harvest.a.k;
import com.networkbench.agent.impl.logtrack.SendLogRunnable;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.ah;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import defpackage.fc;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.text.MessageFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class f extends SendLogRunnable implements NBSUploadDataInterface {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37984a = "LogTrackSendLogRunnable";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f37985b = ".copy";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private k f37986c;
    private InitUrlConnection d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f37987e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f37988f;
    private List<String> g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f37989h;

    public f(k kVar, String str, String str2, String str3, String str4, String str5, String[] strArr) {
        this.f37986c = kVar;
        this.d = new InitUrlConnection(str, str2, str3);
        this.f37987e = str4 == null ? "" : str4;
        this.f37988f = (str5 != null ? str5 : "").toUpperCase();
        this.g = new ArrayList();
        a(strArr);
        Logger.debug(f37984a, "taskId is:" + str4 + ", secretKey is:" + str5);
    }

    /* JADX WARN: Code duplicated, block: B:59:0x0121 A[PHI: r0 r1 r11 r12
      0x0121: PHI (r0v7 java.io.OutputStream) = (r0v38 java.io.OutputStream), (r0v39 java.io.OutputStream), (r0v40 java.io.OutputStream) binds: [B:58:0x011f, B:68:0x0142, B:64:0x0133] A[DONT_GENERATE, DONT_INLINE]
      0x0121: PHI (r1v8 ??) = (r1v27 ??), (r1v28 ??), (r1v29 ??) binds: [B:58:0x011f, B:68:0x0142, B:64:0x0133] A[DONT_GENERATE, DONT_INLINE]
      0x0121: PHI (r11v9 java.net.HttpURLConnection) = (r11v34 java.net.HttpURLConnection), (r11v35 java.net.HttpURLConnection), (r11v36 java.net.HttpURLConnection) binds: [B:58:0x011f, B:68:0x0142, B:64:0x0133] A[DONT_GENERATE, DONT_INLINE]
      0x0121: PHI (r12v9 ??) = (r12v34 ??), (r12v35 ??), (r12v36 ??) binds: [B:58:0x011f, B:68:0x0142, B:64:0x0133] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.io.Closeable, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v42 */
    /* JADX WARN: Type inference failed for: r0v43 */
    /* JADX WARN: Type inference failed for: r0v44 */
    /* JADX WARN: Type inference failed for: r0v47 */
    /* JADX WARN: Type inference failed for: r0v48 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r11v0, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r11v26, types: [java.io.ByteArrayOutputStream, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r11v37 */
    /* JADX WARN: Type inference failed for: r11v38 */
    /* JADX WARN: Type inference failed for: r11v39 */
    /* JADX WARN: Type inference failed for: r11v40 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.util.Map, java.util.Map<java.lang.String, java.lang.String>] */
    /* JADX WARN: Type inference failed for: r12v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v24 */
    /* JADX WARN: Type inference failed for: r12v25 */
    /* JADX WARN: Type inference failed for: r12v26 */
    /* JADX WARN: Type inference failed for: r12v27 */
    /* JADX WARN: Type inference failed for: r12v28 */
    /* JADX WARN: Type inference failed for: r12v29 */
    /* JADX WARN: Type inference failed for: r12v30 */
    /* JADX WARN: Type inference failed for: r12v31 */
    /* JADX WARN: Type inference failed for: r12v32 */
    /* JADX WARN: Type inference failed for: r12v33 */
    /* JADX WARN: Type inference failed for: r12v34 */
    /* JADX WARN: Type inference failed for: r12v35 */
    /* JADX WARN: Type inference failed for: r12v36 */
    /* JADX WARN: Type inference failed for: r12v37 */
    /* JADX WARN: Type inference failed for: r12v38 */
    /* JADX WARN: Type inference failed for: r12v39 */
    /* JADX WARN: Type inference failed for: r12v40 */
    /* JADX WARN: Type inference failed for: r12v41 */
    /* JADX WARN: Type inference failed for: r12v42 */
    /* JADX WARN: Type inference failed for: r12v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r12v8 */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r1v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28 */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v32 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.networkbench.agent.impl.plugin.c.f] */
    private byte[] a(String str, byte[] bArr, Map<String, String> map) {
        int length;
        ?? r12;
        HttpURLConnection httpURLConnection;
        Throwable th;
        ?? r1;
        OutputStream outputStream;
        OutputStream outputStream2;
        HttpURLConnection httpURLConnection2;
        ?? r13;
        HttpURLConnection httpURLConnection3;
        ProtocolException e2;
        ?? r2;
        OutputStream outputStream3;
        OutputStream outputStream4;
        HttpURLConnection httpURLConnection4;
        ?? r14;
        HttpURLConnection httpURLConnection5;
        ?? r3;
        OutputStream outputStream5;
        ?? r15;
        HttpURLConnection httpURLConnection6;
        MalformedURLException e3;
        ?? r4;
        OutputStream outputStream6;
        OutputStream outputStream7;
        HttpURLConnection httpURLConnection7;
        ?? r0 = "log upload url is:";
        ?? r5 = new byte[2048];
        try {
            if (bArr != 0) {
                try {
                    length = bArr.length;
                } catch (MalformedURLException e4) {
                    e3 = e4;
                    httpURLConnection7 = null;
                    outputStream7 = null;
                    OutputStream outputStream8 = outputStream7;
                    r4 = outputStream8;
                    outputStream6 = outputStream8;
                    httpURLConnection6 = httpURLConnection7;
                    r15 = outputStream7;
                    Logger.error(f37984a, "doPostRequest error", e3);
                    a(outputStream6);
                    a(r4);
                    a(r15);
                    outputStream5 = outputStream6;
                    r3 = r4;
                    httpURLConnection5 = httpURLConnection6;
                    r14 = r15;
                    r0 = outputStream6;
                    r5 = r4;
                    bArr = httpURLConnection6;
                    map = r15;
                    if (httpURLConnection6 != null) {
                        httpURLConnection5.disconnect();
                        r0 = outputStream5;
                        r5 = r3;
                        bArr = httpURLConnection5;
                        map = r14;
                    }
                    return null;
                } catch (ProtocolException e5) {
                    e2 = e5;
                    httpURLConnection4 = null;
                    outputStream4 = null;
                    OutputStream outputStream9 = outputStream4;
                    r2 = outputStream9;
                    outputStream3 = outputStream9;
                    httpURLConnection3 = httpURLConnection4;
                    r13 = outputStream4;
                    Logger.error(f37984a, "doPostRequest error", e2);
                    a(outputStream3);
                    a(r2);
                    a(r13);
                    outputStream5 = outputStream3;
                    r3 = r2;
                    httpURLConnection5 = httpURLConnection3;
                    r14 = r13;
                    r0 = outputStream3;
                    r5 = r2;
                    bArr = httpURLConnection3;
                    map = r13;
                    if (httpURLConnection3 != null) {
                        httpURLConnection5.disconnect();
                        r0 = outputStream5;
                        r5 = r3;
                        bArr = httpURLConnection5;
                        map = r14;
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    httpURLConnection2 = null;
                    outputStream2 = null;
                    OutputStream outputStream10 = outputStream2;
                    r1 = outputStream10;
                    outputStream = outputStream10;
                    httpURLConnection = httpURLConnection2;
                    r12 = outputStream2;
                    Logger.error(f37984a, "doPostRequest error", th);
                    a(outputStream);
                    a(r1);
                    a(r12);
                    outputStream5 = outputStream;
                    r3 = r1;
                    httpURLConnection5 = httpURLConnection;
                    r14 = r12;
                    r0 = outputStream;
                    r5 = r1;
                    bArr = httpURLConnection;
                    map = r12;
                    if (httpURLConnection != null) {
                        httpURLConnection5.disconnect();
                        r0 = outputStream5;
                        r5 = r3;
                        bArr = httpURLConnection5;
                        map = r14;
                    }
                    return null;
                }
            } else {
                length = 0;
            }
            Logger.info(f37984a, "log upload url is:" + str + ", requestBody length is:" + length);
            HttpURLConnection httpURLConnectionConfigureConnectionForLogTrack = this.d.configureConnectionForLogTrack(str);
            try {
                for (Map.Entry entry : map.entrySet()) {
                    httpURLConnectionConfigureConnectionForLogTrack.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                }
                httpURLConnectionConfigureConnectionForLogTrack.setDoInput(true);
                httpURLConnectionConfigureConnectionForLogTrack.setDoOutput(true);
                httpURLConnectionConfigureConnectionForLogTrack.setRequestMethod("POST");
                OutputStream outputStreamI = Callback.i(httpURLConnectionConfigureConnectionForLogTrack);
                try {
                    outputStreamI.write((byte[]) bArr);
                    outputStreamI.flush();
                    this.f37989h = Callback.k(httpURLConnectionConfigureConnectionForLogTrack);
                    ?? byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        ?? D = this.f37989h == 409 ? Callback.d(httpURLConnectionConfigureConnectionForLogTrack) : Callback.g(httpURLConnectionConfigureConnectionForLogTrack);
                        while (true) {
                            try {
                                int i2 = D.read(r5);
                                if (i2 == -1) {
                                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                                    a(outputStreamI);
                                    a(D);
                                    a(byteArrayOutputStream);
                                    httpURLConnectionConfigureConnectionForLogTrack.disconnect();
                                    return byteArray;
                                }
                                byteArrayOutputStream.write(r5, 0, i2);
                            } catch (MalformedURLException e6) {
                                httpURLConnection6 = httpURLConnectionConfigureConnectionForLogTrack;
                                e3 = e6;
                                r4 = D;
                                outputStream6 = outputStreamI;
                                r15 = byteArrayOutputStream;
                                Logger.error(f37984a, "doPostRequest error", e3);
                                a(outputStream6);
                                a(r4);
                                a(r15);
                                outputStream5 = outputStream6;
                                r3 = r4;
                                httpURLConnection5 = httpURLConnection6;
                                r14 = r15;
                                r0 = outputStream6;
                                r5 = r4;
                                bArr = httpURLConnection6;
                                map = r15;
                                if (httpURLConnection6 != null) {
                                    httpURLConnection5.disconnect();
                                    r0 = outputStream5;
                                    r5 = r3;
                                    bArr = httpURLConnection5;
                                    map = r14;
                                }
                                return null;
                            } catch (ProtocolException e7) {
                                httpURLConnection3 = httpURLConnectionConfigureConnectionForLogTrack;
                                e2 = e7;
                                r2 = D;
                                outputStream3 = outputStreamI;
                                r13 = byteArrayOutputStream;
                                Logger.error(f37984a, "doPostRequest error", e2);
                                a(outputStream3);
                                a(r2);
                                a(r13);
                                outputStream5 = outputStream3;
                                r3 = r2;
                                httpURLConnection5 = httpURLConnection3;
                                r14 = r13;
                                r0 = outputStream3;
                                r5 = r2;
                                bArr = httpURLConnection3;
                                map = r13;
                                if (httpURLConnection3 != null) {
                                    httpURLConnection5.disconnect();
                                    r0 = outputStream5;
                                    r5 = r3;
                                    bArr = httpURLConnection5;
                                    map = r14;
                                }
                                return null;
                            } catch (Throwable th3) {
                                httpURLConnection = httpURLConnectionConfigureConnectionForLogTrack;
                                th = th3;
                                r1 = D;
                                outputStream = outputStreamI;
                                r12 = byteArrayOutputStream;
                                Logger.error(f37984a, "doPostRequest error", th);
                                a(outputStream);
                                a(r1);
                                a(r12);
                                outputStream5 = outputStream;
                                r3 = r1;
                                httpURLConnection5 = httpURLConnection;
                                r14 = r12;
                                r0 = outputStream;
                                r5 = r1;
                                bArr = httpURLConnection;
                                map = r12;
                                if (httpURLConnection != null) {
                                    httpURLConnection5.disconnect();
                                    r0 = outputStream5;
                                    r5 = r3;
                                    bArr = httpURLConnection5;
                                    map = r14;
                                }
                                return null;
                            }
                        }
                    } catch (MalformedURLException e8) {
                        httpURLConnection6 = httpURLConnectionConfigureConnectionForLogTrack;
                        e3 = e8;
                        outputStream6 = outputStreamI;
                        r15 = byteArrayOutputStream;
                        r4 = 0;
                    } catch (ProtocolException e9) {
                        httpURLConnection3 = httpURLConnectionConfigureConnectionForLogTrack;
                        e2 = e9;
                        outputStream3 = outputStreamI;
                        r13 = byteArrayOutputStream;
                        r2 = 0;
                    } catch (Throwable th4) {
                        httpURLConnection = httpURLConnectionConfigureConnectionForLogTrack;
                        th = th4;
                        outputStream = outputStreamI;
                        r12 = byteArrayOutputStream;
                        r1 = 0;
                    }
                } catch (MalformedURLException e10) {
                    httpURLConnection6 = httpURLConnectionConfigureConnectionForLogTrack;
                    e3 = e10;
                    outputStream6 = outputStreamI;
                    r15 = 0;
                    r4 = 0;
                } catch (ProtocolException e11) {
                    httpURLConnection3 = httpURLConnectionConfigureConnectionForLogTrack;
                    e2 = e11;
                    outputStream3 = outputStreamI;
                    r13 = 0;
                    r2 = 0;
                } catch (Throwable th5) {
                    httpURLConnection = httpURLConnectionConfigureConnectionForLogTrack;
                    th = th5;
                    outputStream = outputStreamI;
                    r12 = 0;
                    r1 = 0;
                }
            } catch (MalformedURLException e12) {
                httpURLConnection7 = httpURLConnectionConfigureConnectionForLogTrack;
                e3 = e12;
                outputStream7 = null;
                OutputStream outputStream11 = outputStream7;
                r4 = outputStream11;
                outputStream6 = outputStream11;
                httpURLConnection6 = httpURLConnection7;
                r15 = outputStream7;
                Logger.error(f37984a, "doPostRequest error", e3);
                a(outputStream6);
                a(r4);
                a(r15);
                outputStream5 = outputStream6;
                r3 = r4;
                httpURLConnection5 = httpURLConnection6;
                r14 = r15;
                r0 = outputStream6;
                r5 = r4;
                bArr = httpURLConnection6;
                map = r15;
                if (httpURLConnection6 != null) {
                    httpURLConnection5.disconnect();
                    r0 = outputStream5;
                    r5 = r3;
                    bArr = httpURLConnection5;
                    map = r14;
                }
                return null;
            } catch (ProtocolException e13) {
                httpURLConnection4 = httpURLConnectionConfigureConnectionForLogTrack;
                e2 = e13;
                outputStream4 = null;
                OutputStream outputStream12 = outputStream4;
                r2 = outputStream12;
                outputStream3 = outputStream12;
                httpURLConnection3 = httpURLConnection4;
                r13 = outputStream4;
                Logger.error(f37984a, "doPostRequest error", e2);
                a(outputStream3);
                a(r2);
                a(r13);
                outputStream5 = outputStream3;
                r3 = r2;
                httpURLConnection5 = httpURLConnection3;
                r14 = r13;
                r0 = outputStream3;
                r5 = r2;
                bArr = httpURLConnection3;
                map = r13;
                if (httpURLConnection3 != null) {
                    httpURLConnection5.disconnect();
                    r0 = outputStream5;
                    r5 = r3;
                    bArr = httpURLConnection5;
                    map = r14;
                }
                return null;
            } catch (Throwable th6) {
                httpURLConnection2 = httpURLConnectionConfigureConnectionForLogTrack;
                th = th6;
                outputStream2 = null;
                OutputStream outputStream13 = outputStream2;
                r1 = outputStream13;
                outputStream = outputStream13;
                httpURLConnection = httpURLConnection2;
                r12 = outputStream2;
                Logger.error(f37984a, "doPostRequest error", th);
                a(outputStream);
                a(r1);
                a(r12);
                outputStream5 = outputStream;
                r3 = r1;
                httpURLConnection5 = httpURLConnection;
                r14 = r12;
                r0 = outputStream;
                r5 = r1;
                bArr = httpURLConnection;
                map = r12;
                if (httpURLConnection != null) {
                    httpURLConnection5.disconnect();
                    r0 = outputStream5;
                    r5 = r3;
                    bArr = httpURLConnection5;
                    map = r14;
                }
                return null;
            }
        } catch (Throwable th7) {
            a(r0);
            a(r5);
            a(map);
            if (bArr != 0) {
                bArr.disconnect();
            }
            throw th7;
        }
    }

    private boolean b(File file) {
        ByteArrayOutputStream byteArrayOutputStream;
        Closeable closeable = null;
        try {
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                try {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        byte[] bArr = new byte[2048];
                        while (true) {
                            int i2 = fileInputStream.read(bArr);
                            if (i2 == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(bArr, 0, i2);
                        }
                        byteArrayOutputStream.flush();
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        if (byteArray == null) {
                            byteArray = new byte[0];
                        }
                        String strA = "";
                        if (byteArray.length != 0) {
                            if (r.u().B) {
                                strA = ak.b(com.networkbench.agent.impl.util.a.g.a(byteArray)).toUpperCase();
                            } else {
                                strA = ah.a(byteArray);
                                Logger.debug(f37984a, "not sm bodyAbstract:" + strA);
                            }
                        }
                        boolean zA = a(a(b(file.getName()), byteArray, a(file.getName(), strA)));
                        a(fileInputStream);
                        a(byteArrayOutputStream);
                        return zA;
                    } catch (FileNotFoundException e2) {
                        e = e2;
                        closeable = fileInputStream;
                        Logger.error(f37984a, "doSendFileByAction error", e);
                        a(closeable);
                        a(byteArrayOutputStream);
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        closeable = fileInputStream;
                        Logger.error(f37984a, "doSendFileByAction error", th);
                        a(closeable);
                        a(byteArrayOutputStream);
                        return false;
                    }
                } catch (FileNotFoundException e3) {
                    e = e3;
                    byteArrayOutputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    byteArrayOutputStream = null;
                }
            } catch (Throwable th3) {
                a(closeable);
                a(byteArrayOutputStream);
                throw th3;
            }
        } catch (FileNotFoundException e4) {
            e = e4;
            byteArrayOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = null;
        }
    }

    private void c(byte[] bArr) {
        if (bArr != null) {
            try {
                JSONObject jSONObjectOptJSONObject = new JSONObject(new String(bArr)).optJSONObject("result");
                if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optInt("errorCode") == 465) {
                    Harvest.getInstance().getHarvester().immediatelyInitMobileAgent();
                }
            } catch (Throwable th) {
                Logger.error(f37984a, "response data error:", th);
            }
        }
    }

    @Override // com.networkbench.agent.impl.harvest.NBSUploadDataInterface
    public boolean isEnableUpload() {
        return r.u().aB();
    }

    @Override // com.networkbench.agent.impl.logtrack.SendLogRunnable
    public void sendLog(File file) {
        boolean zB = isEnableUpload() ? b(file) : false;
        Logger.debug(f37984a, "upload log file result is：" + zB + ", logFileName:" + file.getName());
        finish();
        if (file.getName().contains(".copy")) {
            if (zB) {
                ak.a(file.length(), a(file));
            }
            file.delete();
        } else if (zB) {
            file.delete();
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0028  */
    private String b(String str) {
        int i2;
        String strA = a(str);
        if (strA == null) {
            Logger.error(f37984a, "error formatLogFile is null");
            return "";
        }
        if (this.g.size() > 0) {
            i2 = ((String) fc.e(1, this.g)).equals(strA) ? 1 : 0;
        }
        return MessageFormat.format("{0}&completed={1}", this.f37986c.a(), Integer.valueOf(i2));
    }

    private void b(byte[] bArr) {
        try {
            if (bArr != null) {
                Harvest.getInstance().getHarvester().doDisabledTimeout(TimeUnit.MINUTES.toMillis(new JSONObject(new String(bArr)).getInt("disabledTimeout")));
            } else {
                a();
            }
        } catch (Throwable th) {
            Logger.error(f37984a, "response data error:", th);
            a();
        }
    }

    private String a(File file) {
        String str = file.getParent() + File.separator + a(file.getName());
        Logger.debug(f37984a, "real src path is:".concat(str));
        return str;
    }

    private HashMap<String, String> a(String str, String str2) {
        HashMap<String, String> map = new HashMap<>();
        map.put("X-Task-Id", this.f37987e);
        boolean z = r.u().B;
        String str3 = this.f37988f;
        if (z) {
            map.put(com.networkbench.agent.impl.harvest.a.e.f37257a, str3.toUpperCase());
            Logger.debug(f37984a, "sm encrypt key is: " + this.f37988f);
        } else {
            map.put("SecretKey", str3);
            Logger.debug(f37984a, "log secretKey not encrypt");
        }
        map.put(ConfigurationName.BODY_ABSTRACT, str2);
        map.put("X-File-Date", a(str));
        return map;
    }

    public String a(String str) {
        String[] strArrSplit;
        return (!str.contains(".copy") || (strArrSplit = str.split(".copy")) == null || strArrSplit.length <= 0) ? str : strArrSplit[0];
    }

    private void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                Logger.error(f37984a, "closeStream failed", th);
            }
        }
    }

    public void a(String[] strArr) {
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            for (String str : strArr) {
                String string = Long.toString(simpleDateFormat.parse(str).getTime());
                Logger.debug(f37984a, "add file " + string);
                this.g.add(string);
            }
        } catch (Throwable th) {
            Logger.error(f37984a, "parse date error", th);
        }
    }

    private boolean a(byte[] bArr) {
        boolean z;
        if (bArr != null) {
            String str = new String(bArr);
            z = !ab.c(str);
            Logger.info(f37984a, "log response data is:".concat(str));
        } else {
            z = false;
        }
        if (this.f37989h == 409) {
            b(bArr);
        }
        if (this.f37989h == 200) {
            c(bArr);
        }
        return z;
    }

    private void a() {
        Harvest.getInstance().getHarvester().doDisabledTimeout(86400000L);
    }
}
