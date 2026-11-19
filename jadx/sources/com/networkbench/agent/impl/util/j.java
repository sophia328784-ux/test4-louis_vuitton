package com.networkbench.agent.impl.util;

import android.text.TextUtils;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f38379a = "tracestate";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f38380b = "tysid=";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static j f38381c;
    private boolean d = true;

    private j() {
    }

    private String c() {
        return new UUID(ak.a().nextLong(), ak.a().nextLong()).toString().replace("-", "");
    }

    private String d() {
        String sessionId = NBSBitmapBeansControl.getInstance().getSessionId();
        StringBuilder sb = new StringBuilder(f38380b);
        if (TextUtils.isEmpty(sessionId)) {
            return "";
        }
        sb.append(sessionId);
        return sb.toString();
    }

    public String a(String str) {
        if (str.contains(",tysid=")) {
            String[] strArrSplit = str.split(",tysid=");
            if (strArrSplit != null && strArrSplit.length > 0) {
                return strArrSplit[0];
            }
        } else if (str.startsWith(f38380b)) {
            return "";
        }
        return str;
    }

    public boolean b(String str) {
        if (ab.c(str)) {
            return false;
        }
        Map<String, String> mapB = a().b();
        return mapB.size() > 0 && mapB.containsKey(str);
    }

    public Map<String, String> b() {
        HashMap map = new HashMap();
        if (this.d) {
            String strD = d();
            if (!ab.c(strD)) {
                map.put(f38379a, strD);
            }
        }
        return map;
    }

    public static j a() {
        if (f38381c == null) {
            synchronized (j.class) {
                try {
                    if (f38381c == null) {
                        f38381c = new j();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f38381c;
    }

    public void a(boolean z) {
        this.d = z;
    }
}
