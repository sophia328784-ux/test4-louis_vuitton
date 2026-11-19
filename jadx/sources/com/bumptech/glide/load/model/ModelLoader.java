package com.bumptech.glide.load.model;

import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.util.Preconditions;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface ModelLoader<Model, Data> {
    boolean a(Object obj);

    LoadData b(Object obj, int i2, int i3, Options options);

    public static class LoadData<Data> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Key f24674a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f24675b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final DataFetcher f24676c;

        public LoadData(Key key, List<Key> list, DataFetcher<Data> dataFetcher) {
            Preconditions.c(key, "Argument must not be null");
            this.f24674a = key;
            Preconditions.c(list, "Argument must not be null");
            this.f24675b = list;
            Preconditions.c(dataFetcher, "Argument must not be null");
            this.f24676c = dataFetcher;
        }

        public LoadData(Key key, DataFetcher<Data> dataFetcher) {
            this(key, Collections.EMPTY_LIST, dataFetcher);
        }
    }
}
