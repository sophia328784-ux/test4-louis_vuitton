package androidx.work.impl.utils;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.Logger;

/* JADX INFO: loaded from: classes.dex */
public abstract class PackageManagerHelper {
    static {
        Logger.b("PackageManagerHelper");
    }

    public static void a(Context context, Class cls, boolean z) {
        try {
            int componentEnabledSetting = context.getPackageManager().getComponentEnabledSetting(new ComponentName(context, cls.getName()));
            boolean z2 = false;
            if (componentEnabledSetting != 0 && componentEnabledSetting == 1) {
                z2 = true;
            }
            if (z != z2) {
                context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z ? 1 : 2, 1);
                Logger.a().getClass();
            } else {
                Logger loggerA = Logger.a();
                "Skipping component enablement for ".concat(cls.getName());
                loggerA.getClass();
            }
        } catch (Exception unused) {
            Logger.a().getClass();
        }
    }
}
