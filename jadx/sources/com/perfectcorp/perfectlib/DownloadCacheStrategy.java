package com.perfectcorp.perfectlib;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class DownloadCacheStrategy {
    public static final DownloadCacheStrategy CACHE_FIRST;
    public static final DownloadCacheStrategy CACHE_FIRST_THEN_UPDATE;
    public static final DownloadCacheStrategy CACHE_ONLY;
    public static final DownloadCacheStrategy UPDATE_FIRST;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ DownloadCacheStrategy[] f39550a;

    static {
        DownloadCacheStrategy downloadCacheStrategy = new DownloadCacheStrategy("CACHE_ONLY", 0);
        CACHE_ONLY = downloadCacheStrategy;
        DownloadCacheStrategy downloadCacheStrategy2 = new DownloadCacheStrategy("CACHE_FIRST", 1);
        CACHE_FIRST = downloadCacheStrategy2;
        DownloadCacheStrategy downloadCacheStrategy3 = new DownloadCacheStrategy("UPDATE_FIRST", 2);
        UPDATE_FIRST = downloadCacheStrategy3;
        DownloadCacheStrategy downloadCacheStrategy4 = new DownloadCacheStrategy("CACHE_FIRST_THEN_UPDATE", 3);
        CACHE_FIRST_THEN_UPDATE = downloadCacheStrategy4;
        f39550a = new DownloadCacheStrategy[]{downloadCacheStrategy, downloadCacheStrategy2, downloadCacheStrategy3, downloadCacheStrategy4};
    }

    public static DownloadCacheStrategy valueOf(String str) {
        return (DownloadCacheStrategy) Enum.valueOf(DownloadCacheStrategy.class, str);
    }

    public static DownloadCacheStrategy[] values() {
        return (DownloadCacheStrategy[]) f39550a.clone();
    }
}
