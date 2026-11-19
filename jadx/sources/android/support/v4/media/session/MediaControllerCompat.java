package android.support.v4.media.session;

import android.content.Context;
import android.media.MediaMetadata;
import android.media.session.MediaController;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.view.KeyEvent;
import androidx.versionedparcelable.ParcelUtils;
import androidx.versionedparcelable.VersionedParcelable;
import defpackage.md;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class MediaControllerCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaControllerImplApi29 f605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f606b;

    @Deprecated
    public static abstract class Callback implements IBinder.DeathRecipient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public IMediaControllerCallback f607a;

        public static class MediaControllerCallbackApi21 extends MediaController.Callback {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final WeakReference f608a;

            public MediaControllerCallbackApi21(Callback callback) {
                this.f608a = new WeakReference(callback);
            }

            @Override // android.media.session.MediaController.Callback
            public final void onAudioInfoChanged(MediaController.PlaybackInfo playbackInfo) {
                if (((Callback) this.f608a.get()) != null) {
                    playbackInfo.getPlaybackType();
                    playbackInfo.getAudioAttributes();
                    playbackInfo.getVolumeControl();
                    playbackInfo.getMaxVolume();
                    playbackInfo.getCurrentVolume();
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onExtrasChanged(Bundle bundle) {
                MediaSessionCompat.a(bundle);
            }

            @Override // android.media.session.MediaController.Callback
            public final void onMetadataChanged(MediaMetadata mediaMetadata) {
                if (((Callback) this.f608a.get()) != null) {
                    Parcelable.Creator<MediaMetadataCompat> creator = MediaMetadataCompat.CREATOR;
                    if (mediaMetadata != null) {
                        Parcel parcelObtain = Parcel.obtain();
                        mediaMetadata.writeToParcel(parcelObtain, 0);
                        parcelObtain.setDataPosition(0);
                        MediaMetadataCompat mediaMetadataCompatCreateFromParcel = MediaMetadataCompat.CREATOR.createFromParcel(parcelObtain);
                        parcelObtain.recycle();
                        mediaMetadataCompatCreateFromParcel.getClass();
                    }
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onPlaybackStateChanged(PlaybackState playbackState) {
                ArrayList arrayList;
                PlaybackStateCompat.CustomAction customAction;
                Callback callback = (Callback) this.f608a.get();
                if (callback == null || callback.f607a != null || playbackState == null) {
                    return;
                }
                List<PlaybackState.CustomAction> customActions = playbackState.getCustomActions();
                if (customActions != null) {
                    ArrayList arrayList2 = new ArrayList(customActions.size());
                    for (PlaybackState.CustomAction customAction2 : customActions) {
                        if (customAction2 == null) {
                            customAction = null;
                        } else {
                            PlaybackState.CustomAction customAction3 = customAction2;
                            Bundle extras = customAction3.getExtras();
                            MediaSessionCompat.a(extras);
                            customAction = new PlaybackStateCompat.CustomAction(customAction3.getAction(), customAction3.getName(), customAction3.getIcon(), extras);
                        }
                        arrayList2.add(customAction);
                    }
                    arrayList = arrayList2;
                } else {
                    arrayList = null;
                }
                Bundle extras2 = playbackState.getExtras();
                MediaSessionCompat.a(extras2);
                new PlaybackStateCompat(playbackState.getState(), playbackState.getPosition(), playbackState.getBufferedPosition(), playbackState.getPlaybackSpeed(), playbackState.getActions(), 0, playbackState.getErrorMessage(), playbackState.getLastPositionUpdateTime(), arrayList, playbackState.getActiveQueueItemId(), extras2);
            }

            @Override // android.media.session.MediaController.Callback
            public final void onQueueChanged(List list) {
                MediaSessionCompat.QueueItem queueItem;
                if (((Callback) this.f608a.get()) == null || list == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList(list.size());
                for (Object obj : list) {
                    if (obj == null) {
                        queueItem = null;
                    } else {
                        MediaSession.QueueItem queueItem2 = (MediaSession.QueueItem) obj;
                        queueItem = new MediaSessionCompat.QueueItem(MediaDescriptionCompat.a(queueItem2.getDescription()), queueItem2.getQueueId(), 0);
                    }
                    arrayList.add(queueItem);
                }
            }

            @Override // android.media.session.MediaController.Callback
            public final void onQueueTitleChanged(CharSequence charSequence) {
            }

            @Override // android.media.session.MediaController.Callback
            public final void onSessionDestroyed() {
            }

            @Override // android.media.session.MediaController.Callback
            public final void onSessionEvent(String str, Bundle bundle) {
                MediaSessionCompat.a(bundle);
            }
        }

        public static class StubCompat extends IMediaControllerCallback.Stub {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final WeakReference f609a;

            public StubCompat(Callback callback) {
                this.f609a = new WeakReference(callback);
            }
        }

        public Callback() {
            new MediaControllerCallbackApi21(this);
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
        }
    }

    public interface MediaControllerImpl {
    }

    public static class MediaControllerImplApi21 implements MediaControllerImpl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaController f610a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f611b = new Object();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f612c = new ArrayList();
        public final HashMap d = new HashMap();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final MediaSessionCompat.Token f613e;

        public static class ExtraBinderRequestResultReceiver extends ResultReceiver {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public WeakReference f614b;

            @Override // android.os.ResultReceiver
            public final void onReceiveResult(int i2, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = (MediaControllerImplApi21) this.f614b.get();
                if (mediaControllerImplApi21 == null || bundle == null) {
                    return;
                }
                synchronized (mediaControllerImplApi21.f611b) {
                    MediaSessionCompat.Token token = mediaControllerImplApi21.f613e;
                    IMediaSession iMediaSessionE2 = IMediaSession.Stub.E2(bundle.getBinder("android.support.v4.media.session.EXTRA_BINDER"));
                    synchronized (token.f629b) {
                        token.d = iMediaSessionE2;
                    }
                    MediaSessionCompat.Token token2 = mediaControllerImplApi21.f613e;
                    VersionedParcelable versionedParcelableA = ParcelUtils.a(bundle);
                    synchronized (token2.f629b) {
                        token2.f631e = versionedParcelableA;
                    }
                    mediaControllerImplApi21.a();
                }
            }
        }

        public static class ExtraCallback extends Callback.StubCompat {
        }

        public MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) {
            this.f613e = token;
            MediaController mediaController = new MediaController(context, (MediaSession.Token) token.f630c);
            this.f610a = mediaController;
            if (token.a() == null) {
                ExtraBinderRequestResultReceiver extraBinderRequestResultReceiver = new ExtraBinderRequestResultReceiver(null);
                extraBinderRequestResultReceiver.f614b = new WeakReference(this);
                mediaController.sendCommand("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, extraBinderRequestResultReceiver);
            }
        }

        public final void a() {
            MediaSessionCompat.Token token = this.f613e;
            if (token.a() == null) {
                return;
            }
            ArrayList<Callback> arrayList = this.f612c;
            for (Callback callback : arrayList) {
                ExtraCallback extraCallback = new ExtraCallback(callback);
                this.d.put(callback, extraCallback);
                callback.f607a = extraCallback;
                try {
                    token.a().R0(extraCallback);
                } catch (RemoteException unused) {
                }
            }
            arrayList.clear();
        }
    }

    public static class MediaControllerImplApi29 extends MediaControllerImplApi21 {
    }

    public MediaControllerCompat(Context context, MediaSessionCompat.Token token) {
        if (token == null) {
            md.n("sessionToken must not be null");
            throw null;
        }
        this.f606b = Collections.synchronizedSet(new HashSet());
        this.f605a = new MediaControllerImplApi29(context, token);
    }

    public final void a(KeyEvent keyEvent) {
        if (keyEvent != null) {
            this.f605a.f610a.dispatchMediaButtonEvent(keyEvent);
        } else {
            md.n("KeyEvent may not be null");
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat mediaSessionCompat) {
        this(context, mediaSessionCompat.f615a.f621b);
    }
}
