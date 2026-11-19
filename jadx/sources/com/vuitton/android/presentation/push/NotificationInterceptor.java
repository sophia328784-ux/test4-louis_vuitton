package com.vuitton.android.presentation.push;

import android.content.Context;
import android.os.Bundle;
import androidx.core.app.NotificationCompat$Builder;
import com.batch.android.BatchNotificationInterceptor;
import com.vuitton.foundation.logger.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/push/NotificationInterceptor;", "Lcom/batch/android/BatchNotificationInterceptor;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Lcom/vuitton/foundation/logger/Logger;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NotificationInterceptor extends BatchNotificationInterceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f51859a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/push/NotificationInterceptor$Companion;", "", "", "kotlin.jvm.PlatformType", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public NotificationInterceptor(Logger logger) {
        logger.getClass();
        this.f51859a = logger;
    }

    @Override // com.batch.android.BatchNotificationInterceptor
    public final NotificationCompat$Builder getPushNotificationCompatBuilder(Context context, NotificationCompat$Builder notificationCompat$Builder, Bundle bundle, int i2) {
        context.getClass();
        notificationCompat$Builder.getClass();
        bundle.getClass();
        bundle.toString();
        this.f51859a.getClass();
        return notificationCompat$Builder;
    }
}
