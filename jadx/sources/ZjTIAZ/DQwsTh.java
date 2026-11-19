package ZjTIAZ;

import FJE.PXu.PUT.HSD;
import android.content.SharedPreferences;
import android.os.SystemClock;
import com.dynatrace.android.callback.Callback;
import com.sightcall.livetranslation.data.LiveTranslationEntity;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes.dex */
public class DQwsTh {
    public static int x = 7202;
    public static int y = 2865;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f136a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f139e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f140f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f141h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f142i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f143j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public String f144k;
    public String l;
    public long m;
    public String n;
    public int o;
    public int p;
    public long q;
    public static final Locale z = Locale.US;
    public static final DQwsTh A = new DQwsTh();
    public int d = -1;
    public ArrayList r = new ArrayList();
    public ArrayList s = new ArrayList();
    public ArrayList t = new ArrayList();
    public String u = "";
    public String v = "";
    public int w = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f137b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f138c = 0;

    class ZAYDcK extends TimerTask {
        final /* synthetic */ int XccjsC;
        final /* synthetic */ HSD ZRQiWB;

        public class uXpLMf implements Runnable {
            public uXpLMf() {
            }

            /* JADX INFO: Infinite loop detected, blocks: 30, insns: 0 */
            /* JADX WARN: Code duplicated, block: B:61:0x014b A[PHI: r3
              0x014b: PHI (r3v5 java.net.HttpURLConnection) = (r3v4 java.net.HttpURLConnection), (r3v6 java.net.HttpURLConnection) binds: [B:60:0x0149, B:63:0x0173] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Code duplicated, block: B:81:0x01a8  */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v2 */
            /* JADX WARN: Type inference failed for: r2v3, types: [java.net.HttpURLConnection] */
            /* JADX WARN: Type inference failed for: r2v4 */
            @Override // java.lang.Runnable
            public void run() throws Throwable {
                HttpURLConnection httpURLConnection;
                boolean zBooleanValue;
                int i2;
                ZAYDcK zAYDcK = ZAYDcK.this;
                HSD hsd = zAYDcK.ZRQiWB;
                int i3 = zAYDcK.XccjsC;
                int i4 = DQwsTh.x;
                synchronized (hsd) {
                    try {
                        int i5 = hsd.f137b;
                        if (i5 != 0) {
                            if (i5 == 2) {
                                hsd.j();
                            }
                            return;
                        }
                        hsd.f137b = 1;
                        String strA = CNATAC.a("^JB");
                        String strA2 = CNATAC.a("I@aGZ\\H\u0000A^b\u001ceWEYDO_I_]\u000fVSMN\u0004dMFEYs523<");
                        GpYFMu.e(strA, strA2, new Throwable[0]);
                        ?? r2 = 0;
                        jSONObject = null;
                        JSONObject jSONObject = null;
                        try {
                            try {
                                URLConnection uRLConnectionOpenConnection = new URL(hsd.e()).openConnection();
                                Callback.C(uRLConnectionOpenConnection);
                                httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                                try {
                                    httpURLConnection.setReadTimeout(10000);
                                    httpURLConnection.setConnectTimeout(15000);
                                    httpURLConnection.setRequestMethod(CNATAC.a("I`A"));
                                    httpURLConnection.setUseCaches(false);
                                    httpURLConnection.setRequestProperty(CNATAC.a("[VpA\u001esHE\u007fE"), BkzsL.f());
                                    int iK = Callback.k(httpURLConnection);
                                    if (iK != 200) {
                                        GpYFMu.d(CNATAC.a("^JB"), CNATAC.a("HD|_VV\u000fT~\u0011RYA\u0016gW~\n{M_OBC\r\u0002kpqv\u0007Z]ikssmz\u0000S}wq/6") + iK, new Throwable[0]);
                                        zBooleanValue = false;
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
                                        zBooleanValue = true;
                                    }
                                    httpURLConnection.disconnect();
                                    if ((DQwsTh.y ^ 2865) != 0) {
                                        while (DQwsTh.y + 104 != 33) {
                                        }
                                        do {
                                            DQwsTh.y = (DQwsTh.y ^ 2996) >> 112;
                                        } while (DQwsTh.x > 7201);
                                        while (true) {
                                            int i6 = DQwsTh.x;
                                            int i7 = i6 + 208;
                                            if (i7 != 17) {
                                                if (i7 != 86) {
                                                    if (i7 != 104) {
                                                        if (i7 == 204) {
                                                            DQwsTh.x = ((i6 ^ 3617) >> 34) * 116;
                                                        }
                                                    }
                                                    DQwsTh.x = ((DQwsTh.x >> 59) ^ 3136) % 84;
                                                }
                                                while (true) {
                                                    DQwsTh.x = (DQwsTh.x * 7) >> 89;
                                                }
                                            } else {
                                                DQwsTh.x = ((i6 + i6) >> 4) + i6;
                                            }
                                        }
                                    }
                                } catch (JSONException e2) {
                                    e = e2;
                                    GpYFMu.d(CNATAC.a("^JB"), CNATAC.a("DvZ}vJLEaE\\S[\f") + e.toString(), new Throwable[0]);
                                    if (httpURLConnection != null) {
                                        httpURLConnection.disconnect();
                                    }
                                    zBooleanValue = false;
                                } catch (Exception e3) {
                                    e = e3;
                                    GpYFMu.d(CNATAC.a("^JB"), CNATAC.a("K]vVCFFO\u007f\u000b") + e.toString(), new Throwable[0]);
                                    e.printStackTrace();
                                    if (httpURLConnection != null) {
                                        httpURLConnection.disconnect();
                                    }
                                    zBooleanValue = false;
                                }
                            } catch (Throwable th) {
                                th = th;
                                r2 = strA2;
                                if (r2 != 0) {
                                    r2.disconnect();
                                }
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
                            if (r2 != 0) {
                                r2.disconnect();
                            }
                            throw th;
                        }
                        if (jSONObject != null) {
                            try {
                                zBooleanValue = hsd.b(jSONObject, i3).booleanValue();
                            } catch (Exception e6) {
                                GWINqE.b(e6);
                                return;
                            }
                        }
                        if (zBooleanValue) {
                            return;
                        }
                        hsd.i(CNATAC.a("I@a\u0013cS]A|B\u0015YGDXJ"));
                        if (i3 != 1 && (i2 = hsd.f138c) < 10) {
                            hsd.f138c = i2 + 1;
                            hsd.g(i3, LiveTranslationEntity.DefaultSentenceTimeOut);
                        }
                        hsd.m(0);
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
            }
        }

        public ZAYDcK(DQwsTh dQwsTh, int i2) {
            this.ZRQiWB = dQwsTh;
            this.XccjsC = i2;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            new Thread(new uXpLMf()).start();
        }
    }

    class twiiz extends TimerTask {

        /* JADX INFO: Incorrect field signature: LGXj/EvF; */
        final /* synthetic */ int XccjsC;

        public class ujSmfu implements Runnable {
            public ujSmfu() {
            }

            /* JADX INFO: Infinite loop detected, blocks: 7, insns: 0 */
            /* JADX WARN: Code duplicated, block: B:26:0x00c4 A[Catch: Exception -> 0x013c, NoSuchAlgorithmException -> 0x013f, TryCatch #6 {NoSuchAlgorithmException -> 0x013f, Exception -> 0x013c, blocks: (B:23:0x00bd, B:26:0x00c4, B:38:0x0163, B:40:0x0168, B:31:0x0142, B:33:0x014c, B:35:0x0158, B:37:0x015d, B:49:0x0182, B:51:0x019a, B:52:0x01a5, B:55:0x01d4, B:56:0x01d9), top: B:70:0x00bd }] */
            /* JADX WARN: Code duplicated, block: B:31:0x0142 A[Catch: Exception -> 0x013c, NoSuchAlgorithmException -> 0x013f, TryCatch #6 {NoSuchAlgorithmException -> 0x013f, Exception -> 0x013c, blocks: (B:23:0x00bd, B:26:0x00c4, B:38:0x0163, B:40:0x0168, B:31:0x0142, B:33:0x014c, B:35:0x0158, B:37:0x015d, B:49:0x0182, B:51:0x019a, B:52:0x01a5, B:55:0x01d4, B:56:0x01d9), top: B:70:0x00bd }] */
            /* JADX WARN: Code duplicated, block: B:33:0x014c A[Catch: Exception -> 0x013c, NoSuchAlgorithmException -> 0x013f, TryCatch #6 {NoSuchAlgorithmException -> 0x013f, Exception -> 0x013c, blocks: (B:23:0x00bd, B:26:0x00c4, B:38:0x0163, B:40:0x0168, B:31:0x0142, B:33:0x014c, B:35:0x0158, B:37:0x015d, B:49:0x0182, B:51:0x019a, B:52:0x01a5, B:55:0x01d4, B:56:0x01d9), top: B:70:0x00bd }] */
            /* JADX WARN: Code duplicated, block: B:41:0x016d A[LOOP:0: B:8:0x005f->B:41:0x016d, LOOP_END] */
            /* JADX WARN: Code duplicated, block: B:48:0x0180  */
            /* JADX WARN: Code duplicated, block: B:49:0x0182 A[Catch: Exception -> 0x013c, NoSuchAlgorithmException -> 0x013f, TryCatch #6 {NoSuchAlgorithmException -> 0x013f, Exception -> 0x013c, blocks: (B:23:0x00bd, B:26:0x00c4, B:38:0x0163, B:40:0x0168, B:31:0x0142, B:33:0x014c, B:35:0x0158, B:37:0x015d, B:49:0x0182, B:51:0x019a, B:52:0x01a5, B:55:0x01d4, B:56:0x01d9), top: B:70:0x00bd }] */
            /* JADX WARN: Code duplicated, block: B:51:0x019a A[Catch: Exception -> 0x013c, NoSuchAlgorithmException -> 0x013f, TryCatch #6 {NoSuchAlgorithmException -> 0x013f, Exception -> 0x013c, blocks: (B:23:0x00bd, B:26:0x00c4, B:38:0x0163, B:40:0x0168, B:31:0x0142, B:33:0x014c, B:35:0x0158, B:37:0x015d, B:49:0x0182, B:51:0x019a, B:52:0x01a5, B:55:0x01d4, B:56:0x01d9), top: B:70:0x00bd }] */
            /* JADX WARN: Code duplicated, block: B:52:0x01a5 A[Catch: Exception -> 0x013c, NoSuchAlgorithmException -> 0x013f, TryCatch #6 {NoSuchAlgorithmException -> 0x013f, Exception -> 0x013c, blocks: (B:23:0x00bd, B:26:0x00c4, B:38:0x0163, B:40:0x0168, B:31:0x0142, B:33:0x014c, B:35:0x0158, B:37:0x015d, B:49:0x0182, B:51:0x019a, B:52:0x01a5, B:55:0x01d4, B:56:0x01d9), top: B:70:0x00bd }] */
            /* JADX WARN: Code duplicated, block: B:75:0x0168 A[SYNTHETIC] */
            /* JADX WARN: Instruction removed from duplicated block: B:26:0x00c4, please report this as an issue */
            @Override // java.lang.Runnable
            public void run() {
                String str;
                int i2;
                long j2;
                twiiz twiizVar = twiiz.this;
                DQwsTh dQwsTh = DQwsTh.this;
                int i3 = twiizVar.XccjsC;
                String str2 = "mJxCFFJpc^ZZzP`W[A\u0011\f";
                if (dQwsTh.f137b == 2) {
                    dQwsTh.d();
                    return;
                }
                int i4 = 0;
                GpYFMu.e(CNATAC.a("^JB"), CNATAC.a("mJxCFFJpc^ZZzP`W[A\u0007\fnFN\\MGMC@\u0006dGMto&=") + dQwsTh.o, new Throwable[0]);
                CNATAC.a("]JyEZ\\H\u0000\\r\u000f\u001c");
                try {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    long j3 = dQwsTh.g + ((long) dQwsTh.o);
                    Random random = new Random();
                    DecimalFormat decimalFormat = (DecimalFormat) NumberFormat.getNumberInstance(DQwsTh.z);
                    decimalFormat.applyPattern(CNATAC.a("-\u000b6\u0010\u0010\u0011\f\u00032\u0012\u0016\u001f\u0016\u0015"));
                    boolean z = false;
                    long jUptimeMillis2 = 0;
                    while (!z) {
                        String str3 = decimalFormat.format(random.nextDouble());
                        String str4 = dQwsTh.n + j3 + str3;
                        MessageDigest messageDigest = MessageDigest.getInstance(CNATAC.a("]mT\u001e\u0001\u0007\u0019"));
                        messageDigest.update(str4.getBytes());
                        byte[] bArrDigest = messageDigest.digest();
                        int i5 = i4;
                        long j4 = 0;
                        while (i5 < bArrDigest.length) {
                            try {
                                str = str2;
                                int i6 = i5;
                                j4 = (j4 << 8) | ((long) (bArrDigest[i5] & 255));
                                try {
                                    j4 %= j3;
                                    i5 = i6 + 1;
                                    str2 = str;
                                } catch (Exception e2) {
                                    e = e2;
                                    try {
                                        GWINqE.b(e);
                                        if (j4 != 0) {
                                            long jUptimeMillis3 = SystemClock.uptimeMillis();
                                            jUptimeMillis2 = jUptimeMillis3 - jUptimeMillis;
                                            long j5 = jUptimeMillis3 - dQwsTh.q;
                                            GpYFMu.e(CNATAC.a("^JB"), CNATAC.a("MMt__WAGt\u0011\u001d") + str4 + CNATAC.a("'\u0005") + dQwsTh.o + CNATAC.a(".Vz_EWK\u0000pE\u0015UASEY]CDB\u0017\u000e") + dQwsTh.p + CNATAC.a(".L{\u0013") + j5 + CNATAC.a("cV"), new Throwable[0]);
                                            dQwsTh.r.add(str3);
                                            dQwsTh.t.add(Integer.valueOf(dQwsTh.p));
                                            dQwsTh.s.add(Long.valueOf(j5));
                                            z = true;
                                        } else {
                                            i2 = dQwsTh.p + 1;
                                            dQwsTh.p = i2;
                                            if (i2 % 1000 == 0) {
                                                jUptimeMillis2 = SystemClock.uptimeMillis() - jUptimeMillis;
                                                j2 = dQwsTh.f143j;
                                                if (jUptimeMillis2 > j2) {
                                                    dQwsTh.a(i3, j2 + 1000);
                                                    if (z) {
                                                        dQwsTh.o++;
                                                        dQwsTh.q = SystemClock.uptimeMillis();
                                                        dQwsTh.l(dQwsTh.o);
                                                        if (dQwsTh.o < 10) {
                                                            dQwsTh.p = 0;
                                                            dQwsTh.a(i3, dQwsTh.f141h + jUptimeMillis2);
                                                            return;
                                                        }
                                                        dQwsTh.p = 0;
                                                        dQwsTh.c();
                                                        dQwsTh.r = new ArrayList();
                                                        dQwsTh.s = new ArrayList();
                                                        dQwsTh.t = new ArrayList();
                                                        dQwsTh.m(0);
                                                        if (SystemClock.uptimeMillis() - dQwsTh.m > dQwsTh.f140f * 1000) {
                                                            dQwsTh.g(i3, 100L);
                                                        }
                                                        dQwsTh.k();
                                                    }
                                                    return;
                                                }
                                            }
                                        }
                                        if (dQwsTh.f137b == 2) {
                                            dQwsTh.d();
                                            return;
                                        } else {
                                            str2 = str;
                                            i4 = 0;
                                        }
                                    } catch (NoSuchAlgorithmException e3) {
                                        e = e3;
                                        GpYFMu.d(CNATAC.a("^JB"), CNATAC.a(str) + e.toString(), new Throwable[0]);
                                        if ((DQwsTh.x ^ 7202) == 0) {
                                            return;
                                        }
                                        while (true) {
                                            int i7 = DQwsTh.x;
                                            if (i7 + 143 == 5) {
                                                DQwsTh.x = (i7 >> 13) * 16;
                                            }
                                        }
                                    } catch (Exception e4) {
                                        e = e4;
                                        GpYFMu.d(CNATAC.a("^JB"), CNATAC.a(str) + e.toString(), new Throwable[0]);
                                        return;
                                    }
                                }
                            } catch (Exception e5) {
                                e = e5;
                                str = str2;
                            }
                        }
                        str = str2;
                        if (j4 != 0) {
                            i2 = dQwsTh.p + 1;
                            dQwsTh.p = i2;
                            if (i2 % 1000 == 0) {
                                jUptimeMillis2 = SystemClock.uptimeMillis() - jUptimeMillis;
                                j2 = dQwsTh.f143j;
                                if (jUptimeMillis2 > j2 && dQwsTh.f137b != 2) {
                                    dQwsTh.a(i3, j2 + 1000);
                                    break;
                                }
                            }
                        } else {
                            long jUptimeMillis4 = SystemClock.uptimeMillis();
                            jUptimeMillis2 = jUptimeMillis4 - jUptimeMillis;
                            long j6 = jUptimeMillis4 - dQwsTh.q;
                            GpYFMu.e(CNATAC.a("^JB"), CNATAC.a("MMt__WAGt\u0011\u001d") + str4 + CNATAC.a("'\u0005") + dQwsTh.o + CNATAC.a(".Vz_EWK\u0000pE\u0015UASEY]CDB\u0017\u000e") + dQwsTh.p + CNATAC.a(".L{\u0013") + j6 + CNATAC.a("cV"), new Throwable[0]);
                            dQwsTh.r.add(str3);
                            dQwsTh.t.add(Integer.valueOf(dQwsTh.p));
                            dQwsTh.s.add(Long.valueOf(j6));
                            z = true;
                        }
                        if (dQwsTh.f137b == 2) {
                            dQwsTh.d();
                            return;
                        } else {
                            str2 = str;
                            i4 = 0;
                        }
                    }
                    if (z) {
                        return;
                    }
                    dQwsTh.o++;
                    dQwsTh.q = SystemClock.uptimeMillis();
                    dQwsTh.l(dQwsTh.o);
                    if (dQwsTh.o < 10) {
                        dQwsTh.p = 0;
                        dQwsTh.a(i3, dQwsTh.f141h + jUptimeMillis2);
                        return;
                    }
                    dQwsTh.p = 0;
                    dQwsTh.c();
                    dQwsTh.r = new ArrayList();
                    dQwsTh.s = new ArrayList();
                    dQwsTh.t = new ArrayList();
                    dQwsTh.m(0);
                    if (SystemClock.uptimeMillis() - dQwsTh.m > dQwsTh.f140f * 1000 && i3 == 0) {
                        dQwsTh.g(i3, 100L);
                    }
                    dQwsTh.k();
                } catch (NoSuchAlgorithmException e6) {
                    e = e6;
                    str = str2;
                } catch (Exception e7) {
                    e = e7;
                    str = str2;
                }
            }
        }

        public twiiz(int i2) {
            this.XccjsC = i2;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            new Thread(new ujSmfu()).start();
        }
    }

    public static DQwsTh f() {
        return A;
    }

    public final void a(int i2, long j2) {
        if (j2 > 0) {
            try {
                new Timer().schedule(new twiiz(i2), j2);
            } catch (IllegalArgumentException e2) {
                GpYFMu.d(CNATAC.a("^JB"), CNATAC.a("K]vVCFFO\u007f\u000b") + e2, new Throwable[0]);
            }
        }
    }

    public final Boolean b(JSONObject jSONObject, int i2) {
        try {
            this.d = jSONObject.getInt(CNATAC.a("cJqV"));
            this.f139e = jSONObject.getString(CNATAC.a("`J{PV"));
            this.f140f = jSONObject.getLong(CNATAC.a("zQy"));
            this.g = jSONObject.getLong(CNATAC.a("jLsUZQZLeH"));
            this.f141h = jSONObject.getLong(CNATAC.a("zLxV\\G["));
            if (i2 == 0) {
                this.f142i = jSONObject.getLong("n");
            }
            this.f143j = jSONObject.getLong(CNATAC.a("}zaZ^W@Ue"));
            this.f144k = jSONObject.getString(CNATAC.a("mMpPXAZM"));
            GpYFMu.c(CNATAC.a("^JB"), CNATAC.a("^JB\u0013cS]A|B\u000f\u001cXYS]\u0014") + this.d + CNATAC.a("\"\u0005{\\]QJ\u001d") + this.f139e + CNATAC.a("\"\u0005aG_\u000f") + this.f140f + CNATAC.a("\"\u0005qZUTFCd]AE\b") + this.g + CNATAC.a("\"\u0005aZ^W@Ue\f") + this.f141h + CNATAC.a("\"\u0005{\u000e") + this.f142i + CNATAC.a("\"\u0005flG[BE~DA\u0001") + this.f143j + CNATAC.a("\"\u0005v[VQDSd\\\b") + this.f144k, new Throwable[0]);
            if (this.d != 0) {
                CNATAC.a("KKtQ_WK");
                this.f138c = 0;
                this.m = SystemClock.uptimeMillis();
                this.n = this.l + this.m + this.f139e;
                this.u = this.l + ";" + this.m + ";" + this.f139e + ";" + this.g + ";" + this.f144k;
                this.q = SystemClock.uptimeMillis();
                this.o = 0;
                if (this.f137b == 2) {
                    GpYFMu.g(CNATAC.a("^JB"), CNATAC.a("MD{PV^\u000fgtE\u0015lTDVUZ"), new Throwable[0]);
                    j();
                    return Boolean.TRUE;
                }
                a(i2, 100L);
            } else {
                m(0);
                CNATAC.a("JLfRQ^JD");
            }
            if (i2 == 0) {
                g(i2, this.f140f * 1000);
            }
            return Boolean.TRUE;
        } catch (Exception e2) {
            GpYFMu.d(CNATAC.a("^JB"), CNATAC.a("K]vVCFFO\u007f\u000b") + e2, new Throwable[0]);
            e2.printStackTrace();
            return Boolean.FALSE;
        }
    }

    public final void c() {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(this.u);
            sb.append(";");
            Iterator it = this.r.iterator();
            while (it.hasNext()) {
                sb.append((String) it.next());
                sb.append(",");
            }
            sb.deleteCharAt(sb.length() - 1);
            sb.append(";");
            Iterator it2 = this.s.iterator();
            while (it2.hasNext()) {
                sb.append((Long) it2.next());
                sb.append(",");
            }
            sb.deleteCharAt(sb.length() - 1);
            sb.append(";");
            Iterator it3 = this.t.iterator();
            while (it3.hasNext()) {
                sb.append((Integer) it3.next());
                sb.append(",");
            }
            sb.deleteCharAt(sb.length() - 1);
            synchronized (this) {
                this.v = sb.toString();
                this.w = 0;
            }
            GpYFMu.e(CNATAC.a("^JB"), CNATAC.a("^JB\u0013wS[A+\u0011") + this.v, new Throwable[0]);
            long jUptimeMillis = SystemClock.uptimeMillis() - this.m;
            GpYFMu.e(CNATAC.a("^JB"), CNATAC.a("ZLxV\u0013FNKt_\u0015HZ\u0016DWE\\N\f}Ax\u0010BJBHICIO] ;") + jUptimeMillis + CNATAC.a("cV"), new Throwable[0]);
            CNATAC.a("]JyEVV\u000fI\u007f\u0011");
            CNATAC.a("cV");
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }

    public final void d() {
        this.o = 0;
        this.p = 0;
        this.r = new ArrayList();
        this.s = new ArrayList();
        this.t = new ArrayList();
        j();
    }

    public String e() {
        return this.f136a + CNATAC.a("!zw^\u001cUJTNATNT[D\u0007]S[I\u0010]K[\fRLS");
    }

    public final void g(int i2, long j2) {
        if (j2 > 0) {
            try {
                new Timer().schedule(new ZAYDcK(this, i2), j2);
            } catch (IllegalArgumentException e2) {
                GpYFMu.d(CNATAC.a("^JB"), CNATAC.a("K]vVCFFO\u007f\u000b") + e2, new Throwable[0]);
            }
        }
    }

    public final synchronized String h() {
        String string;
        try {
            if (this.d == 0) {
                return "";
            }
            if (this.v.length() != 0) {
                int i2 = this.w + 1;
                this.w = i2;
                if (i2 >= this.f142i * 0.9d) {
                    g(0, 100L);
                }
                return this.v;
            }
            if (this.u.length() != 0) {
                return this.u;
            }
            RXtEM rXtEM = RXtEM.f246j;
            rXtEM.getClass();
            String str = "";
            try {
                SharedPreferences sharedPreferencesC = rXtEM.c();
                if (sharedPreferencesC != null && (string = sharedPreferencesC.getString(CNATAC.a("~JblAW\\P~_FY"), null)) != null) {
                    str = string;
                }
            } catch (Exception e2) {
                GpYFMu.d(CNATAC.a("]@{@\\@kAePv]V^R"), CNATAC.a("i@ac\\e}EbAZRFS\u0017]QIN\\YG@^"), e2);
            }
            return str;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void i(String str) {
        GpYFMu.d(CNATAC.a("^JB"), CNATAC.a("KWg\\A\b\u000f").concat(str), new Throwable[0]);
    }

    public void j() {
    }

    public void k() {
        RXtEM rXtEM = RXtEM.f246j;
        String str = this.v;
        synchronized (rXtEM) {
            SharedPreferences sharedPreferencesC = rXtEM.c();
            if (sharedPreferencesC == null) {
                return;
            }
            try {
                sharedPreferencesC.edit().putString(CNATAC.a("~JblAW\\P~_FY"), str).apply();
            } catch (Exception e2) {
                GpYFMu.d(CNATAC.a("]@{@\\@kAePv]V^R"), CNATAC.a("}DcVc]xrtBES[ER\u0018LRHI]ZF_O"), e2);
            }
        }
    }

    public void l(int i2) {
    }

    public final void m(int i2) {
        synchronized (this) {
            this.f137b = i2;
        }
    }
}
