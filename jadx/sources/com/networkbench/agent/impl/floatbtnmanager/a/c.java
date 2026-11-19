package com.networkbench.agent.impl.floatbtnmanager.a;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AlertDialog f37066a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f37067b;

    public c(Context context) {
        this.f37067b = context;
    }

    private void a(Activity activity, final Intent intent) {
        AlertDialog alertDialog = this.f37066a;
        if (alertDialog == null || !alertDialog.isShowing()) {
            AlertDialog alertDialogCreate = new AlertDialog.Builder(activity).setTitle("Tingyun SDK提示").setMessage("使用点选功能，您需要开启当前应用的悬浮窗权限").setPositiveButton(intent == null ? "自行设置" : "去设置", new DialogInterface.OnClickListener() { // from class: com.networkbench.agent.impl.floatbtnmanager.a.c.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i2) {
                    if (intent != null) {
                        c.this.f37067b.startActivity(intent);
                    }
                    if (c.this.f37066a != null) {
                        c.this.f37066a.dismiss();
                    }
                    c.this.f37066a = null;
                    SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i2);
                }
            }).setCancelable(false).create();
            this.f37066a = alertDialogCreate;
            alertDialogCreate.show();
        }
    }

    public boolean a(Activity activity) {
        i iVarA = b.a(activity);
        Intent intentB = iVarA.b();
        if (iVarA.a()) {
            return true;
        }
        try {
            a(activity, intentB);
            return false;
        } catch (Exception unused) {
            this.f37066a = null;
            return false;
        }
    }
}
