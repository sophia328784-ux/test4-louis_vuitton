package com.networkbench.agent.impl.e;

import com.networkbench.agent.impl.PrivacyDataType;
import com.networkbench.agent.impl.util.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37005a = "BlackListManager";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile a f37006b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private List<Object> f37007c = new ArrayList();

    private a() {
    }

    private boolean b(Object obj) {
        if (!(obj instanceof Integer)) {
            return obj instanceof PrivacyDataType;
        }
        int iIntValue = ((Integer) obj).intValue();
        return iIntValue >= 0 && iIntValue <= 12;
    }

    private void c() {
        if (this.f37007c.contains(PrivacyDataType.PrivacyDataAppVersion)) {
            b.a("");
        }
    }

    public void a(List<Object> list) {
        if (list == null || list.isEmpty()) {
            Logger.debug(f37005a, "addToBlacklist : 传入的列表为空 . ");
        } else {
            synchronized (this.f37007c) {
                try {
                    this.f37007c.clear();
                    for (Object obj : list) {
                        if (obj == null || !b(obj)) {
                            Logger.debug(f37005a, "addToBlacklist : 无效的项 , 不支持添加到黑名单.");
                        } else {
                            this.f37007c.add(obj);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        c();
    }

    public int b() {
        int size;
        synchronized (this.f37007c) {
            size = this.f37007c.size();
        }
        return size;
    }

    public static a a() {
        if (f37006b == null) {
            synchronized (a.class) {
                try {
                    if (f37006b == null) {
                        f37006b = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f37006b;
    }

    public boolean a(Object obj) {
        boolean zContains;
        synchronized (this.f37007c) {
            zContains = this.f37007c.contains(obj);
        }
        return zContains;
    }
}
