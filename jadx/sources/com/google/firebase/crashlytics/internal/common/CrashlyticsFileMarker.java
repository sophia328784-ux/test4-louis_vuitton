package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.Logger;
import com.google.firebase.crashlytics.internal.persistence.FileStore;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
class CrashlyticsFileMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f34542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FileStore f34543b;

    public CrashlyticsFileMarker(String str, FileStore fileStore) {
        this.f34542a = str;
        this.f34543b = fileStore;
    }

    public final void a() {
        try {
            FileStore fileStore = this.f34543b;
            String str = this.f34542a;
            fileStore.getClass();
            new File(fileStore.f35010c, str).createNewFile();
        } catch (IOException unused) {
            Logger.f34483b.b();
        }
    }
}
