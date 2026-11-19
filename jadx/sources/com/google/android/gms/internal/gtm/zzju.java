package com.google.android.gms.internal.gtm;

import defpackage.fc;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzju {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f30141a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f30142b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f30143c;

    public zzju(List list, Map map, String str, int i2) {
        this.f30141a = Collections.unmodifiableList(list);
        this.f30142b = Collections.unmodifiableMap(map);
        this.f30143c = str;
    }

    public final String toString() {
        return fc.i("Rules: ", String.valueOf(this.f30141a), "\n  Macros: ", String.valueOf(this.f30142b));
    }
}
