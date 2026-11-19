package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.notifications.NotificationsSdkProvider;
import com.vuitton.android.domain.repository.PrivacyRelatedToolRepository;
import com.vuitton.android.domain.repository.PrivacyRelatedToolRequirements;
import defpackage.fc;
import defpackage.md;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/NotificationsManagerRepositoryImpl;", "Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRepository;", "Lcom/vuitton/android/core/notifications/NotificationsSdkProvider;", "notificationsSdkProvider", "<init>", "(Lcom/vuitton/android/core/notifications/NotificationsSdkProvider;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NotificationsManagerRepositoryImpl implements PrivacyRelatedToolRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final NotificationsSdkProvider f47798a;

    @Inject
    public NotificationsManagerRepositoryImpl(NotificationsSdkProvider notificationsSdkProvider) {
        notificationsSdkProvider.getClass();
        this.f47798a = notificationsSdkProvider;
    }

    @Override // com.vuitton.android.domain.repository.PrivacyRelatedToolRepository
    public final void a(PrivacyRelatedToolRequirements privacyRelatedToolRequirements) {
        PrivacyRelatedToolRequirements.NotificationsManagerRequirements notificationsManagerRequirements = privacyRelatedToolRequirements instanceof PrivacyRelatedToolRequirements.NotificationsManagerRequirements ? (PrivacyRelatedToolRequirements.NotificationsManagerRequirements) privacyRelatedToolRequirements : null;
        if (notificationsManagerRequirements == null) {
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            md.n(fc.i("Invalid requirements type. Required ", reflectionFactory.b(PrivacyRelatedToolRequirements.NotificationsManagerRequirements.class).B(), " but got ", reflectionFactory.b(privacyRelatedToolRequirements.getClass()).B()));
            return;
        }
        boolean z = notificationsManagerRequirements.f49006a;
        NotificationsSdkProvider notificationsSdkProvider = this.f47798a;
        if (z) {
            if (notificationsSdkProvider.a()) {
                return;
            }
            notificationsSdkProvider.n();
        } else if (notificationsSdkProvider.c()) {
            notificationsSdkProvider.b();
        }
    }
}
