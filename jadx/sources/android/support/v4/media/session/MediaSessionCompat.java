package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.media.Rating;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallbackList;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.RatingCompat;
import android.text.TextUtils;
import androidx.media.MediaSessionManager$RemoteUserInfo;
import androidx.media.session.MediaButtonReceiver;
import androidx.versionedparcelable.ParcelUtils;
import androidx.versionedparcelable.VersionedParcelable;
import defpackage.md;
import defpackage.o60;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class MediaSessionCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaSessionImplApi29 f615a;

    /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$1, reason: invalid class name */
    public class AnonymousClass1 extends Callback {
    }

    @Deprecated
    public static abstract class Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f616a = new Object();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaSession.Callback f617b = new MediaSessionCallbackApi21();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public WeakReference f618c = new WeakReference(null);
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
                    synchronized (Callback.this.f616a) {
                        mediaSessionImpl = (MediaSessionImpl) Callback.this.f618c.get();
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

        public class MediaSessionCallbackApi21 extends MediaSession.Callback {
            public MediaSessionCallbackApi21() {
            }

            public final MediaSessionImplApi21 a() {
                MediaSessionImplApi21 mediaSessionImplApi21;
                synchronized (Callback.this.f616a) {
                    mediaSessionImplApi21 = (MediaSessionImplApi21) Callback.this.f618c.get();
                }
                if (mediaSessionImplApi21 == null || Callback.this != mediaSessionImplApi21.a()) {
                    return null;
                }
                return mediaSessionImplApi21;
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
                VersionedParcelable versionedParcelable;
                MediaSessionImplApi21 mediaSessionImplApi21A = a();
                if (mediaSessionImplApi21A == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
                try {
                    if (str.equals("android.support.v4.media.session.command.GET_EXTRA_BINDER")) {
                        Bundle bundle2 = new Bundle();
                        Token token = mediaSessionImplApi21A.f621b;
                        IMediaSession iMediaSessionA = token.a();
                        bundle2.putBinder("android.support.v4.media.session.EXTRA_BINDER", iMediaSessionA == null ? null : iMediaSessionA.asBinder());
                        synchronized (token.f629b) {
                            versionedParcelable = token.f631e;
                        }
                        ParcelUtils.b(bundle2, versionedParcelable);
                        resultReceiver.send(0, bundle2);
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM")) {
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT")) {
                        bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX");
                    } else if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM")) {
                    } else {
                        str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT");
                    }
                } catch (BadParcelableException unused) {
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onCustomAction(String str, Bundle bundle) {
                if (a() == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
                try {
                    if (str.equals("android.support.v4.media.session.action.PLAY_FROM_URI")) {
                        MediaSessionCompat.a(bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.action.PREPARE")) {
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID")) {
                        bundle.getString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID");
                        MediaSessionCompat.a(bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_SEARCH")) {
                        bundle.getString("android.support.v4.media.session.action.ARGUMENT_QUERY");
                        MediaSessionCompat.a(bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_URI")) {
                        MediaSessionCompat.a(bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.action.SET_CAPTIONING_ENABLED")) {
                        bundle.getBoolean("android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED");
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.action.SET_REPEAT_MODE")) {
                        bundle.getInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE");
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.action.SET_SHUFFLE_MODE")) {
                        bundle.getInt("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE");
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.action.SET_RATING")) {
                        MediaSessionCompat.a(bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS"));
                    } else if (str.equals("android.support.v4.media.session.action.SET_PLAYBACK_SPEED")) {
                        bundle.getFloat("android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED", 1.0f);
                    }
                } catch (BadParcelableException unused) {
                }
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onFastForward() {
                a();
            }

            @Override // android.media.session.MediaSession.Callback
            public final boolean onMediaButtonEvent(Intent intent) {
                return a() != null && super.onMediaButtonEvent(intent);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPause() {
                a();
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlay() {
                a();
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlayFromMediaId(String str, Bundle bundle) {
                if (a() == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlayFromSearch(String str, Bundle bundle) {
                if (a() == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPlayFromUri(Uri uri, Bundle bundle) {
                if (a() == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepare() {
                a();
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepareFromMediaId(String str, Bundle bundle) {
                if (a() == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepareFromSearch(String str, Bundle bundle) {
                if (a() == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onPrepareFromUri(Uri uri, Bundle bundle) {
                if (a() == null) {
                    return;
                }
                MediaSessionCompat.a(bundle);
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onRewind() {
                a();
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSeekTo(long j2) {
                a();
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSetPlaybackSpeed(float f2) {
                a();
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSetRating(Rating rating) {
                float f2;
                if (a() == null || rating == null) {
                    return;
                }
                int ratingStyle = rating.getRatingStyle();
                RatingCompat ratingCompat = null;
                if (!rating.isRated()) {
                    switch (ratingStyle) {
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            ratingCompat = new RatingCompat(ratingStyle, -1.0f);
                            break;
                    }
                } else {
                    switch (ratingStyle) {
                        case 1:
                            ratingCompat = new RatingCompat(1, rating.hasHeart() ? 1.0f : 0.0f);
                            break;
                        case 2:
                            ratingCompat = new RatingCompat(2, rating.isThumbUp() ? 1.0f : 0.0f);
                            break;
                        case 3:
                        case 4:
                        case 5:
                            float starRating = rating.getStarRating();
                            if (ratingStyle == 3) {
                                f2 = 3.0f;
                            } else if (ratingStyle == 4) {
                                f2 = 4.0f;
                            } else if (ratingStyle == 5) {
                                f2 = 5.0f;
                            }
                            if (starRating >= Call.Parameters.DEFAULT_CAMERA_ZOOM && starRating <= f2) {
                                ratingCompat = new RatingCompat(ratingStyle, starRating);
                            }
                            break;
                        case 6:
                            float percentRating = rating.getPercentRating();
                            if (percentRating >= Call.Parameters.DEFAULT_CAMERA_ZOOM && percentRating <= 100.0f) {
                                ratingCompat = new RatingCompat(6, percentRating);
                            }
                            break;
                        default:
                            return;
                    }
                }
                ratingCompat.getClass();
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSkipToNext() {
                a();
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSkipToPrevious() {
                a();
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onSkipToQueueItem(long j2) {
                a();
            }

            @Override // android.media.session.MediaSession.Callback
            public final void onStop() {
                a();
            }
        }
    }

    public interface MediaSessionImpl {
        Callback a();
    }

    public static class MediaSessionImplApi21 implements MediaSessionImpl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaSession f620a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Token f621b;
        public final Bundle d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public Callback f624f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object f622c = new Object();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final RemoteCallbackList f623e = new RemoteCallbackList();

        public static class ExtraSession extends IMediaSession.Stub {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final AtomicReference f625a;

            public ExtraSession(MediaSessionImplApi21 mediaSessionImplApi21) {
                this.f625a = new AtomicReference(mediaSessionImplApi21);
            }

            @Override // android.support.v4.media.session.IMediaSession
            public final void R0(IMediaControllerCallback iMediaControllerCallback) {
                MediaSessionImplApi21 mediaSessionImplApi21 = (MediaSessionImplApi21) this.f625a.get();
                if (mediaSessionImplApi21 == null) {
                    return;
                }
                mediaSessionImplApi21.f623e.register(iMediaControllerCallback, new MediaSessionManager$RemoteUserInfo("android.media.session.MediaController", Binder.getCallingPid(), Binder.getCallingUid()));
                synchronized (mediaSessionImplApi21.f622c) {
                }
            }
        }

        public MediaSessionImplApi21(Context context, String str, VersionedParcelable versionedParcelable, Bundle bundle) {
            MediaSession mediaSession = new MediaSession(context, str, bundle);
            this.f620a = mediaSession;
            this.f621b = new Token(mediaSession.getSessionToken(), new ExtraSession(this), versionedParcelable);
            this.d = bundle;
            mediaSession.setFlags(3);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.MediaSessionImpl
        public final Callback a() {
            Callback callback;
            synchronized (this.f622c) {
                callback = this.f624f;
            }
            return callback;
        }
    }

    public static class MediaSessionImplApi22 extends MediaSessionImplApi21 {
    }

    public static class MediaSessionImplApi28 extends MediaSessionImplApi22 {
    }

    public static class MediaSessionImplApi29 extends MediaSessionImplApi28 {
    }

    @Deprecated
    public interface OnActiveChangeListener {
    }

    public interface RegistrationCallback {
    }

    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ResultReceiver f628b;

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<ResultReceiverWrapper> {
            @Override // android.os.Parcelable.Creator
            public final ResultReceiverWrapper createFromParcel(Parcel parcel) {
                ResultReceiverWrapper resultReceiverWrapper = new ResultReceiverWrapper();
                resultReceiverWrapper.f628b = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
                return resultReceiverWrapper;
            }

            @Override // android.os.Parcelable.Creator
            public final ResultReceiverWrapper[] newArray(int i2) {
                return new ResultReceiverWrapper[i2];
            }
        }

        public ResultReceiverWrapper(ResultReceiver resultReceiver) {
            this.f628b = resultReceiver;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            this.f628b.writeToParcel(parcel, i2);
        }
    }

    @Deprecated
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f629b = new Object();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Object f630c;
        public IMediaSession d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public VersionedParcelable f631e;

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$Token$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<Token> {
            @Override // android.os.Parcelable.Creator
            public final Token createFromParcel(Parcel parcel) {
                return new Token(parcel.readParcelable(null), null, null);
            }

            @Override // android.os.Parcelable.Creator
            public final Token[] newArray(int i2) {
                return new Token[i2];
            }
        }

        public Token(Object obj, IMediaSession iMediaSession, VersionedParcelable versionedParcelable) {
            this.f630c = obj;
            this.d = iMediaSession;
            this.f631e = versionedParcelable;
        }

        public final IMediaSession a() {
            IMediaSession iMediaSession;
            synchronized (this.f629b) {
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
            if (!(obj instanceof Token)) {
                return false;
            }
            Object obj2 = ((Token) obj).f630c;
            Object obj3 = this.f630c;
            if (obj3 == null) {
                return obj2 == null;
            }
            if (obj2 == null) {
                return false;
            }
            return obj3.equals(obj2);
        }

        public final int hashCode() {
            Object obj = this.f630c;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeParcelable((Parcelable) this.f630c, i2);
        }
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, Bundle bundle, VersionedParcelable versionedParcelable) {
        new ArrayList();
        if (context == null) {
            md.n("context must not be null");
            throw null;
        }
        if (TextUtils.isEmpty(str)) {
            md.n("tag must not be null or empty");
            throw null;
        }
        if (componentName == null) {
            int i2 = MediaButtonReceiver.f13658a;
            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
            intent.setPackage(context.getPackageName());
            List<ResolveInfo> listQueryBroadcastReceivers = context.getPackageManager().queryBroadcastReceivers(intent, 0);
            if (listQueryBroadcastReceivers.size() == 1) {
                ActivityInfo activityInfo = listQueryBroadcastReceivers.get(0).activityInfo;
                componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
            } else {
                listQueryBroadcastReceivers.size();
                componentName = null;
            }
        }
        if (componentName != null && pendingIntent == null) {
            Intent intent2 = new Intent("android.intent.action.MEDIA_BUTTON");
            intent2.setComponent(componentName);
            pendingIntent = PendingIntent.getBroadcast(context, 0, intent2, Build.VERSION.SDK_INT >= 31 ? 33554432 : 0);
        }
        MediaSessionImplApi29 mediaSessionImplApi29 = new MediaSessionImplApi29(context, str, versionedParcelable, bundle);
        this.f615a = mediaSessionImplApi29;
        Handler handler = new Handler(Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        synchronized (mediaSessionImplApi29.f622c) {
            mediaSessionImplApi29.f624f = anonymousClass1;
            mediaSessionImplApi29.f620a.setCallback(anonymousClass1.f617b, handler);
            synchronized (anonymousClass1.f616a) {
                try {
                    anonymousClass1.f618c = new WeakReference(mediaSessionImplApi29);
                    Callback.CallbackHandler callbackHandler = anonymousClass1.d;
                    if (callbackHandler != null) {
                        callbackHandler.removeCallbacksAndMessages(null);
                    }
                    anonymousClass1.d = new Callback.CallbackHandler(handler.getLooper());
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        mediaSessionImplApi29.f620a.setMediaButtonReceiver(pendingIntent);
        new MediaControllerCompat(context, this);
    }

    public static void a(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    @Deprecated
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaDescriptionCompat f626b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f627c;

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$QueueItem$1, reason: invalid class name */
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

        public QueueItem(MediaDescriptionCompat mediaDescriptionCompat, long j2, int i2) {
            if (mediaDescriptionCompat == null) {
                md.n("Description cannot be null");
                throw null;
            }
            if (j2 == -1) {
                md.n("Id cannot be QueueItem.UNKNOWN_ID");
                throw null;
            }
            this.f626b = mediaDescriptionCompat;
            this.f627c = j2;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("MediaSession.QueueItem {Description=");
            sb.append(this.f626b);
            sb.append(", Id=");
            return o60.j(this.f627c, " }", sb);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            this.f626b.writeToParcel(parcel, i2);
            parcel.writeLong(this.f627c);
        }

        public QueueItem(MediaDescriptionCompat mediaDescriptionCompat, long j2) {
            this(mediaDescriptionCompat, j2, 0);
        }

        public QueueItem(Parcel parcel) {
            this.f626b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.f627c = parcel.readLong();
        }
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
        this(context, str, componentName, pendingIntent, null);
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, Bundle bundle) {
        this(context, str, componentName, pendingIntent, bundle, null);
    }

    public MediaSessionCompat(Context context, String str) {
        this(context, str, null, null);
    }
}
