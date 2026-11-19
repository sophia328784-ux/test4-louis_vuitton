package androidx.core.app;

import android.app.Notification;

/* JADX INFO: loaded from: classes.dex */
public class NotificationCompat$DecoratedCustomViewStyle extends NotificationCompat$Style {

    public static class Api24Impl {
        public static Notification.Style a() {
            return new Notification.DecoratedCustomViewStyle();
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        ((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f11948b.setStyle(Api24Impl.a());
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final String e() {
        return "androidx.core.app.NotificationCompat$DecoratedCustomViewStyle";
    }
}
