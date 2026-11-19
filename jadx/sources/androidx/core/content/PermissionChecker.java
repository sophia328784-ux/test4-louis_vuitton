package androidx.core.content;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Binder;
import android.os.Process;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class PermissionChecker {

    @Retention(RetentionPolicy.SOURCE)
    public @interface PermissionResult {
    }

    public static int a(Context context, String str, int i2, int i3, String str2) {
        int iNoteProxyOpNoThrow;
        if (context.checkPermission(str, i2, i3) != -1) {
            String strPermissionToOp = AppOpsManager.permissionToOp(str);
            if (strPermissionToOp != null) {
                if (str2 == null) {
                    String[] packagesForUid = context.getPackageManager().getPackagesForUid(i3);
                    if (packagesForUid != null && packagesForUid.length > 0) {
                        str2 = packagesForUid[0];
                    }
                }
                int iMyUid = Process.myUid();
                String packageName = context.getPackageName();
                if (iMyUid == i3 && Objects.equals(packageName, str2)) {
                    AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService(AppOpsManager.class);
                    iNoteProxyOpNoThrow = 1;
                    int iCheckOpNoThrow = appOpsManager == null ? 1 : appOpsManager.checkOpNoThrow(strPermissionToOp, Binder.getCallingUid(), str2);
                    if (iCheckOpNoThrow != 0) {
                        iNoteProxyOpNoThrow = iCheckOpNoThrow;
                    } else {
                        String opPackageName = context.getOpPackageName();
                        if (appOpsManager != null) {
                            iNoteProxyOpNoThrow = appOpsManager.checkOpNoThrow(strPermissionToOp, i3, opPackageName);
                        }
                    }
                } else {
                    iNoteProxyOpNoThrow = ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOpNoThrow(strPermissionToOp, str2);
                }
                if (iNoteProxyOpNoThrow != 0) {
                    return -2;
                }
            }
            return 0;
        }
        return -1;
    }

    public static int b(Context context, String str) {
        return a(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }
}
