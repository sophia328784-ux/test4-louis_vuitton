package com.bumptech.glide.load.resource.transcode;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class TranscoderRegistry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f24880a = new ArrayList();

    public static final class Entry<Z, R> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Class f24881a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Class f24882b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ResourceTranscoder f24883c;

        public Entry(Class cls, Class cls2, ResourceTranscoder resourceTranscoder) {
            this.f24881a = cls;
            this.f24882b = cls2;
            this.f24883c = resourceTranscoder;
        }
    }

    public final synchronized ResourceTranscoder a(Class cls, Class cls2) {
        if (cls2.isAssignableFrom(cls)) {
            return UnitTranscoder.f24884a;
        }
        for (Entry entry : this.f24880a) {
            if (entry.f24881a.isAssignableFrom(cls) && cls2.isAssignableFrom(entry.f24882b)) {
                return entry.f24883c;
            }
        }
        throw new IllegalArgumentException("No transcoder registered to transcode from " + cls + " to " + cls2);
    }

    public final synchronized ArrayList b(Class cls, Class cls2) {
        ArrayList arrayList = new ArrayList();
        if (cls2.isAssignableFrom(cls)) {
            arrayList.add(cls2);
            return arrayList;
        }
        for (Entry entry : this.f24880a) {
            if ((entry.f24881a.isAssignableFrom(cls) && cls2.isAssignableFrom(entry.f24882b)) && !arrayList.contains(entry.f24882b)) {
                arrayList.add(entry.f24882b);
            }
        }
        return arrayList;
    }

    public final synchronized void c(Class cls, Class cls2, ResourceTranscoder resourceTranscoder) {
        this.f24880a.add(new Entry(cls, cls2, resourceTranscoder));
    }
}
