package com.google.android.gms.internal.measurement;

import androidx.collection.ArrayMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzma {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ArrayMap f30740a = new ArrayMap();

    public static synchronized void a() {
        ArrayMap arrayMap = f30740a;
        Iterator it = arrayMap.values().iterator();
        if (it.hasNext()) {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            throw null;
        }
        arrayMap.clear();
    }
}
