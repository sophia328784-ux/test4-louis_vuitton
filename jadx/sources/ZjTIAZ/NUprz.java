package ZjTIAZ;

import android.R;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import com.cyberfend.cyfsecurity.CYFManager;
import com.cyberfend.cyfsecurity.CYFMonitor;
import defpackage.cj;
import java.util.ArrayList;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes2.dex */
public class NUprz implements Application.ActivityLifecycleCallbacks {
    public static String d = CNATAC.a("OFaZE[[Y1cPO@[R\\\u0013");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f208e = CNATAC.a("OFaZE[[Y1aTIFSS\u0002\t");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static String f209f = CNATAC.a("BLsVPKLLtrTPYTV[BY");
    public static String g = CNATAC.a("OFaZE[[Y1rGYTBR\\\u0013\n");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static String f210h = CNATAC.a("OFaZE[[Y1uPOADXALN\u0011\f");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f211b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f212c = 0;

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        if (activity != null) {
            GpYFMu.e(f209f, g + activity.getLocalClassName(), new Throwable[0]);
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00be A[Catch: Exception -> 0x00d4, TryCatch #3 {Exception -> 0x00d4, blocks: (B:4:0x0021, B:6:0x002b, B:15:0x0048, B:33:0x00ab, B:34:0x00b6, B:36:0x00be, B:38:0x00ca, B:32:0x0099, B:14:0x0045, B:16:0x0051, B:17:0x0056, B:19:0x005c, B:21:0x0066, B:27:0x0081, B:22:0x006d, B:24:0x0077, B:7:0x0032, B:9:0x0036, B:11:0x003e), top: B:48:0x0021, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00ca A[Catch: Exception -> 0x00d4, TRY_LEAVE, TryCatch #3 {Exception -> 0x00d4, blocks: (B:4:0x0021, B:6:0x002b, B:15:0x0048, B:33:0x00ab, B:34:0x00b6, B:36:0x00be, B:38:0x00ca, B:32:0x0099, B:14:0x0045, B:16:0x0051, B:17:0x0056, B:19:0x005c, B:21:0x0066, B:27:0x0081, B:22:0x006d, B:24:0x0077, B:7:0x0032, B:9:0x0036, B:11:0x003e), top: B:48:0x0021, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:55:0x00d4 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:57:0x00d1 A[SYNTHETIC] */
    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        int iHashCode;
        ArrayList arrayList;
        if (activity == null) {
            return;
        }
        int i2 = 0;
        GpYFMu.e(f209f, f210h + activity.getLocalClassName(), new Throwable[0]);
        CYFManager cYFManager = CYFMonitor.f25346b;
        try {
            if (!CYFManager.p(activity.getWindow())) {
                return;
            }
            Window window = activity.getWindow();
            cYFManager.getClass();
            try {
                try {
                    if (cYFManager.f25340f != null) {
                        Window.Callback callback = window.getCallback();
                        if (callback instanceof DbkYmF) {
                            ((DbkYmF) callback).deleteObservers();
                        }
                    }
                    while (true) {
                        arrayList = CYFManager.x;
                        if (i2 < arrayList.size()) {
                            return;
                        }
                        if (iHashCode == ((Integer) arrayList.get(i2)).intValue()) {
                            arrayList.remove(Integer.valueOf(iHashCode));
                        }
                        i2++;
                    }
                } catch (Exception e2) {
                    GWINqE.b(e2);
                }
                ArrayList arrayListA = QveSIH.a((ViewGroup) activity.findViewById(R.id.content));
                for (int i3 = 0; i3 < arrayListA.size(); i3++) {
                    View view = (View) arrayListA.get(i3);
                    if (view instanceof EditText) {
                        CbGKec cbGKec = cYFManager.f25337b;
                        EditText editText = (EditText) view;
                        cbGKec.getClass();
                        try {
                            CHrESI cHrESI = (CHrESI) cbGKec.g.remove(editText);
                            if (cHrESI != null) {
                                editText.removeTextChangedListener(cHrESI);
                                cHrESI.deleteObserver(cbGKec.f118a);
                            }
                        } catch (Exception e3) {
                            GpYFMu.g(CbGKec.f116j, cj.h(e3, CbGKec.o, new StringBuilder()), new Throwable[0]);
                        }
                    }
                }
            } catch (Exception e4) {
                GpYFMu.d(CNATAC.a("M|S~R\\NGtC"), e4.getMessage(), new Throwable[0]);
                GWINqE.b(e4);
                cYFManager.q(activity);
                iHashCode = activity.getWindow().hashCode();
                while (true) {
                    arrayList = CYFManager.x;
                    if (i2 < arrayList.size()) {
                        return;
                    }
                    if (iHashCode == ((Integer) arrayList.get(i2)).intValue()) {
                        arrayList.remove(Integer.valueOf(iHashCode));
                    }
                    i2++;
                }
            }
            cYFManager.q(activity);
            iHashCode = activity.getWindow().hashCode();
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        GpYFMu.e(f209f, f208e + activity.getLocalClassName(), new Throwable[0]);
        try {
            int iMax = Math.max(0, this.f211b - 1);
            this.f211b = iMax;
            if (iMax == 0) {
                int i2 = CYFMonitor.f25345a;
                try {
                    GpYFMu.e(CNATAC.a("M|S~\\\\FT~C"), CNATAC.a("]QzC\u0013Q@L}TVH\\XP\u0018ZOE_B\\\u000fT@VB"), new Throwable[0]);
                    CYFManager cYFManager = CYFMonitor.f25346b;
                    cYFManager.A();
                    cYFManager.B();
                } catch (Exception unused) {
                }
                CYFMonitor.d = false;
            }
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        try {
            GpYFMu.e(f209f, d + activity.getLocalClassName(), new Throwable[0]);
            if (this.f211b == 0) {
                CYFMonitor.c(activity);
                CYFMonitor.d = true;
            }
            this.f211b++;
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        CYFManager cYFManager;
        try {
            if (this.f212c == 0) {
                Application application = activity.getApplication();
                try {
                    if (!CYFMonitor.g && (cYFManager = CYFMonitor.f25346b) != null && cYFManager.o().booleanValue()) {
                        CYFMonitor.f25349f = null;
                        CYFMonitor.b(application, false);
                    }
                } catch (Exception e2) {
                    GWINqE.b(e2);
                }
            }
            this.f212c++;
        } catch (Exception e3) {
            GWINqE.b(e3);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        try {
            this.f212c--;
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }
}
