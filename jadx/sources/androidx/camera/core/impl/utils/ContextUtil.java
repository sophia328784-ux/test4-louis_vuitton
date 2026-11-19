package androidx.camera.core.impl.utils;

import android.content.Context;
import android.os.Build;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class ContextUtil {

    public static class Api30Impl {
        public static Context a(Context context, String str) {
            return context.createAttributionContext(str);
        }

        public static String b(Context context) {
            return context.getAttributionTag();
        }
    }

    public static class Api34Impl {
        public static Context a(int i2, Context context) {
            return context.createDeviceContext(i2);
        }

        public static int b(Context context) {
            return context.getDeviceId();
        }
    }

    public static Context a(Context context) {
        int iB;
        Context applicationContext = context.getApplicationContext();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 34 && (iB = Api34Impl.b(context)) != Api34Impl.b(applicationContext)) {
            applicationContext = Api34Impl.a(iB, applicationContext);
        }
        if (i2 >= 30) {
            String strB = Api30Impl.b(context);
            if (!Objects.equals(strB, Api30Impl.b(applicationContext))) {
                return Api30Impl.a(applicationContext, strB);
            }
        }
        return applicationContext;
    }
}
