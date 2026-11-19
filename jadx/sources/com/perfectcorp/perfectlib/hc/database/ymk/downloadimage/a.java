package com.perfectcorp.perfectlib.hc.database.ymk.downloadimage;

import com.perfectcorp.thirdparty.com.google.common.base.Function;
import defpackage.n00;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class a implements Function {
    @Override // com.perfectcorp.thirdparty.com.google.common.base.Function
    public final Object apply(Object obj) {
        DownloadImageDao.Type type = (DownloadImageDao.Type) obj;
        DownloadImageDao downloadImageDao = DownloadImageDao.d;
        StringBuilder sb = new StringBuilder("type = '");
        Objects.requireNonNull(type);
        return n00.r(type.f40305a, "'", sb);
    }
}
