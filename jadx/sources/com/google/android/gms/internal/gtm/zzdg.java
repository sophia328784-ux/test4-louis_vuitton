package com.google.android.gms.internal.gtm;

import com.linkplay.medialib.ContentTree;
import defpackage.fc;
import defpackage.v7;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzdg {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f30057a;

    static {
        HashMap map = new HashMap();
        map.put(zza.CONTAINS.toString(), new zzdf("contains"));
        map.put(zza.ENDS_WITH.toString(), new zzdf("endsWith"));
        map.put(zza.EQUALS.toString(), new zzdf("equals"));
        map.put(zza.GREATER_EQUALS.toString(), new zzdf("greaterEquals"));
        map.put(zza.GREATER_THAN.toString(), new zzdf("greaterThan"));
        map.put(zza.LESS_EQUALS.toString(), new zzdf("lessEquals"));
        map.put(zza.LESS_THAN.toString(), new zzdf("lessThan"));
        map.put(zza.REGEX.toString(), new zzdf("regex", new String[]{zzb.ARG0.toString(), zzb.ARG1.toString(), zzb.IGNORE_CASE.toString()}));
        map.put(zza.STARTS_WITH.toString(), new zzdf("startsWith"));
        f30057a = map;
    }

    public static zzkt a(String str, HashMap map) {
        HashMap map2 = f30057a;
        if (!map2.containsKey(str)) {
            v7.h(fc.h("Fail to convert ", str, " to the internal representation"));
            return null;
        }
        zzdf zzdfVar = (zzdf) map2.get(str);
        String[] strArr = zzdfVar.f30056b;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < strArr.length; i2++) {
            if (map.containsKey(strArr[i2])) {
                arrayList.add((zzkk) map.get(strArr[i2]));
            } else {
                arrayList.add(zzko.f30172h);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new zzkv("gtmUtils"));
        zzkt zzktVar = new zzkt("15", arrayList2);
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(zzktVar);
        arrayList3.add(new zzkv("mobile"));
        zzkt zzktVar2 = new zzkt("17", arrayList3);
        ArrayList arrayList4 = new ArrayList();
        arrayList4.add(zzktVar2);
        arrayList4.add(new zzkv(zzdfVar.f30055a));
        arrayList4.add(new zzkr(arrayList));
        return new zzkt(ContentTree.AUDIO_ID, arrayList4);
    }
}
