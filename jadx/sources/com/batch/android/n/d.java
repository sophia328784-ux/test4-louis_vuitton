package com.batch.android.n;

import com.batch.android.BatchNotificationChannelsManager;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f23750a = new d();

    private d() {
    }

    @JvmStatic
    public static final BatchNotificationChannelsManager a() {
        BatchNotificationChannelsManager batchNotificationChannelsManager = (BatchNotificationChannelsManager) com.batch.android.m.a.b().a(BatchNotificationChannelsManager.class);
        if (batchNotificationChannelsManager != null) {
            return batchNotificationChannelsManager;
        }
        BatchNotificationChannelsManager batchNotificationChannelsManagerProvide = BatchNotificationChannelsManager.provide();
        com.batch.android.m.a.b().a(BatchNotificationChannelsManager.class, batchNotificationChannelsManagerProvide);
        return batchNotificationChannelsManagerProvide;
    }

    @JvmStatic
    public static final BatchNotificationChannelsManager b() {
        return (BatchNotificationChannelsManager) com.batch.android.m.a.b().a(BatchNotificationChannelsManager.class);
    }
}
