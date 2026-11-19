package androidx.media3.session;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.os.Build;
import android.os.Handler;
import androidx.core.app.NotificationCompat$Builder;
import androidx.core.graphics.drawable.IconCompat;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Player;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.ImmutableIntArray;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.vuitton.android.R;
import defpackage.dc;
import defpackage.os;
import defpackage.ur;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public class DefaultMediaNotificationProvider implements MediaNotification.Provider {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Supplier f17285j = Suppliers.a(new ur(1));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f17286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NotificationIdProvider f17287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17288c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NotificationManager f17289e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public OnBitmapLoadedFutureCallback f17290f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public androidx.media3.common.util.BitmapLoader f17291h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CacheBitmapLoader f17292i;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f17293a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final os f17294b = new os(26);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f17295c;
        public boolean d;

        public Builder(Context context) {
            this.f17293a = context;
            Supplier supplier = DefaultMediaNotificationProvider.f17285j;
            this.f17295c = R.string.default_notification_channel_name;
        }
    }

    public interface NotificationIdProvider {
        void b();
    }

    public static class OnBitmapLoadedFutureCallback implements FutureCallback<Bitmap> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f17296a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final NotificationCompat$Builder f17297b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MediaNotification.Provider.Callback f17298c;
        public boolean d;

        public OnBitmapLoadedFutureCallback(int i2, NotificationCompat$Builder notificationCompat$Builder, MediaNotification.Provider.Callback callback) {
            this.f17296a = i2;
            this.f17297b = notificationCompat$Builder;
            this.f17298c = callback;
        }

        @Override // com.google.common.util.concurrent.FutureCallback
        public final void onFailure(Throwable th) {
            if (this.d) {
                return;
            }
            Supplier supplier = DefaultMediaNotificationProvider.f17285j;
            Log.g("Failed to load bitmap: " + th.getMessage());
        }

        @Override // com.google.common.util.concurrent.FutureCallback
        public final void onSuccess(Object obj) {
            Bitmap bitmap = (Bitmap) obj;
            if (this.d) {
                return;
            }
            NotificationCompat$Builder notificationCompat$Builder = this.f17297b;
            notificationCompat$Builder.h(bitmap);
            this.f17298c.a(new MediaNotification(this.f17296a, notificationCompat$Builder.c()));
        }
    }

    public DefaultMediaNotificationProvider(Context context, NotificationIdProvider notificationIdProvider, String str, int i2) {
        this.f17286a = context;
        this.f17287b = notificationIdProvider;
        this.f17288c = str;
        this.d = i2;
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        notificationManager.getClass();
        this.f17289e = notificationManager;
        this.g = R.drawable.media3_notification_small_icon;
    }

    @Override // androidx.media3.session.MediaNotification.Provider
    public final MediaNotification.Provider.NotificationChannelInfo a() {
        return new MediaNotification.Provider.NotificationChannelInfo(this.f17288c, this.f17286a.getString(this.d));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.session.MediaNotification.Provider
    public final MediaNotification b(MediaSession mediaSession, ImmutableList immutableList, MediaNotification.ActionFactory actionFactory, n nVar) {
        int i2;
        boolean z;
        Context context;
        int i3 = this.d;
        Context context2 = this.f17286a;
        String string = context2.getString(i3);
        String str = Util.f14242a;
        NotificationManager notificationManager = this.f17289e;
        String str2 = this.f17288c;
        if (notificationManager.getNotificationChannel(str2) == null) {
            notificationManager.createNotificationChannel(new NotificationChannel(str2, string, 2));
        }
        Player playerA = mediaSession.a();
        NotificationCompat$Builder notificationCompat$Builder = new NotificationCompat$Builder(context2, str2);
        this.f17287b.b();
        MediaStyleNotificationHelper$MediaStyle mediaStyleNotificationHelper$MediaStyle = new MediaStyleNotificationHelper$MediaStyle(mediaSession);
        Player.Commands commandsI0 = playerA.i0();
        MediaSessionImpl mediaSessionImpl = mediaSession.f17401a;
        boolean zB0 = Util.b0(playerA, mediaSessionImpl.p);
        ImmutableList immutableListJ = CommandButton.j(immutableList, true, true, 9);
        boolean zC = CommandButton.c(2, immutableListJ);
        boolean zC2 = CommandButton.c(3, immutableListJ);
        ImmutableList.Builder builder = new ImmutableList.Builder();
        if (zC) {
            builder.e((CommandButton) immutableListJ.get(0));
            i2 = 1;
        } else {
            if (commandsI0.f13924a.a(7, 6)) {
                CommandButton.Builder builder2 = new CommandButton.Builder(57413);
                builder2.c(6);
                builder2.f17250f = context2.getString(R.string.media3_controls_seek_to_previous_description);
                builder.e(builder2.a());
            }
            i2 = 0;
        }
        if (commandsI0.a(1)) {
            if (zB0) {
                CommandButton.Builder builder3 = new CommandButton.Builder(57399);
                builder3.c(1);
                builder3.f17250f = context2.getString(R.string.media3_controls_play_description);
                builder.e(builder3.a());
            } else {
                CommandButton.Builder builder4 = new CommandButton.Builder(57396);
                builder4.c(1);
                builder4.f17250f = context2.getString(R.string.media3_controls_pause_description);
                builder.e(builder4.a());
            }
        }
        if (zC2) {
            builder.e((CommandButton) immutableListJ.get(i2));
            i2++;
        } else if (commandsI0.f13924a.a(9, 8)) {
            CommandButton.Builder builder5 = new CommandButton.Builder(57412);
            builder5.c(8);
            builder5.f17250f = context2.getString(R.string.media3_controls_seek_to_next_description);
            builder.e(builder5.a());
        }
        while (i2 < immutableListJ.size()) {
            builder.e((CommandButton) immutableListJ.get(i2));
            i2++;
        }
        ImmutableList immutableListJ2 = builder.j();
        int[] iArrCopyOf = new int[3];
        int[] iArr = new int[3];
        Arrays.fill(iArrCopyOf, -1);
        Arrays.fill(iArr, -1);
        int i4 = 0;
        boolean z2 = false;
        while (i4 < immutableListJ2.size()) {
            CommandButton commandButton = (CommandButton) immutableListJ2.get(i4);
            SessionCommand sessionCommand = commandButton.f17238a;
            int i5 = commandButton.f17239b;
            ImmutableList immutableList2 = immutableListJ2;
            ImmutableIntArray immutableIntArray = commandButton.f17243h;
            if (sessionCommand != null) {
                notificationCompat$Builder.b(actionFactory.c(mediaSession, commandButton));
                context = context2;
            } else {
                Preconditions.q(i5 != -1);
                int i6 = commandButton.d;
                PorterDuff.Mode mode = IconCompat.f12064k;
                context = context2;
                notificationCompat$Builder.b(actionFactory.a(mediaSession, IconCompat.e(context.getResources(), context.getPackageName(), i6), commandButton.f17242f, i5));
            }
            int i7 = commandButton.g.getInt("androidx.media3.session.command.COMPACT_VIEW_INDEX", -1);
            if (i7 >= 0 && i7 < 3) {
                iArrCopyOf[i7] = i4;
                z2 = true;
            } else if (immutableIntArray.b(0) == 2) {
                iArr[0] = i4;
            } else if (immutableIntArray.b(0) == 1) {
                iArr[1] = i4;
            } else if (immutableIntArray.b(0) == 3) {
                iArr[2] = i4;
            }
            i4++;
            immutableListJ2 = immutableList2;
            context2 = context;
            iArr = iArr;
        }
        int[] iArr2 = iArr;
        if (!z2) {
            int i8 = 0;
            int i9 = 0;
            for (int i10 = 3; i9 < i10; i10 = 3) {
                int i11 = iArr2[i9];
                if (i11 != -1) {
                    iArrCopyOf[i8] = i11;
                    i8++;
                }
                i9++;
            }
        }
        for (int i12 = 0; i12 < 3; i12++) {
            if (iArrCopyOf[i12] == -1) {
                iArrCopyOf = Arrays.copyOf(iArrCopyOf, i12);
                break;
            }
        }
        mediaStyleNotificationHelper$MediaStyle.f17488f = iArrCopyOf;
        if (playerA.R0(18)) {
            MediaMetadata mediaMetadataA = playerA.A();
            notificationCompat$Builder.f11910e = NotificationCompat$Builder.e(mediaMetadataA.f13879a);
            notificationCompat$Builder.f11911f = NotificationCompat$Builder.e(mediaMetadataA.f13880b);
            androidx.media3.common.util.BitmapLoader bitmapLoader = mediaSessionImpl.m;
            if (this.f17292i == null || !bitmapLoader.equals(this.f17291h)) {
                this.f17291h = bitmapLoader;
                z = true;
                this.f17292i = new CacheBitmapLoader(new SizeLimitedBitmapLoader(bitmapLoader, ((Integer) f17285j.get()).intValue(), true));
            } else {
                z = true;
            }
            ListenableFuture listenableFutureA = this.f17292i.a(mediaMetadataA);
            if (listenableFutureA != null) {
                OnBitmapLoadedFutureCallback onBitmapLoadedFutureCallback = this.f17290f;
                if (onBitmapLoadedFutureCallback != null) {
                    onBitmapLoadedFutureCallback.d = z;
                }
                if (listenableFutureA.isDone()) {
                    try {
                        notificationCompat$Builder.h((Bitmap) Futures.d(listenableFutureA));
                    } catch (CancellationException | ExecutionException e2) {
                        Log.g("Failed to load bitmap: " + e2.getMessage());
                    }
                } else {
                    OnBitmapLoadedFutureCallback onBitmapLoadedFutureCallback2 = new OnBitmapLoadedFutureCallback(1001, notificationCompat$Builder, nVar);
                    this.f17290f = onBitmapLoadedFutureCallback2;
                    Handler handler = mediaSessionImpl.l;
                    Objects.requireNonNull(handler);
                    Futures.a(listenableFutureA, onBitmapLoadedFutureCallback2, new dc(handler, 1));
                }
            }
        }
        long jCurrentTimeMillis = (!playerA.isPlaying() || playerA.j() || playerA.S0() || playerA.a().f13919a != 1.0f) ? -9223372036854775807L : System.currentTimeMillis() - playerA.u();
        boolean z3 = jCurrentTimeMillis != -9223372036854775807L;
        if (!z3) {
            jCurrentTimeMillis = 0;
        }
        Notification notification = notificationCompat$Builder.Q;
        notification.when = jCurrentTimeMillis;
        notificationCompat$Builder.n = z3;
        notificationCompat$Builder.o = z3;
        if (Build.VERSION.SDK_INT >= 31) {
            notificationCompat$Builder.N = 1;
        }
        notificationCompat$Builder.f11912h = mediaSessionImpl.v;
        notification.deleteIntent = actionFactory.b(mediaSession);
        notificationCompat$Builder.g(8, true);
        notification.icon = this.g;
        notificationCompat$Builder.i(mediaStyleNotificationHelper$MediaStyle);
        notificationCompat$Builder.E = 1;
        notificationCompat$Builder.g(2, false);
        notificationCompat$Builder.v = "media3_group_key";
        return new MediaNotification(1001, notificationCompat$Builder.c());
    }

    public DefaultMediaNotificationProvider(Context context) {
        this(context, new os(25), "default_channel_id", R.string.default_notification_channel_name);
    }
}
