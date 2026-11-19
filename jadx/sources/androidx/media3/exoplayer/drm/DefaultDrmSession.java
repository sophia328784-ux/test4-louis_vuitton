package androidx.media3.exoplayer.drm;

import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.MediaDrmResetException;
import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.util.CopyOnWriteMultiset;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import defpackage.az;
import defpackage.ct0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
class DefaultDrmSession implements DrmSession {
    public ExoMediaDrm.ProvisionRequest A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f15042a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExoMediaDrm f15043b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProvisioningManager f15044c;
    public final ReferenceCountListener d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f15045e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f15046f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashMap f15047h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CopyOnWriteMultiset f15048i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final LoadErrorHandlingPolicy f15049j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final PlayerId f15050k;
    public final MediaDrmCallback l;
    public final UUID m;
    public final Looper n;
    public final ResponseHandler o;
    public final Object p;
    public int q;
    public int r;
    public HandlerThread s;
    public RequestHandler t;
    public CryptoConfig u;
    public DrmSession.DrmSessionException v;
    public byte[] w;
    public byte[] x;
    public ExoMediaDrm.KeyRequest y;
    public KeyRequestInfo.Builder z;

    public interface ProvisioningManager {
        void a(Exception exc, boolean z);

        void b();

        void c(DefaultDrmSession defaultDrmSession);
    }

    public interface ReferenceCountListener {
        void a(DefaultDrmSession defaultDrmSession);

        void b(DefaultDrmSession defaultDrmSession, int i2);
    }

    public class RequestHandler extends Handler {
        private boolean isReleased;

        public RequestHandler(Looper looper) {
            super(looper);
        }

        private boolean maybeRetryRequest(Message message, MediaDrmCallbackException mediaDrmCallbackException) {
            RequestTask requestTask = (RequestTask) message.obj;
            if (requestTask.f15052b) {
                int i2 = requestTask.f15054e + 1;
                requestTask.f15054e = i2;
                if (i2 <= DefaultDrmSession.this.f15049j.b(3)) {
                    LoadEventInfo loadEventInfo = new LoadEventInfo(requestTask.f15051a, mediaDrmCallbackException.f15104b, mediaDrmCallbackException.f15105c, mediaDrmCallbackException.d, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - requestTask.f15053c, mediaDrmCallbackException.f15106e);
                    long jA = DefaultDrmSession.this.f15049j.a(new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(3), mediaDrmCallbackException.getCause() instanceof IOException ? (IOException) mediaDrmCallbackException.getCause() : new UnexpectedDrmSessionException(mediaDrmCallbackException.getCause()), requestTask.f15054e));
                    if (jA == -9223372036854775807L) {
                        return false;
                    }
                    synchronized (DefaultDrmSession.this.p) {
                        KeyRequestInfo.Builder builder = DefaultDrmSession.this.z;
                        if (builder != null) {
                            builder.f15099a.e(loadEventInfo);
                        }
                    }
                    synchronized (this) {
                        try {
                            if (this.isReleased) {
                                return false;
                            }
                            sendMessageDelayed(Message.obtain(message), jA);
                            return true;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
            }
            return false;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object objB;
            LoadEventInfo loadEventInfo;
            RequestTask requestTask = (RequestTask) message.obj;
            try {
                int i2 = message.what;
                if (i2 == 1) {
                    objB = DefaultDrmSession.this.l.b((ExoMediaDrm.ProvisionRequest) requestTask.d);
                } else {
                    if (i2 != 2) {
                        throw new RuntimeException();
                    }
                    DefaultDrmSession defaultDrmSession = DefaultDrmSession.this;
                    MediaDrmCallback.Response responseA = defaultDrmSession.l.a(defaultDrmSession.m, (ExoMediaDrm.KeyRequest) requestTask.d);
                    synchronized (DefaultDrmSession.this.p) {
                        try {
                            KeyRequestInfo.Builder builder = DefaultDrmSession.this.z;
                            if (builder != null && (loadEventInfo = responseA.f15101b) != null) {
                                builder.f15099a.e(new LoadEventInfo(requestTask.f15051a, loadEventInfo.f15496a, loadEventInfo.f15497b, loadEventInfo.f15498c, loadEventInfo.d, SystemClock.elapsedRealtime() - requestTask.f15053c, loadEventInfo.f15500f));
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    objB = responseA;
                }
            } catch (MediaDrmCallbackException e2) {
                boolean zMaybeRetryRequest = maybeRetryRequest(message, e2);
                objB = e2;
                if (zMaybeRetryRequest) {
                    return;
                }
            } catch (Exception e3) {
                Log.h("Key/provisioning request produced an unexpected exception. Not retrying.", e3);
                objB = e3;
            }
            LoadErrorHandlingPolicy loadErrorHandlingPolicy = DefaultDrmSession.this.f15049j;
            long j2 = requestTask.f15051a;
            loadErrorHandlingPolicy.getClass();
            synchronized (this) {
                try {
                    if (!this.isReleased) {
                        DefaultDrmSession.this.o.obtainMessage(message.what, Pair.create(requestTask.d, objB)).sendToTarget();
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public void post(int i2, Object obj, boolean z) {
            obtainMessage(i2, new RequestTask(LoadEventInfo.g.getAndIncrement(), z, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        public synchronized void release() {
            removeCallbacksAndMessages(null);
            this.isReleased = true;
        }
    }

    public static final class RequestTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f15051a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f15052b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f15053c;
        public final Object d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f15054e;

        public RequestTask(long j2, boolean z, long j3, Object obj) {
            this.f15051a = j2;
            this.f15052b = z;
            this.f15053c = j3;
            this.d = obj;
        }
    }

    public class ResponseHandler extends Handler {
        public ResponseHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            KeyRequestInfo keyRequestInfo;
            Set set;
            Set set2;
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i2 = message.what;
            if (i2 == 1) {
                DefaultDrmSession defaultDrmSession = DefaultDrmSession.this;
                ProvisioningManager provisioningManager = defaultDrmSession.f15044c;
                if (obj == defaultDrmSession.A) {
                    if (defaultDrmSession.q == 2 || defaultDrmSession.i()) {
                        defaultDrmSession.A = null;
                        if (obj2 instanceof Exception) {
                            provisioningManager.a((Exception) obj2, false);
                            return;
                        }
                        try {
                            defaultDrmSession.f15043b.e(((MediaDrmCallback.Response) obj2).f15100a);
                            provisioningManager.b();
                            return;
                        } catch (Exception e2) {
                            provisioningManager.a(e2, true);
                            return;
                        }
                    }
                    return;
                }
                return;
            }
            if (i2 != 2) {
                return;
            }
            DefaultDrmSession defaultDrmSession2 = DefaultDrmSession.this;
            if (obj == defaultDrmSession2.y && defaultDrmSession2.i()) {
                defaultDrmSession2.y = null;
                synchronized (defaultDrmSession2.p) {
                    KeyRequestInfo.Builder builder = defaultDrmSession2.z;
                    builder.getClass();
                    keyRequestInfo = new KeyRequestInfo();
                    builder.f15099a.j();
                    defaultDrmSession2.z = null;
                }
                if ((obj2 instanceof Exception) || (obj2 instanceof NoSuchMethodError)) {
                    defaultDrmSession2.k((Throwable) obj2, false);
                    return;
                }
                try {
                    byte[] bArr = ((MediaDrmCallback.Response) obj2).f15100a;
                    int i3 = defaultDrmSession2.f15045e;
                    ExoMediaDrm exoMediaDrm = defaultDrmSession2.f15043b;
                    if (i3 == 3) {
                        byte[] bArr2 = defaultDrmSession2.x;
                        String str = Util.f14242a;
                        exoMediaDrm.i(bArr2, bArr);
                        CopyOnWriteMultiset copyOnWriteMultiset = defaultDrmSession2.f15048i;
                        synchronized (copyOnWriteMultiset.f14152b) {
                            set2 = copyOnWriteMultiset.d;
                        }
                        Iterator it = set2.iterator();
                        while (it.hasNext()) {
                            ((DrmSessionEventListener.EventDispatcher) it.next()).c();
                        }
                        return;
                    }
                    byte[] bArrI = exoMediaDrm.i(defaultDrmSession2.w, bArr);
                    int i4 = defaultDrmSession2.f15045e;
                    if ((i4 == 2 || (i4 == 0 && defaultDrmSession2.x != null)) && bArrI != null && bArrI.length != 0) {
                        defaultDrmSession2.x = bArrI;
                    }
                    defaultDrmSession2.q = 4;
                    CopyOnWriteMultiset copyOnWriteMultiset2 = defaultDrmSession2.f15048i;
                    synchronized (copyOnWriteMultiset2.f14152b) {
                        set = copyOnWriteMultiset2.d;
                    }
                    Iterator it2 = set.iterator();
                    while (it2.hasNext()) {
                        ((DrmSessionEventListener.EventDispatcher) it2.next()).b(keyRequestInfo);
                    }
                } catch (Exception | NoSuchMethodError e3) {
                    defaultDrmSession2.k(e3, true);
                }
            }
        }
    }

    public static final class UnexpectedDrmSessionException extends IOException {
        public UnexpectedDrmSessionException(Throwable th) {
            super(th);
        }
    }

    public DefaultDrmSession(UUID uuid, ExoMediaDrm exoMediaDrm, ProvisioningManager provisioningManager, ReferenceCountListener referenceCountListener, List<DrmInitData.SchemeData> list, int i2, boolean z, boolean z2, byte[] bArr, HashMap<String, String> map, MediaDrmCallback mediaDrmCallback, Looper looper, LoadErrorHandlingPolicy loadErrorHandlingPolicy, PlayerId playerId) {
        if (i2 == 1 || i2 == 3) {
            bArr.getClass();
        }
        this.m = uuid;
        this.f15044c = provisioningManager;
        this.d = referenceCountListener;
        this.f15043b = exoMediaDrm;
        this.f15045e = i2;
        this.f15046f = z;
        this.g = z2;
        if (bArr != null) {
            this.x = bArr;
            this.f15042a = null;
        } else {
            list.getClass();
            this.f15042a = Collections.unmodifiableList(list);
        }
        this.f15047h = map;
        this.l = mediaDrmCallback;
        this.f15048i = new CopyOnWriteMultiset();
        this.f15049j = loadErrorHandlingPolicy;
        this.f15050k = playerId;
        this.q = 2;
        this.n = looper;
        this.o = new ResponseHandler(looper);
        this.p = new Object();
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final DrmSession.DrmSessionException a() {
        o();
        if (this.q == 1) {
            return this.v;
        }
        return null;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final UUID b() {
        o();
        return this.m;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final boolean c() {
        o();
        return this.f15046f;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final CryptoConfig d() {
        o();
        return this.u;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final void e(DrmSessionEventListener.EventDispatcher eventDispatcher) {
        o();
        if (this.r < 0) {
            Log.d("Session reference count less than zero: " + this.r);
            this.r = 0;
        }
        if (eventDispatcher != null) {
            CopyOnWriteMultiset copyOnWriteMultiset = this.f15048i;
            synchronized (copyOnWriteMultiset.f14152b) {
                try {
                    ArrayList arrayList = new ArrayList(copyOnWriteMultiset.f14154e);
                    arrayList.add(eventDispatcher);
                    copyOnWriteMultiset.f14154e = Collections.unmodifiableList(arrayList);
                    Integer num = (Integer) copyOnWriteMultiset.f14153c.get(eventDispatcher);
                    if (num == null) {
                        HashSet hashSet = new HashSet(copyOnWriteMultiset.d);
                        hashSet.add(eventDispatcher);
                        copyOnWriteMultiset.d = Collections.unmodifiableSet(hashSet);
                    }
                    copyOnWriteMultiset.f14153c.put(eventDispatcher, Integer.valueOf(num != null ? num.intValue() + 1 : 1));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        int i2 = this.r + 1;
        this.r = i2;
        if (i2 == 1) {
            Preconditions.q(this.q == 2);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.s = handlerThread;
            handlerThread.start();
            this.t = new RequestHandler(this.s.getLooper());
            if (l()) {
                h(true);
            }
        } else if (eventDispatcher != null && i() && this.f15048i.a(eventDispatcher) == 1) {
            eventDispatcher.e(this.q);
        }
        this.d.a(this);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final void f(DrmSessionEventListener.EventDispatcher eventDispatcher) {
        o();
        int i2 = this.r;
        if (i2 <= 0) {
            Log.d("release() called on a session that's already fully released.");
            return;
        }
        int i3 = i2 - 1;
        this.r = i3;
        if (i3 == 0) {
            this.q = 0;
            ResponseHandler responseHandler = this.o;
            String str = Util.f14242a;
            responseHandler.removeCallbacksAndMessages(null);
            this.t.release();
            this.t = null;
            this.s.quit();
            this.s = null;
            this.u = null;
            this.v = null;
            this.y = null;
            synchronized (this.p) {
                this.z = null;
            }
            this.A = null;
            byte[] bArr = this.w;
            if (bArr != null) {
                this.f15043b.h(bArr);
                this.w = null;
            }
        }
        if (eventDispatcher != null) {
            CopyOnWriteMultiset copyOnWriteMultiset = this.f15048i;
            synchronized (copyOnWriteMultiset.f14152b) {
                try {
                    Integer num = (Integer) copyOnWriteMultiset.f14153c.get(eventDispatcher);
                    if (num != null) {
                        ArrayList arrayList = new ArrayList(copyOnWriteMultiset.f14154e);
                        arrayList.remove(eventDispatcher);
                        copyOnWriteMultiset.f14154e = Collections.unmodifiableList(arrayList);
                        int iIntValue = num.intValue();
                        HashMap map = copyOnWriteMultiset.f14153c;
                        if (iIntValue == 1) {
                            map.remove(eventDispatcher);
                            HashSet hashSet = new HashSet(copyOnWriteMultiset.d);
                            hashSet.remove(eventDispatcher);
                            copyOnWriteMultiset.d = Collections.unmodifiableSet(hashSet);
                        } else {
                            map.put(eventDispatcher, Integer.valueOf(num.intValue() - 1));
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.f15048i.a(eventDispatcher) == 0) {
                eventDispatcher.g();
            }
        }
        this.d.b(this, this.r);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final boolean g(String str) {
        o();
        byte[] bArr = this.w;
        bArr.getClass();
        return this.f15043b.m(str, bArr);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final int getState() {
        o();
        return this.q;
    }

    public final void h(boolean z) {
        long jMin;
        long j2;
        Set set;
        if (this.g) {
            return;
        }
        byte[] bArr = this.w;
        String str = Util.f14242a;
        int i2 = this.f15045e;
        if (i2 != 0 && i2 != 1) {
            if (i2 == 2) {
                if (this.x == null || n()) {
                    m(2, bArr, z);
                    return;
                }
                return;
            }
            if (i2 != 3) {
                return;
            }
            this.x.getClass();
            this.w.getClass();
            m(3, this.x, z);
            return;
        }
        if (this.x == null) {
            m(1, bArr, z);
            return;
        }
        if (this.q == 4 || n()) {
            if (C.f13719e.equals(this.m)) {
                o();
                byte[] bArr2 = this.w;
                Pair pair = null;
                Map mapA = bArr2 == null ? null : this.f15043b.a(bArr2);
                if (mapA != null) {
                    long j3 = -9223372036854775807L;
                    try {
                        String str2 = (String) mapA.get("LicenseDurationRemaining");
                        j2 = str2 != null ? Long.parseLong(str2) : -9223372036854775807L;
                    } catch (NumberFormatException unused) {
                    }
                    Long lValueOf = Long.valueOf(j2);
                    try {
                        String str3 = (String) mapA.get("PlaybackDurationRemaining");
                        if (str3 != null) {
                            j3 = Long.parseLong(str3);
                        }
                    } catch (NumberFormatException unused2) {
                    }
                    pair = new Pair(lValueOf, Long.valueOf(j3));
                }
                pair.getClass();
                jMin = Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
            } else {
                jMin = Long.MAX_VALUE;
            }
            if (this.f15045e == 0 && jMin <= 60) {
                Log.b("Offline license has expired or will expire soon. Remaining seconds: " + jMin);
                m(2, bArr, z);
                return;
            }
            if (jMin <= 0) {
                j(2, new KeysExpiredException());
                return;
            }
            this.q = 4;
            CopyOnWriteMultiset copyOnWriteMultiset = this.f15048i;
            synchronized (copyOnWriteMultiset.f14152b) {
                set = copyOnWriteMultiset.d;
            }
            Iterator it = set.iterator();
            while (it.hasNext()) {
                ((DrmSessionEventListener.EventDispatcher) it.next()).d();
            }
        }
    }

    public final boolean i() {
        int i2 = this.q;
        return i2 == 3 || i2 == 4;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001d  */
    public final void j(int i2, Throwable th) {
        int iY;
        Set set;
        if (th instanceof MediaDrm.MediaDrmStateException) {
            iY = Util.y(Util.z(((MediaDrm.MediaDrmStateException) th).getDiagnosticInfo()));
        } else if (th instanceof MediaDrmResetException) {
            iY = 6006;
        } else if ((th instanceof NotProvisionedException) || DrmUtil.b(th)) {
            iY = 6002;
        } else if (th instanceof DeniedByServerException) {
            iY = 6007;
        } else if (th instanceof UnsupportedDrmException) {
            iY = 6001;
        } else if (th instanceof DefaultDrmSessionManager.MissingSchemeDataException) {
            iY = 6003;
        } else if (th instanceof KeysExpiredException) {
            iY = 6008;
        } else if (i2 == 1) {
            iY = 6006;
        } else if (i2 == 2) {
            iY = 6004;
        } else {
            if (i2 != 3) {
                ct0.c();
                return;
            }
            iY = 6002;
        }
        this.v = new DrmSession.DrmSessionException(th, iY);
        Log.e("DRM session error", th);
        if (th instanceof Exception) {
            CopyOnWriteMultiset copyOnWriteMultiset = this.f15048i;
            synchronized (copyOnWriteMultiset.f14152b) {
                set = copyOnWriteMultiset.d;
            }
            Iterator it = set.iterator();
            while (it.hasNext()) {
                ((DrmSessionEventListener.EventDispatcher) it.next()).f((Exception) th);
            }
        } else if (!(th instanceof Error)) {
            az.s("Unexpected Throwable subclass", th);
            return;
        } else if (!DrmUtil.c(th) && !DrmUtil.b(th)) {
            throw ((Error) th);
        }
        if (this.q != 4) {
            this.q = 1;
        }
    }

    public final void k(Throwable th, boolean z) {
        if ((th instanceof NotProvisionedException) || DrmUtil.b(th)) {
            this.f15044c.c(this);
        } else {
            j(z ? 1 : 2, th);
        }
    }

    public final boolean l() {
        Set set;
        if (i()) {
            return true;
        }
        try {
            try {
                byte[] bArrC = this.f15043b.c();
                this.w = bArrC;
                this.f15043b.l(bArrC, this.f15050k);
                this.u = this.f15043b.g(this.w);
                this.q = 3;
                CopyOnWriteMultiset copyOnWriteMultiset = this.f15048i;
                synchronized (copyOnWriteMultiset.f14152b) {
                    set = copyOnWriteMultiset.d;
                }
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    ((DrmSessionEventListener.EventDispatcher) it.next()).e(3);
                }
                this.w.getClass();
                return true;
            } catch (NotProvisionedException unused) {
                this.f15044c.c(this);
                return false;
            }
        } catch (Exception | NoSuchMethodError e2) {
            if (DrmUtil.b(e2)) {
                this.f15044c.c(this);
                return false;
            }
            j(1, e2);
            return false;
        }
    }

    public final void m(int i2, byte[] bArr, boolean z) {
        try {
            synchronized (this.p) {
                try {
                    this.z = new KeyRequestInfo.Builder();
                    List list = this.f15042a;
                    if (list != null) {
                        ImmutableList.t(list);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            ExoMediaDrm.KeyRequest keyRequestK = this.f15043b.k(bArr, this.f15042a, i2, this.f15047h);
            this.y = keyRequestK;
            RequestHandler requestHandler = this.t;
            String str = Util.f14242a;
            keyRequestK.getClass();
            requestHandler.post(2, keyRequestK, z);
        } catch (Exception | NoSuchMethodError e2) {
            k(e2, true);
        }
    }

    public final boolean n() {
        try {
            this.f15043b.d(this.w, this.x);
            return true;
        } catch (Exception | NoSuchMethodError e2) {
            j(1, e2);
            return false;
        }
    }

    public final void o() {
        Thread threadCurrentThread = Thread.currentThread();
        Looper looper = this.n;
        if (threadCurrentThread != looper.getThread()) {
            Log.h("DefaultDrmSession accessed on the wrong thread.\nCurrent thread: " + Thread.currentThread().getName() + "\nExpected thread: " + looper.getThread().getName(), new IllegalStateException());
        }
    }
}
