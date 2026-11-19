package com.bumptech.glide.provider;

import com.bumptech.glide.load.ResourceEncoder;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class ResourceEncoderRegistry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f24925a = new ArrayList();

    public static final class Entry<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Class f24926a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ResourceEncoder f24927b;

        public Entry(Class cls, ResourceEncoder resourceEncoder) {
            this.f24926a = cls;
            this.f24927b = resourceEncoder;
        }
    }

    public final synchronized void a(Class cls, ResourceEncoder resourceEncoder) {
        this.f24925a.add(new Entry(cls, resourceEncoder));
    }

    public final synchronized ResourceEncoder b(Class cls) {
        int size = this.f24925a.size();
        for (int i2 = 0; i2 < size; i2++) {
            Entry entry = (Entry) this.f24925a.get(i2);
            if (entry.f24926a.isAssignableFrom(cls)) {
                return entry.f24927b;
            }
        }
        return null;
    }
}
