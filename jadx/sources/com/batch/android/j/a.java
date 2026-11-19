package com.batch.android.j;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import com.batch.android.Batch;
import com.batch.android.e.t;
import com.batch.android.n.e0;
import com.batch.android.n.z;
import com.batch.android.o.g;
import com.networkbench.agent.impl.util.r;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f23492b = "FindMyInstallationHelper";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f23493c = 4;
    private static final int d = 20000;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f23494e = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<Long> f23495a = new ArrayList();

    private boolean b() {
        ArrayList arrayList = new ArrayList(this.f23495a);
        Collections.reverse(arrayList);
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            if (new Date().getTime() - ((Long) obj).longValue() > r.x) {
                return false;
            }
        }
        return true;
    }

    public void a() {
        if (f23494e) {
            this.f23495a.add(Long.valueOf(new Date().getTime()));
            if (this.f23495a.size() >= 4) {
                boolean zB = b();
                List<Long> list = this.f23495a;
                if (!zB) {
                    list.remove(0);
                    return;
                }
                list.clear();
                a(z.a().c());
                e0.a().a(g.s);
            }
        }
    }

    private void a(Context context) {
        if (context == null) {
            t.c(f23492b, "Context is null");
            return;
        }
        String installationID = Batch.User.getInstallationID();
        if (installationID == null) {
            t.c(f23492b, "Could not get user installation id");
            return;
        }
        ClipboardManager clipboardManager = (ClipboardManager) context.getSystemService("clipboard");
        if (clipboardManager == null) {
            t.c(f23492b, "Could not get clipboard service");
        } else {
            clipboardManager.setPrimaryClip(ClipData.newPlainText("Batch Installation ID", "Batch Installation ID: ".concat(installationID)));
        }
    }
}
