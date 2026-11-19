package com.bumptech.glide.load.model;

import androidx.core.util.Pools$Pool;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.util.Preconditions;
import defpackage.md;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class MultiModelLoader<Model, Data> implements ModelLoader<Model, Data> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f24681a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Pools$Pool f24682b;

    public static class MultiFetcher<Data> implements DataFetcher<Data>, DataFetcher.DataCallback<Data> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f24683b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Pools$Pool f24684c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Priority f24685e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public DataFetcher.DataCallback f24686f;
        public List g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f24687h;

        public MultiFetcher(ArrayList arrayList, Pools$Pool pools$Pool) {
            this.f24684c = pools$Pool;
            if (arrayList.isEmpty()) {
                md.n("Must not be empty.");
                throw null;
            }
            this.f24683b = arrayList;
            this.d = 0;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final Class a() {
            return ((DataFetcher) this.f24683b.get(0)).a();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void b() {
            List list = this.g;
            if (list != null) {
                this.f24684c.release(list);
            }
            this.g = null;
            Iterator it = this.f24683b.iterator();
            while (it.hasNext()) {
                ((DataFetcher) it.next()).b();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
        public final void c(Exception exc) {
            List list = this.g;
            Preconditions.c(list, "Argument must not be null");
            list.add(exc);
            g();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void cancel() {
            this.f24687h = true;
            Iterator it = this.f24683b.iterator();
            while (it.hasNext()) {
                ((DataFetcher) it.next()).cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final DataSource d() {
            return ((DataFetcher) this.f24683b.get(0)).d();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void e(Priority priority, DataFetcher.DataCallback dataCallback) {
            this.f24685e = priority;
            this.f24686f = dataCallback;
            this.g = (List) this.f24684c.acquire();
            ((DataFetcher) this.f24683b.get(this.d)).e(priority, this);
            if (this.f24687h) {
                cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
        public final void f(Object obj) {
            if (obj != null) {
                this.f24686f.f(obj);
            } else {
                g();
            }
        }

        public final void g() {
            if (this.f24687h) {
                return;
            }
            if (this.d < this.f24683b.size() - 1) {
                this.d++;
                e(this.f24685e, this.f24686f);
            } else {
                Preconditions.b(this.g);
                this.f24686f.c(new GlideException("Fetch failed", new ArrayList(this.g)));
            }
        }
    }

    public MultiModelLoader(ArrayList arrayList, Pools$Pool pools$Pool) {
        this.f24681a = arrayList;
        this.f24682b = pools$Pool;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean a(Object obj) {
        Iterator it = this.f24681a.iterator();
        while (it.hasNext()) {
            if (((ModelLoader) it.next()).a(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i2, int i3, Options options) {
        ModelLoader.LoadData loadDataB;
        ArrayList arrayList = this.f24681a;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        Key key = null;
        for (int i4 = 0; i4 < size; i4++) {
            ModelLoader modelLoader = (ModelLoader) arrayList.get(i4);
            if (modelLoader.a(obj) && (loadDataB = modelLoader.b(obj, i2, i3, options)) != null) {
                key = loadDataB.f24674a;
                arrayList2.add(loadDataB.f24676c);
            }
        }
        if (arrayList2.isEmpty() || key == null) {
            return null;
        }
        return new ModelLoader.LoadData(key, new MultiFetcher(arrayList2, this.f24682b));
    }

    public final String toString() {
        return "MultiModelLoader{modelLoaders=" + Arrays.toString(this.f24681a.toArray()) + '}';
    }
}
