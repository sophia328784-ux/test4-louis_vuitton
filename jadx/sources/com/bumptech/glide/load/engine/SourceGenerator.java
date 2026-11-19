package com.bumptech.glide.load.engine;

import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.util.LogTime;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
class SourceGenerator implements DataFetcherGenerator, DataFetcherGenerator.FetcherReadyCallback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DecodeHelper f24555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DataFetcherGenerator.FetcherReadyCallback f24556c;
    public volatile int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public volatile DataCacheGenerator f24557e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile Object f24558f;
    public volatile ModelLoader.LoadData g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile DataCacheKey f24559h;

    public SourceGenerator(DecodeHelper decodeHelper, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this.f24555b = decodeHelper;
        this.f24556c = fetcherReadyCallback;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0017  */
    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public final boolean a() {
        boolean z;
        if (this.f24558f == null) {
            if (this.f24557e != null) {
            }
            this.f24557e = null;
            this.g = null;
            z = false;
            while (!z) {
                ArrayList arrayListB = this.f24555b.b();
                int i2 = this.d;
                this.d = i2 + 1;
                this.g = (ModelLoader.LoadData) arrayListB.get(i2);
                if (this.g == null) {
                }
            }
            return z;
        }
        Object obj = this.f24558f;
        this.f24558f = null;
        try {
            if (b(obj)) {
                if (this.f24557e != null || !this.f24557e.a()) {
                    this.f24557e = null;
                    this.g = null;
                    z = false;
                    while (!z && this.d < this.f24555b.b().size()) {
                        ArrayList arrayListB2 = this.f24555b.b();
                        int i3 = this.d;
                        this.d = i3 + 1;
                        this.g = (ModelLoader.LoadData) arrayListB2.get(i3);
                        if (this.g == null && (this.f24555b.p.c(this.g.f24676c.d()) || this.f24555b.c(this.g.f24676c.a()) != null)) {
                            final ModelLoader.LoadData loadData = this.g;
                            this.g.f24676c.e(this.f24555b.o, new DataFetcher.DataCallback<Object>() { // from class: com.bumptech.glide.load.engine.SourceGenerator.1
                                @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
                                public final void c(Exception exc) {
                                    SourceGenerator sourceGenerator = SourceGenerator.this;
                                    ModelLoader.LoadData loadData2 = loadData;
                                    ModelLoader.LoadData loadData3 = sourceGenerator.g;
                                    if (loadData3 == null || loadData3 != loadData2) {
                                        return;
                                    }
                                    SourceGenerator sourceGenerator2 = SourceGenerator.this;
                                    ModelLoader.LoadData loadData4 = loadData;
                                    DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback = sourceGenerator2.f24556c;
                                    DataCacheKey dataCacheKey = sourceGenerator2.f24559h;
                                    DataFetcher dataFetcher = loadData4.f24676c;
                                    fetcherReadyCallback.onDataFetcherFailed(dataCacheKey, exc, dataFetcher, dataFetcher.d());
                                }

                                @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
                                public final void f(Object obj2) {
                                    SourceGenerator sourceGenerator = SourceGenerator.this;
                                    ModelLoader.LoadData loadData2 = loadData;
                                    ModelLoader.LoadData loadData3 = sourceGenerator.g;
                                    if (loadData3 == null || loadData3 != loadData2) {
                                        return;
                                    }
                                    SourceGenerator sourceGenerator2 = SourceGenerator.this;
                                    ModelLoader.LoadData loadData4 = loadData;
                                    DiskCacheStrategy diskCacheStrategy = sourceGenerator2.f24555b.p;
                                    if (obj2 != null && diskCacheStrategy.c(loadData4.f24676c.d())) {
                                        sourceGenerator2.f24558f = obj2;
                                        sourceGenerator2.f24556c.reschedule();
                                    } else {
                                        DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback = sourceGenerator2.f24556c;
                                        Key key = loadData4.f24674a;
                                        DataFetcher dataFetcher = loadData4.f24676c;
                                        fetcherReadyCallback.onDataFetcherReady(key, obj2, dataFetcher, dataFetcher.d(), sourceGenerator2.f24559h);
                                    }
                                }
                            });
                            z = true;
                        }
                    }
                    return z;
                }
            }
        } catch (IOException unused) {
            Log.isLoggable("SourceGenerator", 3);
        }
        return true;
    }

    public final boolean b(Object obj) throws Throwable {
        Throwable th;
        int i2 = LogTime.f24987a;
        SystemClock.elapsedRealtimeNanos();
        boolean z = false;
        try {
            DataRewinder dataRewinderC = this.f24555b.f24455c.a().c(obj);
            Object objA = dataRewinderC.a();
            Encoder encoderB = this.f24555b.f24455c.a().f24303b.b(objA.getClass());
            if (encoderB == null) {
                throw new Registry.NoSourceEncoderAvailableException(objA.getClass());
            }
            DataCacheWriter dataCacheWriter = new DataCacheWriter(encoderB, objA, this.f24555b.f24459i);
            Key key = this.g.f24674a;
            DecodeHelper decodeHelper = this.f24555b;
            DataCacheKey dataCacheKey = new DataCacheKey(key, decodeHelper.n);
            DiskCache diskCacheA = decodeHelper.f24458h.a();
            diskCacheA.a(dataCacheKey, dataCacheWriter);
            if (Log.isLoggable("SourceGenerator", 2)) {
                dataCacheKey.toString();
                obj.toString();
                encoderB.toString();
                SystemClock.elapsedRealtimeNanos();
            }
            if (diskCacheA.b(dataCacheKey) != null) {
                this.f24559h = dataCacheKey;
                this.f24557e = new DataCacheGenerator(Collections.singletonList(this.g.f24674a), this.f24555b, this);
                this.g.f24676c.b();
                return true;
            }
            if (Log.isLoggable("SourceGenerator", 3)) {
                Objects.toString(this.f24559h);
                obj.toString();
            }
            try {
                this.f24556c.onDataFetcherReady(this.g.f24674a, dataRewinderC.a(), this.g.f24676c, this.g.f24676c.d(), this.g.f24674a);
                return false;
            } catch (Throwable th2) {
                th = th2;
                z = true;
                if (z) {
                    throw th;
                }
                this.g.f24676c.b();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public final void cancel() {
        ModelLoader.LoadData loadData = this.g;
        if (loadData != null) {
            loadData.f24676c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public final void onDataFetcherFailed(Key key, Exception exc, DataFetcher dataFetcher, DataSource dataSource) {
        this.f24556c.onDataFetcherFailed(key, exc, dataFetcher, this.g.f24676c.d());
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public final void onDataFetcherReady(Key key, Object obj, DataFetcher dataFetcher, DataSource dataSource, Key key2) {
        this.f24556c.onDataFetcherReady(key, obj, dataFetcher, this.g.f24676c.d(), key);
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public final void reschedule() {
        throw new UnsupportedOperationException();
    }
}
