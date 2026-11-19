package com.powerfront.insidewebsdkandroid.models;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
abstract class InsideEntity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f43311a = new HashMap();

    public InsideEntity(HashMap map) {
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                this.f43311a.put(entry.getKey(), entry.getValue());
            }
        }
    }
}
