package android.support.v4.media;

import android.content.ComponentName;
import android.content.Context;
import android.media.browse.MediaBrowser;
import android.media.session.MediaSession;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.RemoteException;
import android.support.v4.media.session.IMediaSession;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import android.util.Log;
import androidx.collection.ArrayMap;
import defpackage.md;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class MediaBrowserCompat {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f570b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaBrowserImplApi26 f571a;

    public static class CallbackHandler extends Handler {
        private final WeakReference<MediaBrowserServiceCallbackImpl> mCallbackImplRef;
        private WeakReference<Messenger> mCallbacksMessengerRef;

        public CallbackHandler(MediaBrowserServiceCallbackImpl mediaBrowserServiceCallbackImpl) {
            this.mCallbackImplRef = new WeakReference<>(mediaBrowserServiceCallbackImpl);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WeakReference<Messenger> weakReference = this.mCallbacksMessengerRef;
            if (weakReference == null || weakReference.get() == null || this.mCallbackImplRef.get() == null) {
                return;
            }
            Bundle data = message.getData();
            MediaSessionCompat.a(data);
            MediaBrowserServiceCallbackImpl mediaBrowserServiceCallbackImpl = this.mCallbackImplRef.get();
            Messenger messenger = this.mCallbacksMessengerRef.get();
            try {
                int i2 = message.what;
                if (i2 == 1) {
                    MediaSessionCompat.a(data.getBundle("data_root_hints"));
                    data.getString("data_media_item_id");
                    mediaBrowserServiceCallbackImpl.getClass();
                    return;
                }
                if (i2 == 2) {
                    mediaBrowserServiceCallbackImpl.getClass();
                    return;
                }
                if (i2 != 3) {
                    message.toString();
                    return;
                }
                Bundle bundle = data.getBundle("data_options");
                MediaSessionCompat.a(bundle);
                MediaSessionCompat.a(data.getBundle("data_notify_children_changed_options"));
                String string = data.getString("data_media_item_id");
                data.getParcelableArrayList("data_media_item_list");
                mediaBrowserServiceCallbackImpl.a(messenger, string, bundle);
            } catch (BadParcelableException unused) {
                if (message.what == 1) {
                    mediaBrowserServiceCallbackImpl.getClass();
                }
            }
        }

        public void setCallbacksMessenger(Messenger messenger) {
            this.mCallbacksMessengerRef = new WeakReference<>(messenger);
        }
    }

    @Deprecated
    public static class ConnectionCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaBrowser.ConnectionCallback f572a = new ConnectionCallbackApi21();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MediaBrowserImplApi21 f573b;

        public class ConnectionCallbackApi21 extends MediaBrowser.ConnectionCallback {
            public ConnectionCallbackApi21() {
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public final void onConnected() {
                ConnectionCallback connectionCallback = ConnectionCallback.this;
                MediaBrowserImplApi21 mediaBrowserImplApi21 = connectionCallback.f573b;
                if (mediaBrowserImplApi21 != null) {
                    CallbackHandler callbackHandler = mediaBrowserImplApi21.d;
                    MediaBrowser mediaBrowser = mediaBrowserImplApi21.f576b;
                    try {
                        Bundle extras = mediaBrowser.getExtras();
                        if (extras != null) {
                            extras.getInt("extra_service_version", 0);
                            IBinder binder = extras.getBinder("extra_messenger");
                            if (binder != null) {
                                mediaBrowserImplApi21.f579f = new ServiceBinderWrapper(binder, mediaBrowserImplApi21.f577c);
                                Messenger messenger = new Messenger(callbackHandler);
                                mediaBrowserImplApi21.g = messenger;
                                callbackHandler.setCallbacksMessenger(messenger);
                                try {
                                    ServiceBinderWrapper serviceBinderWrapper = mediaBrowserImplApi21.f579f;
                                    Context context = mediaBrowserImplApi21.f575a;
                                    Messenger messenger2 = mediaBrowserImplApi21.g;
                                    serviceBinderWrapper.getClass();
                                    Bundle bundle = new Bundle();
                                    bundle.putString("data_package_name", context.getPackageName());
                                    bundle.putInt("data_calling_pid", Process.myPid());
                                    bundle.putBundle("data_root_hints", serviceBinderWrapper.f584b);
                                    Message messageObtain = Message.obtain();
                                    messageObtain.what = 6;
                                    messageObtain.arg1 = 1;
                                    messageObtain.setData(bundle);
                                    messageObtain.replyTo = messenger2;
                                    serviceBinderWrapper.f583a.send(messageObtain);
                                } catch (RemoteException unused) {
                                }
                            }
                            IMediaSession iMediaSessionE2 = IMediaSession.Stub.E2(extras.getBinder("extra_session_binder"));
                            if (iMediaSessionE2 != null) {
                                MediaSession.Token sessionToken = mediaBrowser.getSessionToken();
                                mediaBrowserImplApi21.f580h = sessionToken != null ? new MediaSessionCompat.Token(sessionToken, iMediaSessionE2, null) : null;
                            }
                        }
                    } catch (IllegalStateException unused2) {
                    }
                }
                connectionCallback.a();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public final void onConnectionFailed() {
                ConnectionCallback.this.b();
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public final void onConnectionSuspended() {
                ConnectionCallback connectionCallback = ConnectionCallback.this;
                MediaBrowserImplApi21 mediaBrowserImplApi21 = connectionCallback.f573b;
                if (mediaBrowserImplApi21 != null) {
                    mediaBrowserImplApi21.f579f = null;
                    mediaBrowserImplApi21.g = null;
                    mediaBrowserImplApi21.f580h = null;
                    mediaBrowserImplApi21.d.setCallbacksMessenger(null);
                }
                connectionCallback.c();
            }
        }

        public interface ConnectionCallbackInternal {
        }

        public void a() {
        }

        public void b() {
        }

        public void c() {
        }
    }

    public static class CustomActionResultReceiver extends ResultReceiver {
        @Override // android.support.v4.os.ResultReceiver
        public final void a(int i2, Bundle bundle) {
        }
    }

    public static class ItemReceiver extends ResultReceiver {
        @Override // android.support.v4.os.ResultReceiver
        public final void a(int i2, Bundle bundle) {
            if (bundle != null) {
                MediaSessionCompat.a(bundle);
                try {
                    bundle.isEmpty();
                } catch (BadParcelableException unused) {
                    bundle = null;
                }
            }
            if (i2 != 0 || bundle == null || !bundle.containsKey("media_item")) {
                throw null;
            }
            Parcelable parcelable = bundle.getParcelable("media_item");
            if (parcelable != null && !(parcelable instanceof MediaItem)) {
                throw null;
            }
            throw null;
        }
    }

    public interface MediaBrowserImpl {
    }

    public static class MediaBrowserImplApi21 implements MediaBrowserImpl, MediaBrowserServiceCallbackImpl, ConnectionCallback.ConnectionCallbackInternal {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f575a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaBrowser f576b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Bundle f577c;
        public final CallbackHandler d = new CallbackHandler(this);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ArrayMap f578e = new ArrayMap();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ServiceBinderWrapper f579f;
        public Messenger g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public MediaSessionCompat.Token f580h;

        public MediaBrowserImplApi21(Context context, ComponentName componentName, ConnectionCallback connectionCallback, Bundle bundle) {
            this.f575a = context;
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            this.f577c = bundle2;
            bundle2.putInt("extra_client_version", 1);
            bundle2.putInt("extra_calling_pid", Process.myPid());
            connectionCallback.f573b = this;
            this.f576b = new MediaBrowser(context, componentName, connectionCallback.f572a, bundle2);
        }

        @Override // android.support.v4.media.MediaBrowserCompat.MediaBrowserServiceCallbackImpl
        public final void a(Messenger messenger, String str, Bundle bundle) {
            if (this.g != messenger) {
                return;
            }
            Subscription subscription = (Subscription) this.f578e.get(str);
            if (subscription == null) {
                int i2 = MediaBrowserCompat.f570b;
                return;
            }
            ArrayList arrayList = subscription.f586b;
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                Bundle bundle2 = (Bundle) arrayList.get(i3);
                if (bundle2 != bundle) {
                    if (bundle2 == null) {
                        if (bundle.getInt("android.media.browse.extra.PAGE", -1) != -1 || bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1) != -1) {
                        }
                    } else if (bundle == null) {
                        if (bundle2.getInt("android.media.browse.extra.PAGE", -1) != -1 || bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1) != -1) {
                        }
                    } else if (bundle2.getInt("android.media.browse.extra.PAGE", -1) != bundle.getInt("android.media.browse.extra.PAGE", -1) || bundle2.getInt("android.media.browse.extra.PAGE_SIZE", -1) != bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1)) {
                    }
                }
                return;
            }
        }
    }

    public static class MediaBrowserImplApi23 extends MediaBrowserImplApi21 {
    }

    public static class MediaBrowserImplApi26 extends MediaBrowserImplApi23 {
    }

    public interface MediaBrowserServiceCallbackImpl {
        void a(Messenger messenger, String str, Bundle bundle);
    }

    public static class SearchResultReceiver extends ResultReceiver {
        @Override // android.support.v4.os.ResultReceiver
        public final void a(int i2, Bundle bundle) {
            if (bundle != null) {
                MediaSessionCompat.a(bundle);
                try {
                    bundle.isEmpty();
                } catch (BadParcelableException unused) {
                    bundle = null;
                }
            }
            if (i2 != 0 || bundle == null || !bundle.containsKey("search_results")) {
                throw null;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
            parcelableArray.getClass();
            ArrayList arrayList = new ArrayList(parcelableArray.length);
            for (Parcelable parcelable : parcelableArray) {
                arrayList.add((MediaItem) parcelable);
            }
            throw null;
        }
    }

    public static class ServiceBinderWrapper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Messenger f583a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Bundle f584b;

        public ServiceBinderWrapper(IBinder iBinder, Bundle bundle) {
            this.f583a = new Messenger(iBinder);
            this.f584b = bundle;
        }
    }

    public static class Subscription {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f585a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f586b = new ArrayList();
    }

    @Deprecated
    public static abstract class SubscriptionCallback {

        public class SubscriptionCallbackApi21 extends MediaBrowser.SubscriptionCallback {
            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public final void onChildrenLoaded(String str, List list) {
                MediaItem.a(list);
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public final void onError(String str) {
            }
        }

        public class SubscriptionCallbackApi26 extends SubscriptionCallbackApi21 {
            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public final void onChildrenLoaded(String str, List list, Bundle bundle) {
                MediaSessionCompat.a(bundle);
                MediaItem.a(list);
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public final void onError(String str, Bundle bundle) {
                MediaSessionCompat.a(bundle);
            }
        }

        public SubscriptionCallback() {
            new Binder();
            new SubscriptionCallbackApi26();
        }
    }

    static {
        Log.isLoggable("MediaBrowserCompat", 3);
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, ConnectionCallback connectionCallback, Bundle bundle) {
        this.f571a = new MediaBrowserImplApi26(context, componentName, connectionCallback, bundle);
    }

    public final void a() {
        this.f571a.f576b.connect();
    }

    public final void b() {
        Messenger messenger;
        MediaBrowserImplApi26 mediaBrowserImplApi26 = this.f571a;
        ServiceBinderWrapper serviceBinderWrapper = mediaBrowserImplApi26.f579f;
        if (serviceBinderWrapper != null && (messenger = mediaBrowserImplApi26.g) != null) {
            try {
                Message messageObtain = Message.obtain();
                messageObtain.what = 7;
                messageObtain.arg1 = 1;
                messageObtain.setData(null);
                messageObtain.replyTo = messenger;
                serviceBinderWrapper.f583a.send(messageObtain);
            } catch (RemoteException unused) {
            }
        }
        mediaBrowserImplApi26.f576b.disconnect();
    }

    public final MediaSessionCompat.Token c() {
        MediaBrowserImplApi26 mediaBrowserImplApi26 = this.f571a;
        if (mediaBrowserImplApi26.f580h == null) {
            MediaSession.Token sessionToken = mediaBrowserImplApi26.f576b.getSessionToken();
            mediaBrowserImplApi26.f580h = sessionToken != null ? new MediaSessionCompat.Token(sessionToken, null, null) : null;
        }
        return mediaBrowserImplApi26.f580h;
    }

    @Deprecated
    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f581b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MediaDescriptionCompat f582c;

        /* JADX INFO: renamed from: android.support.v4.media.MediaBrowserCompat$MediaItem$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<MediaItem> {
            @Override // android.os.Parcelable.Creator
            public final MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final MediaItem[] newArray(int i2) {
                return new MediaItem[i2];
            }
        }

        public MediaItem(MediaDescriptionCompat mediaDescriptionCompat, int i2) {
            if (mediaDescriptionCompat == null) {
                md.n("description cannot be null");
                throw null;
            }
            if (TextUtils.isEmpty(mediaDescriptionCompat.f587b)) {
                md.n("description must have a non-empty media id");
                throw null;
            }
            this.f581b = i2;
            this.f582c = mediaDescriptionCompat;
        }

        public static void a(List list) {
            MediaItem mediaItem;
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(list.size());
            for (Object obj : list) {
                if (obj == null) {
                    mediaItem = null;
                } else {
                    MediaBrowser.MediaItem mediaItem2 = (MediaBrowser.MediaItem) obj;
                    mediaItem = new MediaItem(MediaDescriptionCompat.a(mediaItem2.getDescription()), mediaItem2.getFlags());
                }
                arrayList.add(mediaItem);
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "MediaItem{mFlags=" + this.f581b + ", mDescription=" + this.f582c + '}';
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f581b);
            this.f582c.writeToParcel(parcel, i2);
        }

        public MediaItem(Parcel parcel) {
            this.f581b = parcel.readInt();
            this.f582c = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }
    }
}
