package androidx.media3.session;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.session.legacy.MediaBrowserCompat;
import androidx.media3.session.legacy.MediaBrowserServiceCompat;
import androidx.media3.session.legacy.MediaSessionManager;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
class MediaLibraryServiceLegacyStub extends MediaSessionServiceLegacyStub {
    public static final /* synthetic */ int n = 0;
    public final MediaLibrarySessionImpl m;

    public final class BrowserLegacyCb implements MediaSession.ControllerCb {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaSessionManager.RemoteUserInfo f17378b;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f17377a = new Object();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f17379c = new ArrayList();

        public BrowserLegacyCb(MediaLibraryServiceLegacyStub mediaLibraryServiceLegacyStub, MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            this.f17378b = remoteUserInfo;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof BrowserLegacyCb) {
                return Objects.equals(this.f17378b, ((BrowserLegacyCb) obj).f17378b);
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.f17378b);
        }
    }

    public static class ProgressReporter implements MediaSession.ProgressReporter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ListenableFuture f17380a;

        public ProgressReporter(MediaLibrarySessionImpl mediaLibrarySessionImpl, MediaBrowserServiceCompat.Result<Bundle> result) {
        }
    }

    public static class SearchRequest {
        public SearchRequest(MediaSession.ControllerInfo controllerInfo, MediaSessionManager.RemoteUserInfo remoteUserInfo, String str, Bundle bundle, MediaBrowserServiceCompat.Result<List<MediaBrowserCompat.MediaItem>> result) {
        }
    }

    public MediaLibraryServiceLegacyStub(MediaLibrarySessionImpl mediaLibrarySessionImpl) {
        super(mediaLibrarySessionImpl);
        this.m = mediaLibrarySessionImpl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static SettableFuture n(MediaLibraryServiceLegacyStub mediaLibraryServiceLegacyStub, LibraryResult libraryResult) {
        Object obj;
        Preconditions.m(libraryResult, "LibraryResult must not be null");
        SettableFuture settableFuture = new SettableFuture();
        if (libraryResult.f17308a != 0 || (obj = libraryResult.f17310c) == null) {
            settableFuture.set(null);
            return settableFuture;
        }
        ImmutableList immutableList = (ImmutableList) obj;
        if (immutableList.isEmpty()) {
            settableFuture.set(new ArrayList());
            return settableFuture;
        }
        ArrayList arrayList = new ArrayList();
        settableFuture.addListener(new g0(settableFuture, arrayList, 4), MoreExecutors.b());
        e eVar = new e(mediaLibraryServiceLegacyStub, new AtomicInteger(0), immutableList, arrayList, settableFuture);
        for (int i2 = 0; i2 < immutableList.size(); i2++) {
            byte[] bArr = ((MediaItem) immutableList.get(i2)).d.f13887k;
            if (bArr == null) {
                arrayList.add(null);
                eVar.run();
            } else {
                ListenableFuture listenableFutureC = mediaLibraryServiceLegacyStub.m.m.c(bArr);
                arrayList.add(listenableFutureC);
                listenableFutureC.addListener(eVar, MoreExecutors.b());
            }
        }
        return settableFuture;
    }

    @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat
    public final void c(Bundle bundle, MediaBrowserServiceCompat.Result result, String str) {
        MediaSession.ControllerInfo controllerInfoO = o();
        if (controllerInfoO == null) {
            result.e();
        } else {
            result.a();
            Util.W(this.m.l, new e(this, controllerInfoO, result, bundle, str));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.session.MediaSessionServiceLegacyStub, androidx.media3.session.legacy.MediaBrowserServiceCompat
    public final MediaBrowserServiceCompat.BrowserRoot d(int i2, String str, Bundle bundle) {
        MediaSession.ControllerInfo controllerInfoO;
        LibraryResult libraryResult;
        Bundle bundle2;
        if (super.d(i2, str, bundle) != null && (controllerInfoO = o()) != null) {
            ConnectedControllersManager connectedControllersManager = this.l;
            if (connectedControllersManager.m(controllerInfoO, 50000)) {
                MediaLibrarySessionImpl mediaLibrarySessionImpl = this.m;
                MediaLibraryService$LibraryParams mediaLibraryService$LibraryParamsH = LegacyConversions.h(mediaLibrarySessionImpl.f17430f, bundle);
                AtomicReference atomicReference = new AtomicReference();
                ConditionVariable conditionVariable = new ConditionVariable();
                Util.W(mediaLibrarySessionImpl.l, new d(this, atomicReference, controllerInfoO, mediaLibraryService$LibraryParamsH, conditionVariable));
                try {
                    conditionVariable.a();
                    libraryResult = (LibraryResult) ((ListenableFuture) atomicReference.get()).get();
                    Preconditions.m(libraryResult, "LibraryResult must not be null");
                } catch (InterruptedException | CancellationException | ExecutionException e2) {
                    Log.e("Couldn't get a result from onGetLibraryRoot", e2);
                    libraryResult = null;
                }
                if (libraryResult != null) {
                    Object obj = libraryResult.f17310c;
                    if (libraryResult.f17308a == 0 && obj != null) {
                        MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams = libraryResult.f17311e;
                        if (mediaLibraryService$LibraryParams != null) {
                            Bundle bundle3 = mediaLibraryService$LibraryParams.f17371a;
                            bundle2 = new Bundle(bundle3);
                            if (bundle3.containsKey("androidx.media3.session.LibraryParams.Extras.KEY_ROOT_CHILDREN_BROWSABLE_ONLY")) {
                                boolean z = bundle3.getBoolean("androidx.media3.session.LibraryParams.Extras.KEY_ROOT_CHILDREN_BROWSABLE_ONLY", false);
                                bundle2.remove("androidx.media3.session.LibraryParams.Extras.KEY_ROOT_CHILDREN_BROWSABLE_ONLY");
                                bundle2.putInt("androidx.media.MediaBrowserCompat.Extras.KEY_ROOT_CHILDREN_SUPPORTED_FLAGS", z ? 1 : 3);
                            }
                            bundle2.putBoolean("android.service.media.extra.RECENT", mediaLibraryService$LibraryParams.f17372b);
                            bundle2.putBoolean("android.service.media.extra.OFFLINE", mediaLibraryService$LibraryParams.f17373c);
                            bundle2.putBoolean("android.service.media.extra.SUGGESTED", mediaLibraryService$LibraryParams.d);
                        } else {
                            bundle2 = new Bundle();
                        }
                        bundle2.putBoolean("android.media.browse.SEARCH_SUPPORTED", connectedControllersManager.m(controllerInfoO, 50005));
                        ImmutableList immutableList = mediaLibrarySessionImpl.s;
                        if (!immutableList.isEmpty()) {
                            ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                            for (int i3 = 0; i3 < immutableList.size(); i3++) {
                                CommandButton commandButton = (CommandButton) immutableList.get(i3);
                                SessionCommand sessionCommand = commandButton.f17238a;
                                if (sessionCommand != null && sessionCommand.f17539a == 0) {
                                    Bundle bundle4 = new Bundle();
                                    SessionCommand sessionCommand2 = commandButton.f17238a;
                                    Bundle bundle5 = commandButton.g;
                                    if (sessionCommand2 != null) {
                                        bundle4.putString("androidx.media.utils.extras.KEY_CUSTOM_BROWSER_ACTION_ID", sessionCommand2.f17540b);
                                    }
                                    bundle4.putString("androidx.media.utils.extras.KEY_CUSTOM_BROWSER_ACTION_LABEL", commandButton.f17242f.toString());
                                    Uri uri = commandButton.f17241e;
                                    if (uri != null) {
                                        bundle4.putString("androidx.media.utils.extras.KEY_CUSTOM_BROWSER_ACTION_ICON_URI", uri.toString());
                                    }
                                    if (!bundle5.isEmpty()) {
                                        bundle4.putBundle("androidx.media.utils.extras.KEY_CUSTOM_BROWSER_ACTION_EXTRAS", bundle5);
                                    }
                                    arrayList.add(bundle4);
                                }
                            }
                            if (!arrayList.isEmpty()) {
                                bundle2.putParcelableArrayList("androidx.media.utils.extras.CUSTOM_BROWSER_ACTION_ROOT_LIST", arrayList);
                            }
                        }
                        return new MediaBrowserServiceCompat.BrowserRoot(((MediaItem) obj).f13787a, bundle2);
                    }
                }
                if (libraryResult == null || libraryResult.f17308a == 0) {
                    return MediaUtils.f17489a;
                }
                return null;
            }
        }
        return null;
    }

    @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat
    public final void e(Bundle bundle, MediaBrowserServiceCompat.Result result, String str) {
        MediaSession.ControllerInfo controllerInfoO = o();
        if (controllerInfoO == null) {
            result.f(null);
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            result.a();
            Util.W(this.m.l, new u0(this, controllerInfoO, result, bundle, str));
        } else {
            Log.g("onLoadChildren(): Ignoring empty parentId from " + controllerInfoO);
            result.f(null);
        }
    }

    @Override // androidx.media3.session.MediaSessionServiceLegacyStub, androidx.media3.session.legacy.MediaBrowserServiceCompat
    public final void f(String str, MediaBrowserServiceCompat.Result result) {
        e(null, result, str);
    }

    @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat
    public final void g(String str, MediaBrowserServiceCompat.Result result) {
        MediaSession.ControllerInfo controllerInfoO = o();
        if (controllerInfoO == null) {
            result.f(null);
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            result.a();
            Util.W(this.m.l, new t0(this, controllerInfoO, result, str));
        } else {
            Log.g("Ignoring empty itemId from " + controllerInfoO);
            result.f(null);
        }
    }

    @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat
    public final void h(Bundle bundle, MediaBrowserServiceCompat.Result result, String str) {
        MediaSession.ControllerInfo controllerInfoO = o();
        if (controllerInfoO == null) {
            result.f(null);
            return;
        }
        if (TextUtils.isEmpty(str)) {
            Log.g("Ignoring empty query from " + controllerInfoO);
            result.f(null);
            return;
        }
        if (controllerInfoO.d instanceof BrowserLegacyCb) {
            result.a();
            Util.W(this.m.l, new u0(this, controllerInfoO, result, str, bundle));
        }
    }

    @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat
    public final void i(String str, Bundle bundle) {
        MediaSession.ControllerInfo controllerInfoO = o();
        if (controllerInfoO == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            Util.W(this.m.l, new e(this, controllerInfoO, bundle, str, 2));
            return;
        }
        Log.g("onSubscribe(): Ignoring empty id from " + controllerInfoO);
    }

    @Override // androidx.media3.session.legacy.MediaBrowserServiceCompat
    public final void j(String str) {
        MediaSession.ControllerInfo controllerInfoO = o();
        if (controllerInfoO == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            Util.W(this.m.l, new t0(this, controllerInfoO, str, 2));
            return;
        }
        Log.g("onUnsubscribe(): Ignoring empty id from " + controllerInfoO);
    }

    @Override // androidx.media3.session.MediaSessionServiceLegacyStub
    public final MediaSession.ControllerInfo l(MediaSessionManager.RemoteUserInfo remoteUserInfo, Bundle bundle) {
        boolean zB = this.f17476j.b(remoteUserInfo);
        BrowserLegacyCb browserLegacyCb = new BrowserLegacyCb(this, remoteUserInfo);
        ImmutableSet immutableSet = LegacyConversions.f17303a;
        Math.max(0, bundle.getInt("androidx.media.utils.MediaBrowserCompat.extras.CUSTOM_BROWSER_ACTION_LIMIT", 0));
        return new MediaSession.ControllerInfo(remoteUserInfo, 0, 0, zB, browserLegacyCb, bundle);
    }

    public final MediaSession.ControllerInfo o() {
        return this.l.g(b());
    }
}
