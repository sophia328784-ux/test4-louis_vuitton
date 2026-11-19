package com.vuitton.android.presentation.di.notifications;

import com.vuitton.android.core.notifications.NotificationsSdkProvider;
import com.vuitton.android.presentation.push.NotificationsManager;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/di/notifications/NotificationsSdkProviderImpl;", "Lcom/vuitton/android/core/notifications/NotificationsSdkProvider;", "Lcom/vuitton/android/presentation/push/NotificationsManager;", "notificationsManager", "<init>", "(Lcom/vuitton/android/presentation/push/NotificationsManager;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NotificationsSdkProviderImpl implements NotificationsSdkProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NotificationsManager f51482a;

    @Inject
    public NotificationsSdkProviderImpl(NotificationsManager notificationsManager) {
        notificationsManager.getClass();
        this.f51482a = notificationsManager;
    }

    @Override // com.vuitton.android.core.notifications.NotificationsSdkProvider
    public final boolean a() {
        return this.f51482a.q();
    }

    @Override // com.vuitton.android.core.notifications.NotificationsSdkProvider
    public final void b() {
        this.f51482a.b();
    }

    @Override // com.vuitton.android.core.notifications.NotificationsSdkProvider
    public final boolean c() {
        return this.f51482a.c();
    }

    @Override // com.vuitton.android.core.notifications.NotificationsSdkProvider
    public final void n() {
        this.f51482a.init();
    }
}
