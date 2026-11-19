package com.networkbench.agent.impl.floatbtnmanager.a;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* JADX INFO: loaded from: classes2.dex */
public class f extends i {
    public f(Activity activity) {
        super(activity);
    }

    private static boolean a(Intent intent, Context context) {
        return intent != null && context.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.a.i
    public Intent b() throws Throwable {
        int iE = h.e();
        com.networkbench.agent.impl.c.e eVar = i.f37071b;
        eVar.a("miui versionCode:" + iE);
        if (iE == 5) {
            String packageName = this.f37072a.getPackageName();
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", packageName, null));
            intent.setFlags(268435456);
            return intent;
        }
        if (iE == 6 || iE == 7) {
            Intent intent2 = new Intent("miui.intent.action.APP_PERM_EDITOR");
            intent2.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.AppPermissionsEditorActivity");
            intent2.putExtra("extra_pkgname", this.f37072a.getPackageName());
            intent2.setFlags(268435456);
            return intent2;
        }
        if (iE != 8) {
            eVar.a("this is a special MIUI rom version, its version code " + iE);
            return null;
        }
        Intent intent3 = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent3.setClassName("com.miui.securitycenter", "com.miui.permcenter.permissions.PermissionsEditorActivity");
        intent3.putExtra("extra_pkgname", this.f37072a.getPackageName());
        intent3.setFlags(268435456);
        if (a(intent3, this.f37072a)) {
            this.f37072a.startActivity(intent3);
            return intent3;
        }
        Intent intent4 = new Intent("miui.intent.action.APP_PERM_EDITOR");
        intent4.setPackage("com.miui.securitycenter");
        intent4.putExtra("extra_pkgname", this.f37072a.getPackageName());
        intent4.setFlags(268435456);
        return intent4;
    }

    @Override // com.networkbench.agent.impl.floatbtnmanager.a.i
    public boolean a() {
        return a(24);
    }
}
