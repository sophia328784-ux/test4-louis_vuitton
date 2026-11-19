package androidx.media3.session;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Player;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.HashMultimap;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import defpackage.no0;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
class MediaLibrarySessionImpl extends MediaSessionImpl {
    public static final /* synthetic */ int L = 0;
    public final MediaLibraryService$MediaLibrarySession.Callback H;
    public final HashMultimap I;
    public final HashMultimap J;
    public final int K;

    public MediaLibrarySessionImpl(MediaLibraryService$MediaLibrarySession mediaLibraryService$MediaLibrarySession, Context context, String str, Player player, PendingIntent pendingIntent, ImmutableList<CommandButton> immutableList, ImmutableList<CommandButton> immutableList2, ImmutableList<CommandButton> immutableList3, MediaLibraryService$MediaLibrarySession.Callback callback, Bundle bundle, Bundle bundle2, androidx.media3.common.util.BitmapLoader bitmapLoader, boolean z, boolean z2, int i2) {
        super(mediaLibraryService$MediaLibrarySession, context, str, player, pendingIntent, immutableList, immutableList2, immutableList3, callback, bundle, bundle2, bitmapLoader, z, z2, false);
        this.H = callback;
        this.K = i2;
        this.I = new HashMultimap();
        this.J = new HashMultimap();
    }

    public static Object F(Future future) {
        Preconditions.q(future.isDone());
        try {
            return future.get();
        } catch (InterruptedException | CancellationException | ExecutionException e2) {
            Log.h("Library operation failed", e2);
            return null;
        }
    }

    public static void G(int i2, LibraryResult libraryResult) {
        if (libraryResult.f17308a == 0) {
            ImmutableList immutableList = (ImmutableList) libraryResult.f17310c;
            immutableList.getClass();
            if (immutableList.size() <= i2) {
                return;
            }
            no0.k(", pageSize=", immutableList.size(), i2, "Invalid size=");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static LibraryResult y(MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams, MediaSession.MediaItemsWithStartPosition mediaItemsWithStartPosition) {
        ImmutableList immutableList = mediaItemsWithStartPosition.f17423a;
        return immutableList.isEmpty() ? new LibraryResult(-2, SystemClock.elapsedRealtime(), mediaLibraryService$LibraryParams, new SessionError(-2, "no error message provided", Bundle.EMPTY), null, 4) : LibraryResult.c(ImmutableList.A((MediaItem) immutableList.get(Math.max(0, Math.min(mediaItemsWithStartPosition.f17424b, immutableList.size() - 1)))), mediaLibraryService$LibraryParams);
    }

    public static void z(MediaLibrarySessionImpl mediaLibrarySessionImpl, Runnable runnable) {
        Util.W(mediaLibrarySessionImpl.l, runnable);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0045 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x0047  */
    public final void A(MediaSession.ControllerInfo controllerInfo, LibraryResult libraryResult) {
        int i2 = this.K;
        if (i2 == 0 || controllerInfo.f17420b != 0) {
            return;
        }
        int i3 = libraryResult.f17308a;
        MediaSessionLegacyStub mediaSessionLegacyStub = this.f17431h;
        if (i3 == -102 || i3 == -105) {
            boolean z = i2 == 1;
            mediaSessionLegacyStub.getClass();
            MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams = libraryResult.f17311e;
            SessionError sessionError = libraryResult.f17312f;
            int iG = LegacyConversions.g(i3);
            MediaSessionLegacyStub.LegacyError legacyError = mediaSessionLegacyStub.t;
            if (legacyError == null || legacyError.f17463b != iG) {
                String str = sessionError != null ? sessionError.f17549b : "no error message provided";
                Bundle bundle = Bundle.EMPTY;
                if (mediaLibraryService$LibraryParams != null) {
                    Bundle bundle2 = mediaLibraryService$LibraryParams.f17371a;
                    if (bundle2.containsKey("android.media.extras.ERROR_RESOLUTION_ACTION_INTENT")) {
                        bundle = bundle2;
                    } else if (sessionError != null) {
                        bundle = sessionError.f17550c;
                    }
                } else if (sessionError != null) {
                    bundle = sessionError.f17550c;
                }
                mediaSessionLegacyStub.t = new MediaSessionLegacyStub.LegacyError(z, iG, str, bundle);
                mediaSessionLegacyStub.K(mediaSessionLegacyStub.f17441f.u);
            }
        }
        if (i3 != 0 || mediaSessionLegacyStub.t == null) {
            return;
        }
        mediaSessionLegacyStub.t = null;
        mediaSessionLegacyStub.K(mediaSessionLegacyStub.f17441f.u);
    }

    public final ListenableFuture B(MediaSession.ControllerInfo controllerInfo, String str, int i2, MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams) {
        boolean zEquals = Objects.equals(str, "androidx.media3.session.recent.root");
        int i3 = 0;
        MediaLibraryService$MediaLibrarySession.Callback callback = this.H;
        if (!zEquals) {
            v(controllerInfo);
            callback.getClass();
            ListenableFuture listenableFutureG = Futures.g(LibraryResult.b(-6));
            listenableFutureG.addListener(new w0(this, listenableFutureG, controllerInfo, i2, 0), new x0(this, i3));
            return listenableFutureG;
        }
        if (this.f17431h.n == null) {
            return Futures.g(LibraryResult.b(-6));
        }
        if (this.u.h() == 1) {
            if (this.B) {
                f();
            }
            callback.getClass();
            return Futures.b(Futures.l(MediaSession.Callback.b(), new z0(mediaLibraryService$LibraryParams, 0), MoreExecutors.b()), Throwable.class, new z0(mediaLibraryService$LibraryParams, 1), MoreExecutors.b());
        }
        MediaItem.Builder builder = new MediaItem.Builder();
        builder.f13795a = "androidx.media3.session.recent.item";
        MediaMetadata.Builder builder2 = new MediaMetadata.Builder();
        builder2.r = Boolean.FALSE;
        builder2.s = Boolean.TRUE;
        builder.l = new MediaMetadata(builder2);
        return Futures.g(LibraryResult.c(ImmutableList.A(builder.a()), mediaLibraryService$LibraryParams));
    }

    public final ListenableFuture C(MediaSession.ControllerInfo controllerInfo, MediaLibraryService$LibraryParams mediaLibraryService$LibraryParams) {
        if (mediaLibraryService$LibraryParams == null || !mediaLibraryService$LibraryParams.f17372b || !MediaSessionImpl.l(controllerInfo)) {
            v(controllerInfo);
            this.H.getClass();
            return Futures.g(LibraryResult.b(-6));
        }
        if (this.f17431h.n == null) {
            return Futures.g(LibraryResult.b(-6));
        }
        MediaItem.Builder builder = new MediaItem.Builder();
        builder.f13795a = "androidx.media3.session.recent.root";
        MediaMetadata.Builder builder2 = new MediaMetadata.Builder();
        builder2.r = Boolean.TRUE;
        builder2.s = Boolean.FALSE;
        builder.l = new MediaMetadata(builder2);
        MediaItem mediaItemA = builder.a();
        LibraryResult.d(mediaItemA);
        return Futures.g(new LibraryResult(0, SystemClock.elapsedRealtime(), mediaLibraryService$LibraryParams, null, mediaItemA, 2));
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x003f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.common.util.concurrent.ListenableFuture D(androidx.media3.session.MediaSession.ControllerInfo r10, final java.lang.String r11, final androidx.media3.session.MediaLibraryService$LibraryParams r12) throws java.lang.Throwable {
        /*
            r9 = this;
            androidx.media3.session.MediaSession$ControllerCb r0 = r10.d
            r0.getClass()
            monitor-enter(r9)
            com.google.common.collect.HashMultimap r1 = r9.J     // Catch: java.lang.Throwable -> L3a
            r1.put(r0, r11)     // Catch: java.lang.Throwable -> L3a
            com.google.common.collect.HashMultimap r0 = r9.I     // Catch: java.lang.Throwable -> L3a
            r0.put(r11, r10)     // Catch: java.lang.Throwable -> L3a
            monitor-exit(r9)     // Catch: java.lang.Throwable -> L3a
            androidx.media3.session.MediaLibraryService$MediaLibrarySession$Callback r0 = r9.H
            androidx.media3.session.MediaSession$ControllerInfo r1 = r9.v(r10)
            r0.getClass()
            com.google.common.util.concurrent.ListenableFuture r0 = androidx.media3.session.MediaLibraryService$MediaLibrarySession.Callback.c()
            qc0 r2 = new qc0
            r2.<init>(r11, r12)
            com.google.common.util.concurrent.SettableFuture r5 = androidx.media3.common.util.Util.e0(r0, r2)
            androidx.media3.session.e r3 = new androidx.media3.session.e
            r8 = 4
            r4 = r9
            r6 = r10
            r7 = r11
            r3.<init>(r4, r5, r6, r7, r8)
            androidx.media3.session.x0 r9 = new androidx.media3.session.x0
            r10 = 1
            r9.<init>(r4, r10)
            r5.addListener(r3, r9)
            return r5
        L3a:
            r0 = move-exception
            r4 = r9
        L3c:
            r9 = r0
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L3f
            throw r9
        L3f:
            r0 = move-exception
            goto L3c
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.session.MediaLibrarySessionImpl.D(androidx.media3.session.MediaSession$ControllerInfo, java.lang.String, androidx.media3.session.MediaLibraryService$LibraryParams):com.google.common.util.concurrent.ListenableFuture");
    }

    public final synchronized void E(MediaSession.ControllerInfo controllerInfo, String str) {
        MediaSession.ControllerCb controllerCb = controllerInfo.d;
        controllerCb.getClass();
        this.I.remove(str, controllerInfo);
        this.J.remove(controllerCb, str);
    }

    @Override // androidx.media3.session.MediaSessionImpl
    public final boolean i(MediaSession.ControllerInfo controllerInfo) {
        MediaSessionServiceLegacyStub mediaSessionServiceLegacyStub;
        if (super.i(controllerInfo)) {
            return true;
        }
        synchronized (this.f17426a) {
            mediaSessionServiceLegacyStub = this.y;
        }
        MediaLibraryServiceLegacyStub mediaLibraryServiceLegacyStub = (MediaLibraryServiceLegacyStub) mediaSessionServiceLegacyStub;
        return mediaLibraryServiceLegacyStub != null && mediaLibraryServiceLegacyStub.l.k(controllerInfo);
    }

    @Override // androidx.media3.session.MediaSessionImpl
    public final void p(MediaSession.ControllerInfo controllerInfo) {
        MediaSession.ControllerCb controllerCb = controllerInfo.d;
        controllerCb.getClass();
        synchronized (this) {
            try {
                Iterator it = this.J.a((Object) controllerCb).iterator();
                while (it.hasNext()) {
                    this.I.remove((String) it.next(), controllerInfo);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        super.p(controllerInfo);
    }
}
