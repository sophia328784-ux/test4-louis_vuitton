package androidx.media3.session.legacy;

import android.content.Context;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.view.KeyEvent;
import androidx.collection.ArrayMap;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.versionedparcelable.ParcelUtils;
import androidx.versionedparcelable.VersionedParcelable;
import com.google.common.base.Preconditions;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.fc;
import defpackage.md;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class MediaControllerCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaControllerImplApi29 f17762a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f17763b;

    public static abstract class Callback implements IBinder.DeathRecipient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaController.Callback f17764a = new MediaControllerCallback(this);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MessageHandler f17765b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public IMediaControllerCallback f17766c;

        public static class CallbackStub extends IMediaControllerCallback.Stub {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final WeakReference f17767b;

            public CallbackStub(Callback callback) {
                this.f17767b = new WeakReference(callback);
            }

            @Override // androidx.media3.session.legacy.IMediaControllerCallback
            public final void A(int i2) {
                Callback callback = (Callback) this.f17767b.get();
                if (callback != null) {
                    callback.m(9, Integer.valueOf(i2));
                }
            }

            @Override // androidx.media3.session.legacy.IMediaControllerCallback
            public final void l0(PlaybackStateCompat playbackStateCompat) {
                Callback callback = (Callback) this.f17767b.get();
                if (callback != null) {
                    callback.m(2, playbackStateCompat);
                }
            }

            @Override // androidx.media3.session.legacy.IMediaControllerCallback
            public final void m0(int i2) {
                Callback callback = (Callback) this.f17767b.get();
                if (callback != null) {
                    callback.m(12, Integer.valueOf(i2));
                }
            }
        }

        public static class MediaControllerCallback extends MediaController.Callback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final WeakReference f17768a;

            public MediaControllerCallback(Callback callback) {
                this.f17768a = new WeakReference(callback);
            }

            @Override // android.media.session.MediaController.Callback
            public final void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
                Callback callback = (Callback) this.f17768a.get();
                if (callback == null || playbackInfo == null) {
                    return;
                }
                int playbackType = playbackInfo.getPlaybackType();
                String volumeControlId = Build.VERSION.SDK_INT >= 30 ? playbackInfo.getVolumeControlId() : null;
                boolean z = true;
                if (playbackType == 1 && volumeControlId != null) {
                    z = false;
                }
                Preconditions.g(z);
                callback.a(new PlaybackInfo(playbackType, AudioAttributes.b(playbackInfo.getAudioAttributes()), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume(), volumeControlId));
            }

            @Override // android.media.session.MediaController.Callback
            public final void onExtrasChanged(Bundle bundle) {
                Bundle bundleP = Util.p(bundle);
                Callback callback = (Callback) this.f17768a.get();
                if (callback != null) {
                    callback.c(bundleP);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onMetadataChanged(MediaMetadata mediaMetadata) {
                MediaMetadataCompat mediaMetadataCompatCreateFromParcel;
                Callback callback = (Callback) this.f17768a.get();
                if (callback != null) {
                    ArrayMap arrayMap = MediaMetadataCompat.f17794e;
                    if (mediaMetadata != null) {
                        Parcel parcelObtain = Parcel.obtain();
                        mediaMetadata.writeToParcel(parcelObtain, 0);
                        parcelObtain.setDataPosition(0);
                        mediaMetadataCompatCreateFromParcel = MediaMetadataCompat.CREATOR.createFromParcel(parcelObtain);
                        parcelObtain.recycle();
                        mediaMetadataCompatCreateFromParcel.f17797c = mediaMetadata;
                    } else {
                        mediaMetadataCompatCreateFromParcel = null;
                    }
                    callback.d(mediaMetadataCompatCreateFromParcel);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onPlaybackStateChanged(PlaybackState playbackState) {
                Callback callback = (Callback) this.f17768a.get();
                if (callback == null || callback.f17766c != null) {
                    return;
                }
                callback.e(PlaybackStateCompat.a(playbackState));
            }

            @Override // android.media.session.MediaController.Callback
            public final void onQueueChanged(List list) {
                Callback callback = (Callback) this.f17768a.get();
                if (callback != null) {
                    callback.f(MediaSessionCompat.QueueItem.a(list));
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onQueueTitleChanged(CharSequence charSequence) {
                Callback callback = (Callback) this.f17768a.get();
                if (callback != null) {
                    callback.g(charSequence);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onSessionDestroyed() {
                Callback callback = (Callback) this.f17768a.get();
                if (callback != null) {
                    callback.i();
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onSessionEvent(String str, Bundle bundle) {
                Bundle bundleP = Util.p(bundle);
                Callback callback = (Callback) this.f17768a.get();
                if (callback != null) {
                    callback.j(str, bundleP);
                }
            }
        }

        public class MessageHandler extends Handler {
            private static final int MSG_DESTROYED = 8;
            private static final int MSG_SESSION_READY = 13;
            private static final int MSG_UPDATE_CAPTIONING_ENABLED = 11;
            private static final int MSG_UPDATE_PLAYBACK_STATE = 2;
            private static final int MSG_UPDATE_REPEAT_MODE = 9;
            private static final int MSG_UPDATE_SHUFFLE_MODE = 12;
            boolean registered;

            public MessageHandler(Looper looper) {
                super(looper);
                this.registered = false;
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (this.registered) {
                    int i2 = message.what;
                    if (i2 == 2) {
                        Callback.this.e((PlaybackStateCompat) message.obj);
                        return;
                    }
                    if (i2 == 8) {
                        Callback.this.i();
                        return;
                    }
                    if (i2 == 9) {
                        Callback.this.h(((Integer) message.obj).intValue());
                        return;
                    }
                    switch (i2) {
                        case 11:
                            Callback.this.b(((Boolean) message.obj).booleanValue());
                            break;
                        case 12:
                            Callback.this.l(((Integer) message.obj).intValue());
                            break;
                        case 13:
                            Callback.this.k();
                            break;
                    }
                }
            }
        }

        public void a(PlaybackInfo playbackInfo) {
        }

        public void b(boolean z) {
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            m(8, null);
        }

        public void c(Bundle bundle) {
        }

        public void d(MediaMetadataCompat mediaMetadataCompat) {
        }

        public void e(PlaybackStateCompat playbackStateCompat) {
        }

        public void f(ArrayList arrayList) {
        }

        public void g(CharSequence charSequence) {
        }

        public void h(int i2) {
        }

        public void i() {
        }

        public void j(String str, Bundle bundle) {
        }

        public void k() {
        }

        public void l(int i2) {
        }

        public final void m(int i2, Object obj) {
            MessageHandler messageHandler = this.f17765b;
            if (messageHandler != null) {
                messageHandler.obtainMessage(i2, obj).sendToTarget();
            }
        }

        public final void n(Handler handler) {
            if (handler != null) {
                MessageHandler messageHandler = new MessageHandler(handler.getLooper());
                this.f17765b = messageHandler;
                messageHandler.registered = true;
            } else {
                MessageHandler messageHandler2 = this.f17765b;
                if (messageHandler2 != null) {
                    messageHandler2.registered = false;
                    messageHandler2.removeCallbacksAndMessages(null);
                    this.f17765b = null;
                }
            }
        }
    }

    public interface MediaControllerImpl {
    }

    public static class MediaControllerImplApi23 implements MediaControllerImpl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaController f17769a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f17770b = new Object();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f17771c = new ArrayList();
        public final HashMap d = new HashMap();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final MediaSessionCompat.Token f17772e;

        public static class ExtraBinderRequestResultReceiver extends ResultReceiver {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final WeakReference f17773b;

            public ExtraBinderRequestResultReceiver(MediaControllerImplApi29 mediaControllerImplApi29) {
                super(null);
                this.f17773b = new WeakReference(mediaControllerImplApi29);
            }

            @Override // android.os.ResultReceiver
            public final void onReceiveResult(int i2, Bundle bundle) {
                MediaControllerImplApi23 mediaControllerImplApi23 = (MediaControllerImplApi23) this.f17773b.get();
                if (mediaControllerImplApi23 == null || bundle == null) {
                    return;
                }
                synchronized (mediaControllerImplApi23.f17770b) {
                    MediaSessionCompat.Token token = mediaControllerImplApi23.f17772e;
                    IMediaSession iMediaSessionE2 = IMediaSession.Stub.E2(bundle.getBinder("android.support.v4.media.session.EXTRA_BINDER"));
                    synchronized (token.f17818b) {
                        token.d = iMediaSessionE2;
                    }
                    MediaSessionCompat.Token token2 = mediaControllerImplApi23.f17772e;
                    VersionedParcelable versionedParcelableA = ParcelUtils.a(bundle);
                    synchronized (token2.f17818b) {
                        token2.f17820e = versionedParcelableA;
                    }
                    mediaControllerImplApi23.b();
                }
            }
        }

        public MediaControllerImplApi23(Context context, MediaSessionCompat.Token token) {
            this.f17772e = token;
            MediaController mediaController = new MediaController(context, token.f17819c);
            this.f17769a = mediaController;
            if (token.a() == null) {
                mediaController.sendCommand("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver((MediaControllerImplApi29) this));
            }
        }

        public final PlaybackInfo a() {
            MediaController.PlaybackInfo playbackInfo = this.f17769a.getPlaybackInfo();
            if (playbackInfo != null) {
                return new PlaybackInfo(playbackInfo.getPlaybackType(), AudioAttributes.b(playbackInfo.getAudioAttributes()), playbackInfo.getVolumeControl(), playbackInfo.getMaxVolume(), playbackInfo.getCurrentVolume(), Build.VERSION.SDK_INT >= 30 ? playbackInfo.getVolumeControlId() : null);
            }
            return null;
        }

        public final void b() {
            IMediaSession iMediaSessionA = this.f17772e.a();
            if (iMediaSessionA == null) {
                return;
            }
            ArrayList<Callback> arrayList = this.f17771c;
            for (Callback callback : arrayList) {
                Callback.CallbackStub callbackStub = new Callback.CallbackStub(callback);
                this.d.put(callback, callbackStub);
                callback.f17766c = callbackStub;
                try {
                    iMediaSessionA.C2(callbackStub);
                    callback.m(13, null);
                } catch (RemoteException | SecurityException e2) {
                    Log.e("Dead object in registerCallback.", e2);
                }
            }
            arrayList.clear();
        }

        public final void c(Callback callback) {
            MediaController mediaController = this.f17769a;
            MediaController.Callback callback2 = callback.f17764a;
            callback2.getClass();
            mediaController.unregisterCallback(callback2);
            synchronized (this.f17770b) {
                IMediaSession iMediaSessionA = this.f17772e.a();
                if (iMediaSessionA != null) {
                    Callback.CallbackStub callbackStub = (Callback.CallbackStub) this.d.remove(callback);
                    if (callbackStub != null) {
                        callback.f17766c = null;
                        if (iMediaSessionA.asBinder().isBinderAlive()) {
                            try {
                                iMediaSessionA.O1(callbackStub);
                            } catch (RemoteException | SecurityException e2) {
                                Log.h("Dead object in unregisterCallbackListener.", e2);
                            }
                        }
                    }
                } else {
                    this.f17771c.remove(callback);
                }
            }
        }
    }

    public static class MediaControllerImplApi29 extends MediaControllerImplApi23 {
    }

    public static final class PlaybackInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f17774a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AudioAttributes f17775b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f17776c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f17777e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f17778f;

        public PlaybackInfo(int i2, AudioAttributes audioAttributes, int i3, int i4, int i5, String str) {
            this.f17774a = i2;
            this.f17775b = audioAttributes;
            this.f17776c = i3;
            this.d = i4;
            this.f17777e = i5;
            this.f17778f = str;
        }
    }

    public static abstract class TransportControls {
        public abstract void a();

        public abstract void b();

        public abstract void c();

        public abstract void d(String str, Bundle bundle);

        public abstract void e(String str, Bundle bundle);

        public abstract void f(Uri uri, Bundle bundle);

        public abstract void g();

        public abstract void h(String str, Bundle bundle);

        public abstract void i(String str, Bundle bundle);

        public abstract void j(Uri uri, Bundle bundle);

        public abstract void k();

        public abstract void l(long j2);

        public abstract void m(String str, Bundle bundle);

        public abstract void n(float f2);

        public abstract void o(int i2);

        public abstract void p(int i2);

        public abstract void q();

        public abstract void r();

        public abstract void s(long j2);

        public abstract void t();
    }

    public static class TransportControlsApi23 extends TransportControls {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaController.TransportControls f17779a;

        public TransportControlsApi23(MediaController.TransportControls transportControls) {
            this.f17779a = transportControls;
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void a() {
            this.f17779a.fastForward();
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void b() {
            this.f17779a.pause();
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void c() {
            this.f17779a.play();
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void d(String str, Bundle bundle) {
            this.f17779a.playFromMediaId(str, bundle);
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void e(String str, Bundle bundle) {
            this.f17779a.playFromSearch(str, bundle);
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void f(Uri uri, Bundle bundle) {
            this.f17779a.playFromUri(uri, bundle);
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void k() {
            this.f17779a.rewind();
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void l(long j2) {
            this.f17779a.seekTo(j2);
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void m(String str, Bundle bundle) {
            if (str != null && ((str.equals("android.support.v4.media.session.action.FOLLOW") || str.equals("android.support.v4.media.session.action.UNFOLLOW")) && (bundle == null || !bundle.containsKey("android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE")))) {
                md.n(fc.h("An extra field android.support.v4.media.session.ARGUMENT_MEDIA_ATTRIBUTE is required for this action ", str, FileUtils.HIDDEN_PREFIX));
            } else {
                this.f17779a.sendCustomAction(str, bundle);
            }
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void o(int i2) {
            Bundle bundle = new Bundle();
            bundle.putInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE", i2);
            m("android.support.v4.media.session.action.SET_REPEAT_MODE", bundle);
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void p(int i2) {
            Bundle bundle = new Bundle();
            bundle.putInt("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE", i2);
            m("android.support.v4.media.session.action.SET_SHUFFLE_MODE", bundle);
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void q() {
            this.f17779a.skipToNext();
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void r() {
            this.f17779a.skipToPrevious();
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void s(long j2) {
            this.f17779a.skipToQueueItem(j2);
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void t() {
            this.f17779a.stop();
        }
    }

    public static class TransportControlsApi24 extends TransportControlsApi23 {
        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void g() {
            this.f17779a.prepare();
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void h(String str, Bundle bundle) {
            this.f17779a.prepareFromMediaId(str, bundle);
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void i(String str, Bundle bundle) {
            this.f17779a.prepareFromSearch(str, bundle);
        }

        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void j(Uri uri, Bundle bundle) {
            this.f17779a.prepareFromUri(uri, bundle);
        }
    }

    public static class TransportControlsApi29 extends TransportControlsApi24 {
        @Override // androidx.media3.session.legacy.MediaControllerCompat.TransportControls
        public final void n(float f2) {
            if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                this.f17779a.setPlaybackSpeed(f2);
            } else {
                md.n("speed must not be zero");
            }
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat.Token token) {
        this.f17763b = Collections.synchronizedSet(new HashSet());
        this.f17762a = new MediaControllerImplApi29(context, token);
    }

    public final void a(MediaDescriptionCompat mediaDescriptionCompat, int i2) {
        MediaControllerImplApi29 mediaControllerImplApi29 = this.f17762a;
        if ((mediaControllerImplApi29.f17769a.getFlags() & 4) == 0) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION", LegacyParcelableUtil.a(mediaDescriptionCompat, android.support.v4.media.MediaDescriptionCompat.CREATOR));
        bundle.putInt("android.support.v4.media.session.command.ARGUMENT_INDEX", i2);
        mediaControllerImplApi29.f17769a.sendCommand("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT", bundle, null);
    }

    public final void b(int i2, int i3) {
        this.f17762a.f17769a.adjustVolume(i2, i3);
    }

    public final void c(KeyEvent keyEvent) {
        if (keyEvent != null) {
            this.f17762a.f17769a.dispatchMediaButtonEvent(keyEvent);
        } else {
            md.n("KeyEvent may not be null");
        }
    }

    public final Bundle d() {
        return Util.p(this.f17762a.f17769a.getExtras());
    }

    public final long e() {
        return this.f17762a.f17769a.getFlags();
    }

    public final MediaMetadataCompat f() {
        MediaMetadata metadata = this.f17762a.f17769a.getMetadata();
        if (metadata == null) {
            return null;
        }
        ArrayMap arrayMap = MediaMetadataCompat.f17794e;
        Parcel parcelObtain = Parcel.obtain();
        metadata.writeToParcel(parcelObtain, 0);
        parcelObtain.setDataPosition(0);
        MediaMetadataCompat mediaMetadataCompatCreateFromParcel = MediaMetadataCompat.CREATOR.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        mediaMetadataCompatCreateFromParcel.f17797c = metadata;
        return mediaMetadataCompatCreateFromParcel;
    }

    public final String g() {
        return this.f17762a.f17769a.getPackageName();
    }

    public final PlaybackInfo h() {
        return this.f17762a.a();
    }

    public final PlaybackStateCompat i() {
        MediaControllerImplApi29 mediaControllerImplApi29 = this.f17762a;
        IMediaSession iMediaSessionA = mediaControllerImplApi29.f17772e.a();
        if (iMediaSessionA != null) {
            try {
                return iMediaSessionA.h();
            } catch (RemoteException | SecurityException e2) {
                Log.e("Dead object in getPlaybackState.", e2);
            }
        }
        PlaybackState playbackState = mediaControllerImplApi29.f17769a.getPlaybackState();
        if (playbackState != null) {
            return PlaybackStateCompat.a(playbackState);
        }
        return null;
    }

    public final ArrayList j() {
        List<MediaSession.QueueItem> queue = this.f17762a.f17769a.getQueue();
        if (queue != null) {
            return MediaSessionCompat.QueueItem.a(queue);
        }
        return null;
    }

    public final CharSequence k() {
        return this.f17762a.f17769a.getQueueTitle();
    }

    public final int l() {
        return this.f17762a.f17769a.getRatingType();
    }

    public final int m() {
        IMediaSession iMediaSessionA = this.f17762a.f17772e.a();
        if (iMediaSessionA == null) {
            return -1;
        }
        try {
            return iMediaSessionA.i();
        } catch (RemoteException | SecurityException e2) {
            Log.e("Dead object in getRepeatMode.", e2);
            return -1;
        }
    }

    public final int n() {
        IMediaSession iMediaSessionA = this.f17762a.f17772e.a();
        if (iMediaSessionA == null) {
            return -1;
        }
        try {
            return iMediaSessionA.i0();
        } catch (RemoteException | SecurityException e2) {
            Log.e("Dead object in getShuffleMode.", e2);
            return -1;
        }
    }

    public final TransportControls o() {
        return new TransportControlsApi29(this.f17762a.f17769a.getTransportControls());
    }

    public final boolean p() {
        IMediaSession iMediaSessionA = this.f17762a.f17772e.a();
        if (iMediaSessionA == null) {
            return false;
        }
        try {
            return iMediaSessionA.j0();
        } catch (RemoteException | SecurityException e2) {
            Log.e("Dead object in isCaptioningEnabled.", e2);
            return false;
        }
    }

    public final boolean q() {
        return this.f17762a.f17772e.a() != null;
    }

    public final void r(Callback callback, Handler handler) {
        if (!this.f17763b.add(callback)) {
            Log.g("the callback has already been registered");
            return;
        }
        if (handler == null) {
            handler = new Handler();
        }
        callback.n(handler);
        MediaControllerImplApi29 mediaControllerImplApi29 = this.f17762a;
        MediaController mediaController = mediaControllerImplApi29.f17769a;
        MediaController.Callback callback2 = callback.f17764a;
        callback2.getClass();
        mediaController.registerCallback(callback2, handler);
        synchronized (mediaControllerImplApi29.f17770b) {
            IMediaSession iMediaSessionA = mediaControllerImplApi29.f17772e.a();
            if (iMediaSessionA != null) {
                Callback.CallbackStub callbackStub = new Callback.CallbackStub(callback);
                mediaControllerImplApi29.d.put(callback, callbackStub);
                callback.f17766c = callbackStub;
                try {
                    iMediaSessionA.C2(callbackStub);
                    callback.m(13, null);
                } catch (RemoteException | SecurityException e2) {
                    Log.e("Dead object in registerCallback.", e2);
                }
            } else {
                callback.f17766c = null;
                mediaControllerImplApi29.f17771c.add(callback);
            }
        }
    }

    public final void s(MediaDescriptionCompat mediaDescriptionCompat) {
        MediaControllerImplApi29 mediaControllerImplApi29 = this.f17762a;
        if ((mediaControllerImplApi29.f17769a.getFlags() & 4) == 0) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION", LegacyParcelableUtil.a(mediaDescriptionCompat, android.support.v4.media.MediaDescriptionCompat.CREATOR));
        mediaControllerImplApi29.f17769a.sendCommand("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM", bundle, null);
    }

    public final void t(int i2, int i3) {
        this.f17762a.f17769a.setVolumeTo(i2, i3);
    }

    public final void u(Callback callback) {
        if (!this.f17763b.remove(callback)) {
            Log.g("the callback has never been registered");
            return;
        }
        try {
            this.f17762a.c(callback);
        } finally {
            callback.n(null);
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat mediaSessionCompat) {
        this(context, mediaSessionCompat.f17799a.f17807c);
    }
}
