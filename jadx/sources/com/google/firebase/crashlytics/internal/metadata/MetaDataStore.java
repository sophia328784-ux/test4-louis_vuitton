package com.google.firebase.crashlytics.internal.metadata;

import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.common.CommonUtils;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import defpackage.tr;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
class MetaDataStore {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Charset f34611b = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FileStore f34612a;

    /* JADX INFO: renamed from: com.google.firebase.crashlytics.internal.metadata.MetaDataStore$1, reason: invalid class name */
    class AnonymousClass1 extends JSONObject {
    }

    public MetaDataStore(FileStore fileStore) {
        this.f34612a = fileStore;
    }

    public static HashMap a(String str) {
        JSONObject jSONObject = new JSONObject(str);
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            String strOptString = null;
            if (!jSONObject.isNull(next)) {
                strOptString = jSONObject.optString(next, null);
            }
            map.put(next, strOptString);
        }
        return map;
    }

    public static ArrayList b(String str) throws JSONException {
        JSONArray jSONArray = new JSONObject(str).getJSONArray("rolloutsState");
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                arrayList.add(RolloutAssignment.a(jSONArray.getString(i2)));
            } catch (Exception unused) {
                Logger.f34483b.a(5);
            }
        }
        return arrayList;
    }

    public static String e(List list) {
        HashMap map = new HashMap();
        JSONArray jSONArray = new JSONArray();
        for (int i2 = 0; i2 < list.size(); i2++) {
            try {
                jSONArray.put(new JSONObject(RolloutAssignment.f34632a.encode(list.get(i2))));
            } catch (JSONException unused) {
                Logger.f34483b.a(5);
            }
        }
        map.put("rolloutsState", jSONArray);
        return new JSONObject(map).toString();
    }

    public static void f(File file) {
        if (file.exists() && file.delete()) {
            Logger logger = Logger.f34483b;
            file.getAbsolutePath();
            logger.a(4);
        }
    }

    public static void g(File file, String str) {
        if (file.exists() && file.delete()) {
            Logger logger = Logger.f34483b;
            file.getAbsolutePath();
            logger.a(4);
        }
    }

    public final Map c(String str, boolean z) throws Throwable {
        FileStore fileStore = this.f34612a;
        File fileB = z ? fileStore.b(str, "internal-keys") : fileStore.b(str, "keys");
        if (!fileB.exists() || fileB.length() == 0) {
            g(fileB, tr.g("The file has a length of zero for session: ", str));
            return Collections.EMPTY_MAP;
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(fileB);
                try {
                    HashMap mapA = a(CommonUtils.j(fileInputStream2));
                    CommonUtils.b(fileInputStream2);
                    return mapA;
                } catch (Exception unused) {
                    fileInputStream = fileInputStream2;
                    Logger.f34483b.a(5);
                    f(fileB);
                    CommonUtils.b(fileInputStream);
                    return Collections.EMPTY_MAP;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    CommonUtils.b(fileInputStream);
                    throw th;
                }
            } catch (Exception unused2) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r7v3, types: [int] */
    public final String d(String str) throws Throwable {
        FileInputStream fileInputStream;
        File fileB = this.f34612a.b(str, "user-data");
        ?? r1 = 0;
        if (fileB.exists()) {
            ?? r7 = (fileB.length() > 0L ? 1 : (fileB.length() == 0L ? 0 : -1));
            try {
                if (r7 != 0) {
                    try {
                        fileInputStream = new FileInputStream(fileB);
                        try {
                            JSONObject jSONObject = new JSONObject(CommonUtils.j(fileInputStream));
                            String strOptString = !jSONObject.isNull("userId") ? jSONObject.optString("userId", null) : null;
                            Logger.f34483b.a(3);
                            CommonUtils.b(fileInputStream);
                            return strOptString;
                        } catch (Exception unused) {
                            Logger.f34483b.a(5);
                            f(fileB);
                            CommonUtils.b(fileInputStream);
                            return null;
                        }
                    } catch (Exception unused2) {
                        fileInputStream = null;
                    } catch (Throwable th) {
                        th = th;
                        CommonUtils.b(r1);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                r1 = r7;
            }
        }
        Logger.f34483b.a(3);
        f(fileB);
        return null;
    }

    public final void h(String str, Map map, boolean z) throws Throwable {
        FileStore fileStore = this.f34612a;
        File fileB = z ? fileStore.b(str, "internal-keys") : fileStore.b(str, "keys");
        BufferedWriter bufferedWriter = null;
        try {
            try {
                String string = new JSONObject(map).toString();
                BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(fileB), f34611b));
                try {
                    bufferedWriter2.write(string);
                    bufferedWriter2.flush();
                    CommonUtils.b(bufferedWriter2);
                } catch (Exception unused) {
                    bufferedWriter = bufferedWriter2;
                    Logger.f34483b.a(5);
                    f(fileB);
                    CommonUtils.b(bufferedWriter);
                } catch (Throwable th) {
                    th = th;
                    bufferedWriter = bufferedWriter2;
                    CommonUtils.b(bufferedWriter);
                    throw th;
                }
            } catch (Exception unused2) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
