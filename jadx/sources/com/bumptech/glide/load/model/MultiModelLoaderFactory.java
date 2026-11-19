package com.bumptech.glide.load.model;

import androidx.core.util.Pools$Pool;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.util.Preconditions;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class MultiModelLoaderFactory {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Factory f24688e = new Factory();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ModelLoader f24689f = new EmptyModelLoader();
    public final Pools$Pool d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f24690a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashSet f24692c = new HashSet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Factory f24691b = f24688e;

    public static class EmptyModelLoader implements ModelLoader<Object, Object> {
        @Override // com.bumptech.glide.load.model.ModelLoader
        public final boolean a(Object obj) {
            return false;
        }

        @Override // com.bumptech.glide.load.model.ModelLoader
        public final ModelLoader.LoadData b(Object obj, int i2, int i3, Options options) {
            return null;
        }
    }

    public static class Entry<Model, Data> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Class f24693a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Class f24694b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ModelLoaderFactory f24695c;

        public Entry(Class<Model> cls, Class<Data> cls2, ModelLoaderFactory<? extends Model, ? extends Data> modelLoaderFactory) {
            this.f24693a = cls;
            this.f24694b = cls2;
            this.f24695c = modelLoaderFactory;
        }
    }

    public static class Factory {
    }

    public MultiModelLoaderFactory(Pools$Pool<List<Throwable>> pools$Pool) {
        this.d = pools$Pool;
    }

    public final ModelLoader a(Entry entry) {
        ModelLoader modelLoaderD = entry.f24695c.d(this);
        Preconditions.c(modelLoaderD, "Argument must not be null");
        return modelLoaderD;
    }

    public final synchronized ModelLoader b(Class cls, Class cls2) {
        try {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (Entry entry : this.f24690a) {
                if (this.f24692c.contains(entry)) {
                    z = true;
                } else if (entry.f24693a.isAssignableFrom(cls) && entry.f24694b.isAssignableFrom(cls2)) {
                    this.f24692c.add(entry);
                    arrayList.add(a(entry));
                    this.f24692c.remove(entry);
                }
            }
            if (arrayList.size() > 1) {
                Factory factory = this.f24691b;
                Pools$Pool pools$Pool = this.d;
                factory.getClass();
                return new MultiModelLoader(arrayList, pools$Pool);
            }
            if (arrayList.size() == 1) {
                return (ModelLoader) arrayList.get(0);
            }
            if (!z) {
                throw new Registry.NoModelLoaderAvailableException((Class<?>) cls, (Class<?>) cls2);
            }
            return f24689f;
        } catch (Throwable th) {
            this.f24692c.clear();
            throw th;
        }
    }

    public final synchronized ArrayList c(Class cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (Entry entry : this.f24690a) {
                if (!this.f24692c.contains(entry) && entry.f24693a.isAssignableFrom(cls)) {
                    this.f24692c.add(entry);
                    arrayList.add(a(entry));
                    this.f24692c.remove(entry);
                }
            }
        } catch (Throwable th) {
            this.f24692c.clear();
            throw th;
        }
        return arrayList;
    }

    public final synchronized ArrayList d(Class cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (Entry entry : this.f24690a) {
            if (!arrayList.contains(entry.f24694b) && entry.f24693a.isAssignableFrom(cls)) {
                arrayList.add(entry.f24694b);
            }
        }
        return arrayList;
    }
}
