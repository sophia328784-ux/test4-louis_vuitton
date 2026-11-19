package androidx.media3.exoplayer.drm;

import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.az;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class DefaultDrmSessionManager implements DrmSessionManager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UUID f15055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExoMediaDrm.Provider f15056c;
    public final HttpMediaDrmCallback d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashMap f15057e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f15058f;
    public final int[] g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f15059h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ProvisioningManagerImpl f15060i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LoadErrorHandlingPolicy f15061j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ReferenceCountListenerImpl f15062k;
    public final long l;
    public final ArrayList m;
    public final Set n;
    public final Set o;
    public int p;
    public ExoMediaDrm q;
    public DefaultDrmSession r;
    public DefaultDrmSession s;
    public Looper t;
    public Handler u;
    public byte[] v;
    public PlayerId w;
    public volatile MediaDrmHandler x;

    public static final class Builder {
        public boolean d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashMap f15063a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public UUID f15064b = C.f13719e;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public az f15065c = FrameworkMediaDrm.d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f15066e = true;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final DefaultLoadErrorHandlingPolicy f15067f = new DefaultLoadErrorHandlingPolicy();
        public final long g = 300000;
    }

    public class MediaDrmEventListener implements ExoMediaDrm.OnEventListener {
        public MediaDrmEventListener() {
        }
    }

    public class MediaDrmHandler extends Handler {
        public MediaDrmHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.m) {
                defaultDrmSession.o();
                if (Arrays.equals(defaultDrmSession.w, bArr)) {
                    if (message.what == 2 && defaultDrmSession.f15045e == 0 && defaultDrmSession.q == 4) {
                        String str = Util.f14242a;
                        defaultDrmSession.h(false);
                        return;
                    }
                    return;
                }
            }
        }
    }

    public static final class MissingSchemeDataException extends Exception {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Mode {
    }

    public class PreacquiredSessionReference implements DrmSessionManager.DrmSessionReference {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final DrmSessionEventListener.EventDispatcher f15069b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public DrmSession f15070c;
        public boolean d;

        public PreacquiredSessionReference(DrmSessionEventListener.EventDispatcher eventDispatcher) {
            this.f15069b = eventDispatcher;
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionManager.DrmSessionReference
        public final void release() {
            Handler handler = DefaultDrmSessionManager.this.u;
            handler.getClass();
            Util.W(handler, new b(this, 0));
        }
    }

    public class ProvisioningManagerImpl implements DefaultDrmSession.ProvisioningManager {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashSet f15072a = new HashSet();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public DefaultDrmSession f15073b;

        public ProvisioningManagerImpl(DefaultDrmSessionManager defaultDrmSessionManager) {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.media3.exoplayer.drm.DefaultDrmSession.ProvisioningManager
        public final void a(Exception exc, boolean z) {
            this.f15073b = null;
            HashSet hashSet = this.f15072a;
            ImmutableList immutableListT = ImmutableList.t(hashSet);
            hashSet.clear();
            UnmodifiableListIterator unmodifiableListIteratorListIterator = immutableListT.listIterator(0);
            while (unmodifiableListIteratorListIterator.hasNext()) {
                DefaultDrmSession defaultDrmSession = (DefaultDrmSession) unmodifiableListIteratorListIterator.next();
                defaultDrmSession.getClass();
                defaultDrmSession.j(z ? 1 : 3, exc);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.media3.exoplayer.drm.DefaultDrmSession.ProvisioningManager
        public final void b() {
            this.f15073b = null;
            HashSet hashSet = this.f15072a;
            ImmutableList immutableListT = ImmutableList.t(hashSet);
            hashSet.clear();
            UnmodifiableListIterator unmodifiableListIteratorListIterator = immutableListT.listIterator(0);
            while (unmodifiableListIteratorListIterator.hasNext()) {
                DefaultDrmSession defaultDrmSession = (DefaultDrmSession) unmodifiableListIteratorListIterator.next();
                if (defaultDrmSession.l()) {
                    defaultDrmSession.h(true);
                }
            }
        }

        @Override // androidx.media3.exoplayer.drm.DefaultDrmSession.ProvisioningManager
        public final void c(DefaultDrmSession defaultDrmSession) {
            this.f15072a.add(defaultDrmSession);
            if (this.f15073b != null) {
                return;
            }
            this.f15073b = defaultDrmSession;
            ExoMediaDrm.ProvisionRequest provisionRequestB = defaultDrmSession.f15043b.b();
            defaultDrmSession.A = provisionRequestB;
            DefaultDrmSession.RequestHandler requestHandler = defaultDrmSession.t;
            String str = Util.f14242a;
            provisionRequestB.getClass();
            requestHandler.post(1, provisionRequestB, true);
        }
    }

    public class ReferenceCountListenerImpl implements DefaultDrmSession.ReferenceCountListener {
        public ReferenceCountListenerImpl() {
        }

        @Override // androidx.media3.exoplayer.drm.DefaultDrmSession.ReferenceCountListener
        public final void a(DefaultDrmSession defaultDrmSession) {
            DefaultDrmSessionManager defaultDrmSessionManager = DefaultDrmSessionManager.this;
            if (defaultDrmSessionManager.l != -9223372036854775807L) {
                defaultDrmSessionManager.o.remove(defaultDrmSession);
                Handler handler = defaultDrmSessionManager.u;
                handler.getClass();
                handler.removeCallbacksAndMessages(defaultDrmSession);
            }
        }

        @Override // androidx.media3.exoplayer.drm.DefaultDrmSession.ReferenceCountListener
        public final void b(DefaultDrmSession defaultDrmSession, int i2) {
            DefaultDrmSessionManager defaultDrmSessionManager = DefaultDrmSessionManager.this;
            Set set = defaultDrmSessionManager.o;
            long j2 = defaultDrmSessionManager.l;
            int i3 = 1;
            if (i2 == 1 && defaultDrmSessionManager.p > 0 && j2 != -9223372036854775807L) {
                set.add(defaultDrmSession);
                Handler handler = defaultDrmSessionManager.u;
                handler.getClass();
                handler.postAtTime(new b(defaultDrmSession, i3), defaultDrmSession, SystemClock.uptimeMillis() + j2);
            } else if (i2 == 0) {
                defaultDrmSessionManager.m.remove(defaultDrmSession);
                if (defaultDrmSessionManager.r == defaultDrmSession) {
                    defaultDrmSessionManager.r = null;
                }
                if (defaultDrmSessionManager.s == defaultDrmSession) {
                    defaultDrmSessionManager.s = null;
                }
                ProvisioningManagerImpl provisioningManagerImpl = defaultDrmSessionManager.f15060i;
                HashSet hashSet = provisioningManagerImpl.f15072a;
                hashSet.remove(defaultDrmSession);
                if (provisioningManagerImpl.f15073b == defaultDrmSession) {
                    provisioningManagerImpl.f15073b = null;
                    if (!hashSet.isEmpty()) {
                        DefaultDrmSession defaultDrmSession2 = (DefaultDrmSession) hashSet.iterator().next();
                        provisioningManagerImpl.f15073b = defaultDrmSession2;
                        ExoMediaDrm.ProvisionRequest provisionRequestB = defaultDrmSession2.f15043b.b();
                        defaultDrmSession2.A = provisionRequestB;
                        DefaultDrmSession.RequestHandler requestHandler = defaultDrmSession2.t;
                        String str = Util.f14242a;
                        provisionRequestB.getClass();
                        requestHandler.post(1, provisionRequestB, true);
                    }
                }
                if (j2 != -9223372036854775807L) {
                    Handler handler2 = defaultDrmSessionManager.u;
                    handler2.getClass();
                    handler2.removeCallbacksAndMessages(defaultDrmSession);
                    set.remove(defaultDrmSession);
                }
            }
            defaultDrmSessionManager.k();
        }
    }

    public DefaultDrmSessionManager(UUID uuid, ExoMediaDrm.Provider provider, HttpMediaDrmCallback httpMediaDrmCallback, HashMap map, boolean z, int[] iArr, boolean z2, LoadErrorHandlingPolicy loadErrorHandlingPolicy, long j2) {
        uuid.getClass();
        Preconditions.h(!C.f13718c.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f15055b = uuid;
        this.f15056c = provider;
        this.d = httpMediaDrmCallback;
        this.f15057e = map;
        this.f15058f = z;
        this.g = iArr;
        this.f15059h = z2;
        this.f15061j = loadErrorHandlingPolicy;
        this.f15060i = new ProvisioningManagerImpl(this);
        this.f15062k = new ReferenceCountListenerImpl();
        this.m = new ArrayList();
        this.n = Collections.newSetFromMap(new IdentityHashMap());
        this.o = Collections.newSetFromMap(new IdentityHashMap());
        this.l = j2;
    }

    public static boolean g(DrmSession drmSession) {
        DefaultDrmSession defaultDrmSession = (DefaultDrmSession) drmSession;
        defaultDrmSession.o();
        if (defaultDrmSession.q != 1) {
            return false;
        }
        DrmSession.DrmSessionException drmSessionExceptionA = defaultDrmSession.a();
        drmSessionExceptionA.getClass();
        Throwable cause = drmSessionExceptionA.getCause();
        return (cause instanceof ResourceBusyException) || DrmUtil.c(cause);
    }

    public static ArrayList j(DrmInitData drmInitData, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(drmInitData.f13747e);
        for (int i2 = 0; i2 < drmInitData.f13747e; i2++) {
            DrmInitData.SchemeData schemeData = drmInitData.f13745b[i2];
            if ((schemeData.a(uuid) || (C.d.equals(uuid) && schemeData.a(C.f13718c))) && (schemeData.f13751f != null || z)) {
                arrayList.add(schemeData);
            }
        }
        return arrayList;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionManager
    public final void a(Looper looper, PlayerId playerId) {
        synchronized (this) {
            try {
                Looper looper2 = this.t;
                if (looper2 == null) {
                    this.t = looper;
                    this.u = new Handler(looper);
                } else {
                    Preconditions.q(looper2 == looper);
                    this.u.getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.w = playerId;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionManager
    public final DrmSession b(DrmSessionEventListener.EventDispatcher eventDispatcher, Format format) {
        l(false);
        Preconditions.q(this.p > 0);
        this.t.getClass();
        return e(this.t, eventDispatcher, format, true);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionManager
    public final int c(Format format) {
        l(false);
        ExoMediaDrm exoMediaDrm = this.q;
        exoMediaDrm.getClass();
        int iF = exoMediaDrm.f();
        DrmInitData drmInitData = format.s;
        if (drmInitData == null) {
            int i2 = MimeTypes.i(format.o);
            int i3 = 0;
            while (true) {
                int[] iArr = this.g;
                if (i3 >= iArr.length) {
                    i3 = -1;
                    break;
                }
                if (iArr[i3] == i2) {
                    break;
                }
                i3++;
            }
            if (i3 == -1) {
                return 0;
            }
        } else if (this.v == null) {
            UUID uuid = this.f15055b;
            if (j(drmInitData, uuid, true).isEmpty()) {
                if (drmInitData.f13747e == 1 && drmInitData.f13745b[0].a(C.f13718c)) {
                    Log.g("DrmInitData only contains common PSSH SchemeData. Assuming support for: " + uuid);
                }
                return 1;
            }
            String str = drmInitData.d;
            if (str != null && !"cenc".equals(str) && !"cbcs".equals(str) && ("cbc1".equals(str) || "cens".equals(str))) {
                return 1;
            }
        }
        return iF;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionManager
    public final DrmSessionManager.DrmSessionReference d(DrmSessionEventListener.EventDispatcher eventDispatcher, final Format format) {
        Preconditions.q(this.p > 0);
        this.t.getClass();
        final PreacquiredSessionReference preacquiredSessionReference = new PreacquiredSessionReference(eventDispatcher);
        Handler handler = DefaultDrmSessionManager.this.u;
        handler.getClass();
        handler.post(new Runnable() { // from class: androidx.media3.exoplayer.drm.a
            @Override // java.lang.Runnable
            public final void run() {
                DefaultDrmSessionManager.PreacquiredSessionReference preacquiredSessionReference2 = preacquiredSessionReference;
                DefaultDrmSessionManager defaultDrmSessionManager = DefaultDrmSessionManager.this;
                if (defaultDrmSessionManager.p == 0 || preacquiredSessionReference2.d) {
                    return;
                }
                Looper looper = defaultDrmSessionManager.t;
                looper.getClass();
                preacquiredSessionReference2.f15070c = defaultDrmSessionManager.e(looper, preacquiredSessionReference2.f15069b, format, false);
                defaultDrmSessionManager.n.add(preacquiredSessionReference2);
            }
        });
        return preacquiredSessionReference;
    }

    public final DrmSession e(Looper looper, DrmSessionEventListener.EventDispatcher eventDispatcher, Format format, boolean z) {
        ArrayList arrayListJ;
        if (this.x == null) {
            this.x = new MediaDrmHandler(looper);
        }
        DrmInitData drmInitData = format.s;
        int i2 = 0;
        DefaultDrmSession defaultDrmSession = null;
        if (drmInitData == null) {
            int i3 = MimeTypes.i(format.o);
            ExoMediaDrm exoMediaDrm = this.q;
            exoMediaDrm.getClass();
            if (exoMediaDrm.f() != 2 || !FrameworkCryptoConfig.f15090c) {
                int[] iArr = this.g;
                while (true) {
                    if (i2 >= iArr.length) {
                        i2 = -1;
                        break;
                    }
                    if (iArr[i2] == i3) {
                        break;
                    }
                    i2++;
                }
                if (i2 != -1 && exoMediaDrm.f() != 1) {
                    DefaultDrmSession defaultDrmSession2 = this.r;
                    if (defaultDrmSession2 == null) {
                        DefaultDrmSession defaultDrmSessionI = i(ImmutableList.x(), true, null, z);
                        this.m.add(defaultDrmSessionI);
                        this.r = defaultDrmSessionI;
                    } else {
                        defaultDrmSession2.e(null);
                    }
                    return this.r;
                }
            }
            return null;
        }
        if (this.v == null) {
            arrayListJ = j(drmInitData, this.f15055b, false);
            if (arrayListJ.isEmpty()) {
                MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException("Media does not support uuid: " + this.f15055b);
                Log.e("DRM error", missingSchemeDataException);
                if (eventDispatcher != null) {
                    eventDispatcher.f(missingSchemeDataException);
                }
                return new ErrorStateDrmSession(new DrmSession.DrmSessionException(missingSchemeDataException, 6003));
            }
        } else {
            arrayListJ = null;
        }
        if (this.f15058f) {
            for (DefaultDrmSession defaultDrmSession3 : this.m) {
                if (Objects.equals(defaultDrmSession3.f15042a, arrayListJ)) {
                    defaultDrmSession = defaultDrmSession3;
                    break;
                }
            }
        } else {
            defaultDrmSession = this.s;
        }
        if (defaultDrmSession != null) {
            defaultDrmSession.e(eventDispatcher);
            return defaultDrmSession;
        }
        DefaultDrmSession defaultDrmSessionI2 = i(arrayListJ, false, eventDispatcher, z);
        if (!this.f15058f) {
            this.s = defaultDrmSessionI2;
        }
        this.m.add(defaultDrmSessionI2);
        return defaultDrmSessionI2;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionManager
    public final void f() {
        l(true);
        int i2 = this.p;
        this.p = i2 + 1;
        if (i2 != 0) {
            return;
        }
        if (this.q == null) {
            ExoMediaDrm exoMediaDrmI = this.f15056c.i(this.f15055b);
            this.q = exoMediaDrmI;
            exoMediaDrmI.j(new MediaDrmEventListener());
        } else {
            if (this.l == -9223372036854775807L) {
                return;
            }
            int i3 = 0;
            while (true) {
                ArrayList arrayList = this.m;
                if (i3 >= arrayList.size()) {
                    return;
                }
                ((DefaultDrmSession) arrayList.get(i3)).e(null);
                i3++;
            }
        }
    }

    public final DefaultDrmSession h(List list, boolean z, DrmSessionEventListener.EventDispatcher eventDispatcher) {
        this.q.getClass();
        boolean z2 = this.f15059h | z;
        ExoMediaDrm exoMediaDrm = this.q;
        byte[] bArr = this.v;
        Looper looper = this.t;
        looper.getClass();
        PlayerId playerId = this.w;
        playerId.getClass();
        DefaultDrmSession defaultDrmSession = new DefaultDrmSession(this.f15055b, exoMediaDrm, this.f15060i, this.f15062k, list, 0, z2, z, bArr, this.f15057e, this.d, looper, this.f15061j, playerId);
        defaultDrmSession.e(eventDispatcher);
        if (this.l != -9223372036854775807L) {
            defaultDrmSession.e(null);
        }
        return defaultDrmSession;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final DefaultDrmSession i(List list, boolean z, DrmSessionEventListener.EventDispatcher eventDispatcher, boolean z2) {
        DefaultDrmSession defaultDrmSessionH = h(list, z, eventDispatcher);
        boolean zG = g(defaultDrmSessionH);
        long j2 = this.l;
        Set set = this.o;
        if (zG && !set.isEmpty()) {
            UnmodifiableIterator it = ImmutableSet.s(set).iterator();
            while (it.hasNext()) {
                ((DrmSession) it.next()).f(null);
            }
            defaultDrmSessionH.f(eventDispatcher);
            if (j2 != -9223372036854775807L) {
                defaultDrmSessionH.f(null);
            }
            defaultDrmSessionH = h(list, z, eventDispatcher);
        }
        if (g(defaultDrmSessionH) && z2) {
            Set set2 = this.n;
            if (!set2.isEmpty()) {
                UnmodifiableIterator it2 = ImmutableSet.s(set2).iterator();
                while (it2.hasNext()) {
                    ((PreacquiredSessionReference) it2.next()).release();
                }
                if (!set.isEmpty()) {
                    UnmodifiableIterator it3 = ImmutableSet.s(set).iterator();
                    while (it3.hasNext()) {
                        ((DrmSession) it3.next()).f(null);
                    }
                }
                defaultDrmSessionH.f(eventDispatcher);
                if (j2 != -9223372036854775807L) {
                    defaultDrmSessionH.f(null);
                }
                return h(list, z, eventDispatcher);
            }
        }
        return defaultDrmSessionH;
    }

    public final void k() {
        if (this.q != null && this.p == 0 && this.m.isEmpty() && this.n.isEmpty()) {
            ExoMediaDrm exoMediaDrm = this.q;
            exoMediaDrm.getClass();
            exoMediaDrm.release();
            this.q = null;
        }
    }

    public final void l(boolean z) {
        if (z && this.t == null) {
            Log.h("DefaultDrmSessionManager accessed before setPlayer(), possibly on the wrong thread.", new IllegalStateException());
            return;
        }
        Thread threadCurrentThread = Thread.currentThread();
        Looper looper = this.t;
        looper.getClass();
        if (threadCurrentThread != looper.getThread()) {
            Log.h("DefaultDrmSessionManager accessed on the wrong thread.\nCurrent thread: " + Thread.currentThread().getName() + "\nExpected thread: " + this.t.getThread().getName(), new IllegalStateException());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.exoplayer.drm.DrmSessionManager
    public final void release() {
        l(true);
        int i2 = this.p - 1;
        this.p = i2;
        if (i2 != 0) {
            return;
        }
        if (this.l != -9223372036854775807L) {
            ArrayList arrayList = new ArrayList(this.m);
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                ((DefaultDrmSession) arrayList.get(i3)).f(null);
            }
        }
        UnmodifiableIterator it = ImmutableSet.s(this.n).iterator();
        while (it.hasNext()) {
            ((PreacquiredSessionReference) it.next()).release();
        }
        k();
    }
}
