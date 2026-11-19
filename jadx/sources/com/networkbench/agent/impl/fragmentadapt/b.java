package com.networkbench.agent.impl.fragmentadapt;

import android.text.TextUtils;
import android.util.LruCache;
import com.networkbench.agent.impl.util.Logger;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37144a = "FragmentCacheUtil";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static LruCache<String, WeakReference<Object>> f37145b = new LruCache<>(Integer.MAX_VALUE);

    public static Object a(String str) {
        Object obj;
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            WeakReference<Object> weakReference = f37145b.get(str);
            if (weakReference != null && (obj = weakReference.get()) != null) {
                return obj;
            }
            Object objNewInstance = Class.forName(str).newInstance();
            f37145b.put(str, new WeakReference<>(objNewInstance));
            return objNewInstance;
        } catch (Exception e2) {
            Logger.warning(f37144a, "getFragmentFromCache error:" + e2);
            return null;
        }
    }

    public static void a(String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        f37145b.put(str, new WeakReference<>(obj));
    }
}
