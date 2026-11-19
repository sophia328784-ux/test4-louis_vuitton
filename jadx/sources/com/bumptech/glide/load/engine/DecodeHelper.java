package com.bumptech.glide.load.engine;

import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.UnitTransformation;
import com.bumptech.glide.load.resource.transcode.TranscoderRegistry;
import com.bumptech.glide.provider.LoadPathCache;
import com.bumptech.glide.provider.ResourceDecoderRegistry;
import com.bumptech.glide.util.MultiClassKey;
import defpackage.md;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class DecodeHelper<Transcode> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f24453a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f24454b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public GlideContext f24455c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f24456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f24457f;
    public Class g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public DecodeJob.DiskCacheProvider f24458h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Options f24459i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Map f24460j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Class f24461k;
    public boolean l;
    public boolean m;
    public Key n;
    public Priority o;
    public DiskCacheStrategy p;
    public boolean q;
    public boolean r;

    public final ArrayList a() {
        boolean z = this.m;
        ArrayList arrayList = this.f24454b;
        if (!z) {
            this.m = true;
            arrayList.clear();
            ArrayList arrayListB = b();
            int size = arrayListB.size();
            for (int i2 = 0; i2 < size; i2++) {
                ModelLoader.LoadData loadData = (ModelLoader.LoadData) arrayListB.get(i2);
                Key key = loadData.f24674a;
                List list = loadData.f24675b;
                if (!arrayList.contains(key)) {
                    arrayList.add(loadData.f24674a);
                }
                for (int i3 = 0; i3 < list.size(); i3++) {
                    if (!arrayList.contains(list.get(i3))) {
                        arrayList.add((Key) list.get(i3));
                    }
                }
            }
        }
        return arrayList;
    }

    public final ArrayList b() {
        boolean z = this.l;
        ArrayList arrayList = this.f24453a;
        if (!z) {
            this.l = true;
            arrayList.clear();
            Registry registryA = this.f24455c.a();
            List listB = registryA.f24302a.b(this.d);
            int size = listB.size();
            for (int i2 = 0; i2 < size; i2++) {
                ModelLoader.LoadData loadDataB = ((ModelLoader) listB.get(i2)).b(this.d, this.f24456e, this.f24457f, this.f24459i);
                if (loadDataB != null) {
                    arrayList.add(loadDataB);
                }
            }
        }
        return arrayList;
    }

    public final LoadPath c(Class cls) {
        LoadPath loadPath;
        Class cls2;
        Class cls3;
        Class cls4;
        Class cls5 = cls;
        Registry registryA = this.f24455c.a();
        Class cls6 = this.g;
        Class cls7 = this.f24461k;
        LoadPathCache loadPathCache = registryA.f24308i;
        LoadPath loadPath2 = null;
        MultiClassKey multiClassKey = (MultiClassKey) loadPathCache.f24917b.getAndSet(null);
        if (multiClassKey == null) {
            multiClassKey = new MultiClassKey();
        }
        multiClassKey.f24994a = cls5;
        multiClassKey.f24995b = cls6;
        multiClassKey.f24996c = cls7;
        synchronized (loadPathCache.f24916a) {
            loadPath = (LoadPath) loadPathCache.f24916a.get(multiClassKey);
        }
        loadPathCache.f24917b.set(multiClassKey);
        registryA.f24308i.getClass();
        if (LoadPathCache.f24915c.equals(loadPath)) {
            return null;
        }
        if (loadPath != null) {
            return loadPath;
        }
        TranscoderRegistry transcoderRegistry = registryA.f24306f;
        ArrayList arrayList = new ArrayList();
        ResourceDecoderRegistry resourceDecoderRegistry = registryA.f24304c;
        for (Class cls8 : resourceDecoderRegistry.d(cls5, cls6)) {
            for (Class cls9 : transcoderRegistry.b(cls8, cls7)) {
                arrayList.add(new DecodePath(cls5, cls8, cls9, resourceDecoderRegistry.b(cls5, cls8), transcoderRegistry.a(cls8, cls9), registryA.f24309j));
                cls5 = cls;
            }
            cls5 = cls;
        }
        if (arrayList.isEmpty()) {
            cls2 = cls;
            cls3 = cls6;
            cls4 = cls7;
        } else {
            cls2 = cls;
            cls3 = cls6;
            cls4 = cls7;
            loadPath2 = new LoadPath(cls2, cls3, cls4, arrayList, registryA.f24309j);
        }
        LoadPathCache loadPathCache2 = registryA.f24308i;
        synchronized (loadPathCache2.f24916a) {
            loadPathCache2.f24916a.put(new MultiClassKey(cls2, cls3, cls4), loadPath2 != null ? loadPath2 : LoadPathCache.f24915c);
        }
        return loadPath2;
    }

    public final Transformation d(Class cls) {
        Transformation transformation = (Transformation) this.f24460j.get(cls);
        if (transformation == null) {
            for (Map.Entry entry : this.f24460j.entrySet()) {
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    transformation = (Transformation) entry.getValue();
                    break;
                }
            }
        }
        if (transformation != null) {
            return transformation;
        }
        if (!this.f24460j.isEmpty() || !this.q) {
            return UnitTransformation.f24747b;
        }
        md.n(pq0.n(cls, "Missing transformation for ", ". If you wish to ignore unknown resource types, use the optional transformation methods."));
        return null;
    }
}
