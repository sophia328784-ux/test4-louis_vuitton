package com.perfectcorp.common.network;

import java.io.File;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class DownloadReport<K, V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f39308a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f39309b;

    public static class CompleteReport extends DownloadReport<DownloadTask.Key, File> {
        public CompleteReport(DownloadTask.Key key, File file) {
            super(key, file);
        }
    }

    public static class ProgressReport extends DownloadReport<DownloadTask.Key, Double> {
        public ProgressReport(DownloadTask.Key key, Double d) {
            super(key, d);
        }
    }

    public DownloadReport(DownloadTask.Key key, Object obj) {
        Objects.requireNonNull(key);
        this.f39308a = key;
        Objects.requireNonNull(obj);
        this.f39309b = obj;
    }
}
