package ZjTIAZ;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.util.Pair;
import com.linkplay.medialib.ContentTree;
import java.util.ArrayList;
import wcQZwr.GpYFMu;

/* JADX INFO: loaded from: classes2.dex */
public class WpDaqA implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f294c = CNATAC.a("OFaZE[[Y1ATIFSS\u0002\t");
    public static String d = CNATAC.a("LDvXT@@U\u007fUpJPXCuHDJKH\\");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static String f295e = CNATAC.a("OFaZE[[Y1CPO@[R\\\u0013\n");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f296b = new ArrayList();

    public final String a() {
        ArrayList<Pair> arrayList = this.f296b;
        StringBuilder sb = new StringBuilder();
        try {
            try {
                for (Pair pair : arrayList) {
                    sb.append((String) pair.first);
                    sb.append(",");
                    sb.append(pair.second);
                    sb.append(";");
                }
            } catch (Exception e2) {
                GWINqE.b(e2);
            } finally {
                arrayList.clear();
            }
        } catch (Exception e3) {
            GWINqE.b(e3);
        }
        return sb.toString();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        ArrayList arrayList = this.f296b;
        try {
            if (arrayList.size() < 10) {
                arrayList.add(new Pair(ContentTree.AUDIO_ID, Long.valueOf(System.currentTimeMillis())));
            }
            GpYFMu.e(d, f294c + activity.getLocalClassName(), new Throwable[0]);
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        ArrayList arrayList = this.f296b;
        try {
            if (arrayList.size() < 10) {
                arrayList.add(new Pair(ContentTree.IMAGE_ID, Long.valueOf(System.currentTimeMillis())));
            }
            GpYFMu.e(d, f295e + activity.getLocalClassName(), new Throwable[0]);
        } catch (Exception e2) {
            GWINqE.b(e2);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
