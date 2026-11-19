package com.bumptech.glide.provider;

import com.bumptech.glide.load.ResourceDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ResourceDecoderRegistry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f24920a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f24921b = new HashMap();

    public static class Entry<T, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Class f24922a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Class f24923b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ResourceDecoder f24924c;

        public Entry(Class<T> cls, Class<R> cls2, ResourceDecoder<T, R> resourceDecoder) {
            this.f24922a = cls;
            this.f24923b = cls2;
            this.f24924c = resourceDecoder;
        }
    }

    public final synchronized void a(ResourceDecoder resourceDecoder, Class cls, Class cls2, String str) {
        c(str).add(new Entry(cls, cls2, resourceDecoder));
    }

    public final synchronized ArrayList b(Class cls, Class cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = this.f24920a.iterator();
        while (it.hasNext()) {
            List<Entry> list = (List) this.f24921b.get((String) it.next());
            if (list != null) {
                for (Entry entry : list) {
                    if (entry.f24922a.isAssignableFrom(cls) && cls2.isAssignableFrom(entry.f24923b)) {
                        arrayList.add(entry.f24924c);
                    }
                }
            }
        }
        return arrayList;
    }

    public final synchronized List c(String str) {
        List arrayList;
        try {
            if (!this.f24920a.contains(str)) {
                this.f24920a.add(str);
            }
            arrayList = (List) this.f24921b.get(str);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.f24921b.put(str, arrayList);
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public final synchronized ArrayList d(Class cls, Class cls2) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        Iterator it = this.f24920a.iterator();
        while (it.hasNext()) {
            List<Entry> list = (List) this.f24921b.get((String) it.next());
            if (list != null) {
                for (Entry entry : list) {
                    if ((entry.f24922a.isAssignableFrom(cls) && cls2.isAssignableFrom(entry.f24923b)) && !arrayList.contains(entry.f24923b)) {
                        arrayList.add(entry.f24923b);
                    }
                }
            }
        }
        return arrayList;
    }
}
