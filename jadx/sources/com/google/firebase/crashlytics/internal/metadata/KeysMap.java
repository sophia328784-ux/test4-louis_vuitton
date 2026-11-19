package com.google.firebase.crashlytics.internal.metadata;

import com.google.firebase.crashlytics.internal.Logger;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
class KeysMap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f34605a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f34606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f34607c;

    public KeysMap(int i2, int i3) {
        this.f34606b = i2;
        this.f34607c = i3;
    }

    public static String a(int i2, String str) {
        if (str != null) {
            str = str.trim();
            if (str.length() > i2) {
                return str.substring(0, i2);
            }
        }
        return str;
    }

    public final synchronized boolean b(String str, String str2) {
        boolean zEquals;
        String strA = a(this.f34607c, str);
        if (this.f34605a.size() >= this.f34606b && !this.f34605a.containsKey(strA)) {
            Logger.f34483b.a(5);
            return false;
        }
        String strA2 = a(this.f34607c, str2);
        String str3 = (String) this.f34605a.get(strA);
        if (str3 == null) {
            zEquals = strA2 == null;
        } else {
            zEquals = str3.equals(strA2);
        }
        if (zEquals) {
            return false;
        }
        HashMap map = this.f34605a;
        if (str2 == null) {
            strA2 = "";
        }
        map.put(strA, strA2);
        return true;
    }

    public final synchronized void c(Map map) {
        try {
            int i2 = 0;
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                if (str == null) {
                    throw new IllegalArgumentException("Custom attribute key must not be null.");
                }
                String strA = a(this.f34607c, str);
                if (this.f34605a.size() < this.f34606b || this.f34605a.containsKey(strA)) {
                    String str2 = (String) entry.getValue();
                    this.f34605a.put(strA, str2 == null ? "" : a(this.f34607c, str2));
                } else {
                    i2++;
                }
            }
            if (i2 > 0) {
                Logger.f34483b.a(5);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
