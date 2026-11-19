package com.perfectcorp.thirdparty.com.google.gson;

import com.cyberlink.clgpuimage.CLShare3DRelatedClasses;
import com.perfectcorp.thirdparty.com.google.gson.internal.bind.n;
import com.perfectcorp.thirdparty.com.google.gson.internal.bind.p;
import com.perfectcorp.thirdparty.com.google.gson.reflect.TypeToken;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class GsonBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f42449a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f42450b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f42451c = new ArrayList();
    public final boolean d = true;

    public final Gson a() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f42450b);
        Collections.reverse(arrayList);
        arrayList.addAll(this.f42451c);
        return new Gson(this.f42449a, this.d, arrayList);
    }

    public final void b(Class cls, Object obj) {
        boolean z = obj instanceof i;
        CLShare3DRelatedClasses.c(z || (obj instanceof JsonDeserializer) || (obj instanceof g) || (obj instanceof k));
        if (obj instanceof g) {
            this.f42449a.put(cls, (g) obj);
        }
        ArrayList arrayList = this.f42450b;
        if (z || (obj instanceof JsonDeserializer)) {
            arrayList.add(n.d(new TypeToken(cls), obj));
        }
        if (obj instanceof k) {
            arrayList.add(p.a(new TypeToken(cls), (k) obj));
        }
    }
}
