package androidx.media3.session.legacy;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.media.MediaMetadata;
import android.media.Rating;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.versionedparcelable.ParcelUtils;
import androidx.versionedparcelable.VersionedParcelable;
import defpackage.d21;
import defpackage.md;
import defpackage.o60;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MediaSessionCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaSessionImplApi29 f17799a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MediaControllerCompat f17800b;

    /* JADX INFO: renamed from: androidx.media3.session.legacy.MediaSessionCompat$1, reason: invalid class name */
    public class AnonymousClass1 extends Callback {
    }

    public static abstract class Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f17801a = new Object();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaSession.Callback f17802b = new MediaSessionCallback();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public WeakReference f17803c = new WeakReference(null);
        public CallbackHandler d;

        public class CallbackHandler extends Handler {
            private static final int MSG_MEDIA_PLAY_PAUSE_KEY_DOUBLE_TAP_TIMEOUT = 1;

            public CallbackHandler(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                MediaSessionImpl mediaSessionImpl;
                Callback callback;
                CallbackHandler callbackHandler;
                if (message.what == 1) {
                    synchronized (Callback.this.f17801a) {
                        mediaSessionImpl = (MediaSessionImpl) Callback.this.f17803c.get();
                        callback = Callback.this;
                        callbackHandler = callback.d;
                    }
                    if (mediaSessionImpl == null || callback != mediaSessionImpl.a() || callbackHandler == null) {
                        return;
                    }
                    Callback.this.getClass();
                }
            }
        }

        public class MediaSessionCallback extends MediaSession.Callback {
            public MediaSessionCallback() {
            }

            public final MediaSessionImplApi23 a() {
                MediaSessionImplApi23 mediaSessionImplApi23;
                synchronized (Callback.this.f17801a) {
                    mediaSessionImplApi23 = (MediaSessionImplApi23) Callback.this.f17803c.get();
                }
                if (mediaSessionImplApi23 == null || Callback.this != mediaSessionImplApi23.a()) {
                    return null;
                }
                return mediaSessionImplApi23;
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
                VersionedParcelable versionedParcelable;
                MediaSessionImplApi23 mediaSessionImplApi23A = a();
                if (mediaSessionImplApi23A == null) {
                    return;
                }
                Bundle bundleP = Util.p(bundle);
                try {
                    QueueItem queueItem = null;
                    IBinder iBinderAsBinder = null;
                    queueItem = null;
                    if (str.equals("android.support.v4.media.session.command.GET_EXTRA_BINDER")) {
                        if (resultReceiver != null) {
                            Bundle bundle2 = new Bundle();
                            Token token = mediaSessionImplApi23A.f17807c;
                            IMediaSession iMediaSessionA = token.a();
                            if (iMediaSessionA != null) {
                                iBinderAsBinder = iMediaSessionA.asBinder();
                            }
                            bundle2.putBinder("android.support.v4.media.session.EXTRA_BINDER", iBinderAsBinder);
                            synchronized (token.f17818b) {
                                versionedParcelable = token.f17820e;
                            }
                            ParcelUtils.b(bundle2, versionedParcelable);
                            resultReceiver.send(0, bundle2);
                            return;
                        }
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM")) {
                        if (bundleP != null) {
                            Callback.this.a((MediaDescriptionCompat) LegacyParcelableUtil.a(bundleP.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"), MediaDescriptionCompat.CREATOR));
                            return;
                        }
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT")) {
                        if (bundleP != null) {
                            Callback.this.b((MediaDescriptionCompat) LegacyParcelableUtil.a(bundleP.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"), MediaDescriptionCompat.CREATOR), bundleP.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX"));
                            return;
                        }
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM")) {
                        if (bundleP != null) {
                            Callback.this.p((MediaDescriptionCompat) LegacyParcelableUtil.a(bundleP.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"), MediaDescriptionCompat.CREATOR));
                        }
                    } else {
                        if (!str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT")) {
                            Callback.this.c(str, bundleP, resultReceiver);
                            return;
                        }
                        List list = mediaSessionImplApi23A.f17810h;
                        if (list == null || bundleP == null) {
                            return;
                        }
                        int i2 = bundleP.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX", -1);
                        if (i2 >= 0 && i2 < list.size()) {
                            queueItem = (QueueItem) list.get(i2);
                        }
                        if (queueItem != null) {
                            Callback.this.p(queueItem.f17815b);
                        }
                    }
                } catch (BadParcelableException unused) {
                    Log.d("Could not unparcel the extra data.");
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onCustomAction(String str, Bundle bundle) {
                if (a() == null) {
                    return;
                }
                Bundle bundleP = Util.p(bundle);
                try {
                    boolean zEquals = str.equals("android.support.v4.media.session.action.PLAY_FROM_URI");
                    Callback callback = Callback.this;
                    if (zEquals) {
                        if (bundleP != null) {
                            callback.k((Uri) bundleP.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI"), Util.p(bundleP.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS")));
                            return;
                        }
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.action.PREPARE")) {
                        callback.l();
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID")) {
                        if (bundleP != null) {
                            callback.m(bundleP.getString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"), Util.p(bundleP.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS")));
                            return;
                        }
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_SEARCH")) {
                        if (bundleP != null) {
                            callback.n(bundleP.getString("android.support.v4.media.session.action.ARGUMENT_QUERY"), Util.p(bundleP.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS")));
                            return;
                        }
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_URI")) {
                        if (bundleP != null) {
                            callback.o((Uri) bundleP.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI"), Util.p(bundleP.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS")));
                            return;
                        }
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.action.SET_CAPTIONING_ENABLED")) {
                        if (bundleP != null) {
                            bundleP.getBoolean("android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED");
                            return;
                        }
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.action.SET_REPEAT_MODE")) {
                        if (bundleP != null) {
                            callback.v(bundleP.getInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"));
                            return;
                        }
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.action.SET_SHUFFLE_MODE")) {
                        if (bundleP != null) {
                            callback.w(bundleP.getInt("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"));
                        }
                    } else {
                        if (str.equals("android.support.v4.media.session.action.SET_RATING")) {
                            if (bundleP != null) {
                                RatingCompat ratingCompat = (RatingCompat) LegacyParcelableUtil.a(bundleP.getParcelable("android.support.v4.media.session.action.ARGUMENT_RATING"), RatingCompat.CREATOR);
                                Util.p(bundleP.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                                callback.u(ratingCompat);
                                return;
                            }
                            return;
                        }
                        if (!str.equals("android.support.v4.media.session.action.SET_PLAYBACK_SPEED")) {
                            callback.d(str, bundleP);
                        } else if (bundleP != null) {
                            callback.s(bundleP.getFloat("android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED", 1.0f));
                        }
                    }
                } catch (BadParcelableException unused) {
                    Log.d("Could not unparcel the data.");
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onFastForward() {
                if (a() == null) {
                    return;
                }
                Callback.this.e();
            }

            @Override // android.media.session.MediaSession.Callback
            public final boolean onMediaButtonEvent(Intent intent) {
                if (a() == null) {
                    return false;
                }
                return Callback.this.f(intent) || super.onMediaButtonEvent(intent);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPause() {
                if (a() == null) {
                    return;
                }
                Callback.this.g();
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlay() {
                if (a() == null) {
                    return;
                }
                Callback.this.h();
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlayFromMediaId(String str, Bundle bundle) {
                if (a() == null) {
                    return;
                }
                Callback.this.i(str, Util.p(bundle));
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlayFromSearch(String str, Bundle bundle) {
                if (a() == null) {
                    return;
                }
                Callback.this.j(str, Util.p(bundle));
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlayFromUri(Uri uri, Bundle bundle) {
                if (a() == null) {
                    return;
                }
                Callback.this.k(uri, Util.p(bundle));
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepare() {
                if (a() == null) {
                    return;
                }
                Callback.this.l();
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepareFromMediaId(String str, Bundle bundle) {
                if (a() == null) {
                    return;
                }
                Callback.this.m(str, Util.p(bundle));
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepareFromSearch(String str, Bundle bundle) {
                if (a() == null) {
                    return;
                }
                Callback.this.n(str, Util.p(bundle));
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepareFromUri(Uri uri, Bundle bundle) {
                if (a() == null) {
                    return;
                }
                Callback.this.o(uri, Util.p(bundle));
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onRewind() {
                if (a() == null) {
                    return;
                }
                Callback.this.q();
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSeekTo(long j2) {
                if (a() == null) {
                    return;
                }
                Callback.this.r(j2);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSetPlaybackSpeed(float f2) {
                if (a() == null) {
                    return;
                }
                Callback.this.s(f2);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSetRating(Rating rating) {
                if (a() == null) {
                    return;
                }
                Callback.this.t(RatingCompat.a(rating));
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSkipToNext() {
                if (a() == null) {
                    return;
                }
                Callback.this.x();
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSkipToPrevious() {
                if (a() == null) {
                    return;
                }
                Callback.this.y();
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSkipToQueueItem(long j2) {
                if (a() == null) {
                    return;
                }
                Callback.this.z(j2);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onStop() {
                if (a() == null) {
                    return;
                }
                Callback.this.A();
            }
        }

        public void A() {
        }

        public void a(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void b(MediaDescriptionCompat mediaDescriptionCompat, int i2) {
        }

        public void c(String str, Bundle bundle, ResultReceiver resultReceiver) {
        }

        public void d(String str, Bundle bundle) {
        }

        public void e() {
        }

        public boolean f(Intent intent) {
            return false;
        }

        public void g() {
        }

        public void h() {
        }

        public void i(String str, Bundle bundle) {
        }

        public void j(String str, Bundle bundle) {
        }

        public void k(Uri uri, Bundle bundle) {
        }

        public void l() {
        }

        public void m(String str, Bundle bundle) {
        }

        public void n(String str, Bundle bundle) {
        }

        public void o(Uri uri, Bundle bundle) {
        }

        public void p(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void q() {
        }

        public void r(long j2) {
        }

        public void s(float f2) {
        }

        public void t(RatingCompat ratingCompat) {
        }

        public void u(RatingCompat ratingCompat) {
        }

        public void v(int i2) {
        }

        public void w(int i2) {
        }

        public void x() {
        }

        public void y() {
        }

        public void z(long j2) {
        }
    }

    public interface MediaSessionImpl {
        Callback a();
    }

    public static class MediaSessionImplApi23 implements MediaSessionImpl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaSession f17805a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ExtraSession f17806b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Token f17807c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Bundle f17808e;
        public PlaybackStateCompat g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public List f17810h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public MediaMetadataCompat f17811i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f17812j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f17813k;
        public Callback l;
        public final Object d = new Object();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final RemoteCallbackList f17809f = new RemoteCallbackList();

        public static class ExtraSession extends IMediaSession.Stub {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final WeakReference f17814b;

            public ExtraSession(MediaSessionImplApi28 mediaSessionImplApi28) {
                this.f17814b = new WeakReference(mediaSessionImplApi28);
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public final void C2(IMediaControllerCallback iMediaControllerCallback) {
                MediaSessionImplApi23 mediaSessionImplApi23 = (MediaSessionImplApi23) this.f17814b.get();
                if (mediaSessionImplApi23 == null || iMediaControllerCallback == null) {
                    return;
                }
                mediaSessionImplApi23.f17809f.register(iMediaControllerCallback, new MediaSessionManager.RemoteUserInfo("android.media.session.MediaController", Binder.getCallingPid(), Binder.getCallingUid()));
                synchronized (mediaSessionImplApi23.d) {
                }
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public final void O1(IMediaControllerCallback iMediaControllerCallback) {
                MediaSessionImplApi23 mediaSessionImplApi23 = (MediaSessionImplApi23) this.f17814b.get();
                if (mediaSessionImplApi23 == null || iMediaControllerCallback == null) {
                    return;
                }
                mediaSessionImplApi23.f17809f.unregister(iMediaControllerCallback);
                Binder.getCallingPid();
                Binder.getCallingUid();
                synchronized (mediaSessionImplApi23.d) {
                }
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public final PlaybackStateCompat h() {
                MediaSessionImplApi23 mediaSessionImplApi23 = (MediaSessionImplApi23) this.f17814b.get();
                if (mediaSessionImplApi23 == null) {
                    return null;
                }
                PlaybackStateCompat playbackStateCompat = mediaSessionImplApi23.g;
                MediaMetadataCompat mediaMetadataCompat = mediaSessionImplApi23.f17811i;
                if (playbackStateCompat != null) {
                    float f2 = playbackStateCompat.f17832e;
                    int i2 = playbackStateCompat.f17830b;
                    long j2 = playbackStateCompat.f17831c;
                    long jA = -1;
                    if (j2 != -1 && (i2 == 3 || i2 == 4 || i2 == 5)) {
                        long j3 = playbackStateCompat.f17835i;
                        long j4 = 0;
                        if (j3 > 0) {
                            long jElapsedRealtime = SystemClock.elapsedRealtime();
                            long j5 = ((long) ((jElapsedRealtime - j3) * f2)) + j2;
                            if (mediaMetadataCompat != null && mediaMetadataCompat.f17796b.containsKey("android.media.metadata.DURATION")) {
                                jA = mediaMetadataCompat.a("android.media.metadata.DURATION");
                            }
                            if (jA >= 0 && j5 > jA) {
                                j4 = jA;
                            } else if (j5 >= 0) {
                                j4 = j5;
                            }
                            PlaybackStateCompat.Builder builder = new PlaybackStateCompat.Builder(playbackStateCompat);
                            builder.f17839b = i2;
                            builder.f17840c = j4;
                            builder.f17844i = jElapsedRealtime;
                            builder.f17841e = f2;
                            return builder.a();
                        }
                    }
                }
                return playbackStateCompat;
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public final int i() {
                MediaSessionImplApi23 mediaSessionImplApi23 = (MediaSessionImplApi23) this.f17814b.get();
                if (mediaSessionImplApi23 != null) {
                    return mediaSessionImplApi23.f17812j;
                }
                return -1;
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public final int i0() {
                MediaSessionImplApi23 mediaSessionImplApi23 = (MediaSessionImplApi23) this.f17814b.get();
                if (mediaSessionImplApi23 != null) {
                    return mediaSessionImplApi23.f17813k;
                }
                return -1;
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public final boolean j0() {
                return false;
            }
        }

        public MediaSessionImplApi23(Context context, String str, Bundle bundle) {
            MediaSession mediaSession = new MediaSession(context, str, bundle);
            this.f17805a = mediaSession;
            ExtraSession extraSession = new ExtraSession((MediaSessionImplApi28) this);
            this.f17806b = extraSession;
            this.f17807c = new Token(mediaSession.getSessionToken(), extraSession, null);
            this.f17808e = bundle;
            mediaSession.setFlags(3);
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public final Callback a() {
            Callback callback;
            synchronized (this.d) {
                callback = this.l;
            }
            return callback;
        }
    }

    public static class MediaSessionImplApi28 extends MediaSessionImplApi23 {
    }

    public static class MediaSessionImplApi29 extends MediaSessionImplApi28 {
    }

    public interface RegistrationCallback {
    }

    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ResultReceiver f17817b;

        /* JADX INFO: renamed from: androidx.media3.session.legacy.MediaSessionCompat$ResultReceiverWrapper$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<ResultReceiverWrapper> {
            @Override // android.os.Parcelable.Creator
            public final ResultReceiverWrapper createFromParcel(Parcel parcel) {
                ResultReceiverWrapper resultReceiverWrapper = new ResultReceiverWrapper();
                resultReceiverWrapper.f17817b = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
                return resultReceiverWrapper;
            }

            @Override // android.os.Parcelable.Creator
            public final ResultReceiverWrapper[] newArray(int i2) {
                return new ResultReceiverWrapper[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            this.f17817b.writeToParcel(parcel, i2);
        }
    }

    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f17818b = new Object();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MediaSession.Token f17819c;
        public IMediaSession d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public VersionedParcelable f17820e;

        /* JADX INFO: renamed from: androidx.media3.session.legacy.MediaSessionCompat$Token$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<Token> {
            @Override // android.os.Parcelable.Creator
            public final Token createFromParcel(Parcel parcel) {
                MediaSession.Token token = (MediaSession.Token) parcel.readParcelable(null);
                token.getClass();
                return new Token(token, null, null);
            }

            @Override // android.os.Parcelable.Creator
            public final Token[] newArray(int i2) {
                return new Token[i2];
            }
        }

        public Token(MediaSession.Token token, IMediaSession iMediaSession, VersionedParcelable versionedParcelable) {
            this.f17819c = token;
            this.d = iMediaSession;
            this.f17820e = versionedParcelable;
        }

        public final IMediaSession a() {
            IMediaSession iMediaSession;
            synchronized (this.f17818b) {
                iMediaSession = this.d;
            }
            return iMediaSession;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Token) {
                return this.f17819c.equals(((Token) obj).f17819c);
            }
            return false;
        }

        public final int hashCode() {
            return this.f17819c.hashCode();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeParcelable(this.f17819c, i2);
        }
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, Bundle bundle) {
        ComponentName componentName2 = null;
        if (TextUtils.isEmpty(str)) {
            md.n("tag must not be null or empty");
            throw null;
        }
        if (componentName == null) {
            int i2 = MediaButtonReceiver.f17758a;
            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
            intent.setPackage(context.getPackageName());
            List<ResolveInfo> listQueryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
            if (listQueryBroadcastReceivers.size() == 1) {
                ActivityInfo activityInfo = listQueryBroadcastReceivers.get(0).activityInfo;
                componentName2 = new ComponentName(activityInfo.packageName, activityInfo.name);
            } else if (listQueryBroadcastReceivers.size() > 1) {
                Log.g("More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null.");
            }
            componentName = componentName2;
            if (componentName == null) {
                Log.f("Couldn't find a unique registered media button receiver in the given context.");
            }
        }
        if (componentName != null && pendingIntent == null) {
            Intent intent2 = new Intent("android.intent.action.MEDIA_BUTTON");
            intent2.setComponent(componentName);
            pendingIntent = PendingIntent.getBroadcast(context, 0, intent2, Build.VERSION.SDK_INT >= 31 ? 33554432 : 0);
        }
        MediaSessionImplApi29 mediaSessionImplApi29 = new MediaSessionImplApi29(context, str, bundle);
        this.f17799a = mediaSessionImplApi29;
        Looper looperMyLooper = Looper.myLooper();
        h(new AnonymousClass1(), new Handler(looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper));
        mediaSessionImplApi29.f17805a.setMediaButtonReceiver(pendingIntent);
        this.f17800b = new MediaControllerCompat(context, this);
    }

    public final MediaSessionManager.RemoteUserInfo a() {
        return new MediaSessionManager.RemoteUserInfo(this.f17799a.f17805a.getCurrentControllerInfo());
    }

    public final MediaSession b() {
        return this.f17799a.f17805a;
    }

    public final Token c() {
        return this.f17799a.f17807c;
    }

    public final boolean d() {
        return this.f17799a.f17805a.isActive();
    }

    public final void e() {
        MediaSessionImplApi29 mediaSessionImplApi29 = this.f17799a;
        mediaSessionImplApi29.f17809f.kill();
        MediaSession mediaSession = mediaSessionImplApi29.f17805a;
        mediaSession.setCallback(null);
        mediaSessionImplApi29.f17806b.f17814b.clear();
        mediaSession.release();
    }

    public final void f(String str, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            md.n("event cannot be null or empty");
        } else {
            this.f17799a.f17805a.sendSessionEvent(str, bundle);
        }
    }

    public final void g() {
        this.f17799a.f17805a.setActive(true);
    }

    public final void h(Callback callback, Handler handler) {
        MediaSessionImplApi29 mediaSessionImplApi29 = this.f17799a;
        synchronized (mediaSessionImplApi29.d) {
            mediaSessionImplApi29.l = callback;
            mediaSessionImplApi29.f17805a.setCallback(callback.f17802b, handler);
            synchronized (callback.f17801a) {
                try {
                    callback.f17803c = new WeakReference(mediaSessionImplApi29);
                    Callback.CallbackHandler callbackHandler = callback.d;
                    Callback.CallbackHandler callbackHandler2 = null;
                    if (callbackHandler != null) {
                        callbackHandler.removeCallbacksAndMessages(null);
                    }
                    if (handler != null) {
                        callbackHandler2 = callback.new CallbackHandler(handler.getLooper());
                    }
                    callback.d = callbackHandler2;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void i(Bundle bundle) {
        this.f17799a.f17805a.setExtras(bundle);
    }

    public final void j(int i2) {
        this.f17799a.f17805a.setFlags(i2 | 3);
    }

    public final void k(PendingIntent pendingIntent) {
        this.f17799a.f17805a.setMediaButtonReceiver(pendingIntent);
    }

    public final void l(MediaMetadataCompat mediaMetadataCompat) {
        MediaSessionImplApi29 mediaSessionImplApi29 = this.f17799a;
        mediaSessionImplApi29.f17811i = mediaMetadataCompat;
        MediaSession mediaSession = mediaSessionImplApi29.f17805a;
        Bundle bundle = mediaMetadataCompat.f17796b;
        if (mediaMetadataCompat.f17797c == null) {
            MediaMetadata.Builder builder = new MediaMetadata.Builder();
            for (String str : bundle.keySet()) {
                Integer num = (Integer) MediaMetadataCompat.f17794e.get(str);
                if (num == null) {
                    num = -1;
                }
                int iIntValue = num.intValue();
                if (iIntValue == 0) {
                    builder.putLong(str, bundle.getLong(str));
                } else if (iIntValue == 1) {
                    builder.putText(str, bundle.getCharSequence(str));
                } else if (iIntValue == 2) {
                    builder.putBitmap(str, (Bitmap) bundle.getParcelable(str));
                } else if (iIntValue != 3) {
                    Object obj = bundle.get(str);
                    if (obj == null || (obj instanceof CharSequence)) {
                        builder.putText(str, (CharSequence) obj);
                    } else if (obj instanceof Long) {
                        builder.putLong(str, ((Long) obj).longValue());
                    }
                } else {
                    builder.putRating(str, (Rating) bundle.getParcelable(str));
                }
            }
            mediaMetadataCompat.f17797c = builder.build();
        }
        mediaSession.setMetadata(mediaMetadataCompat.f17797c);
    }

    public final void m(PlaybackStateCompat playbackStateCompat) {
        RemoteCallbackList remoteCallbackList;
        MediaSessionImplApi29 mediaSessionImplApi29 = this.f17799a;
        mediaSessionImplApi29.g = playbackStateCompat;
        synchronized (mediaSessionImplApi29.d) {
            int iBeginBroadcast = mediaSessionImplApi29.f17809f.beginBroadcast() - 1;
            while (true) {
                remoteCallbackList = mediaSessionImplApi29.f17809f;
                if (iBeginBroadcast < 0) {
                    break;
                }
                try {
                    ((IMediaControllerCallback) remoteCallbackList.getBroadcastItem(iBeginBroadcast)).l0(playbackStateCompat);
                } catch (RemoteException | SecurityException e2) {
                    Log.e("Dead object in setPlaybackState.", e2);
                }
                iBeginBroadcast--;
                throw th;
            }
            remoteCallbackList.finishBroadcast();
        }
        MediaSession mediaSession = mediaSessionImplApi29.f17805a;
        if (playbackStateCompat.m == null) {
            PlaybackState.Builder builder = new PlaybackState.Builder();
            builder.setState(playbackStateCompat.f17830b, playbackStateCompat.f17831c, playbackStateCompat.f17832e, playbackStateCompat.f17835i);
            builder.setBufferedPosition(playbackStateCompat.d);
            builder.setActions(playbackStateCompat.f17833f);
            builder.setErrorMessage(playbackStateCompat.f17834h);
            for (PlaybackStateCompat.CustomAction customAction : playbackStateCompat.f17836j) {
                PlaybackState.CustomAction customActionBuild = customAction.f17850f;
                if (customActionBuild == null) {
                    PlaybackState.CustomAction.Builder builder2 = new PlaybackState.CustomAction.Builder(customAction.f17847b, customAction.f17848c, customAction.d);
                    builder2.setExtras(customAction.f17849e);
                    customActionBuild = builder2.build();
                }
                if (customActionBuild != null) {
                    builder.addCustomAction(customActionBuild);
                }
            }
            builder.setActiveQueueItemId(playbackStateCompat.f17837k);
            builder.setExtras(playbackStateCompat.l);
            playbackStateCompat.m = builder.build();
        }
        mediaSession.setPlaybackState(playbackStateCompat.m);
    }

    public final void n(AudioAttributes audioAttributes) {
        this.f17799a.f17805a.setPlaybackToLocal(audioAttributes.c());
    }

    public final void o(VolumeProviderCompat volumeProviderCompat) {
        this.f17799a.f17805a.setPlaybackToRemote(volumeProviderCompat.a());
    }

    public final void p(ArrayList arrayList) {
        if (arrayList != null) {
            HashSet hashSet = new HashSet();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                long j2 = ((QueueItem) it.next()).f17816c;
                if (hashSet.contains(Long.valueOf(j2))) {
                    Log.e(d21.g(j2, "Found duplicate queue id: "), new IllegalArgumentException("id of each queue item should be unique"));
                }
                hashSet.add(Long.valueOf(j2));
            }
        }
        MediaSessionImplApi29 mediaSessionImplApi29 = this.f17799a;
        MediaSession mediaSession = mediaSessionImplApi29.f17805a;
        mediaSessionImplApi29.f17810h = arrayList;
        if (arrayList == null) {
            mediaSession.setQueue(null);
            return;
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            QueueItem queueItem = (QueueItem) it2.next();
            MediaSession.QueueItem queueItem2 = queueItem.d;
            if (queueItem2 == null) {
                MediaSession.QueueItem queueItem3 = new MediaSession.QueueItem(queueItem.f17815b.b(), queueItem.f17816c);
                queueItem.d = queueItem3;
                queueItem2 = queueItem3;
            }
            arrayList2.add(queueItem2);
        }
        mediaSession.setQueue(arrayList2);
    }

    public final void q(CharSequence charSequence) {
        this.f17799a.f17805a.setQueueTitle(charSequence);
    }

    public final void r(int i2) {
        this.f17799a.f17805a.setRatingType(i2);
    }

    public final void s(int i2) {
        MediaSessionImplApi29 mediaSessionImplApi29 = this.f17799a;
        if (mediaSessionImplApi29.f17812j != i2) {
            mediaSessionImplApi29.f17812j = i2;
            synchronized (mediaSessionImplApi29.d) {
                int iBeginBroadcast = mediaSessionImplApi29.f17809f.beginBroadcast() - 1;
                while (true) {
                    RemoteCallbackList remoteCallbackList = mediaSessionImplApi29.f17809f;
                    if (iBeginBroadcast >= 0) {
                        try {
                            ((IMediaControllerCallback) remoteCallbackList.getBroadcastItem(iBeginBroadcast)).A(i2);
                        } catch (RemoteException | SecurityException e2) {
                            Log.e("Dead object in setRepeatMode.", e2);
                        }
                        iBeginBroadcast--;
                    } else {
                        remoteCallbackList.finishBroadcast();
                    }
                    throw th;
                }
            }
        }
    }

    public final void t(PendingIntent pendingIntent) {
        this.f17799a.f17805a.setSessionActivity(pendingIntent);
    }

    public final void u(int i2) {
        MediaSessionImplApi29 mediaSessionImplApi29 = this.f17799a;
        if (mediaSessionImplApi29.f17813k != i2) {
            mediaSessionImplApi29.f17813k = i2;
            synchronized (mediaSessionImplApi29.d) {
                int iBeginBroadcast = mediaSessionImplApi29.f17809f.beginBroadcast() - 1;
                while (true) {
                    RemoteCallbackList remoteCallbackList = mediaSessionImplApi29.f17809f;
                    if (iBeginBroadcast >= 0) {
                        try {
                            ((IMediaControllerCallback) remoteCallbackList.getBroadcastItem(iBeginBroadcast)).m0(i2);
                        } catch (RemoteException | SecurityException e2) {
                            Log.e("Dead object in setShuffleMode.", e2);
                        }
                        iBeginBroadcast--;
                    } else {
                        remoteCallbackList.finishBroadcast();
                    }
                    throw th;
                }
            }
        }
    }

    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaDescriptionCompat f17815b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f17816c;
        public MediaSession.QueueItem d;

        /* JADX INFO: renamed from: androidx.media3.session.legacy.MediaSessionCompat$QueueItem$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<QueueItem> {
            @Override // android.os.Parcelable.Creator
            public final QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final QueueItem[] newArray(int i2) {
                return new QueueItem[i2];
            }
        }

        public QueueItem(MediaSession.QueueItem queueItem, MediaDescriptionCompat mediaDescriptionCompat, long j2) {
            if (j2 == -1) {
                md.n("Id cannot be QueueItem.UNKNOWN_ID");
                throw null;
            }
            this.f17815b = mediaDescriptionCompat;
            this.f17816c = j2;
            this.d = queueItem;
        }

        public static ArrayList a(List list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                MediaSession.QueueItem queueItem = (MediaSession.QueueItem) it.next();
                arrayList.add(new QueueItem(queueItem, MediaDescriptionCompat.a(queueItem.getDescription()), queueItem.getQueueId()));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("MediaSession.QueueItem { Description=");
            sb.append(this.f17815b);
            sb.append(", Id=");
            return o60.j(this.f17816c, " }", sb);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            this.f17815b.writeToParcel(parcel, i2);
            parcel.writeLong(this.f17816c);
        }

        public QueueItem(MediaDescriptionCompat mediaDescriptionCompat, long j2) {
            this(null, mediaDescriptionCompat, j2);
        }

        public QueueItem(Parcel parcel) {
            this.f17815b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.f17816c = parcel.readLong();
        }
    }
}
