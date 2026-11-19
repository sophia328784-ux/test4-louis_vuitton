package com.bumptech.glide.load.engine;

import android.util.Log;
import androidx.core.util.Pools$Pool;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.resource.transcode.ResourceTranscoder;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public class DecodePath<DataType, ResourceType, Transcode> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f24473a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f24474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ResourceTranscoder f24475c;
    public final Pools$Pool d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f24476e;

    public interface DecodeCallback<ResourceType> {
    }

    public DecodePath(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends ResourceDecoder<DataType, ResourceType>> list, ResourceTranscoder<ResourceType, Transcode> resourceTranscoder, Pools$Pool<List<Throwable>> pools$Pool) {
        this.f24473a = cls;
        this.f24474b = list;
        this.f24475c = resourceTranscoder;
        this.d = pools$Pool;
        this.f24476e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    public final Resource a(DataRewinder dataRewinder, int i2, int i3, Options options, List list) throws GlideException {
        List list2 = this.f24474b;
        int size = list2.size();
        Resource resourceB = null;
        for (int i4 = 0; i4 < size; i4++) {
            ResourceDecoder resourceDecoder = (ResourceDecoder) list2.get(i4);
            try {
                if (resourceDecoder.a(dataRewinder.a(), options)) {
                    resourceB = resourceDecoder.b(dataRewinder.a(), i2, i3, options);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e2) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Objects.toString(resourceDecoder);
                }
                list.add(e2);
            }
            if (resourceB != null) {
                break;
            }
        }
        if (resourceB != null) {
            return resourceB;
        }
        throw new GlideException(this.f24476e, new ArrayList(list));
    }

    public final String toString() {
        return "DecodePath{ dataClass=" + this.f24473a + ", decoders=" + this.f24474b + ", transcoder=" + this.f24475c + '}';
    }
}
