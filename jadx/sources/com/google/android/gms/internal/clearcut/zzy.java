package com.google.android.gms.internal.clearcut;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.TreeMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public class zzy {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static HashMap f29795f;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static Object f29799k;
    public static boolean l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Uri f29791a = Uri.parse("content://com.google.android.gsf.gservices");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Uri f29792b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Pattern f29793c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);
    public static final Pattern d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final AtomicBoolean f29794e = new AtomicBoolean();
    public static final HashMap g = new HashMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final HashMap f29796h = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final HashMap f29797i = new HashMap();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final HashMap f29798j = new HashMap();
    public static final String[] m = new String[0];

    public static Object a(HashMap map, String str, Object obj) {
        synchronized (zzy.class) {
            try {
                if (!map.containsKey(str)) {
                    return null;
                }
                Object obj2 = map.get(str);
                if (obj2 != null) {
                    obj = obj2;
                }
                return obj;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:84:0x00ec  */
    public static String b(ContentResolver contentResolver, String str) {
        String str2;
        synchronized (zzy.class) {
            try {
                c(contentResolver);
                Object obj = f29799k;
                String str3 = null;
                if (f29795f.containsKey(str)) {
                    String str4 = (String) f29795f.get(str);
                    return str4 != null ? str4 : null;
                }
                for (String str5 : m) {
                    if (str.startsWith(str5)) {
                        if (!l || f29795f.isEmpty()) {
                            String[] strArr = m;
                            HashMap map = f29795f;
                            Cursor cursorQuery = contentResolver.query(f29792b, null, null, strArr, null);
                            TreeMap treeMap = new TreeMap();
                            if (cursorQuery != null) {
                                while (cursorQuery.moveToNext()) {
                                    try {
                                        treeMap.put(cursorQuery.getString(0), cursorQuery.getString(1));
                                    } catch (Throwable th) {
                                        cursorQuery.close();
                                        throw th;
                                    }
                                }
                                cursorQuery.close();
                            }
                            map.putAll(treeMap);
                            l = true;
                            if (f29795f.containsKey(str) && (str2 = (String) f29795f.get(str)) != null) {
                                str3 = str2;
                            }
                        }
                        return str3;
                    }
                }
                Cursor cursorQuery2 = contentResolver.query(f29791a, null, null, new String[]{str}, null);
                if (cursorQuery2 != null) {
                    try {
                        if (cursorQuery2.moveToFirst()) {
                            String string = cursorQuery2.getString(1);
                            if (string != null && string.equals(null)) {
                                string = null;
                            }
                            synchronized (zzy.class) {
                                try {
                                    if (obj == f29799k) {
                                        f29795f.put(str, string);
                                    }
                                } catch (Throwable th2) {
                                    throw th2;
                                }
                            }
                            str3 = string != null ? string : null;
                            cursorQuery2.close();
                            return str3;
                        }
                    } catch (Throwable th3) {
                        if (cursorQuery2 != null) {
                            throw th3;
                        }
                        cursorQuery2.close();
                        throw th3;
                    }
                    if (cursorQuery2 != null) {
                        throw th3;
                    }
                    cursorQuery2.close();
                    throw th3;
                }
                synchronized (zzy.class) {
                    try {
                        if (obj == f29799k) {
                            f29795f.put(str, null);
                        }
                    } catch (Throwable th4) {
                        throw th4;
                    }
                }
                if (cursorQuery2 != null) {
                    cursorQuery2.close();
                }
                return null;
            } catch (Throwable th5) {
                throw th5;
            }
        }
    }

    public static void c(ContentResolver contentResolver) {
        HashMap map = f29795f;
        AtomicBoolean atomicBoolean = f29794e;
        if (map == null) {
            atomicBoolean.set(false);
            f29795f = new HashMap();
            f29799k = new Object();
            l = false;
            contentResolver.registerContentObserver(f29791a, true, new zzz(null));
            return;
        }
        if (atomicBoolean.getAndSet(false)) {
            f29795f.clear();
            g.clear();
            f29796h.clear();
            f29797i.clear();
            f29798j.clear();
            f29799k = new Object();
            l = false;
        }
    }

    public static void d(Object obj, HashMap map, String str, Object obj2) {
        synchronized (zzy.class) {
            try {
                if (obj == f29799k) {
                    map.put(str, obj2);
                    f29795f.remove(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
