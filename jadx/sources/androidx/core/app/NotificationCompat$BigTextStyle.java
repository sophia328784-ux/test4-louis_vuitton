package androidx.core.app;

import android.app.Notification;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class NotificationCompat$BigTextStyle extends NotificationCompat$Style {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CharSequence f11896e;

    public NotificationCompat$BigTextStyle(NotificationCompat$Builder notificationCompat$Builder) {
        g(notificationCompat$Builder);
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        Notification.BigTextStyle bigTextStyleBigText = new Notification.BigTextStyle(((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).f11948b).setBigContentTitle(this.f11945b).bigText(this.f11896e);
        if (this.d) {
            bigTextStyleBigText.setSummaryText(this.f11946c);
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void c(Bundle bundle) {
        super.c(bundle);
        bundle.remove("android.bigText");
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final String e() {
        return "androidx.core.app.NotificationCompat$BigTextStyle";
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void f(Bundle bundle) {
        super.f(bundle);
        this.f11896e = bundle.getCharSequence("android.bigText");
    }

    public NotificationCompat$BigTextStyle() {
    }
}
