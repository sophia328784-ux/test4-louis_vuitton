package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.File;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
class DataCacheGenerator implements DataFetcherGenerator, DataFetcher.DataCallback<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f24441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DecodeHelper f24442c;
    public final DataFetcherGenerator.FetcherReadyCallback d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f24443e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Key f24444f;
    public List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f24445h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile ModelLoader.LoadData f24446i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public File f24447j;

    public DataCacheGenerator(List list, DecodeHelper decodeHelper, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this.f24441b = list;
        this.f24442c = decodeHelper;
        this.d = fetcherReadyCallback;
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public final boolean a() {
        while (true) {
            List list = this.g;
            boolean z = false;
            if (list != null && this.f24445h < list.size()) {
                this.f24446i = null;
                while (!z && this.f24445h < this.g.size()) {
                    List list2 = this.g;
                    int i2 = this.f24445h;
                    this.f24445h = i2 + 1;
                    ModelLoader modelLoader = (ModelLoader) list2.get(i2);
                    File file = this.f24447j;
                    DecodeHelper decodeHelper = this.f24442c;
                    this.f24446i = modelLoader.b(file, decodeHelper.f24456e, decodeHelper.f24457f, decodeHelper.f24459i);
                    if (this.f24446i != null && this.f24442c.c(this.f24446i.f24676c.a()) != null) {
                        this.f24446i.f24676c.e(this.f24442c.o, this);
                        z = true;
                    }
                }
                return z;
            }
            int i3 = this.f24443e + 1;
            this.f24443e = i3;
            if (i3 >= this.f24441b.size()) {
                return false;
            }
            Key key = (Key) this.f24441b.get(this.f24443e);
            DecodeHelper decodeHelper2 = this.f24442c;
            File fileB = decodeHelper2.f24458h.a().b(new DataCacheKey(key, decodeHelper2.n));
            this.f24447j = fileB;
            if (fileB != null) {
                this.f24444f = key;
                this.g = this.f24442c.f24455c.a().f24302a.b(fileB);
                this.f24445h = 0;
            }
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public final void c(Exception exc) {
        this.d.onDataFetcherFailed(this.f24444f, exc, this.f24446i.f24676c, DataSource.DATA_DISK_CACHE);
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public final void cancel() {
        ModelLoader.LoadData loadData = this.f24446i;
        if (loadData != null) {
            loadData.f24676c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public final void f(Object obj) {
        this.d.onDataFetcherReady(this.f24444f, obj, this.f24446i.f24676c, DataSource.DATA_DISK_CACHE, this.f24444f);
    }
}
