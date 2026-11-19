package com.batch.android.e;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes2.dex */
class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<String> f23074a;

    public b0(String str) {
        this.f23074a = new ArrayList();
        if (str == null || str.length() <= 0) {
            return;
        }
        this.f23074a.addAll(Arrays.asList(str.split(",")));
    }

    private List<String> a(Collection<String> collection) {
        List<String> list = this.f23074a;
        if (list == null || list.size() == 0) {
            return new ArrayList(collection);
        }
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (String str : this.f23074a) {
            if (str.equals(Browse.CAPS_WILDCARD)) {
                z = true;
            } else if (collection.contains(str)) {
                arrayList.add(str);
                collection.remove(str);
            }
        }
        if (!z && arrayList.size() > 0) {
            return arrayList;
        }
        arrayList.addAll(collection);
        return arrayList;
    }

    public b0(List<String> list) {
        ArrayList arrayList = new ArrayList();
        this.f23074a = arrayList;
        if (list != null) {
            arrayList.addAll(list);
        }
    }

    public b0() {
        this.f23074a = new ArrayList();
    }

    public List<String> a(Set<String> set) {
        return a((Collection<String>) new HashSet(set));
    }

    public List<String> a(Map<String, ?> map) {
        return a((Collection<String>) new HashSet(map.keySet()));
    }

    public List<String> a(List<String> list) {
        return a((Collection<String>) new ArrayList(list));
    }
}
