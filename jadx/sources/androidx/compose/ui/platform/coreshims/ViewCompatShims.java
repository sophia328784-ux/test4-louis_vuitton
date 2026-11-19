package androidx.compose.ui.platform.coreshims;

import android.os.Build;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public abstract class ViewCompatShims {

    public static class Api30Impl {
        public static void a(View view) {
            view.setImportantForContentCapture(1);
        }
    }

    public static void a(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.a(view);
        }
    }
}
