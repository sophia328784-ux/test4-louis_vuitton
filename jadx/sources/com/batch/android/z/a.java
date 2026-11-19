package com.batch.android.z;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import com.batch.android.e.j0;
import com.batch.android.e.n;
import com.batch.android.e.t;
import com.batch.android.e0.g;
import com.dynatrace.android.callback.Callback;
import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLException;

/* JADX INFO: loaded from: classes2.dex */
public class a extends AsyncTask<String, Void, d> {
    private static final String d = "AsyncImageDownloadTask";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.batch.android.u0.c f24227a = com.batch.android.t0.b.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.batch.android.f0.d f24228b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakReference<c> f24229c;

    /* JADX INFO: renamed from: com.batch.android.z.a$a, reason: collision with other inner class name */
    public static class C0076a extends d<Bitmap> {
        public C0076a(String str, Bitmap bitmap) {
            super(str, bitmap);
        }
    }

    public static class b extends d<byte[]> {
        public b(String str, byte[] bArr) {
            super(str, bArr);
        }
    }

    public interface c {
        void b(com.batch.android.f0.d dVar);

        void b(d dVar);

        void c();
    }

    public static abstract class d<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f24230a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private T f24231b;

        public d(String str, T t) {
            this.f24230a = str;
            this.f24231b = t;
        }

        public T a() {
            return this.f24231b;
        }

        public String b() {
            return this.f24230a;
        }
    }

    public a(c cVar) {
        this.f24229c = new WeakReference<>(cVar);
    }

    /* JADX WARN: Code duplicated, block: B:103:0x0128 A[EXC_TOP_SPLITTER, PHI: r0
      0x0128: PHI (r0v9 java.io.InputStream) = (r0v7 java.io.InputStream), (r0v8 java.io.InputStream), (r0v10 java.io.InputStream) binds: [B:72:0x0117, B:77:0x0126, B:67:0x0108] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:106:0x0133 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:110:0x012e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:135:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r5v10, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r5v12, types: [java.net.HttpURLConnection, java.net.URLConnection] */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.net.HttpURLConnection] */
    @Override // android.os.AsyncTask
    public d doInBackground(String... strArr) throws Throwable {
        ?? r0;
        InputStream inputStreamH;
        String str = ")";
        ?? r3 = 0;
        if (strArr != null && strArr[0] != null) {
            ?? r5 = "Downloading image for URL: " + strArr[0];
            t.c(d, (String) r5);
            try {
                try {
                    try {
                        URLConnection uRLConnectionOpenConnection = new URL(strArr[0]).openConnection();
                        Callback.C(uRLConnectionOpenConnection);
                        r5 = (HttpURLConnection) uRLConnectionOpenConnection;
                        try {
                            try {
                                if (r5 instanceof HttpsURLConnection) {
                                    ((HttpsURLConnection) r5).setSSLSocketFactory(new j0());
                                }
                                r5.setConnectTimeout(20000);
                                r5.setReadTimeout(NBSApplicationStateMonitor.ALTERNATEPERIOD);
                                r5.setRequestMethod("GET");
                                Callback.b(r5);
                                int iK = Callback.k(r5);
                                if (iK < 200 || iK >= 300) {
                                    t.c(d, "Server returned an invalid status code (" + iK + ") for URL (" + strArr[0] + ")");
                                    this.f24228b = com.batch.android.f0.d.SERVER_FAILURE;
                                    try {
                                        r5.disconnect();
                                    } catch (Exception unused) {
                                    }
                                    return null;
                                }
                                inputStreamH = Callback.h(r5);
                                try {
                                    try {
                                        n nVar = new n(inputStreamH, 6);
                                        if (g.a(nVar.a())) {
                                            b bVar = new b(strArr[0], com.batch.android.e.b.a(nVar));
                                            try {
                                                r5.disconnect();
                                            } catch (Exception unused2) {
                                            }
                                            if (inputStreamH != null) {
                                                try {
                                                    inputStreamH.close();
                                                } catch (Exception unused3) {
                                                }
                                            }
                                            return bVar;
                                        }
                                        try {
                                            C0076a c0076a = new C0076a(strArr[0], BitmapFactory.decodeStream(nVar));
                                            try {
                                                r5.disconnect();
                                            } catch (Exception unused4) {
                                            }
                                            if (inputStreamH != null) {
                                                try {
                                                    inputStreamH.close();
                                                } catch (Exception unused5) {
                                                }
                                            }
                                            return c0076a;
                                        } catch (OutOfMemoryError e2) {
                                            t.c(d, "Out of memory while creating the bitmap", e2);
                                            try {
                                                r5.disconnect();
                                            } catch (Exception unused6) {
                                            }
                                            if (inputStreamH != null) {
                                                try {
                                                    inputStreamH.close();
                                                } catch (Exception unused7) {
                                                }
                                            }
                                            return null;
                                        }
                                    } catch (ClassCastException | KeyManagementException | NoSuchAlgorithmException e3) {
                                        e = e3;
                                        t.c(d, "Unexpected error while downloading", e);
                                        this.f24228b = com.batch.android.f0.d.UNKNOWN;
                                        if (r5 != 0) {
                                            try {
                                                r5.disconnect();
                                            } catch (Exception unused8) {
                                            }
                                        }
                                        if (inputStreamH != null) {
                                            try {
                                                inputStreamH.close();
                                            } catch (Exception unused9) {
                                            }
                                        }
                                        return null;
                                    }
                                } catch (SSLException e4) {
                                    e = e4;
                                    t.c(d, "Unexpected error while downloading", e);
                                    this.f24228b = com.batch.android.f0.d.SERVER_FAILURE;
                                    if (r5 != 0) {
                                        try {
                                            r5.disconnect();
                                        } catch (Exception unused10) {
                                        }
                                    }
                                    if (inputStreamH != null) {
                                        inputStreamH.close();
                                    }
                                    return null;
                                } catch (IOException e5) {
                                    e = e5;
                                    t.c(d, "Unexpected error while downloading", e);
                                    this.f24228b = com.batch.android.f0.d.CLIENT_NETWORK;
                                    if (r5 != 0) {
                                        try {
                                            r5.disconnect();
                                        } catch (Exception unused11) {
                                        }
                                    }
                                    if (inputStreamH != null) {
                                        inputStreamH.close();
                                    }
                                    return null;
                                }
                            } catch (ClassCastException | KeyManagementException | NoSuchAlgorithmException e6) {
                                e = e6;
                                inputStreamH = null;
                            }
                        } catch (SSLException e7) {
                            e = e7;
                            inputStreamH = null;
                        } catch (IOException e8) {
                            e = e8;
                            inputStreamH = null;
                        } catch (Throwable th) {
                            th = th;
                            str = null;
                            r3 = r5;
                            r0 = str;
                            if (r3 != 0) {
                                try {
                                    r3.disconnect();
                                } catch (Exception unused12) {
                                }
                            }
                            if (r0 != 0) {
                                throw th;
                            }
                            try {
                                r0.close();
                                throw th;
                            } catch (Exception unused13) {
                                throw th;
                            }
                        }
                    } catch (IOException e9) {
                        e = e9;
                        inputStreamH = null;
                        r5 = 0;
                    } catch (ClassCastException | KeyManagementException | NoSuchAlgorithmException e10) {
                        e = e10;
                        inputStreamH = null;
                        r5 = 0;
                    } catch (SSLException e11) {
                        e = e11;
                        inputStreamH = null;
                        r5 = 0;
                    } catch (Throwable th2) {
                        th = th2;
                        r0 = 0;
                        if (r3 != 0) {
                            r3.disconnect();
                        }
                        if (r0 != 0) {
                            throw th;
                        }
                        r0.close();
                        throw th;
                    }
                } catch (MalformedURLException e12) {
                    t.c(d, "Error while reading the image URL (" + strArr[0] + ")", e12);
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(d dVar) {
        c cVar = this.f24229c.get();
        if (cVar == null) {
            if (this.f24227a.l()) {
                this.f24227a.m();
            }
        } else {
            if (dVar != null) {
                boolean z = dVar instanceof b;
                com.batch.android.u0.c cVar2 = this.f24227a;
                if (z) {
                    cVar2.a("gif").m();
                } else {
                    cVar2.a("image").m();
                }
                cVar.b(dVar);
                return;
            }
            this.f24227a.m();
            com.batch.android.t0.b.f24068e.l();
            com.batch.android.f0.d dVar2 = this.f24228b;
            if (dVar2 == null) {
                dVar2 = com.batch.android.f0.d.UNKNOWN;
            }
            cVar.b(dVar2);
        }
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        c cVar = this.f24229c.get();
        if (cVar != null) {
            cVar.c();
            this.f24227a.n();
        }
    }
}
