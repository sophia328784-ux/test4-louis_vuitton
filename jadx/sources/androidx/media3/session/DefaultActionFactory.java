package androidx.media3.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.PorterDuff;
import android.os.Bundle;
import androidx.core.app.NotificationCompat$Action;
import androidx.core.graphics.drawable.IconCompat;
import com.google.common.base.Preconditions;
import java.util.concurrent.ThreadLocalRandom;

/* JADX INFO: loaded from: classes.dex */
final class DefaultActionFactory implements MediaNotification.ActionFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaSessionService f17284a;

    public DefaultActionFactory(MediaSessionService mediaSessionService) {
        this.f17284a = mediaSessionService;
    }

    @Override // androidx.media3.session.MediaNotification.ActionFactory
    public final NotificationCompat$Action a(MediaSession mediaSession, IconCompat iconCompat, CharSequence charSequence, int i2) {
        return new NotificationCompat$Action(iconCompat, charSequence, d(mediaSession, i2));
    }

    @Override // androidx.media3.session.MediaNotification.ActionFactory
    public final PendingIntent b(MediaSession mediaSession) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("androidx.media3.session.NOTIFICATION_DISMISSED_EVENT_KEY", true);
        MediaSessionService mediaSessionService = this.f17284a;
        PlaybackPendingIntentBuilder playbackPendingIntentBuilder = new PlaybackPendingIntentBuilder(mediaSessionService, 3, mediaSessionService.getClass());
        playbackPendingIntentBuilder.f17494f = mediaSession.f17401a.f17432i;
        playbackPendingIntentBuilder.g = bundle;
        return playbackPendingIntentBuilder.a();
    }

    @Override // androidx.media3.session.MediaNotification.ActionFactory
    public final NotificationCompat$Action c(MediaSession mediaSession, CommandButton commandButton) {
        SessionCommand sessionCommand = commandButton.f17238a;
        Preconditions.g(sessionCommand != null && sessionCommand.f17539a == 0);
        sessionCommand.getClass();
        int i2 = commandButton.d;
        PorterDuff.Mode mode = IconCompat.f12064k;
        MediaSessionService mediaSessionService = this.f17284a;
        mediaSessionService.getClass();
        IconCompat iconCompatE = IconCompat.e(mediaSessionService.getResources(), mediaSessionService.getPackageName(), i2);
        CharSequence charSequence = commandButton.f17242f;
        CustomCommandPendingIntentBuilder customCommandPendingIntentBuilder = new CustomCommandPendingIntentBuilder(mediaSessionService, mediaSessionService.getClass(), sessionCommand);
        customCommandPendingIntentBuilder.d = mediaSession.f17401a.f17432i;
        int iNextInt = ThreadLocalRandom.current().nextInt();
        String str = customCommandPendingIntentBuilder.d;
        SessionCommand sessionCommand2 = customCommandPendingIntentBuilder.f17283c;
        Preconditions.g(sessionCommand2.f17539a == 0);
        Intent intent = new Intent("androidx.media3.session.CUSTOM_NOTIFICATION_ACTION");
        intent.setData(MediaSessionImpl.c(str));
        Context context = customCommandPendingIntentBuilder.f17281a;
        intent.setComponent(new ComponentName(context, (Class<?>) customCommandPendingIntentBuilder.f17282b));
        intent.putExtra("androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION", sessionCommand2.f17540b);
        intent.putExtra("androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION_EXTRAS", sessionCommand2.f17541c);
        return new NotificationCompat$Action(iconCompatE, charSequence, PendingIntent.getService(context, iNextInt, intent, 201326592));
    }

    @Override // androidx.media3.session.MediaNotification.ActionFactory
    public final PendingIntent d(MediaSession mediaSession, int i2) {
        MediaSessionService mediaSessionService = this.f17284a;
        PlaybackPendingIntentBuilder playbackPendingIntentBuilder = new PlaybackPendingIntentBuilder(mediaSessionService, i2, mediaSessionService.getClass());
        playbackPendingIntentBuilder.f17493e = !mediaSession.a().r();
        playbackPendingIntentBuilder.f17494f = mediaSession.f17401a.f17432i;
        return playbackPendingIntentBuilder.a();
    }
}
