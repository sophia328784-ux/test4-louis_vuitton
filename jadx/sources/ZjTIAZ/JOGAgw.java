package ZjTIAZ;

import android.app.Application;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.cyberfend.cyfsecurity.CYFMonitor;
import java.net.URL;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class JOGAgw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JOGAgw f204a = new JOGAgw();

    class CNBvWN implements Runnable {

        /* JADX INFO: Incorrect field signature: Ldouble; */
        final /* synthetic */ String bQXLL;
        final /* synthetic */ InterfaceC0003JOGAgw ebJiUe;

        public CNBvWN(String str, InterfaceC0003JOGAgw interfaceC0003JOGAgw) {
            this.bQXLL = str;
            this.ebJiUe = interfaceC0003JOGAgw;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                String str = this.bQXLL;
                InterfaceC0003JOGAgw interfaceC0003JOGAgw = this.ebJiUe;
                if (str != null) {
                    interfaceC0003JOGAgw.a();
                } else {
                    interfaceC0003JOGAgw.b();
                }
            } catch (Exception e2) {
                GWINqE.b(e2);
            }
        }
    }

    /* JADX INFO: renamed from: ZjTIAZ.JOGAgw$JOGAgw, reason: collision with other inner class name */
    public interface InterfaceC0003JOGAgw {
        void a();

        void b();

        void c(JSONObject jSONObject);
    }

    public static String a(Application application, String str) {
        if (str == null) {
            return "";
        }
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        try {
            builderBuildUpon.appendPath("_bm").appendPath("get_info").appendQueryParameter("deviceId", new ZhhBOJ(application, null).androidId());
            if (CYFMonitor.f25350h.getAndSet(false)) {
                builderBuildUpon.appendQueryParameter("mode", "1");
            }
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
        return builderBuildUpon.toString();
    }

    public static String e(Application application, String str, int i2) {
        String str2;
        if (str == null) {
            return "";
        }
        Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
        try {
            ZDnQwv zDnQwv = new ZDnQwv(application, null);
            Uri.Builder builderAppendPath = builderBuildUpon.appendPath("_bm").appendPath("get_params");
            if (i2 == 1) {
                str2 = "sdk-cca";
            } else if (i2 == 2) {
                str2 = "sdk-dci";
            } else if (i2 != 3) {
                str2 = i2 != 4 ? "sdk-pow" : "sdk-cca,sdk-dci";
            } else {
                str2 = "sdk-pow,sdk-dci";
            }
            builderAppendPath.encodedQuery("type=".concat(str2)).appendQueryParameter("starttime", zDnQwv.startTime()).appendQueryParameter("systemVersion", zDnQwv.systemVersion()).appendQueryParameter("model", zDnQwv.model()).appendQueryParameter("deviceHardwareType", zDnQwv.hardWareType()).appendQueryParameter("appIdentifier", zDnQwv.appIdentifier()).appendQueryParameter("deviceId", zDnQwv.androidId());
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
        return builderBuildUpon.toString();
    }

    public final void b(Application application, String str, InterfaceC0003JOGAgw interfaceC0003JOGAgw) {
        try {
            if (!XBnaCg.a()) {
                d(null, interfaceC0003JOGAgw);
            } else {
                new XKbmNt(interfaceC0003JOGAgw).b(new URL(a(application, str)));
            }
        } catch (Exception unused) {
            d("Invalid Request", interfaceC0003JOGAgw);
        }
    }

    public final void c(Application application, String str, int i2, InterfaceC0003JOGAgw interfaceC0003JOGAgw) {
        try {
            if (!XBnaCg.a()) {
                d(null, interfaceC0003JOGAgw);
            } else {
                new XKbmNt(interfaceC0003JOGAgw).b(new URL(e(application, str, i2)));
            }
        } catch (Exception unused) {
            d("Invalid Request", interfaceC0003JOGAgw);
        }
    }

    public final void d(String str, InterfaceC0003JOGAgw interfaceC0003JOGAgw) {
        try {
            new Handler(Looper.getMainLooper()).post(new CNBvWN(str, interfaceC0003JOGAgw));
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }
}
