package com.google.firebase.crashlytics.internal.metadata;

import com.google.firebase.crashlytics.internal.persistence.FileStore;

/* JADX INFO: loaded from: classes2.dex */
public class LogFileManager {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final NoopLogStore f34608c = new NoopLogStore();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FileStore f34609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FileLogStore f34610b;

    public static final class NoopLogStore implements FileLogStore {
        @Override // com.google.firebase.crashlytics.internal.metadata.FileLogStore
        public final void a() {
        }

        @Override // com.google.firebase.crashlytics.internal.metadata.FileLogStore
        public final String b() {
            return null;
        }

        @Override // com.google.firebase.crashlytics.internal.metadata.FileLogStore
        public final void c(long j2, String str) {
        }
    }

    public LogFileManager(FileStore fileStore) {
        this.f34609a = fileStore;
        this.f34610b = f34608c;
    }

    public final String a() {
        return this.f34610b.b();
    }

    public final void b(String str) {
        this.f34610b.a();
        this.f34610b = f34608c;
        if (str == null) {
            return;
        }
        this.f34610b = new QueueFileLogStore(this.f34609a.b(str, "userlog"));
    }

    public final void c(long j2, String str) {
        this.f34610b.c(j2, str);
    }

    public LogFileManager(FileStore fileStore, String str) {
        this(fileStore);
        b(str);
    }
}
