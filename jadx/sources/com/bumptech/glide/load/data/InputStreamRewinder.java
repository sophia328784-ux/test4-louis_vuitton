package com.bumptech.glide.load.data;

import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class InputStreamRewinder implements DataRewinder<InputStream> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RecyclableBufferedInputStream f24416a;

    public static final class Factory implements DataRewinder.Factory<InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayPool f24417a;

        public Factory(ArrayPool arrayPool) {
            this.f24417a = arrayPool;
        }

        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        public final Class a() {
            return InputStream.class;
        }

        @Override // com.bumptech.glide.load.data.DataRewinder.Factory
        public final DataRewinder b(Object obj) {
            return new InputStreamRewinder((InputStream) obj, this.f24417a);
        }
    }

    public InputStreamRewinder(InputStream inputStream, ArrayPool arrayPool) {
        RecyclableBufferedInputStream recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, arrayPool);
        this.f24416a = recyclableBufferedInputStream;
        recyclableBufferedInputStream.mark(5242880);
    }

    @Override // com.bumptech.glide.load.data.DataRewinder
    public final Object a() {
        RecyclableBufferedInputStream recyclableBufferedInputStream = this.f24416a;
        recyclableBufferedInputStream.reset();
        return recyclableBufferedInputStream;
    }

    @Override // com.bumptech.glide.load.data.DataRewinder
    public final void b() {
        this.f24416a.release();
    }
}
