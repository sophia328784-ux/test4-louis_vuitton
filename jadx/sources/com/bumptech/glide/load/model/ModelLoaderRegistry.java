package com.bumptech.glide.load.model;

import androidx.core.util.Pools$Pool;
import com.bumptech.glide.Registry;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ModelLoaderRegistry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MultiModelLoaderFactory f24677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ModelLoaderCache f24678b;

    public static class ModelLoaderCache {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashMap f24679a = new HashMap();

        public static class Entry<Model> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final List f24680a;

            public Entry(List<ModelLoader<Model, ?>> list) {
                this.f24680a = list;
            }
        }
    }

    public ModelLoaderRegistry(Pools$Pool<List<Throwable>> pools$Pool) {
        MultiModelLoaderFactory multiModelLoaderFactory = new MultiModelLoaderFactory(pools$Pool);
        this.f24678b = new ModelLoaderCache();
        this.f24677a = multiModelLoaderFactory;
    }

    public final synchronized void a(Class cls, Class cls2, ModelLoaderFactory modelLoaderFactory) {
        MultiModelLoaderFactory multiModelLoaderFactory = this.f24677a;
        synchronized (multiModelLoaderFactory) {
            try {
                MultiModelLoaderFactory.Entry entry = new MultiModelLoaderFactory.Entry(cls, cls2, modelLoaderFactory);
                ArrayList arrayList = multiModelLoaderFactory.f24690a;
                arrayList.add(arrayList.size(), entry);
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f24678b.f24679a.clear();
    }

    public final List b(Object obj) {
        List listUnmodifiableList;
        Class<?> cls = obj.getClass();
        synchronized (this) {
            ModelLoaderCache.Entry entry = (ModelLoaderCache.Entry) this.f24678b.f24679a.get(cls);
            listUnmodifiableList = entry == null ? null : entry.f24680a;
            if (listUnmodifiableList == null) {
                listUnmodifiableList = Collections.unmodifiableList(this.f24677a.c(cls));
                if (((ModelLoaderCache.Entry) this.f24678b.f24679a.put(cls, new ModelLoaderCache.Entry(listUnmodifiableList))) != null) {
                    throw new IllegalStateException("Already cached loaders for model: " + cls);
                }
            }
        }
        if (listUnmodifiableList.isEmpty()) {
            throw new Registry.NoModelLoaderAvailableException(obj);
        }
        int size = listUnmodifiableList.size();
        List arrayList = Collections.EMPTY_LIST;
        boolean z = true;
        for (int i2 = 0; i2 < size; i2++) {
            ModelLoader modelLoader = (ModelLoader) listUnmodifiableList.get(i2);
            if (modelLoader.a(obj)) {
                if (z) {
                    arrayList = new ArrayList(size - i2);
                    z = false;
                }
                arrayList.add(modelLoader);
            }
        }
        if (arrayList.isEmpty()) {
            throw new Registry.NoModelLoaderAvailableException(obj, (List<ModelLoader<Object, ?>>) listUnmodifiableList);
        }
        return arrayList;
    }
}
