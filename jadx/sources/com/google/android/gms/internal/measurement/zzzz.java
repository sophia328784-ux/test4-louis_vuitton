package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class zzzz extends zzaaa {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f31137b;

    public zzzz(zzzj zzzjVar, zzzj zzzjVar2) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        d(linkedHashMap, zzzjVar);
        d(linkedHashMap, zzzjVar2);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (((zzyl) entry.getKey()).f31091c) {
                entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
            }
        }
        this.f31137b = Collections.unmodifiableMap(linkedHashMap);
    }

    public static void d(LinkedHashMap linkedHashMap, zzzj zzzjVar) {
        for (int i2 = 0; i2 < zzzjVar.a(); i2++) {
            zzyl zzylVarB = zzzjVar.b(i2);
            Object obj = linkedHashMap.get(zzylVarB);
            boolean z = zzylVarB.f31091c;
            Class cls = zzylVarB.f31090b;
            if (z) {
                List arrayList = (List) obj;
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    linkedHashMap.put(zzylVarB, arrayList);
                }
                arrayList.add(cls.cast(zzzjVar.c(i2)));
            } else {
                linkedHashMap.put(zzylVarB, cls.cast(zzzjVar.c(i2)));
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzaaa
    public final void a(zzzq zzzqVar, zzzc zzzcVar) {
        for (Map.Entry entry : this.f31137b.entrySet()) {
            zzyl zzylVar = (zzyl) entry.getKey();
            Object value = entry.getValue();
            if (zzylVar.f31091c) {
                zzzqVar.b(zzylVar, ((List) value).iterator(), zzzcVar);
            } else {
                zzzqVar.a(zzylVar, value, zzzcVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzaaa
    public final int b() {
        return this.f31137b.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzaaa
    public final Set c() {
        return this.f31137b.keySet();
    }
}
