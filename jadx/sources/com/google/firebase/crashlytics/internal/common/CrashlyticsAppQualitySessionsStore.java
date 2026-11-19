package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.persistence.FileStore;
import defpackage.tq;
import defpackage.x5;

/* JADX INFO: loaded from: classes2.dex */
class CrashlyticsAppQualitySessionsStore {
    public static final tq d = new tq(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final x5 f34512e = new x5(4);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FileStore f34513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f34514b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f34515c = null;

    public CrashlyticsAppQualitySessionsStore(FileStore fileStore) {
        this.f34513a = fileStore;
    }
}
