package com.perfectcorp.perfectlib.hc.database.ymk.downloadimage;

/* JADX INFO: loaded from: classes3.dex */
public class DownloadImageInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f40306a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f40307b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f40308c;
    public final DownloadImageDao.Type d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f40309e;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f40310a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f40311b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f40312c;
        public DownloadImageDao.Type d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f40313e;
    }

    public DownloadImageInfo(Builder builder) {
        this.f40306a = builder.f40310a;
        this.f40307b = builder.f40311b;
        this.f40308c = builder.f40312c;
        this.d = builder.d;
        this.f40309e = builder.f40313e;
    }
}
