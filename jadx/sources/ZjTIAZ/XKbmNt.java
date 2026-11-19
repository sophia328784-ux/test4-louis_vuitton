package ZjTIAZ;

import NLl.Kzi.OWc;
import NeY.Fem.HaY.RjZ;
import android.os.Handler;
import android.os.Looper;
import com.dynatrace.android.callback.Callback;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONException;
import org.json.JSONObject;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes.dex */
final class XKbmNt {
    public static String d = CNATAC.a("K]vVCFFO\u007f\u000b");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f301e = CNATAC.a("M|S}VFXOcZfYG@^[L~J_F");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final JOGAgw.InterfaceC0003JOGAgw f302a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExecutorService f303b = Executors.newSingleThreadExecutor();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Handler f304c = new Handler(Looper.getMainLooper());

    class XGFGPq implements Runnable {
        static String ucLGiJ;
        final /* synthetic */ JSONObject ClDGZT;

        static {
            CMJ(false);
        }

        public XGFGPq(JSONObject jSONObject) {
            this.ClDGZT = jSONObject;
        }

        public static /* synthetic */ void CMJ(boolean z) {
            if (z) {
                CMJ(false);
            }
            ucLGiJ = CNATAC.a("HD|_VV\u000fT~\u0011RYA\u0016sY]K");
        }

        @Override // java.lang.Runnable
        public void run() {
            JSONObject jSONObject = this.ClDGZT;
            XKbmNt xKbmNt = XKbmNt.this;
            if (jSONObject != null) {
                xKbmNt.f302a.c(jSONObject);
            } else {
                xKbmNt.f302a.a();
            }
        }
    }

    /* JADX INFO: renamed from: ZjTIAZ.XKbmNt$XKbmNt, reason: collision with other inner class name */
    class RunnableC0006XKbmNt implements Runnable {

        /* JADX INFO: Incorrect field signature: Llong; */
        static String QdbjdM;
        static String XnqmZi;
        static String ZbznIi;
        static String fPmIG;
        static RjZ uKOebE;
        static String zPONfB;
        final /* synthetic */ OWc wNEAgD;

        static {
            ukP(false);
        }

        public RunnableC0006XKbmNt(URL url) {
            this.wNEAgD = url;
        }

        public static /* synthetic */ void ukP(boolean z) {
            if (z) {
                ukP(false);
            }
            QdbjdM = CNATAC.a("K]vVCFFO\u007f\u000b");
            ZbznIi = CNATAC.a("[VpA\u001esHE\u007fE");
            fPmIG = CNATAC.a("HD|_VV\u000fT~\u0011RYA\u0016gW~\n{M_OBC\r\u0002kpqv\u0007Z]ikssmz\u0000S}wq/6");
            zPONfB = CNATAC.a("M|S}VFXOcZfYG@^[L~J_F");
            XnqmZi = CNATAC.a("I`A");
            uKOebE = CNATAC.a("DvZ}vJLEaE\\S[\f");
        }

        /* JADX WARN: Code duplicated, block: B:30:0x00b0 A[PHI: r2
          0x00b0: PHI (r2v6 java.net.HttpURLConnection) = (r2v5 java.net.HttpURLConnection), (r2v7 java.net.HttpURLConnection) binds: [B:29:0x00ae, B:33:0x00d7] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Code duplicated, block: B:37:0x00dd  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // java.lang.Runnable
        public void run() throws Throwable {
            HttpURLConnection httpURLConnection;
            JSONObject jSONObject = null;
            Object[] objArr = 0;
            try {
                try {
                    URLConnection uRLConnectionOpenConnection = this.wNEAgD.openConnection();
                    Callback.C(uRLConnectionOpenConnection);
                    httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                    try {
                        httpURLConnection.setReadTimeout(10000);
                        httpURLConnection.setConnectTimeout(15000);
                        httpURLConnection.setRequestMethod(XnqmZi);
                        httpURLConnection.setUseCaches(false);
                        httpURLConnection.setRequestProperty(ZbznIi, BkzsL.f());
                        int iK = Callback.k(httpURLConnection);
                        if (iK != 200) {
                            GpYFMu.d(zPONfB, fPmIG + iK, new Throwable[0]);
                        } else {
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Callback.g(httpURLConnection)));
                            StringBuffer stringBuffer = new StringBuffer();
                            while (true) {
                                String line = bufferedReader.readLine();
                                if (line == null) {
                                    break;
                                } else {
                                    stringBuffer.append(line);
                                }
                            }
                            bufferedReader.close();
                            jSONObject = new JSONObject(stringBuffer.toString());
                        }
                        httpURLConnection.disconnect();
                        XKbmNt xKbmNt = XKbmNt.this;
                        String str = XKbmNt.d;
                        xKbmNt.a(jSONObject);
                    } catch (JSONException e2) {
                        e = e2;
                        GpYFMu.d(zPONfB, ((String) uKOebE) + e.toString(), new Throwable[0]);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        XKbmNt xKbmNt2 = XKbmNt.this;
                        String str2 = XKbmNt.d;
                        xKbmNt2.a(null);
                    } catch (Exception e3) {
                        e = e3;
                        GpYFMu.d(zPONfB, QdbjdM + e.toString(), new Throwable[0]);
                        e.printStackTrace();
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        XKbmNt xKbmNt3 = XKbmNt.this;
                        String str3 = XKbmNt.d;
                        xKbmNt3.a(null);
                    }
                } catch (Throwable th) {
                    th = th;
                    if (0 != 0) {
                        (objArr == true ? 1 : 0).disconnect();
                    }
                    XKbmNt xKbmNt4 = XKbmNt.this;
                    String str4 = XKbmNt.d;
                    xKbmNt4.a(null);
                    throw th;
                }
            } catch (JSONException e4) {
                e = e4;
                httpURLConnection = null;
            } catch (Exception e5) {
                e = e5;
                httpURLConnection = null;
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    (objArr == true ? 1 : 0).disconnect();
                }
                XKbmNt xKbmNt5 = XKbmNt.this;
                String str5 = XKbmNt.d;
                xKbmNt5.a(null);
                throw th;
            }
        }
    }

    public XKbmNt(JOGAgw.InterfaceC0003JOGAgw interfaceC0003JOGAgw) {
        this.f302a = interfaceC0003JOGAgw;
    }

    public final void a(JSONObject jSONObject) {
        this.f304c.post(new XGFGPq(jSONObject));
    }

    public final void b(URL url) {
        try {
            this.f303b.execute(new RunnableC0006XKbmNt(url));
        } catch (Exception e2) {
            GpYFMu.d(f301e, d + e2, new Throwable[0]);
            a(null);
        }
    }
}
