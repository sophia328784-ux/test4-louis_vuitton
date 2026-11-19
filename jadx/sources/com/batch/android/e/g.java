package com.batch.android.e;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f23097a = "DiscoveryServiceHelper";

    public static List<String> a(Context context, Class<? extends Service> cls, String str, String str2) {
        Bundle bundleA = a(context, cls);
        if (bundleA == null) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        for (String str3 : bundleA.keySet()) {
            if (str.equals(bundleA.get(str3)) && str3.startsWith(str2)) {
                arrayList.add(str3.substring(str2.length()));
            }
        }
        return arrayList;
    }

    private static Bundle a(Context context, Class<? extends Service> cls) {
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                t.c(f23097a, "Context has no PackageManager.");
                return null;
            }
            ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, cls), 128);
            if (serviceInfo == null) {
                t.c(f23097a, cls.getSimpleName().concat(" has no service info."));
                return null;
            }
            return serviceInfo.metaData;
        } catch (PackageManager.NameNotFoundException e2) {
            t.a(f23097a, "Application info not found.", e2);
            return null;
        }
    }
}
