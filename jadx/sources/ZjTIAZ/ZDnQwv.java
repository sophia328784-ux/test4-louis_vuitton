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
public class ZDnQwv {
    public static int g = 6943;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Application f321b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f322c;
    public final zDnQwv d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String[] f320a = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Integer f323e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Boolean f324f = Boolean.TRUE;

    public interface zDnQwv {
        void a();
    }

    public ZDnQwv(Application application, zDnQwv zdnqwv) {
        this.f321b = application;
        this.d = zdnqwv;
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

    public static String b(String str) {
        if (str == null) {
            return CNATAC.a("#\u0014");
        }
        if (g > 6942) {
            return str;
        }
        while (true) {
            int i2 = g;
            int i3 = i2 + 26;
            if (i3 == 21) {
                g = ((i2 >> 42) ^ 1197) % 75;
            } else if (i3 == 153) {
                break;
            }
        }
        while (true) {
            g = ((g ^ 2387) % 61) * 39;
        }
    }

    @JavascriptInterface
    public String adbStatus() {
        try {
            return String.valueOf(Settings.Global.getInt(this.f321b.getContentResolver(), "adb_enabled", 0));
        } catch (Exception e2) {
            GWINqE.b(e2);
            return CNATAC.a("#\u0014");
        }
    }

    @JavascriptInterface
    public String androidId() {
        return Settings.Secure.getString(this.f321b.getContentResolver(), "android_id");
    }

    @JavascriptInterface
    public String appIdentifier() {
        return this.f321b.getPackageName();
    }

    @JavascriptInterface
    public String buildId() {
        return b(Build.ID);
    }

    @JavascriptInterface
    public String carrierName() {
        return CNATAC.a("#\u0014");
    }

    @JavascriptInterface
    public String cpuABI() {
        String[] strArr = Build.SUPPORTED_ABIS;
        return (strArr == null || strArr.length <= 0) ? CNATAC.a("J@sRF^[\u007fPs|") : b(strArr[0]);
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
            zDnQwv zdnqwv = this.d;
            if (zdnqwv != null) {
                zdnqwv.a();
            } else {
                GpYFMu.g("ZDnQwv", CNATAC.a("MDy_QSLK1XF\u001c[C[T\tCE\fIAAU\t\u000b"), new Throwable[0]);
            }
        } catch (Exception e2) {
            GpYFMu.d("ZDnQwv", d21.h(e2, "KWg\\A\u0012FNg^^U[Q\u0017[HFGNLMD\u0010HL\u0003@JHB\u0000\u0011 ;", new StringBuilder()), new Throwable[0]);
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
        return b(Build.HOST);
    }

    @JavascriptInterface
    public String isDebugEnabled() {
        try {
            return Settings.Secure.getInt(this.f321b.getContentResolver(), CNATAC.a("oAwlV\\NB}TQ"), 0) == 1 ? CNATAC.a("zW`V") : CNATAC.a("hDy@V");
        } catch (Exception e2) {
            GpYFMu.d("ZDnQwv", d21.h(e2, "KWg\\A\u0012LHtR^U[Q\u0017\\LH^K\r][QUWP\u001e\u0005", new StringBuilder()), new Throwable[0]);
            GWINqE.b(e2);
            return CNATAC.a("j@wFT");
        }
    }

    @JavascriptInterface
    public String model() {
        return b(Build.MODEL);
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
        return String.valueOf(this.f321b.getResources().getDisplayMetrics().heightPixels);
    }

    @JavascriptInterface
    public String screenWidth() {
        return String.valueOf(this.f321b.getResources().getDisplayMetrics().widthPixels);
    }

    @JavascriptInterface
    public String sdkVersion() {
        return CNATAC.a(":\u000b'\u001d\u0003");
    }

    @JavascriptInterface
    public void setDCIDisabled(Boolean bool) {
        this.f324f = Boolean.valueOf(!bool.booleanValue());
    }

    @JavascriptInterface
    public void setOrder(String str) {
        if (str != null) {
            try {
                if (str.contains(",")) {
                    this.f320a = str.split(",");
                }
            } catch (Exception e2) {
                this.f320a = null;
                GWINqE.b(e2);
            }
        }
    }

    @JavascriptInterface
    public void setRefreshInterval(String str) {
        try {
            this.f323e = Integer.valueOf(Integer.parseInt(str));
        } catch (NumberFormatException unused) {
            this.f323e = 0;
        }
    }

    @JavascriptInterface
    public void setSignal(String str) {
        if (str != null) {
            try {
                if (str.trim().isEmpty()) {
                    GpYFMu.g("ZDnQwv", CNATAC.a("LhE\u0013@W[sxV[]Y\u0016E]JOBZHJ\u000f^TNO\u000b@KW\\A:huzp~L"), new Throwable[0]);
                    this.f322c = null;
                } else {
                    this.f322c = str;
                }
            } catch (Exception e2) {
                GpYFMu.d("ZDnQwv", d21.h(e2, "LhE\u0013@W[sxV[]Y\u0016RJ[EY\u0016\r", new StringBuilder()), new Throwable[0]);
                GWINqE.b(e2);
                done();
                return;
            }
        } else {
            GpYFMu.g("ZDnQwv", CNATAC.a("LhE\u0013@W[sxV[]Y\u0016E]JOBZHJ\u000f^TNO\u000b@KW\\A:huzp~L"), new Throwable[0]);
            this.f322c = null;
        }
        done();
    }

    @JavascriptInterface
    public String startTime() {
        return Long.toString(ZxDSl.f343a);
    }

    @JavascriptInterface
    public String systemVersion() {
        return b(Build.VERSION.RELEASE);
    }
}
