package androidx.media3.session;

import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.view.Display;
import android.view.WindowManager;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Player;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSourceBitmapLoader;
import androidx.media3.session.MediaSession;
import androidx.media3.session.legacy.MediaSessionManager;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.ImmutableIntArray;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.SettableFuture;
import com.google.errorprone.annotations.DoNotMock;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
@DoNotMock
public class MediaSession {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Object f17399b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final HashMap f17400c = new HashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaSessionImpl f17401a;

    public static final class Builder extends BuilderBase<MediaSession, Builder, Callback> {
        public boolean n;

        /* JADX INFO: renamed from: androidx.media3.session.MediaSession$Builder$1, reason: invalid class name */
        public class AnonymousClass1 implements Callback {
        }

        public Builder(Context context, Player player) {
            super(context, player, new AnonymousClass1());
        }

        public final MediaSession a() {
            Preconditions.q(!this.n);
            this.n = true;
            Object obj = MediaSession.f17399b;
            int iIntValue = ((Integer) MediaSessionImpl.G.get()).intValue();
            androidx.media3.common.util.BitmapLoader bitmapLoader = this.g;
            Context context = this.f17402a;
            if (bitmapLoader == null) {
                DataSourceBitmapLoader.Builder builder = new DataSourceBitmapLoader.Builder(context);
                builder.f14382b = iIntValue;
                builder.f14383c = true;
                this.g = new DataSourceBitmapLoader(builder);
            } else {
                this.g = new SizeLimitedBitmapLoader(bitmapLoader, iIntValue, true);
            }
            if (Build.VERSION.SDK_INT == 29) {
                androidx.media3.common.util.BitmapLoader bitmapLoader2 = this.g;
                AtomicReference atomicReference = BuilderBase.m;
                ImmutableIntArray immutableIntArray = (ImmutableIntArray) atomicReference.get();
                if (immutableIntArray == null) {
                    Display defaultDisplay = ((WindowManager) context.getSystemService(WindowManager.class)).getDefaultDisplay();
                    Point point = new Point();
                    defaultDisplay.getSize(point);
                    Point point2 = new Point();
                    defaultDisplay.getRealSize(point2);
                    int i2 = point2.y;
                    int i3 = point2.x;
                    Point point3 = new Point(i2 - (i3 - point.x), i3 - (i2 - point.y));
                    ImmutableIntArray immutableIntArray2 = new ImmutableIntArray(new int[]{Math.max(point.x / 6, point.y / 6), Math.max(point3.x / 6, point3.y / 6)});
                    atomicReference.set(immutableIntArray2);
                    immutableIntArray = immutableIntArray2;
                }
                this.g = new SizeAvoidingBitmapLoader(bitmapLoader2, immutableIntArray);
            }
            this.g = new CacheBitmapLoader(this.g);
            return new MediaSession(this.f17402a, this.f17404c, this.f17403b, this.f17408i, this.f17409j, this.f17410k, this.d, this.f17405e, this.f17406f, this.g, this.f17407h, this.l);
        }

        public final void b(Callback callback) {
            this.d = callback;
        }
    }

    public static abstract class BuilderBase<SessionT extends MediaSession, BuilderT extends BuilderBase<SessionT, BuilderT, CallbackT>, CallbackT extends Callback> {
        public static final AtomicReference m = new AtomicReference(null);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f17402a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Player f17403b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f17404c;
        public Callback d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Bundle f17405e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final Bundle f17406f;
        public androidx.media3.common.util.BitmapLoader g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f17407h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final ImmutableList f17408i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final ImmutableList f17409j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final ImmutableList f17410k;
        public final boolean l;

        public BuilderBase(Context context, Player player, CallbackT callbackt) {
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            this.f17402a = applicationContext;
            player.getClass();
            this.f17403b = player;
            Preconditions.g(player.Q0());
            this.f17404c = "";
            this.d = callbackt;
            this.f17405e = new Bundle();
            this.f17406f = new Bundle();
            this.f17408i = ImmutableList.x();
            this.f17409j = ImmutableList.x();
            this.f17407h = true;
            this.l = true;
            this.f17410k = ImmutableList.x();
        }
    }

    public interface Callback {
        static ListenableFuture b() {
            return Futures.f(new UnsupportedOperationException());
        }

        default ListenableFuture a(MediaSession mediaSession, ControllerInfo controllerInfo, List list) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (((MediaItem) it.next()).f13788b == null) {
                    return Futures.f(new UnsupportedOperationException());
                }
            }
            return Futures.g(list);
        }

        default int d(MediaSession mediaSession, ControllerInfo controllerInfo, int i2) {
            return 0;
        }

        default SettableFuture e(MediaSession mediaSession, ControllerInfo controllerInfo, List list, final int i2, final long j2) {
            return Util.e0(a(mediaSession, controllerInfo, list), new AsyncFunction() { // from class: rc0
                @Override // com.google.common.util.concurrent.AsyncFunction
                public final ListenableFuture apply(Object obj) {
                    return Futures.g(new MediaSession.MediaItemsWithStartPosition((List) obj, i2, j2));
                }
            });
        }
    }

    public static final class ConnectionResult {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final SessionCommands f17411e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Player.Commands f17412f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SessionCommands f17413a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Player.Commands f17414b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImmutableList f17415c;
        public final ImmutableList d;

        public static class AcceptedResultBuilder {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public ImmutableList f17418c;
            public ImmutableList d;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public Player.Commands f17417b = ConnectionResult.f17412f;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public SessionCommands f17416a = ConnectionResult.f17411e;

            public AcceptedResultBuilder(MediaSession mediaSession) {
            }

            public final ConnectionResult a() {
                return new ConnectionResult(this.f17416a, this.f17417b, this.f17418c, this.d);
            }
        }

        static {
            SessionCommands.Builder builder = new SessionCommands.Builder();
            ImmutableList immutableList = SessionCommand.d;
            builder.a(immutableList);
            f17411e = new SessionCommands(builder.f17545a);
            SessionCommands.Builder builder2 = new SessionCommands.Builder();
            builder2.a(SessionCommand.f17536e);
            builder2.a(immutableList);
            new SessionCommands(builder2.f17545a);
            Player.Commands.Builder builder3 = new Player.Commands.Builder();
            builder3.f13926a.b(Player.Commands.Builder.f13925b);
            f17412f = builder3.c();
        }

        public ConnectionResult(SessionCommands sessionCommands, Player.Commands commands, ImmutableList immutableList, ImmutableList immutableList2) {
            this.f17413a = sessionCommands;
            this.f17414b = commands;
            this.f17415c = immutableList;
            this.d = immutableList2;
        }
    }

    public interface ControllerCb {
        default void a(int i2, PlayerInfo playerInfo, Player.Commands commands, boolean z, boolean z2) {
        }

        default void b(int i2, SessionCommand sessionCommand) {
        }

        default void c(int i2, SessionPositionInfo sessionPositionInfo, boolean z, boolean z2, int i3) {
        }

        default void d(int i2, LibraryResult libraryResult) {
        }

        default void e() {
        }

        default void f(int i2) {
        }

        default void g(int i2, int i3, int i4) {
        }

        default void h(int i2, Player.Commands commands) {
        }

        default void i(int i2, SessionResult sessionResult) {
        }
    }

    public static final class ControllerInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaSessionManager.RemoteUserInfo f17419a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f17420b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f17421c;
        public final ControllerCb d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final Bundle f17422e;

        public ControllerInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo, int i2, int i3, boolean z, ControllerCb controllerCb, Bundle bundle) {
            this.f17419a = remoteUserInfo;
            this.f17420b = i2;
            this.f17421c = i3;
            this.d = controllerCb;
            this.f17422e = bundle;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof ControllerInfo)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            ControllerInfo controllerInfo = (ControllerInfo) obj;
            ControllerCb controllerCb = controllerInfo.d;
            ControllerCb controllerCb2 = this.d;
            return (controllerCb2 == null && controllerCb == null) ? this.f17419a.equals(controllerInfo.f17419a) : Objects.equals(controllerCb2, controllerCb);
        }

        public final int hashCode() {
            return Objects.hash(this.d, this.f17419a);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ControllerInfo {pkg=");
            MediaSessionManager.RemoteUserInfo remoteUserInfo = this.f17419a;
            sb.append(remoteUserInfo.a());
            sb.append(", uid=");
            sb.append(remoteUserInfo.c());
            sb.append("}");
            return sb.toString();
        }
    }

    public interface Listener {
    }

    public static final class MediaItemsWithStartPosition {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ImmutableList f17423a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f17424b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f17425c;

        public MediaItemsWithStartPosition(List<MediaItem> list, int i2, long j2) {
            this.f17423a = ImmutableList.t(list);
            this.f17424b = i2;
            this.f17425c = j2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MediaItemsWithStartPosition)) {
                return false;
            }
            MediaItemsWithStartPosition mediaItemsWithStartPosition = (MediaItemsWithStartPosition) obj;
            return this.f17423a.equals(mediaItemsWithStartPosition.f17423a) && this.f17424b == mediaItemsWithStartPosition.f17424b && this.f17425c == mediaItemsWithStartPosition.f17425c;
        }

        public final int hashCode() {
            return Long.hashCode(this.f17425c) + (((this.f17423a.hashCode() * 31) + this.f17424b) * 31);
        }
    }

    public interface ProgressReporter {
    }

    public MediaSession(Context context, String str, Player player, ImmutableList immutableList, ImmutableList immutableList2, ImmutableList immutableList3, Callback callback, Bundle bundle, Bundle bundle2, androidx.media3.common.util.BitmapLoader bitmapLoader, boolean z, boolean z2) {
        synchronized (f17399b) {
            HashMap map = f17400c;
            if (map.containsKey(str)) {
                throw new IllegalStateException("Session ID must be unique. ID=" + str);
            }
            map.put(str, this);
        }
        this.f17401a = new MediaSessionImpl(this, context, str, player, null, immutableList, immutableList2, immutableList3, callback, bundle, bundle2, bitmapLoader, z, z2, false);
    }

    public final Player a() {
        return this.f17401a.u.f13773a;
    }

    public final void b() {
        try {
            synchronized (f17399b) {
                f17400c.remove(this.f17401a.f17432i);
            }
            this.f17401a.u();
        } catch (Exception unused) {
        }
    }
}
