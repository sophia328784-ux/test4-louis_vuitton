package androidx.media3.session;

import android.app.Notification;
import android.app.PendingIntent;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.graphics.drawable.IconCompat;
import com.google.common.collect.ImmutableList;

/* JADX INFO: loaded from: classes.dex */
public final class MediaNotification {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Notification f17382b;

    public interface ActionFactory {
        NotificationCompat$Action a(MediaSession mediaSession, IconCompat iconCompat, CharSequence charSequence, int i2);

        default PendingIntent b(MediaSession mediaSession) {
            return d(mediaSession, 3);
        }

        NotificationCompat$Action c(MediaSession mediaSession, CommandButton commandButton);

        PendingIntent d(MediaSession mediaSession, int i2);
    }

    public interface Provider {

        public interface Callback {
            void a(MediaNotification mediaNotification);
        }

        public static class NotificationChannelInfo {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f17383a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f17384b;

            public NotificationChannelInfo(String str, String str2) {
                this.f17383a = str;
                this.f17384b = str2;
            }
        }

        NotificationChannelInfo a();

        MediaNotification b(MediaSession mediaSession, ImmutableList immutableList, ActionFactory actionFactory, n nVar);
    }

    public MediaNotification(int i2, Notification notification) {
        this.f17381a = i2;
        notification.getClass();
        this.f17382b = notification;
    }
}
