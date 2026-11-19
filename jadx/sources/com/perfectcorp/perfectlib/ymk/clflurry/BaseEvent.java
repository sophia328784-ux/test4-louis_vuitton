package com.perfectcorp.perfectlib.ymk.clflurry;

import android.text.TextUtils;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public class BaseEvent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f41947a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f41948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map f41949c;

    public BaseEvent(String str, String str2) {
        this.f41947a = str;
        this.f41948b = str2;
    }

    public final HashMap a() {
        HashMap map = new HashMap();
        String str = this.f41948b;
        Objects.requireNonNull(str, "mVersion can't be null");
        map.put("ver", str);
        return map;
    }

    public final void b() {
        AtomicBoolean atomicBoolean = a.f41965a;
        Map map = this.f41949c;
        Set set = MoreCollections.f39434a;
        if (map == null) {
            map = Collections.EMPTY_MAP;
        }
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(map);
        String str = a.f41968e;
        if (!TextUtils.isEmpty(str)) {
            concurrentHashMap.put("user_id", str);
        }
        if (PfCommons.b().getPackageName() != null) {
            concurrentHashMap.put("bundle_id", PfCommons.b().getPackageName());
        }
        Log.g(3, "CLFlurryAgentHelper", "recordEvent (helper) name=" + this.f41947a + ", Parameters is " + concurrentHashMap + ", Count: 1");
        if (a.b()) {
            return;
        }
        a.d.execute(new c(concurrentHashMap, this));
    }

    public final void c(Map map) {
        if (map == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (((String) entry.getValue()) == null) {
                arrayList.add(str);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            map.remove((String) it.next());
        }
        if (map.isEmpty()) {
            this.f41949c = null;
        } else {
            this.f41949c = map;
        }
    }

    @Deprecated
    public BaseEvent(String str) {
        this(str, null);
    }
}
