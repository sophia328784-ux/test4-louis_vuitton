package com.bumptech.glide.load.engine;

import com.bumptech.glide.Registry;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderRegistry;
import com.bumptech.glide.provider.ModelToResourceClassCache;
import com.bumptech.glide.util.MultiClassKey;
import defpackage.d20;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class ResourceCacheGenerator implements DataFetcherGenerator, DataFetcher.DataCallback<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DataFetcherGenerator.FetcherReadyCallback f24538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DecodeHelper f24539c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f24540e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Key f24541f;
    public List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f24542h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile ModelLoader.LoadData f24543i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public File f24544j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ResourceCacheKey f24545k;

    public ResourceCacheGenerator(DecodeHelper decodeHelper, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this.f24539c = decodeHelper;
        this.f24538b = fetcherReadyCallback;
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public final boolean a() {
        List list;
        ArrayList arrayListD;
        ArrayList arrayListA = this.f24539c.a();
        boolean z = false;
        if (!arrayListA.isEmpty()) {
            DecodeHelper decodeHelper = this.f24539c;
            Registry registryA = decodeHelper.f24455c.a();
            Class<?> cls = decodeHelper.d.getClass();
            Class cls2 = decodeHelper.g;
            Class cls3 = decodeHelper.f24461k;
            ModelToResourceClassCache modelToResourceClassCache = registryA.f24307h;
            MultiClassKey multiClassKey = (MultiClassKey) modelToResourceClassCache.f24918a.getAndSet(null);
            if (multiClassKey == null) {
                multiClassKey = new MultiClassKey(cls, cls2, cls3);
            } else {
                multiClassKey.f24994a = cls;
                multiClassKey.f24995b = cls2;
                multiClassKey.f24996c = cls3;
            }
            synchronized (modelToResourceClassCache.f24919b) {
                list = (List) modelToResourceClassCache.f24919b.get(multiClassKey);
            }
            modelToResourceClassCache.f24918a.set(multiClassKey);
            List list2 = list;
            if (list == null) {
                ArrayList arrayList = new ArrayList();
                ModelLoaderRegistry modelLoaderRegistry = registryA.f24302a;
                synchronized (modelLoaderRegistry) {
                    arrayListD = modelLoaderRegistry.f24677a.d(cls);
                }
                Iterator it = arrayListD.iterator();
                while (it.hasNext()) {
                    for (Class cls4 : registryA.f24304c.d((Class) it.next(), cls2)) {
                        if (!registryA.f24306f.b(cls4, cls3).isEmpty() && !arrayList.contains(cls4)) {
                            arrayList.add(cls4);
                        }
                    }
                }
                ModelToResourceClassCache modelToResourceClassCache2 = registryA.f24307h;
                List listUnmodifiableList = Collections.unmodifiableList(arrayList);
                synchronized (modelToResourceClassCache2.f24919b) {
                    modelToResourceClassCache2.f24919b.put(new MultiClassKey(cls, cls2, cls3), listUnmodifiableList);
                }
                list2 = arrayList;
            }
            if (!list2.isEmpty()) {
                while (true) {
                    List list3 = this.g;
                    if (list3 != null && this.f24542h < list3.size()) {
                        this.f24543i = null;
                        while (!z && this.f24542h < this.g.size()) {
                            List list4 = this.g;
                            int i2 = this.f24542h;
                            this.f24542h = i2 + 1;
                            ModelLoader modelLoader = (ModelLoader) list4.get(i2);
                            File file = this.f24544j;
                            DecodeHelper decodeHelper2 = this.f24539c;
                            this.f24543i = modelLoader.b(file, decodeHelper2.f24456e, decodeHelper2.f24457f, decodeHelper2.f24459i);
                            if (this.f24543i != null && this.f24539c.c(this.f24543i.f24676c.a()) != null) {
                                this.f24543i.f24676c.e(this.f24539c.o, this);
                                z = true;
                            }
                        }
                        return z;
                    }
                    int i3 = this.f24540e + 1;
                    this.f24540e = i3;
                    if (i3 >= list2.size()) {
                        int i4 = this.d + 1;
                        this.d = i4;
                        if (i4 >= arrayListA.size()) {
                            break;
                        }
                        this.f24540e = 0;
                    }
                    Key key = (Key) arrayListA.get(this.d);
                    Class cls5 = (Class) list2.get(this.f24540e);
                    Transformation transformationD = this.f24539c.d(cls5);
                    DecodeHelper decodeHelper3 = this.f24539c;
                    this.f24545k = new ResourceCacheKey(decodeHelper3.f24455c.f24292a, key, decodeHelper3.n, decodeHelper3.f24456e, decodeHelper3.f24457f, transformationD, cls5, decodeHelper3.f24459i);
                    File fileB = decodeHelper3.f24458h.a().b(this.f24545k);
                    this.f24544j = fileB;
                    if (fileB != null) {
                        this.f24541f = key;
                        this.g = this.f24539c.f24455c.a().f24302a.b(fileB);
                        this.f24542h = 0;
                    }
                }
            } else if (!File.class.equals(this.f24539c.f24461k)) {
                StringBuilder sb = new StringBuilder("Failed to find any load path from ");
                sb.append(this.f24539c.d.getClass());
                d20.k(sb, " to ", this.f24539c.f24461k);
                return false;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public final void c(Exception exc) {
        this.f24538b.onDataFetcherFailed(this.f24545k, exc, this.f24543i.f24676c, DataSource.RESOURCE_DISK_CACHE);
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public final void cancel() {
        ModelLoader.LoadData loadData = this.f24543i;
        if (loadData != null) {
            loadData.f24676c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public final void f(Object obj) {
        this.f24538b.onDataFetcherReady(this.f24541f, obj, this.f24543i.f24676c, DataSource.RESOURCE_DISK_CACHE, this.f24545k);
    }
}
