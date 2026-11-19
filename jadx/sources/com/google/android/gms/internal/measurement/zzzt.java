package com.google.android.gms.internal.measurement;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.md;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzzt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzzp f31126a = new zzzr();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final zzzo f31127b = new zzzs();

    public static zzzm a(Set set) {
        zzzm zzzmVar = new zzzm();
        zzzmVar.d = f31127b;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            zzyl zzylVar = (zzyl) it.next();
            zzabr.a(zzylVar, ConfigurationName.KEY);
            boolean z = zzylVar.f31091c;
            HashMap map = zzzmVar.f31121b;
            HashMap map2 = zzzmVar.f31120a;
            if (!z) {
                map.remove(zzylVar);
                map2.put(zzylVar, zzzm.f31118e);
            } else {
                if (!z) {
                    md.n("key must be repeating");
                    return null;
                }
                map2.remove(zzylVar);
                map.put(zzylVar, zzzm.f31119f);
            }
        }
        return zzzmVar;
    }
}
