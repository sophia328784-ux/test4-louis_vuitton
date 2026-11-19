package androidx.media3.session.legacy;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.media.browse.MediaBrowser;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.service.media.MediaBrowserService;
import android.support.v4.os.ResultReceiver;
import android.text.TextUtils;
import androidx.collection.ArrayMap;
import androidx.core.util.Pair;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import defpackage.cj;
import defpackage.ct0;
import defpackage.d21;
import defpackage.md;
import defpackage.mt;
import defpackage.tr;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaBrowserServiceCompat extends Service {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MediaBrowserServiceImplApi28 f17722b;
    public ConnectionRecord g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public MediaSessionCompat.Token f17727i;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ServiceBinderImpl f17723c = new ServiceBinderImpl();
    public final ConnectionRecord d = new ConnectionRecord("android.media.session.MediaController", -1, -1, null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f17724e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayMap f17725f = new ArrayMap();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ServiceHandler f17726h = new ServiceHandler(this);

    public static final class BrowserRoot {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f17734a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Bundle f17735b;

        public BrowserRoot(String str, Bundle bundle) {
            if (str == null) {
                md.n("The root id in BrowserRoot cannot be null. Use null for BrowserRoot instead");
                throw null;
            }
            this.f17734a = str;
            this.f17735b = bundle;
        }
    }

    public class ConnectionRecord implements IBinder.DeathRecipient {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f17736a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f17737b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f17738c;
        public final MediaSessionManager.RemoteUserInfo d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ServiceCallbacks f17739e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final HashMap f17740f = new HashMap();

        public ConnectionRecord(String str, int i2, int i3, ServiceCallbacks serviceCallbacks) {
            this.f17736a = str;
            this.f17737b = i2;
            this.f17738c = i3;
            this.d = new MediaSessionManager.RemoteUserInfo(str, i2, i3);
            this.f17739e = serviceCallbacks;
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            MediaBrowserServiceCompat.this.f17726h.post(new Runnable() { // from class: androidx.media3.session.legacy.MediaBrowserServiceCompat.ConnectionRecord.1
                @Override // java.lang.Runnable
                public void run() {
                    ConnectionRecord connectionRecord = ConnectionRecord.this;
                    ArrayMap arrayMap = MediaBrowserServiceCompat.this.f17725f;
                    ServiceCallbacks serviceCallbacks = connectionRecord.f17739e;
                    serviceCallbacks.getClass();
                    arrayMap.remove(serviceCallbacks.asBinder());
                }
            });
        }
    }

    public interface MediaBrowserServiceImpl {
    }

    public class MediaBrowserServiceImplApi23 implements MediaBrowserServiceImpl {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f17741a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MediaBrowserService f17742b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Messenger f17743c;

        public class MediaBrowserServiceApi23 extends MediaBrowserService {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ MediaBrowserServiceImplApi26 f17746b;

            public MediaBrowserServiceApi23(MediaBrowserServiceImplApi26 mediaBrowserServiceImplApi26, Context context) {
                this.f17746b = mediaBrowserServiceImplApi26;
                attachBaseContext(context);
            }

            @Override // android.service.media.MediaBrowserService
            public final MediaBrowserService.BrowserRoot onGetRoot(String str, int i2, Bundle bundle) {
                Bundle bundle2;
                BrowserRoot browserRoot;
                Bundle bundleP = Util.p(bundle);
                MediaBrowserServiceImplApi26 mediaBrowserServiceImplApi26 = this.f17746b;
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                Bundle bundle3 = bundleP == null ? null : new Bundle(bundleP);
                int i3 = -1;
                if (bundle3 == null || bundle3.getInt("extra_client_version", 0) == 0) {
                    bundle2 = null;
                } else {
                    bundle3.remove("extra_client_version");
                    mediaBrowserServiceImplApi26.f17743c = new Messenger(mediaBrowserServiceCompat.f17726h);
                    Bundle bundle4 = new Bundle();
                    bundle4.putInt("extra_service_version", 2);
                    bundle4.putBinder("extra_messenger", mediaBrowserServiceImplApi26.f17743c.getBinder());
                    MediaSessionCompat.Token token = mediaBrowserServiceCompat.f17727i;
                    if (token != null) {
                        IMediaSession iMediaSessionA = token.a();
                        bundle4.putBinder("extra_session_binder", iMediaSessionA == null ? null : iMediaSessionA.asBinder());
                    } else {
                        mediaBrowserServiceImplApi26.f17741a.add(bundle4);
                    }
                    i3 = bundle3.getInt("extra_calling_pid", -1);
                    bundle3.remove("extra_calling_pid");
                    bundle2 = bundle4;
                }
                ConnectionRecord connectionRecord = mediaBrowserServiceCompat.new ConnectionRecord(str, i3, i2, null);
                mediaBrowserServiceCompat.g = connectionRecord;
                BrowserRoot browserRootD = mediaBrowserServiceCompat.d(i2, str, bundle3);
                mediaBrowserServiceCompat.g = null;
                if (browserRootD == null) {
                    browserRoot = null;
                } else {
                    if (mediaBrowserServiceImplApi26.f17743c != null) {
                        mediaBrowserServiceCompat.f17724e.add(connectionRecord);
                    }
                    Bundle bundle5 = browserRootD.f17735b;
                    if (bundle2 == null) {
                        bundle2 = bundle5;
                    } else if (bundle5 != null) {
                        bundle2.putAll(bundle5);
                    }
                    browserRoot = new BrowserRoot(browserRootD.f17734a, bundle2);
                }
                if (browserRoot == null) {
                    return null;
                }
                return new MediaBrowserService.BrowserRoot(browserRoot.f17734a, browserRoot.f17735b);
            }

            @Override // android.service.media.MediaBrowserService
            public final void onLoadChildren(String str, MediaBrowserService.Result result) {
                final ResultWrapper resultWrapper = new ResultWrapper(result);
                Result<List<MediaBrowserCompat.MediaItem>> result2 = new Result<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media3.session.legacy.MediaBrowserServiceCompat.MediaBrowserServiceImplApi23.2
                    @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat.Result
                    public final void a() {
                        resultWrapper.f17755a.detach();
                    }

                    @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat.Result
                    public final void d(Object obj) {
                        ArrayList arrayList;
                        List<MediaBrowserCompat.MediaItem> list = (List) obj;
                        if (list == null) {
                            arrayList = null;
                        } else {
                            ArrayList arrayList2 = new ArrayList(list.size());
                            for (MediaBrowserCompat.MediaItem mediaItem : list) {
                                Parcel parcelObtain = Parcel.obtain();
                                mediaItem.writeToParcel(parcelObtain, 0);
                                arrayList2.add(parcelObtain);
                            }
                            arrayList = arrayList2;
                        }
                        resultWrapper.a(arrayList);
                    }
                };
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat.g = mediaBrowserServiceCompat.d;
                mediaBrowserServiceCompat.f(str, result2);
                mediaBrowserServiceCompat.g = null;
            }

            @Override // android.service.media.MediaBrowserService
            public final void onLoadItem(String str, MediaBrowserService.Result result) {
                final ResultWrapper resultWrapper = new ResultWrapper(result);
                Result<MediaBrowserCompat.MediaItem> result2 = new Result<MediaBrowserCompat.MediaItem>(str) { // from class: androidx.media3.session.legacy.MediaBrowserServiceCompat.MediaBrowserServiceImplApi23.5
                    @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat.Result
                    public final void a() {
                        resultWrapper.f17755a.detach();
                    }

                    @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat.Result
                    public final void d(Object obj) {
                        MediaBrowserCompat.MediaItem mediaItem = (MediaBrowserCompat.MediaItem) obj;
                        ResultWrapper resultWrapper2 = resultWrapper;
                        if (mediaItem == null) {
                            resultWrapper2.a(null);
                            return;
                        }
                        Parcel parcelObtain = Parcel.obtain();
                        mediaItem.writeToParcel(parcelObtain, 0);
                        resultWrapper2.a(parcelObtain);
                    }
                };
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                mediaBrowserServiceCompat.g = mediaBrowserServiceCompat.d;
                mediaBrowserServiceCompat.g(str, result2);
                mediaBrowserServiceCompat.g = null;
            }
        }

        public MediaBrowserServiceImplApi23() {
        }
    }

    public class MediaBrowserServiceImplApi26 extends MediaBrowserServiceImplApi23 {

        public class MediaBrowserServiceApi26 extends MediaBrowserServiceImplApi23.MediaBrowserServiceApi23 {
            public MediaBrowserServiceApi26(Context context) {
                super(MediaBrowserServiceImplApi26.this, context);
            }

            @Override // android.service.media.MediaBrowserService
            public final void onLoadChildren(String str, MediaBrowserService.Result result, Bundle bundle) {
                Bundle bundleP = Util.p(bundle);
                MediaBrowserServiceImplApi26 mediaBrowserServiceImplApi26 = MediaBrowserServiceImplApi26.this;
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                ConnectionRecord connectionRecord = mediaBrowserServiceCompat.d;
                Result<List<MediaBrowserCompat.MediaItem>> result2 = new Result<List<MediaBrowserCompat.MediaItem>>(mediaBrowserServiceImplApi26, str, new ResultWrapper(result), bundleP) { // from class: androidx.media3.session.legacy.MediaBrowserServiceCompat.MediaBrowserServiceImplApi26.1

                    /* JADX INFO: renamed from: f, reason: collision with root package name */
                    public final /* synthetic */ ResultWrapper f17748f;
                    public final /* synthetic */ Bundle g;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(str);
                        this.f17748f = resultWrapper;
                        this.g = bundleP;
                    }

                    @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat.Result
                    public final void a() {
                        this.f17748f.f17755a.detach();
                    }

                    @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat.Result
                    public final void d(Object obj) {
                        List<MediaBrowserCompat.MediaItem> listA = (List) obj;
                        ResultWrapper resultWrapper = this.f17748f;
                        if (listA == null) {
                            resultWrapper.a(null);
                            return;
                        }
                        if ((this.f17754e & 1) != 0) {
                            listA = MediaBrowserServiceCompat.a(listA, this.g);
                        }
                        ArrayList arrayList = new ArrayList(listA == null ? 0 : listA.size());
                        if (listA != null) {
                            for (MediaBrowserCompat.MediaItem mediaItem : listA) {
                                Parcel parcelObtain = Parcel.obtain();
                                mediaItem.writeToParcel(parcelObtain, 0);
                                arrayList.add(parcelObtain);
                            }
                        }
                        resultWrapper.a(arrayList);
                    }
                };
                mediaBrowserServiceCompat.g = connectionRecord;
                mediaBrowserServiceCompat.e(bundleP, result2, str);
                mediaBrowserServiceCompat.g = null;
                mediaBrowserServiceCompat.g = null;
            }
        }

        public MediaBrowserServiceImplApi26() {
            super();
        }
    }

    public class MediaBrowserServiceImplApi28 extends MediaBrowserServiceImplApi26 {
        public MediaBrowserServiceImplApi28() {
            super();
        }
    }

    public static class Result<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f17751a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f17752b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f17753c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f17754e;

        public Result(Object obj) {
            this.f17751a = obj;
        }

        public void a() {
            boolean z = this.f17752b;
            Object obj = this.f17751a;
            if (z) {
                md.k(cj.i(obj, "detach() called when detach() had already been called for: "));
                return;
            }
            if (this.f17753c) {
                md.k(cj.i(obj, "detach() called when sendResult() had already been called for: "));
            } else if (this.d) {
                md.k(cj.i(obj, "detach() called when sendError() had already been called for: "));
            } else {
                this.f17752b = true;
            }
        }

        public final boolean b() {
            return this.f17752b || this.f17753c || this.d;
        }

        public void c() {
            throw new UnsupportedOperationException("It is not supported to send an error for " + this.f17751a);
        }

        public abstract void d(Object obj);

        public final void e() {
            if (this.f17753c || this.d) {
                ct0.o(this.f17751a, "sendError() called when either sendResult() or sendError() had already been called for: ");
            } else {
                this.d = true;
                c();
            }
        }

        public final void f(Object obj) {
            if (this.f17753c || this.d) {
                ct0.o(this.f17751a, "sendResult() called when either sendResult() or sendError() had already been called for: ");
            } else {
                this.f17753c = true;
                d(obj);
            }
        }
    }

    public static class ResultWrapper<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaBrowserService.Result f17755a;

        public ResultWrapper(MediaBrowserService.Result result) {
            this.f17755a = result;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(Object obj) {
            boolean z = obj instanceof List;
            MediaBrowserService.Result result = this.f17755a;
            if (!z) {
                if (!(obj instanceof Parcel)) {
                    result.sendResult(null);
                    return;
                }
                Parcel parcel = (Parcel) obj;
                parcel.setDataPosition(0);
                result.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
                return;
            }
            List<Parcel> list = (List) obj;
            ArrayList arrayList = new ArrayList(list.size());
            for (Parcel parcel2 : list) {
                parcel2.setDataPosition(0);
                arrayList.add((MediaBrowser.MediaItem) MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel2));
                parcel2.recycle();
            }
            result.sendResult(arrayList);
        }
    }

    public class ServiceBinderImpl {
        public ServiceBinderImpl() {
        }
    }

    public interface ServiceCallbacks {
        void a(String str, List list, Bundle bundle);

        IBinder asBinder();
    }

    public static class ServiceCallbacksCompat implements ServiceCallbacks {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Messenger f17757a;

        public ServiceCallbacksCompat(Messenger messenger) {
            this.f17757a = messenger;
        }

        @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat.ServiceCallbacks
        public final void a(String str, List list, Bundle bundle) throws RemoteException {
            Bundle bundle2 = new Bundle();
            bundle2.putString("data_media_item_id", str);
            bundle2.putBundle("data_options", bundle);
            bundle2.putBundle("data_notify_children_changed_options", null);
            if (list != null) {
                bundle2.putParcelableArrayList("data_media_item_list", LegacyParcelableUtil.b(list, android.support.v4.media.MediaBrowserCompat.MediaItem.CREATOR));
            }
            Message messageObtain = Message.obtain();
            messageObtain.what = 3;
            messageObtain.arg1 = 2;
            messageObtain.setData(bundle2);
            this.f17757a.send(messageObtain);
        }

        @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat.ServiceCallbacks
        public final IBinder asBinder() {
            return this.f17757a.getBinder();
        }
    }

    public static final class ServiceHandler extends Handler {
        private MediaBrowserServiceCompat service;

        /* JADX WARN: Illegal instructions before constructor call */
        public ServiceHandler(MediaBrowserServiceCompat mediaBrowserServiceCompat) {
            Looper looperMyLooper = Looper.myLooper();
            looperMyLooper.getClass();
            super(looperMyLooper);
            this.service = mediaBrowserServiceCompat;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            MediaBrowserServiceCompat mediaBrowserServiceCompat = this.service;
            if (mediaBrowserServiceCompat == null) {
                removeCallbacksAndMessages(null);
                return;
            }
            final ServiceBinderImpl serviceBinderImpl = mediaBrowserServiceCompat.f17723c;
            Bundle data = message.getData();
            switch (message.what) {
                case 3:
                    final Bundle bundleP = Util.p(data.getBundle("data_options"));
                    final String string = data.getString("data_media_item_id");
                    final IBinder binder = data.getBinder("data_callback_token");
                    final ServiceCallbacksCompat serviceCallbacksCompat = new ServiceCallbacksCompat(message.replyTo);
                    MediaBrowserServiceCompat.this.f17726h.postOrRun(new Runnable() { // from class: androidx.media3.session.legacy.MediaBrowserServiceCompat.ServiceBinderImpl.1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public void run() {
                            final ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f17725f.get(serviceCallbacksCompat.asBinder());
                            if (connectionRecord == null) {
                                Log.g("addSubscription for callback that isn't registered id=" + string);
                                return;
                            }
                            HashMap map = connectionRecord.f17740f;
                            final MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                            final String str = string;
                            IBinder iBinder = binder;
                            final Bundle bundle = bundleP;
                            List<Pair> arrayList = (List) map.get(str);
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                            }
                            for (Pair pair : arrayList) {
                                if (iBinder == pair.f12138a && MediaBrowserCompatUtils.a(bundle, (Bundle) pair.f12139b)) {
                                    return;
                                }
                            }
                            arrayList.add(new Pair(iBinder, bundle));
                            map.put(str, arrayList);
                            Result<List<MediaBrowserCompat.MediaItem>> result = new Result<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media3.session.legacy.MediaBrowserServiceCompat.1
                                @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat.Result
                                public final void d(Object obj) {
                                    List listA = (List) obj;
                                    ArrayMap arrayMap = MediaBrowserServiceCompat.this.f17725f;
                                    ConnectionRecord connectionRecord2 = connectionRecord;
                                    ServiceCallbacks serviceCallbacks = connectionRecord2.f17739e;
                                    String str2 = connectionRecord2.f17736a;
                                    serviceCallbacks.getClass();
                                    Object obj2 = arrayMap.get(serviceCallbacks.asBinder());
                                    String str3 = str;
                                    if (obj2 != connectionRecord2) {
                                        Log.b("Not sending onLoadChildren result for connection that has been disconnected. pkg=" + str2 + " id=" + str3);
                                        return;
                                    }
                                    int i2 = this.f17754e & 1;
                                    Bundle bundle2 = bundle;
                                    if (i2 != 0) {
                                        listA = MediaBrowserServiceCompat.a(listA, bundle2);
                                    }
                                    try {
                                        serviceCallbacks.a(str3, listA, bundle2);
                                    } catch (RemoteException unused) {
                                        Log.g("Calling onLoadChildren() failed for id=" + str3 + " package=" + str2);
                                    }
                                }
                            };
                            mediaBrowserServiceCompat2.g = connectionRecord;
                            if (bundle == null) {
                                mediaBrowserServiceCompat2.f(str, result);
                            } else {
                                mediaBrowserServiceCompat2.e(bundle, result, str);
                            }
                            mediaBrowserServiceCompat2.g = null;
                            if (!result.b()) {
                                md.k(d21.p(new StringBuilder("onLoadChildren must call detach() or sendResult() before returning for package="), connectionRecord.f17736a, " id=", str));
                                return;
                            }
                            mediaBrowserServiceCompat2.g = connectionRecord;
                            mediaBrowserServiceCompat2.i(str, bundle);
                            mediaBrowserServiceCompat2.g = null;
                        }
                    });
                    break;
                case 4:
                    final String string2 = data.getString("data_media_item_id");
                    final IBinder binder2 = data.getBinder("data_callback_token");
                    final ServiceCallbacksCompat serviceCallbacksCompat2 = new ServiceCallbacksCompat(message.replyTo);
                    MediaBrowserServiceCompat.this.f17726h.postOrRun(new Runnable() { // from class: androidx.media3.session.legacy.MediaBrowserServiceCompat.ServiceBinderImpl.2
                        @Override // java.lang.Runnable
                        public void run() {
                            ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f17725f.get(serviceCallbacksCompat2.asBinder());
                            if (connectionRecord == null) {
                                Log.g("removeSubscription for callback that isn't registered id=" + string2);
                                return;
                            }
                            HashMap map = connectionRecord.f17740f;
                            MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                            String str = string2;
                            IBinder iBinder = binder2;
                            boolean z = false;
                            try {
                                if (iBinder != null) {
                                    List list = (List) map.get(str);
                                    if (list != null) {
                                        Iterator it = list.iterator();
                                        while (it.hasNext()) {
                                            if (iBinder == ((Pair) it.next()).f12138a) {
                                                it.remove();
                                                z = true;
                                            }
                                        }
                                        if (list.isEmpty()) {
                                            map.remove(str);
                                        }
                                    }
                                } else if (map.remove(str) != null) {
                                    z = true;
                                }
                                mediaBrowserServiceCompat2.g = connectionRecord;
                                mediaBrowserServiceCompat2.j(str);
                                mediaBrowserServiceCompat2.g = null;
                                if (z) {
                                    return;
                                }
                                Log.g("removeSubscription called for " + string2 + " which is not subscribed");
                            } catch (Throwable th) {
                                mediaBrowserServiceCompat2.g = connectionRecord;
                                mediaBrowserServiceCompat2.j(str);
                                mediaBrowserServiceCompat2.g = null;
                                throw th;
                            }
                        }
                    });
                    break;
                case 5:
                    final String string3 = data.getString("data_media_item_id");
                    final ResultReceiver resultReceiver = (ResultReceiver) data.getParcelable("data_result_receiver");
                    final ServiceCallbacksCompat serviceCallbacksCompat3 = new ServiceCallbacksCompat(message.replyTo);
                    serviceBinderImpl.getClass();
                    if (!TextUtils.isEmpty(string3) && resultReceiver != null) {
                        MediaBrowserServiceCompat.this.f17726h.postOrRun(new Runnable() { // from class: androidx.media3.session.legacy.MediaBrowserServiceCompat.ServiceBinderImpl.3
                            @Override // java.lang.Runnable
                            public void run() {
                                ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f17725f.get(serviceCallbacksCompat3.asBinder());
                                if (connectionRecord == null) {
                                    Log.g("getMediaItem for callback that isn't registered id=" + string3);
                                    return;
                                }
                                MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                                String str = string3;
                                final ResultReceiver resultReceiver2 = resultReceiver;
                                Result<MediaBrowserCompat.MediaItem> result = new Result<MediaBrowserCompat.MediaItem>(str) { // from class: androidx.media3.session.legacy.MediaBrowserServiceCompat.2
                                    @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat.Result
                                    public final void d(Object obj) {
                                        MediaBrowserCompat.MediaItem mediaItem = (MediaBrowserCompat.MediaItem) obj;
                                        int i2 = this.f17754e & 2;
                                        ResultReceiver resultReceiver3 = resultReceiver2;
                                        if (i2 != 0) {
                                            resultReceiver3.b(-1, null);
                                            return;
                                        }
                                        Bundle bundle = new Bundle();
                                        bundle.putParcelable("media_item", LegacyParcelableUtil.a(mediaItem, android.support.v4.media.MediaBrowserCompat.MediaItem.CREATOR));
                                        resultReceiver3.b(0, bundle);
                                    }
                                };
                                mediaBrowserServiceCompat2.g = connectionRecord;
                                mediaBrowserServiceCompat2.g(str, result);
                                mediaBrowserServiceCompat2.g = null;
                                if (result.b()) {
                                    return;
                                }
                                md.k(tr.g("onLoadItem must call detach() or sendResult() before returning for id=", str));
                            }
                        });
                        break;
                    }
                    break;
                case 6:
                    final Bundle bundleP2 = Util.p(data.getBundle("data_root_hints"));
                    final ServiceCallbacksCompat serviceCallbacksCompat4 = new ServiceCallbacksCompat(message.replyTo);
                    final String string4 = data.getString("data_package_name");
                    final int i2 = data.getInt("data_calling_pid");
                    final int i3 = data.getInt("data_calling_uid");
                    MediaBrowserServiceCompat.this.f17726h.postOrRun(new Runnable() { // from class: androidx.media3.session.legacy.MediaBrowserServiceCompat.ServiceBinderImpl.4
                        @Override // java.lang.Runnable
                        public void run() {
                            ConnectionRecord connectionRecord;
                            IBinder iBinderAsBinder = serviceCallbacksCompat4.asBinder();
                            MediaBrowserServiceCompat.this.f17725f.remove(iBinderAsBinder);
                            Iterator it = MediaBrowserServiceCompat.this.f17724e.iterator();
                            while (true) {
                                connectionRecord = null;
                                if (!it.hasNext()) {
                                    break;
                                }
                                ConnectionRecord connectionRecord2 = (ConnectionRecord) it.next();
                                if (connectionRecord2.f17738c == i3) {
                                    connectionRecord = (TextUtils.isEmpty(string4) || i2 <= 0) ? MediaBrowserServiceCompat.this.new ConnectionRecord(connectionRecord2.f17736a, connectionRecord2.f17737b, connectionRecord2.f17738c, serviceCallbacksCompat4) : null;
                                    it.remove();
                                    break;
                                }
                            }
                            if (connectionRecord == null) {
                                connectionRecord = MediaBrowserServiceCompat.this.new ConnectionRecord(string4, i2, i3, serviceCallbacksCompat4);
                            }
                            MediaBrowserServiceCompat.this.f17725f.put(iBinderAsBinder, connectionRecord);
                            try {
                                iBinderAsBinder.linkToDeath(connectionRecord, 0);
                            } catch (RemoteException unused) {
                                Log.g("IBinder is already dead.");
                            }
                        }
                    });
                    break;
                case 7:
                    final ServiceCallbacksCompat serviceCallbacksCompat5 = new ServiceCallbacksCompat(message.replyTo);
                    MediaBrowserServiceCompat.this.f17726h.postOrRun(new Runnable() { // from class: androidx.media3.session.legacy.MediaBrowserServiceCompat.ServiceBinderImpl.5
                        @Override // java.lang.Runnable
                        public void run() {
                            IBinder iBinderAsBinder = serviceCallbacksCompat5.asBinder();
                            ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f17725f.remove(iBinderAsBinder);
                            if (connectionRecord != null) {
                                iBinderAsBinder.unlinkToDeath(connectionRecord, 0);
                            }
                        }
                    });
                    break;
                case 8:
                    final Bundle bundleP3 = Util.p(data.getBundle("data_search_extras"));
                    final String string5 = data.getString("data_search_query");
                    final ResultReceiver resultReceiver2 = (ResultReceiver) data.getParcelable("data_result_receiver");
                    final ServiceCallbacksCompat serviceCallbacksCompat6 = new ServiceCallbacksCompat(message.replyTo);
                    serviceBinderImpl.getClass();
                    if (!TextUtils.isEmpty(string5) && resultReceiver2 != null) {
                        MediaBrowserServiceCompat.this.f17726h.postOrRun(new Runnable() { // from class: androidx.media3.session.legacy.MediaBrowserServiceCompat.ServiceBinderImpl.6
                            @Override // java.lang.Runnable
                            public void run() {
                                ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f17725f.get(serviceCallbacksCompat6.asBinder());
                                if (connectionRecord == null) {
                                    Log.g("search for callback that isn't registered query=" + string5);
                                    return;
                                }
                                MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                                String str = string5;
                                Bundle bundle = bundleP3;
                                final ResultReceiver resultReceiver3 = resultReceiver2;
                                Result<List<MediaBrowserCompat.MediaItem>> result = new Result<List<MediaBrowserCompat.MediaItem>>(str) { // from class: androidx.media3.session.legacy.MediaBrowserServiceCompat.3
                                    @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat.Result
                                    public final void d(Object obj) {
                                        List list = (List) obj;
                                        int i4 = this.f17754e & 4;
                                        ResultReceiver resultReceiver4 = resultReceiver3;
                                        if (i4 != 0 || list == null) {
                                            resultReceiver4.b(-1, null);
                                            return;
                                        }
                                        Bundle bundle2 = new Bundle();
                                        bundle2.putParcelableArray("search_results", (Parcelable[]) LegacyParcelableUtil.b(list, android.support.v4.media.MediaBrowserCompat.MediaItem.CREATOR).toArray(new android.support.v4.media.MediaBrowserCompat.MediaItem[0]));
                                        resultReceiver4.b(0, bundle2);
                                    }
                                };
                                mediaBrowserServiceCompat2.g = connectionRecord;
                                mediaBrowserServiceCompat2.h(bundle, result, str);
                                mediaBrowserServiceCompat2.g = null;
                                if (result.b()) {
                                    return;
                                }
                                md.k(tr.g("onSearch must call detach() or sendResult() before returning for query=", str));
                            }
                        });
                        break;
                    }
                    break;
                case 9:
                    final Bundle bundleP4 = Util.p(data.getBundle("data_custom_action_extras"));
                    final String string6 = data.getString("data_custom_action");
                    final ResultReceiver resultReceiver3 = (ResultReceiver) data.getParcelable("data_result_receiver");
                    final ServiceCallbacksCompat serviceCallbacksCompat7 = new ServiceCallbacksCompat(message.replyTo);
                    serviceBinderImpl.getClass();
                    if (!TextUtils.isEmpty(string6) && resultReceiver3 != null) {
                        MediaBrowserServiceCompat.this.f17726h.postOrRun(new Runnable() { // from class: androidx.media3.session.legacy.MediaBrowserServiceCompat.ServiceBinderImpl.7
                            @Override // java.lang.Runnable
                            public void run() {
                                ConnectionRecord connectionRecord = (ConnectionRecord) MediaBrowserServiceCompat.this.f17725f.get(serviceCallbacksCompat7.asBinder());
                                if (connectionRecord == null) {
                                    Log.g("sendCustomAction for callback that isn't registered action=" + string6 + ", extras=" + bundleP4);
                                    return;
                                }
                                MediaBrowserServiceCompat mediaBrowserServiceCompat2 = MediaBrowserServiceCompat.this;
                                String str = string6;
                                Bundle bundle = bundleP4;
                                final ResultReceiver resultReceiver4 = resultReceiver3;
                                Result<Bundle> result = new Result<Bundle>(str) { // from class: androidx.media3.session.legacy.MediaBrowserServiceCompat.4
                                    @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat.Result
                                    public final void c() {
                                        resultReceiver4.b(-1, null);
                                    }

                                    @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat.Result
                                    public final void d(Object obj) {
                                        resultReceiver4.b(0, (Bundle) obj);
                                    }
                                };
                                mediaBrowserServiceCompat2.g = connectionRecord;
                                mediaBrowserServiceCompat2.c(bundle == null ? Bundle.EMPTY : bundle, result, str);
                                mediaBrowserServiceCompat2.g = null;
                                if (result.b()) {
                                    return;
                                }
                                mt.k("onCustomAction must call detach() or sendResult() or sendError() before returning for action=", str, " extras=", bundle);
                            }
                        });
                        break;
                    }
                    break;
                default:
                    Log.g("Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1);
                    break;
            }
        }

        public void postOrRun(Runnable runnable) {
            if (Thread.currentThread() == getLooper().getThread()) {
                runnable.run();
            } else {
                post(runnable);
            }
        }

        public void release() {
            this.service = null;
        }

        @Override // android.os.Handler
        public boolean sendMessageAtTime(Message message, long j2) {
            Bundle data = message.getData();
            ClassLoader classLoader = MediaBrowserCompat.class.getClassLoader();
            classLoader.getClass();
            data.setClassLoader(classLoader);
            data.putInt("data_calling_uid", Binder.getCallingUid());
            int callingPid = Binder.getCallingPid();
            if (callingPid > 0) {
                data.putInt("data_calling_pid", callingPid);
            } else if (!data.containsKey("data_calling_pid")) {
                data.putInt("data_calling_pid", -1);
            }
            return super.sendMessageAtTime(message, j2);
        }
    }

    public static List a(List list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        if (bundle != null) {
            int i2 = bundle.getInt("android.media.browse.extra.PAGE", -1);
            int i3 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
            if (i2 != -1 || i3 != -1) {
                int i4 = i3 * i2;
                int size = i4 + i3;
                if (i2 < 0 || i3 < 1 || i4 >= list.size()) {
                    return Collections.EMPTY_LIST;
                }
                if (size > list.size()) {
                    size = list.size();
                }
                return list.subList(i4, size);
            }
        }
        return list;
    }

    public final MediaSessionManager.RemoteUserInfo b() {
        MediaBrowserServiceImplApi28 mediaBrowserServiceImplApi28 = this.f17722b;
        mediaBrowserServiceImplApi28.getClass();
        MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
        ConnectionRecord connectionRecord = mediaBrowserServiceCompat.g;
        if (connectionRecord == null) {
            md.k("This should be called inside of onGetRoot, onLoadChildren, onLoadItem, onSearch, or onCustomAction methods");
            return null;
        }
        if (connectionRecord != mediaBrowserServiceCompat.d) {
            return connectionRecord.d;
        }
        MediaBrowserService mediaBrowserService = mediaBrowserServiceImplApi28.f17742b;
        mediaBrowserService.getClass();
        return new MediaSessionManager.RemoteUserInfo(mediaBrowserService.getCurrentBrowserInfo());
    }

    public void c(Bundle bundle, Result result, String str) {
        result.e();
    }

    public abstract BrowserRoot d(int i2, String str, Bundle bundle);

    @Override // android.app.Service
    public final void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public void e(Bundle bundle, Result result, String str) {
        result.f17754e = 1;
        f(str, result);
    }

    public abstract void f(String str, Result result);

    public void g(String str, Result result) {
        result.f17754e = 2;
        result.f(null);
    }

    public void h(Bundle bundle, Result result, String str) {
        result.f17754e = 4;
        result.f(null);
    }

    public void i(String str, Bundle bundle) {
    }

    public void j(String str) {
    }

    public final void k(final MediaSessionCompat.Token token) {
        if (token == null) {
            md.n("Session token may not be null");
            return;
        }
        if (this.f17727i != null) {
            md.k("The session token has already been set");
            return;
        }
        this.f17727i = token;
        final MediaBrowserServiceImplApi28 mediaBrowserServiceImplApi28 = this.f17722b;
        mediaBrowserServiceImplApi28.getClass();
        MediaBrowserServiceCompat.this.f17726h.postOrRun(new Runnable() { // from class: androidx.media3.session.legacy.MediaBrowserServiceCompat.MediaBrowserServiceImplApi23.1
            @Override // java.lang.Runnable
            public void run() {
                MediaBrowserServiceImplApi23 mediaBrowserServiceImplApi23 = MediaBrowserServiceImplApi23.this;
                MediaSessionCompat.Token token2 = token;
                ArrayList arrayList = mediaBrowserServiceImplApi23.f17741a;
                if (!arrayList.isEmpty()) {
                    IMediaSession iMediaSessionA = token2.a();
                    if (iMediaSessionA != null) {
                        Iterator it = arrayList.iterator();
                        while (it.hasNext()) {
                            ((Bundle) it.next()).putBinder("extra_session_binder", iMediaSessionA.asBinder());
                        }
                    }
                    arrayList.clear();
                }
                MediaBrowserService mediaBrowserService = mediaBrowserServiceImplApi23.f17742b;
                mediaBrowserService.getClass();
                mediaBrowserService.setSessionToken(token2.f17819c);
            }
        });
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        MediaBrowserServiceImplApi28 mediaBrowserServiceImplApi28 = this.f17722b;
        mediaBrowserServiceImplApi28.getClass();
        MediaBrowserService mediaBrowserService = mediaBrowserServiceImplApi28.f17742b;
        mediaBrowserService.getClass();
        return mediaBrowserService.onBind(intent);
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        MediaBrowserServiceImplApi28 mediaBrowserServiceImplApi28 = new MediaBrowserServiceImplApi28();
        this.f17722b = mediaBrowserServiceImplApi28;
        MediaBrowserServiceImplApi26.MediaBrowserServiceApi26 mediaBrowserServiceApi26 = new MediaBrowserServiceImplApi26.MediaBrowserServiceApi26(this);
        mediaBrowserServiceImplApi28.f17742b = mediaBrowserServiceApi26;
        mediaBrowserServiceApi26.onCreate();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        this.f17726h.release();
    }
}
