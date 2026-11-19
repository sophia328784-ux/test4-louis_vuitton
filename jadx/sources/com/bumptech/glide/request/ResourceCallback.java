package com.bumptech.glide.request;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.engine.Resource;

/* JADX INFO: loaded from: classes2.dex */
public interface ResourceCallback {
    void c(Resource resource, DataSource dataSource, boolean z);

    void d(GlideException glideException);

    Object g();
}
