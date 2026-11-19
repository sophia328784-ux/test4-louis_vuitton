package androidx.media3.session.legacy;

import android.content.ComponentName;
import android.content.Context;
import android.media.browse.MediaBrowser;
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
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import defpackage.md;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class MediaBrowserCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaBrowserImplApi26 f17706a;

    public static class CallbackHandler extends Handler {
        private final WeakReference<MediaBrowserServiceCallbackImpl> callbackImplRef;
        private WeakReference<Messenger> callbacksMessengerRef;

        public CallbackHandler(MediaBrowserServiceCallbackImpl mediaBrowserServiceCallbackImpl) {
            this.callbackImplRef = new WeakReference<>(mediaBrowserServiceCallbackImpl);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            WeakReference<Messenger> weakReference = this.callbacksMessengerRef;
            if (weakReference == null) {
                return;
            }
            Messenger messenger = weakReference.get();
            MediaBrowserServiceCallbackImpl mediaBrowserServiceCallbackImpl = this.callbackImplRef.get();
            if (messenger == null || mediaBrowserServiceCallbackImpl == null) {
                return;
            }
            Bundle data = message.getData();
            if (data != null) {
                ClassLoader classLoader = MediaSessionCompat.class.getClassLoader();
                classLoader.getClass();
                data.setClassLoader(classLoader);
            }
            try {
                if (message.what != 3) {
                    Log.g("Unhandled message: " + message + "\n  Client version: 1\n  Service version: " + message.arg1);
                    return;
                }
                Bundle bundleP = Util.p(data.getBundle("data_options"));
                Util.p(data.getBundle("data_notify_children_changed_options"));
                String string = data.getString("data_media_item_id");
                LegacyParcelableUtil.b(data.getParcelableArrayList("data_media_item_list"), MediaItem.CREATOR);
                mediaBrowserServiceCallbackImpl.a(messenger, string, bundleP);
            } catch (BadParcelableException unused) {
                Log.d("Could not unparcel the data.");
            }
        }

        public void setCallbacksMessenger(Messenger messenger) {
            this.callbacksMessengerRef = new WeakReference<>(messenger);
        }
    }

    public static class ConnectionCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaBrowser.ConnectionCallback f17707a = new ConnectionCallbackImpl();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MediaBrowserImplApi23 f17708b;

        public class ConnectionCallbackImpl extends MediaBrowser.ConnectionCallback {
            public ConnectionCallbackImpl() {
            }

            @Override // android.media.browse.MediaBrowser.ConnectionCallback
            public final void onConnected() {
                ConnectionCallback connectionCallback = ConnectionCallback.this;
                MediaBrowserImplApi23 mediaBrowserImplApi23 = connectionCallback.f17708b;
                if (mediaBrowserImplApi23 != null) {
                    CallbackHandler callbackHandler = mediaBrowserImplApi23.d;
                    MediaBrowser mediaBrowser = mediaBrowserImplApi23.f17711b;
                    try {
                        Bundle bundleP = Util.p(mediaBrowser.getExtras());
                        if (bundleP != null) {
                            bundleP.getInt("extra_service_version", 0);
                            IBinder binder = bundleP.getBinder("extra_messenger");
                            if (binder != null) {
                                ServiceBinderWrapper serviceBinderWrapper = new ServiceBinderWrapper(binder, mediaBrowserImplApi23.f17712c);
                                mediaBrowserImplApi23.f17714f = serviceBinderWrapper;
                                Messenger messenger = new Messenger(callbackHandler);
                                mediaBrowserImplApi23.g = messenger;
                                callbackHandler.setCallbacksMessenger(messenger);
                                try {
                                    Context context = mediaBrowserImplApi23.f17710a;
                                    Bundle bundle = new Bundle();
                                    bundle.putString("data_package_name", context.getPackageName());
                                    bundle.putInt("data_calling_pid", Process.myPid());
                                    bundle.putBundle("data_root_hints", serviceBinderWrapper.f17719b);
                                    serviceBinderWrapper.a(6, bundle, messenger);
                                } catch (RemoteException unused) {
                                    Log.f("Remote error registering client messenger.");
                                }
                            }
                            IMediaSession iMediaSessionE2 = IMediaSession.Stub.E2(bundleP.getBinder("extra_session_binder"));
                            if (iMediaSessionE2 != null) {
                                mediaBrowserImplApi23.f17715h = new MediaSessionCompat.Token(mediaBrowser.getSessionToken(), iMediaSessionE2, null);
                            }
                        }
                    } catch (IllegalStateException e2) {
                        Log.e("Unexpected IllegalStateException", e2);
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
                MediaBrowserImplApi23 mediaBrowserImplApi23 = connectionCallback.f17708b;
                if (mediaBrowserImplApi23 != null) {
                    mediaBrowserImplApi23.f17714f = null;
                    mediaBrowserImplApi23.g = null;
                    mediaBrowserImplApi23.f17715h = null;
                    mediaBrowserImplApi23.d.setCallbacksMessenger(null);
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
            Bundle bundleP = Util.p(bundle);
            if (i2 != 0 || bundleP == null || !bundleP.containsKey("media_item")) {
                throw null;
            }
            throw null;
        }
    }

    public interface MediaBrowserImpl {
    }

    public static class MediaBrowserImplApi23 implements MediaBrowserImpl, MediaBrowserServiceCallbackImpl, ConnectionCallback.ConnectionCallbackInternal {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f17710a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaBrowser f17711b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Bundle f17712c;
        public final CallbackHandler d = new CallbackHandler(this);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ArrayMap f17713e = new ArrayMap();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ServiceBinderWrapper f17714f;
        public Messenger g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public MediaSessionCompat.Token f17715h;

        public MediaBrowserImplApi23(Context context, ComponentName componentName, ConnectionCallback connectionCallback, Bundle bundle) {
            this.f17710a = context;
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            this.f17712c = bundle2;
            bundle2.putInt("extra_client_version", 1);
            bundle2.putInt("extra_calling_pid", Process.myPid());
            connectionCallback.f17708b = this;
            MediaBrowser.ConnectionCallback connectionCallback2 = connectionCallback.f17707a;
            connectionCallback2.getClass();
            this.f17711b = new MediaBrowser(context, componentName, connectionCallback2, bundle2);
        }

        @Override // androidx.media3.session.legacy.MediaBrowserCompat.MediaBrowserServiceCallbackImpl
        public final void a(Messenger messenger, String str, Bundle bundle) {
            if (this.g != messenger) {
                return;
            }
            Subscription subscription = str == null ? null : (Subscription) this.f17713e.get(str);
            if (subscription == null) {
                Log.b("onLoadChildren for id that isn't subscribed id=" + str);
                return;
            }
            ArrayList arrayList = subscription.f17721b;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                if (MediaBrowserCompatUtils.a((Bundle) arrayList.get(i2), bundle)) {
                    return;
                }
            }
        }
    }

    public static class MediaBrowserImplApi26 extends MediaBrowserImplApi23 {
    }

    public interface MediaBrowserServiceCallbackImpl {
        void a(Messenger messenger, String str, Bundle bundle);
    }

    public static class SearchResultReceiver extends ResultReceiver {
        @Override // android.support.v4.os.ResultReceiver
        public final void a(int i2, Bundle bundle) {
            Bundle bundleP = Util.p(bundle);
            if (i2 != 0 || bundleP == null || !bundleP.containsKey("search_results")) {
                throw null;
            }
            Parcelable[] parcelableArray = bundleP.getParcelableArray("search_results");
            parcelableArray.getClass();
            ArrayList arrayList = new ArrayList(parcelableArray.length);
            for (Parcelable parcelable : parcelableArray) {
                arrayList.add((MediaItem) LegacyParcelableUtil.a(parcelable, MediaItem.CREATOR));
            }
            throw null;
        }
    }

    public static class ServiceBinderWrapper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Messenger f17718a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Bundle f17719b;

        public ServiceBinderWrapper(IBinder iBinder, Bundle bundle) {
            this.f17718a = new Messenger(iBinder);
            this.f17719b = bundle;
        }

        public final void a(int i2, Bundle bundle, Messenger messenger) throws RemoteException {
            Messenger messenger2 = this.f17718a;
            if (messenger2.getBinder().isBinderAlive()) {
                Message messageObtain = Message.obtain();
                messageObtain.what = i2;
                messageObtain.arg1 = 1;
                if (bundle != null) {
                    messageObtain.setData(bundle);
                }
                messageObtain.replyTo = messenger;
                messenger2.send(messageObtain);
            }
        }
    }

    public static class Subscription {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f17720a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f17721b = new ArrayList();
    }

    public static abstract class SubscriptionCallback {

        public class SubscriptionCallbackApi23 extends MediaBrowser.SubscriptionCallback {
            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public final void onChildrenLoaded(String str, List list) {
                MediaItem.a(list);
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public final void onError(String str) {
            }
        }

        public class SubscriptionCallbackApi26 extends SubscriptionCallbackApi23 {
            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public final void onChildrenLoaded(String str, List list, Bundle bundle) {
                Util.p(bundle);
                MediaItem.a(list);
            }

            @Override // android.media.browse.MediaBrowser.SubscriptionCallback
            public final void onError(String str, Bundle bundle) {
                Util.p(bundle);
            }
        }

        public SubscriptionCallback() {
            new Binder();
            new SubscriptionCallbackApi26();
        }
    }

    public MediaBrowserCompat(Context context, ComponentName componentName, ConnectionCallback connectionCallback, Bundle bundle) {
        this.f17706a = new MediaBrowserImplApi26(context, componentName, connectionCallback, bundle);
    }

    public final void a() {
        Log.b("Connecting to a MediaBrowserService.");
        this.f17706a.f17711b.connect();
    }

    public final void b() {
        Messenger messenger;
        MediaBrowserImplApi26 mediaBrowserImplApi26 = this.f17706a;
        ServiceBinderWrapper serviceBinderWrapper = mediaBrowserImplApi26.f17714f;
        if (serviceBinderWrapper != null && (messenger = mediaBrowserImplApi26.g) != null) {
            try {
                serviceBinderWrapper.a(7, null, messenger);
            } catch (RemoteException unused) {
                Log.f("Remote error unregistering client messenger.");
            }
        }
        mediaBrowserImplApi26.f17711b.disconnect();
    }

    public final MediaSessionCompat.Token c() {
        MediaBrowserImplApi26 mediaBrowserImplApi26 = this.f17706a;
        if (mediaBrowserImplApi26.f17715h == null) {
            mediaBrowserImplApi26.f17715h = new MediaSessionCompat.Token(mediaBrowserImplApi26.f17711b.getSessionToken(), null, null);
        }
        return mediaBrowserImplApi26.f17715h;
    }

    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f17716b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final MediaDescriptionCompat f17717c;

        /* JADX INFO: renamed from: androidx.media3.session.legacy.MediaBrowserCompat$MediaItem$1, reason: invalid class name */
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
            if (TextUtils.isEmpty(mediaDescriptionCompat.f17780b)) {
                md.n("description must have a non-empty media id");
                throw null;
            }
            this.f17716b = i2;
            this.f17717c = mediaDescriptionCompat;
        }

        public static void a(List list) {
            MediaItem mediaItem;
            if (list == null) {
                return;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator it = list.iterator();
            while (it.hasNext()) {
                MediaBrowser.MediaItem mediaItem2 = (MediaBrowser.MediaItem) it.next();
                if (mediaItem2 == null) {
                    mediaItem = null;
                } else {
                    mediaItem = new MediaItem(MediaDescriptionCompat.a(mediaItem2.getDescription()), mediaItem2.getFlags());
                }
                if (mediaItem != null) {
                    arrayList.add(mediaItem);
                }
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "MediaItem{mFlags=" + this.f17716b + ", mDescription=" + this.f17717c + '}';
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f17716b);
            this.f17717c.writeToParcel(parcel, i2);
        }

        public MediaItem(Parcel parcel) {
            this.f17716b = parcel.readInt();
            this.f17717c = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }
    }
}
