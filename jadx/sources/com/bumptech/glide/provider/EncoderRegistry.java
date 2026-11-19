package com.bumptech.glide.provider;

import com.bumptech.glide.load.Encoder;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class EncoderRegistry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f24911a = new ArrayList();

    public static final class Entry<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Class f24912a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Encoder f24913b;

        public Entry(Class cls, Encoder encoder) {
            this.f24912a = cls;
            this.f24913b = encoder;
        }
    }

    public final synchronized void a(Class cls, Encoder encoder) {
        this.f24911a.add(new Entry(cls, encoder));
    }

    public final synchronized Encoder b(Class cls) {
        for (Entry entry : this.f24911a) {
            if (entry.f24912a.isAssignableFrom(cls)) {
                return entry.f24913b;
            }
        }
        return null;
    }
}
