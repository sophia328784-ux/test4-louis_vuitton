package ZjTIAZ;

import com.dynatrace.android.callback.Callback;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import net.rtccloud.sdk.Call;
import org.json.JSONException;
import org.json.JSONObject;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes.dex */
public class AcVtYN extends DQwsTh {
    public static final int H;
    public static final AcVtYN I;
    public String B;
    public String C;
    public eTLkQn D;
    public long E;
    public String F;
    public String G;

    class acVtYN implements Runnable {
        final /* synthetic */ NUb ZRQiWB;

        public acVtYN(AcVtYN acVtYN) {
            this.ZRQiWB = acVtYN;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            try {
                NUb nUb = this.ZRQiWB;
                AcVtYN.n(nUb, nUb.v);
            } catch (Exception e2) {
                GWINqE.b(e2);
            }
        }
    }

    public interface eTLkQn {
    }

    static {
        int i2;
        AcVtYN acVtYN2 = new AcVtYN();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (H > 4327) {
            acVtYN2.E = jCurrentTimeMillis;
            acVtYN2.G = "";
            I = acVtYN2;
            return;
        }
        while (true) {
            i2 = H;
            int i3 = i2 + 13;
            if (i3 == 27) {
                H = ((i2 % 106) + i2) >> 98;
            } else if (i3 == 152) {
                H = i2 * 6230;
                break;
            } else if (i3 == 206) {
                break;
            }
        }
        while (true) {
            H = (H * 8) + i2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:61:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:64:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:67:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:71:0x020f A[Catch: Exception -> 0x0238, PHI: r6
      0x020f: PHI (r6v8 boolean) = (r6v4 boolean), (r6v5 boolean), (r6v6 boolean), (r6v7 boolean), (r6v9 boolean) binds: [B:60:0x01c7, B:63:0x01de, B:66:0x01f5, B:69:0x020c, B:47:0x019b] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #5 {Exception -> 0x0238, blocks: (B:3:0x0008, B:40:0x014a, B:47:0x019b, B:71:0x020f, B:75:0x0217, B:81:0x0229, B:76:0x021d, B:80:0x0226, B:82:0x022c, B:84:0x0234, B:85:0x0237, B:77:0x0222, B:78:0x0224), top: B:89:0x0008, inners: #12 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x0213  */
    /* JADX WARN: Code duplicated, block: B:75:0x0217 A[Catch: Exception -> 0x0238, TRY_ENTER, TryCatch #5 {Exception -> 0x0238, blocks: (B:3:0x0008, B:40:0x014a, B:47:0x019b, B:71:0x020f, B:75:0x0217, B:81:0x0229, B:76:0x021d, B:80:0x0226, B:82:0x022c, B:84:0x0234, B:85:0x0237, B:77:0x0222, B:78:0x0224), top: B:89:0x0008, inners: #12 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x021d A[Catch: Exception -> 0x0238, TRY_LEAVE, TryCatch #5 {Exception -> 0x0238, blocks: (B:3:0x0008, B:40:0x014a, B:47:0x019b, B:71:0x020f, B:75:0x0217, B:81:0x0229, B:76:0x021d, B:80:0x0226, B:82:0x022c, B:84:0x0234, B:85:0x0237, B:77:0x0222, B:78:0x0224), top: B:89:0x0008, inners: #12 }] */
    /* JADX WARN: Code duplicated, block: B:84:0x0234 A[Catch: Exception -> 0x0238, TryCatch #5 {Exception -> 0x0238, blocks: (B:3:0x0008, B:40:0x014a, B:47:0x019b, B:71:0x020f, B:75:0x0217, B:81:0x0229, B:76:0x021d, B:80:0x0226, B:82:0x022c, B:84:0x0234, B:85:0x0237, B:77:0x0222, B:78:0x0224), top: B:89:0x0008, inners: #12 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r4v5 */
    public static void n(AcVtYN acVtYN2, String str) throws Throwable {
        HttpURLConnection httpURLConnection;
        boolean z;
        eTLkQn etlkqn;
        acVtYN2.m(3);
        try {
            String str2 = acVtYN2.f136a + CNATAC.a("!zfVP\u001dLPNR]]YZRVNO\u0004ZH\\FVX");
            ?? r4 = 0;
            try {
                try {
                    URLConnection uRLConnectionOpenConnection = new URL(str2).openConnection();
                    Callback.C(uRLConnectionOpenConnection);
                    httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                    try {
                        httpURLConnection.setReadTimeout(10000);
                        httpURLConnection.setConnectTimeout(15000);
                        httpURLConnection.setRequestMethod(CNATAC.a("^jFg"));
                        httpURLConnection.setUseCaches(false);
                        httpURLConnection.setRequestProperty(CNATAC.a("MJ{GV\\[\rEHEY"), CNATAC.a("oUe_ZQNTx^[\u0013_EXV"));
                        httpURLConnection.setRequestProperty(CNATAC.a("[VpA\u001esHE\u007fE"), BkzsL.f());
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put(CNATAC.a("~JblAW\\P~_FY"), str);
                        jSONObject.put(CNATAC.a("mJ{GVJ["), acVtYN2.F);
                        DataOutputStream dataOutputStream = new DataOutputStream(Callback.i(httpURLConnection));
                        dataOutputStream.write(jSONObject.toString().getBytes(CNATAC.a("[qS\u001e\u000b")));
                        dataOutputStream.flush();
                        dataOutputStream.close();
                        if (Callback.k(httpURLConnection) == 200) {
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
                            JSONObject jSONObject2 = new JSONObject(stringBuffer.toString());
                            z = jSONObject2.getBoolean(CNATAC.a("}PvPVA\\"));
                            try {
                                if (acVtYN2.f137b != 3) {
                                    GpYFMu.g("AcVtYN", CNATAC.a("MD{PV^\u000fvtC\\ZL"), new Throwable[0]);
                                    acVtYN2.D.getClass();
                                } else {
                                    if (z) {
                                        acVtYN2.B = jSONObject2.getString(CNATAC.a("zJ~V]"));
                                        acVtYN2.E = (acVtYN2.f140f * 1000) + System.currentTimeMillis();
                                    } else if (jSONObject2.has(CNATAC.a("~Dl_\\SK"))) {
                                        acVtYN2.G = jSONObject2.getString(CNATAC.a("~Dl_\\SK"));
                                        ((XcIOkP.C0007XcIOkP) acVtYN2.D).b(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                        acVtYN2.m(0);
                                        acVtYN2.g(1, 100L);
                                    } else {
                                        z = false;
                                    }
                                    GpYFMu.c("AcVtYN", CNATAC.a("]PvPVA\\\u001a1") + z + CNATAC.a(".\u0005A\\XWA\u001a1") + acVtYN2.B + CNATAC.a(".\u0005GVRA@N+\u0011") + acVtYN2.C + CNATAC.a(".\u0005ERJ^@Au\u000b\u0015") + acVtYN2.G, new Throwable[0]);
                                }
                                httpURLConnection.disconnect();
                                return;
                            } catch (MalformedURLException e2) {
                                e = e2;
                                GpYFMu.d("AcVtYN", e.toString(), new Throwable[0]);
                                acVtYN2.C = CNATAC.a("CDyU\\@BEudgppNT]Y^BCC");
                                e.printStackTrace();
                                if (httpURLConnection != null) {
                                }
                                if (acVtYN2.f137b == 3) {
                                    etlkqn = acVtYN2.D;
                                    if (!z) {
                                        ((XcIOkP.C0007XcIOkP) etlkqn).getClass();
                                        try {
                                            XcIOkP xcIOkP = XcIOkP.d;
                                            throw null;
                                        } catch (Exception e3) {
                                            GWINqE.b(e3);
                                        }
                                    } else {
                                        ((XcIOkP.C0007XcIOkP) etlkqn).a();
                                    }
                                    acVtYN2.m(0);
                                }
                                acVtYN2.D.getClass();
                            } catch (ProtocolException e4) {
                                e = e4;
                                GpYFMu.d("AcVtYN", e.toString(), new Throwable[0]);
                                acVtYN2.C = CNATAC.a("^WzG\\Q@LTIVYEB^WG");
                                e.printStackTrace();
                                if (httpURLConnection != null) {
                                    if (acVtYN2.f137b == 3) {
                                        etlkqn = acVtYN2.D;
                                        if (!z) {
                                            ((XcIOkP.C0007XcIOkP) etlkqn).getClass();
                                            XcIOkP xcIOkP2 = XcIOkP.d;
                                            throw null;
                                        }
                                        ((XcIOkP.C0007XcIOkP) etlkqn).a();
                                        acVtYN2.m(0);
                                    }
                                    acVtYN2.D.getClass();
                                }
                                GWINqE.b(e);
                            } catch (IOException e5) {
                                e = e5;
                                GpYFMu.d("AcVtYN", e.toString(), new Throwable[0]);
                                acVtYN2.C = CNATAC.a("GjPKPW_Tx^[");
                                e.printStackTrace();
                                if (httpURLConnection != null) {
                                    if (acVtYN2.f137b == 3) {
                                        etlkqn = acVtYN2.D;
                                        if (!z) {
                                            ((XcIOkP.C0007XcIOkP) etlkqn).getClass();
                                            XcIOkP xcIOkP3 = XcIOkP.d;
                                            throw null;
                                        }
                                        ((XcIOkP.C0007XcIOkP) etlkqn).a();
                                        acVtYN2.m(0);
                                    }
                                    acVtYN2.D.getClass();
                                }
                                GWINqE.b(e);
                            } catch (JSONException e6) {
                                e = e6;
                                GpYFMu.d("AcVtYN", e.toString(), new Throwable[0]);
                                acVtYN2.C = CNATAC.a("DvZ}vJLEaE\\S[");
                                e.printStackTrace();
                                if (httpURLConnection != null) {
                                    if (acVtYN2.f137b == 3) {
                                        etlkqn = acVtYN2.D;
                                        if (!z) {
                                            ((XcIOkP.C0007XcIOkP) etlkqn).getClass();
                                            XcIOkP xcIOkP4 = XcIOkP.d;
                                            throw null;
                                        }
                                        ((XcIOkP.C0007XcIOkP) etlkqn).a();
                                        acVtYN2.m(0);
                                    }
                                    acVtYN2.D.getClass();
                                }
                                GWINqE.b(e);
                            }
                        }
                        acVtYN2.C = Callback.l(httpURLConnection);
                        z = false;
                    } catch (MalformedURLException e7) {
                        e = e7;
                        z = false;
                        GpYFMu.d("AcVtYN", e.toString(), new Throwable[0]);
                        acVtYN2.C = CNATAC.a("CDyU\\@BEudgppNT]Y^BCC");
                        e.printStackTrace();
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        if (acVtYN2.f137b == 3) {
                            etlkqn = acVtYN2.D;
                            if (!z) {
                                ((XcIOkP.C0007XcIOkP) etlkqn).getClass();
                                XcIOkP xcIOkP5 = XcIOkP.d;
                                throw null;
                            }
                            ((XcIOkP.C0007XcIOkP) etlkqn).a();
                            acVtYN2.m(0);
                        }
                        acVtYN2.D.getClass();
                    } catch (ProtocolException e8) {
                        e = e8;
                        z = false;
                        GpYFMu.d("AcVtYN", e.toString(), new Throwable[0]);
                        acVtYN2.C = CNATAC.a("^WzG\\Q@LTIVYEB^WG");
                        e.printStackTrace();
                        if (httpURLConnection != null) {
                            if (acVtYN2.f137b == 3) {
                                etlkqn = acVtYN2.D;
                                if (!z) {
                                    ((XcIOkP.C0007XcIOkP) etlkqn).getClass();
                                    XcIOkP xcIOkP6 = XcIOkP.d;
                                    throw null;
                                }
                                ((XcIOkP.C0007XcIOkP) etlkqn).a();
                                acVtYN2.m(0);
                            }
                            acVtYN2.D.getClass();
                        }
                        httpURLConnection.disconnect();
                        if (acVtYN2.f137b == 3) {
                            etlkqn = acVtYN2.D;
                            if (!z) {
                                ((XcIOkP.C0007XcIOkP) etlkqn).getClass();
                                XcIOkP xcIOkP7 = XcIOkP.d;
                                throw null;
                            }
                            ((XcIOkP.C0007XcIOkP) etlkqn).a();
                            acVtYN2.m(0);
                        }
                        acVtYN2.D.getClass();
                        GWINqE.b(e);
                    } catch (IOException e9) {
                        e = e9;
                        z = false;
                        GpYFMu.d("AcVtYN", e.toString(), new Throwable[0]);
                        acVtYN2.C = CNATAC.a("GjPKPW_Tx^[");
                        e.printStackTrace();
                        if (httpURLConnection != null) {
                            if (acVtYN2.f137b == 3) {
                                etlkqn = acVtYN2.D;
                                if (!z) {
                                    ((XcIOkP.C0007XcIOkP) etlkqn).getClass();
                                    XcIOkP xcIOkP8 = XcIOkP.d;
                                    throw null;
                                }
                                ((XcIOkP.C0007XcIOkP) etlkqn).a();
                                acVtYN2.m(0);
                            }
                            acVtYN2.D.getClass();
                        }
                        httpURLConnection.disconnect();
                        if (acVtYN2.f137b == 3) {
                            etlkqn = acVtYN2.D;
                            if (!z) {
                                ((XcIOkP.C0007XcIOkP) etlkqn).getClass();
                                XcIOkP xcIOkP9 = XcIOkP.d;
                                throw null;
                            }
                            ((XcIOkP.C0007XcIOkP) etlkqn).a();
                            acVtYN2.m(0);
                        }
                        acVtYN2.D.getClass();
                        GWINqE.b(e);
                    } catch (JSONException e10) {
                        e = e10;
                        z = false;
                        GpYFMu.d("AcVtYN", e.toString(), new Throwable[0]);
                        acVtYN2.C = CNATAC.a("DvZ}vJLEaE\\S[");
                        e.printStackTrace();
                        if (httpURLConnection != null) {
                            if (acVtYN2.f137b == 3) {
                                etlkqn = acVtYN2.D;
                                if (!z) {
                                    ((XcIOkP.C0007XcIOkP) etlkqn).getClass();
                                    XcIOkP xcIOkP10 = XcIOkP.d;
                                    throw null;
                                }
                                ((XcIOkP.C0007XcIOkP) etlkqn).a();
                                acVtYN2.m(0);
                            }
                            acVtYN2.D.getClass();
                        }
                        httpURLConnection.disconnect();
                        if (acVtYN2.f137b == 3) {
                            etlkqn = acVtYN2.D;
                            if (!z) {
                                ((XcIOkP.C0007XcIOkP) etlkqn).getClass();
                                XcIOkP xcIOkP11 = XcIOkP.d;
                                throw null;
                            }
                            ((XcIOkP.C0007XcIOkP) etlkqn).a();
                            acVtYN2.m(0);
                        }
                        acVtYN2.D.getClass();
                        GWINqE.b(e);
                    }
                } catch (Throwable th) {
                    th = th;
                    r4 = str2;
                    if (r4 != 0) {
                        r4.disconnect();
                    }
                    throw th;
                }
            } catch (MalformedURLException e11) {
                e = e11;
                httpURLConnection = null;
            } catch (ProtocolException e12) {
                e = e12;
                httpURLConnection = null;
            } catch (IOException e13) {
                e = e13;
                httpURLConnection = null;
            } catch (JSONException e14) {
                e = e14;
                httpURLConnection = null;
            } catch (Throwable th2) {
                th = th2;
                if (r4 != 0) {
                    r4.disconnect();
                }
                throw th;
            }
            httpURLConnection.disconnect();
            if (acVtYN2.f137b == 3) {
                etlkqn = acVtYN2.D;
                if (!z) {
                    ((XcIOkP.C0007XcIOkP) etlkqn).getClass();
                    XcIOkP xcIOkP12 = XcIOkP.d;
                    throw null;
                }
                ((XcIOkP.C0007XcIOkP) etlkqn).a();
                acVtYN2.m(0);
            }
            acVtYN2.D.getClass();
        } catch (Exception e15) {
            GWINqE.b(e15);
        }
    }

    public static AcVtYN o() {
        return I;
    }

    @Override // ZjTIAZ.DQwsTh
    public final String e() {
        StringBuilder sb = new StringBuilder(this.f136a + CNATAC.a("!zw^\u001cUJTNATNT[D\u0007]S[I\u0010]K[\fA@E"));
        try {
            String str = this.F;
            if (str != null && !str.equals("")) {
                sb.append(CNATAC.a("(Fz]GWWT,"));
                sb.append(URLEncoder.encode(this.F, CNATAC.a("[qS\u001e\u000b")));
            }
            String str2 = this.G;
            if (str2 != null && !str2.equals("")) {
                sb.append(CNATAC.a("(UtJ_]ND,"));
                sb.append(URLEncoder.encode(this.G, CNATAC.a("[qS\u001e\u000b")));
            }
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        }
        this.G = "";
        return sb.toString();
    }

    @Override // ZjTIAZ.DQwsTh
    public final void i(String str) {
        GpYFMu.d("AcVtYN", CNATAC.a("KWg\\A\b\u000f").concat(str), new Throwable[0]);
        this.D.getClass();
        ((XcIOkP.C0007XcIOkP) this.D).a();
    }

    @Override // ZjTIAZ.DQwsTh
    public final void j() {
        try {
            this.D.getClass();
            ((XcIOkP.C0007XcIOkP) this.D).getClass();
            try {
                XcIOkP xcIOkP = XcIOkP.d;
                throw null;
            } catch (Exception e2) {
                GWINqE.b(e2);
                m(0);
            }
        } catch (Exception e3) {
            GWINqE.b(e3);
        }
    }

    @Override // ZjTIAZ.DQwsTh
    public final void k() {
        try {
            new Thread(new acVtYN(this)).start();
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }

    @Override // ZjTIAZ.DQwsTh
    public final void l(int i2) {
        try {
            ((XcIOkP.C0007XcIOkP) this.D).b(i2 / 10.0f);
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }

    public final synchronized String p() {
        if (this.B != null && System.currentTimeMillis() <= this.E) {
            return this.B;
        }
        return "";
    }
}
