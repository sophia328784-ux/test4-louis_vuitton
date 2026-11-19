package ZjTIAZ;

import android.app.Application;
import android.os.Build;
import android.provider.Settings;
import android.webkit.JavascriptInterface;
import defpackage.d21;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes.dex */
public class ZhhBOJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Application f325a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f326b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zgXxaZ f327c;

    public interface zgXxaZ {
        void a();
    }

    public ZhhBOJ(Application application, zgXxaZ zgxxaz) {
        this.f325a = application;
        this.f327c = zgxxaz;
    }

    public static String a(String str) {
        try {
            Process processExec = Runtime.getRuntime().exec(str);
            processExec.waitFor();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = bufferedReader.readLine();
                if (line == null) {
                    return sb.toString().trim();
                }
                sb.append(line);
                sb.append('\n');
            }
        } catch (Exception e2) {
            GWINqE.b(e2);
            return null;
        }
    }

    @JavascriptInterface
    public String adbStatus() {
        try {
            return String.valueOf(Settings.Global.getInt(this.f325a.getContentResolver(), "adb_enabled", 0));
        } catch (Exception e2) {
            GWINqE.b(e2);
            return CNATAC.a("#\u0014");
        }
    }

    @JavascriptInterface
    public String androidId() {
        return Settings.Secure.getString(this.f325a.getContentResolver(), "android_id");
    }

    @JavascriptInterface
    public String appIdentifier() {
        return this.f325a.getPackageName();
    }

    @JavascriptInterface
    public String buildId() {
        String str = Build.ID;
        return str != null ? str : CNATAC.a("#\u0014");
    }

    @JavascriptInterface
    public String carrierName() {
        return CNATAC.a("#\u0014");
    }

    @JavascriptInterface
    public String cpuABI() {
        String[] strArr = Build.SUPPORTED_ABIS;
        if (strArr == null || strArr.length <= 0) {
            return CNATAC.a("J@sRF^[\u007fPs|");
        }
        String str = strArr[0];
        return str != null ? str : CNATAC.a("#\u0014");
    }

    @JavascriptInterface
    public String defaultBuildFingerPrintProperties() {
        String strA = a(CNATAC.a("i@aCA]_\u0000c^\u001b^@_[\\\u0007LBBJK]@SKMP"));
        return strA == null ? CNATAC.a("j@sRF^[\rsD\\PQ\u001bQQGMN^]\\F^U") : strA;
    }

    @JavascriptInterface
    public String deviceProperties() {
        String strA = a(CNATAC.a("i@aCA]_"));
        return strA == null ? CNATAC.a("j@sRF^[\rsD\\PQ\u001bQQGMN^]\\F^U") : strA;
    }

    @JavascriptInterface
    public void done() {
        try {
            zgXxaZ zgxxaz = this.f327c;
            if (zgxxaz != null) {
                zgxxaz.a();
            } else {
                GpYFMu.g("ZhhBOJ", CNATAC.a("MDy_QSLK1XF\u001c[C[T\tCE\fIAAU\t\u000b"), new Throwable[0]);
            }
        } catch (Exception e2) {
            GpYFMu.d("ZhhBOJ", d21.h(e2, "KWg\\A\u0012FNg^^U[Q\u0017[HFGNLMD\u0010HL\u0003@JHB\u0000\u0011 ;", new StringBuilder()), new Throwable[0]);
            GWINqE.b(e2);
        }
    }

    @JavascriptInterface
    public String getServerSignals() {
        return ZxDSl.f343a + CNATAC.a("\"\u0005") + sdkVersion() + CNATAC.a("\"\u0005") + androidId() + CNATAC.a("\"\u0005") + buildId() + CNATAC.a("\"\u0005") + systemVersion() + CNATAC.a("\"\u0005") + model() + CNATAC.a("\"\u0005") + host();
    }

    @JavascriptInterface
    public String hardWareType() {
        CNATAC.a("#\u0014");
        return DeHqqG.a(Build.HARDWARE);
    }

    @JavascriptInterface
    public String host() {
        String str = Build.HOST;
        return str != null ? str : CNATAC.a("#\u0014");
    }

    @JavascriptInterface
    public String isDebugEnabled() {
        try {
            return Settings.Secure.getInt(this.f325a.getContentResolver(), CNATAC.a("oAwlV\\NB}TQ"), 0) == 1 ? CNATAC.a("zW`V") : CNATAC.a("hDy@V");
        } catch (Exception e2) {
            GpYFMu.d("ZhhBOJ", d21.h(e2, "KWg\\A\u0012LHtR^U[Q\u0017\\LH^K\r][QUWP\u001e\u0005", new StringBuilder()), new Throwable[0]);
            GWINqE.b(e2);
            return CNATAC.a("j@wFT");
        }
    }

    @JavascriptInterface
    public String model() {
        String str = Build.MODEL;
        return str != null ? str : CNATAC.a("#\u0014");
    }

    @JavascriptInterface
    public String mountFileProperties() {
        String strA = a(CNATAC.a("mDa\u0013\u001cB]Or\u001eXS@XCK"));
        return strA == null ? CNATAC.a("j@sRF^[\rsD\\PQ\u001bQQGMN^]\\F^U") : strA;
    }

    @JavascriptInterface
    public String qemuProperties() {
        String strA = a(CNATAC.a("i@aCA]_\u0000c^\u001bWPDY]E\u0004ZI@["));
        return strA == null ? CNATAC.a("j@sRF^[\r`TXI") : strA;
    }

    @JavascriptInterface
    public String screenHeight() {
        return String.valueOf(this.f325a.getResources().getDisplayMetrics().heightPixels);
    }

    @JavascriptInterface
    public String screenWidth() {
        return String.valueOf(this.f325a.getResources().getDisplayMetrics().widthPixels);
    }

    @JavascriptInterface
    public String sdkVersion() {
        return CNATAC.a(":\u000b'\u001d\u0003");
    }

    @JavascriptInterface
    public void setCprSignal(String str) {
        if (str != null) {
            try {
                if (str.trim().isEmpty()) {
                    GpYFMu.g("ZhhBOJ", CNATAC.a("MuG\u0013@W[caCfURXVT\tXNOHGYUE\u0002MQIJ\bMUjoe=mvG^s\u007f"), new Throwable[0]);
                    this.f326b = null;
                } else {
                    this.f326b = str;
                }
            } catch (Exception e2) {
                GpYFMu.d("ZhhBOJ", d21.h(e2, "MuG\u0013@W[caCfURXVT\tOY^B\\\u0015\u0010", new StringBuilder()), new Throwable[0]);
                GWINqE.b(e2);
                done();
                return;
            }
        } else {
            GpYFMu.g("ZhhBOJ", CNATAC.a("MuG\u0013@W[caCfURXVT\tXNOHGYUE\u0002MQIJ\bMUjoe=mvG^s\u007f"), new Throwable[0]);
            this.f326b = null;
        }
        done();
    }

    @JavascriptInterface
    public void setDscDisabled(Boolean bool) {
        bool.getClass();
    }

    @JavascriptInterface
    public void setRefreshInterval(String str) {
        try {
            Integer.parseInt(str);
        } catch (NumberFormatException unused) {
        }
    }

    @JavascriptInterface
    public String startTime() {
        return Long.toString(ZxDSl.f343a);
    }

    @JavascriptInterface
    public String systemVersion() {
        String str = Build.VERSION.RELEASE;
        return str != null ? str : CNATAC.a("#\u0014");
    }
}
