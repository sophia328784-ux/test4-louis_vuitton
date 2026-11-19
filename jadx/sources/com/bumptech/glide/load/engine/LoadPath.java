package com.bumptech.glide.load.engine;

import androidx.core.util.Pools$Pool;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.util.Preconditions;
import defpackage.md;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LoadPath<Data, ResourceType, Transcode> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Pools$Pool f24531a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f24532b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f24533c;

    public LoadPath(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<DecodePath<Data, ResourceType, Transcode>> list, Pools$Pool<List<Throwable>> pools$Pool) {
        this.f24531a = pools$Pool;
        if (list.isEmpty()) {
            md.n("Must not be empty.");
            throw null;
        }
        this.f24532b = list;
        this.f24533c = "Failed LoadPath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final Resource a(DataRewinder dataRewinder, Options options, int i2, int i3, DecodeJob.DecodeCallback decodeCallback, List list) throws GlideException {
        List list2 = this.f24532b;
        int size = list2.size();
        Resource resourceA = null;
        for (int i4 = 0; i4 < size; i4++) {
            DecodePath decodePath = (DecodePath) list2.get(i4);
            try {
                Pools$Pool pools$Pool = decodePath.d;
                List list3 = (List) pools$Pool.acquire();
                Preconditions.c(list3, "Argument must not be null");
                List list4 = list3;
                try {
                    Resource resourceA2 = decodePath.a(dataRewinder, i2, i3, options, list4);
                    pools$Pool.release(list4);
                    try {
                        resourceA = decodePath.f24475c.a(DecodeJob.this.onResourceDecoded(decodeCallback.f24465a, resourceA2), options);
                    } catch (GlideException e2) {
                        e = e2;
                        list.add(e);
                    }
                    if (resourceA != null) {
                        break;
                    }
                } catch (Throwable th) {
                    pools$Pool.release(list4);
                    throw th;
                }
            } catch (GlideException e3) {
                e = e3;
            }
        }
        if (resourceA != null) {
            return resourceA;
        }
        throw new GlideException(this.f24533c, new ArrayList(list));
    }

    public final String toString() {
        return "LoadPath{decodePaths=" + Arrays.toString(this.f24532b.toArray()) + '}';
    }
}
