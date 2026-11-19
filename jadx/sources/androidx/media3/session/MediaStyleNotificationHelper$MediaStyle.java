package androidx.media3.session;

import android.app.Notification;
import android.os.Bundle;
import androidx.core.app.NotificationBuilderWithBuilderAccessor;
import androidx.core.app.NotificationCompat$Style;

/* JADX INFO: loaded from: classes.dex */
public class MediaStyleNotificationHelper$MediaStyle extends NotificationCompat$Style {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MediaSession f17487e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[] f17488f;

    public MediaStyleNotificationHelper$MediaStyle(MediaSession mediaSession) {
        this.f17487e = mediaSession;
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void b(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        Notification.MediaStyle mediaStyle = new Notification.MediaStyle();
        MediaSession mediaSession = this.f17487e;
        Notification.MediaStyle mediaSession2 = mediaStyle.setMediaSession(mediaSession.f17401a.f17431h.l.c().f17819c);
        int[] iArr = this.f17488f;
        if (iArr != null) {
            mediaSession2.setShowActionsInCompactView(iArr);
        }
        notificationBuilderWithBuilderAccessor.a().setStyle(mediaSession2);
        Bundle bundle = new Bundle();
        bundle.putBundle("androidx.media3.session", mediaSession.f17401a.f17433j.b());
        notificationBuilderWithBuilderAccessor.a().addExtras(bundle);
    }
}
