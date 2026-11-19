package coil3.disk;

import coil3.util.FileSystemsKt;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.a61;
import defpackage.az;
import defpackage.b21;
import defpackage.ck;
import defpackage.fc;
import defpackage.md;
import io.jsonwebtoken.JwtParser;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.RealBufferedSink;
import okio.RealBufferedSource;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0004\u0010\u0011\u0012\u0013B7\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0014"}, d2 = {"Lcoil3/disk/DiskLruCache;", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "Lokio/FileSystem;", "fileSystem", "Lokio/Path;", "directory", "Lkotlin/coroutines/CoroutineContext;", "cleanupCoroutineContext", "", "maxSize", "", "appVersion", "valueCount", "<init>", "(Lokio/FileSystem;Lokio/Path;Lkotlin/coroutines/CoroutineContext;JII)V", "Snapshot", "Editor", "Entry", "Companion", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class DiskLruCache implements AutoCloseable {
    public static final Regex u;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Path f21391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f21392c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f21393e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Path f21394f;
    public final Path g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Path f21395h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinkedHashMap f21396i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ContextScope f21397j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Object f21398k;
    public long l;
    public int m;
    public RealBufferedSink n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public boolean s;
    public final DiskLruCache$fileSystem$1 t;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcoil3/disk/DiskLruCache$Companion;", "", "", "CLEAN", "Ljava/lang/String;", "DIRTY", "REMOVE", "READ", "Lkotlin/text/Regex;", "LEGAL_KEY_PATTERN", "Lkotlin/text/Regex;", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcoil3/disk/DiskLruCache$Editor;", "", "Lcoil3/disk/DiskLruCache$Entry;", "Lcoil3/disk/DiskLruCache;", "entry", "<init>", "(Lcoil3/disk/DiskLruCache;Lcoil3/disk/DiskLruCache$Entry;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public final class Editor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Entry f21399a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f21400b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean[] f21401c;

        public Editor(Entry entry) {
            this.f21399a = entry;
            this.f21401c = new boolean[DiskLruCache.this.f21393e];
        }

        public final void a(boolean z) {
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache.f21398k) {
                try {
                    if (this.f21400b) {
                        throw new IllegalStateException("editor is closed");
                    }
                    if (Intrinsics.c(this.f21399a.g, this)) {
                        DiskLruCache.c(diskLruCache, this, z);
                    }
                    this.f21400b = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final Path b(int i2) {
            Path path;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache.f21398k) {
                if (this.f21400b) {
                    throw new IllegalStateException("editor is closed");
                }
                this.f21401c[i2] = true;
                Object obj = this.f21399a.d.get(i2);
                FileSystemsKt.a(diskLruCache.t, (Path) obj);
                path = (Path) obj;
            }
            return path;
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcoil3/disk/DiskLruCache$Entry;", "", "", ConfigurationName.KEY, "<init>", "(Lcoil3/disk/DiskLruCache;Ljava/lang/String;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public final class Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f21402a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long[] f21403b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f21404c;
        public final ArrayList d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f21405e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f21406f;
        public Editor g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f21407h;

        public Entry(String str) {
            this.f21402a = str;
            this.f21403b = new long[DiskLruCache.this.f21393e];
            this.f21404c = new ArrayList(DiskLruCache.this.f21393e);
            this.d = new ArrayList(DiskLruCache.this.f21393e);
            StringBuilder sb = new StringBuilder(str);
            sb.append(JwtParser.SEPARATOR_CHAR);
            int length = sb.length();
            int i2 = DiskLruCache.this.f21393e;
            for (int i3 = 0; i3 < i2; i3++) {
                sb.append(i3);
                this.f21404c.add(DiskLruCache.this.f21391b.e(sb.toString()));
                sb.append(".tmp");
                this.d.add(DiskLruCache.this.f21391b.e(sb.toString()));
                sb.setLength(length);
            }
        }

        public final Snapshot a() {
            if (!this.f21405e || this.g != null || this.f21406f) {
                return null;
            }
            ArrayList arrayList = this.f21404c;
            int size = arrayList.size();
            int i2 = 0;
            while (true) {
                DiskLruCache diskLruCache = DiskLruCache.this;
                if (i2 >= size) {
                    this.f21407h++;
                    return diskLruCache.new Snapshot(this);
                }
                if (!diskLruCache.t.k((Path) arrayList.get(i2))) {
                    try {
                        diskLruCache.o(this);
                    } catch (IOException unused) {
                    }
                    return null;
                }
                i2++;
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0013\u0012\n\u0010\u0005\u001a\u00060\u0003R\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcoil3/disk/DiskLruCache$Snapshot;", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "Lcoil3/disk/DiskLruCache$Entry;", "Lcoil3/disk/DiskLruCache;", "entry", "<init>", "(Lcoil3/disk/DiskLruCache;Lcoil3/disk/DiskLruCache$Entry;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public final class Snapshot implements AutoCloseable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Entry f21409b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f21410c;

        public Snapshot(Entry entry) {
            this.f21409b = entry;
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            if (this.f21410c) {
                return;
            }
            this.f21410c = true;
            DiskLruCache diskLruCache = DiskLruCache.this;
            synchronized (diskLruCache.f21398k) {
                Entry entry = this.f21409b;
                int i2 = entry.f21407h - 1;
                entry.f21407h = i2;
                if (i2 == 0 && entry.f21406f) {
                    diskLruCache.o(entry);
                }
            }
        }
    }

    static {
        new Companion(null);
        u = new Regex("[a-z0-9_-]{1,120}");
    }

    public DiskLruCache(FileSystem fileSystem, Path path, CoroutineContext coroutineContext, long j2, int i2, int i3) {
        this.f21391b = path;
        this.f21392c = j2;
        this.d = i2;
        this.f21393e = i3;
        if (j2 <= 0) {
            md.n("maxSize <= 0");
            throw null;
        }
        if (i3 <= 0) {
            md.n("valueCount <= 0");
            throw null;
        }
        this.f21394f = path.e("journal");
        this.g = path.e("journal.tmp");
        this.f21395h = path.e("journal.bkp");
        this.f21396i = new LinkedHashMap(0, 0.75f, true);
        CoroutineContext coroutineContextPlus = coroutineContext.plus(SupervisorKt.b());
        Function1 function1 = coil3.util.UtilsKt.f21734a;
        CoroutineContext.Element element = coroutineContext.get(ContinuationInterceptor.INSTANCE);
        CoroutineDispatcher coroutineDispatcher = element instanceof CoroutineDispatcher ? (CoroutineDispatcher) element : null;
        if (coroutineDispatcher == null) {
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            coroutineDispatcher = DefaultIoScheduler.f75161b;
        }
        this.f21397j = CoroutineScopeKt.a(coroutineContextPlus.plus(CoroutineDispatcher.limitedParallelism$default(coroutineDispatcher, 1, null, 2, null)));
        this.f21398k = new Object();
        this.t = new DiskLruCache$fileSystem$1(fileSystem);
    }

    /* JADX WARN: Code duplicated, block: B:58:0x0110 A[Catch: all -> 0x0034, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:8:0x0010, B:10:0x0014, B:12:0x0019, B:14:0x001f, B:16:0x002f, B:22:0x003a, B:24:0x003f, B:27:0x0059, B:29:0x0068, B:31:0x0076, B:33:0x007d, B:28:0x005d, B:37:0x009f, B:39:0x00a6, B:42:0x00ab, B:44:0x00bc, B:47:0x00c1, B:52:0x00fc, B:54:0x0107, B:58:0x0110, B:48:0x00d9, B:50:0x00ee, B:51:0x00f9, B:34:0x008a, B:36:0x008f, B:61:0x0115, B:62:0x011c), top: B:65:0x0003 }] */
    public static final void c(DiskLruCache diskLruCache, Editor editor, boolean z) {
        synchronized (diskLruCache.f21398k) {
            Entry entry = editor.f21399a;
            if (!Intrinsics.c(entry.g, editor)) {
                throw new IllegalStateException("Check failed.");
            }
            if (!z || entry.f21406f) {
                int i2 = diskLruCache.f21393e;
                for (int i3 = 0; i3 < i2; i3++) {
                    diskLruCache.t.j((Path) entry.d.get(i3));
                }
            } else {
                int i4 = diskLruCache.f21393e;
                for (int i5 = 0; i5 < i4; i5++) {
                    if (editor.f21401c[i5] && !diskLruCache.t.k((Path) entry.d.get(i5))) {
                        editor.a(false);
                        return;
                    }
                }
                int i6 = diskLruCache.f21393e;
                for (int i7 = 0; i7 < i6; i7++) {
                    Path path = (Path) entry.d.get(i7);
                    Path path2 = (Path) entry.f21404c.get(i7);
                    boolean zK = diskLruCache.t.k(path);
                    DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = diskLruCache.t;
                    if (zK) {
                        diskLruCache$fileSystem$1.d(path, path2);
                    } else {
                        FileSystemsKt.a(diskLruCache$fileSystem$1, (Path) entry.f21404c.get(i7));
                    }
                    long j2 = entry.f21403b[i7];
                    Long l = diskLruCache.t.n(path2).d;
                    long jLongValue = l != null ? l.longValue() : 0L;
                    entry.f21403b[i7] = jLongValue;
                    diskLruCache.l = (diskLruCache.l - j2) + jLongValue;
                }
            }
            entry.g = null;
            if (entry.f21406f) {
                diskLruCache.o(entry);
                return;
            }
            diskLruCache.m++;
            RealBufferedSink realBufferedSink = diskLruCache.n;
            realBufferedSink.getClass();
            if (z || entry.f21405e) {
                entry.f21405e = true;
                realBufferedSink.r0("CLEAN");
                realBufferedSink.writeByte(32);
                realBufferedSink.r0(entry.f21402a);
                for (long j3 : entry.f21403b) {
                    realBufferedSink.writeByte(32);
                    realBufferedSink.F0(j3);
                }
                realBufferedSink.writeByte(10);
            } else {
                diskLruCache.f21396i.remove(entry.f21402a);
                realBufferedSink.r0("REMOVE");
                realBufferedSink.writeByte(32);
                realBufferedSink.r0(entry.f21402a);
                realBufferedSink.writeByte(10);
            }
            realBufferedSink.flush();
            if (diskLruCache.l > diskLruCache.f21392c) {
                diskLruCache.j();
            } else if (diskLruCache.m >= 2000) {
                diskLruCache.j();
            }
        }
    }

    public static void q(String str) {
        if (u.f(str)) {
            return;
        }
        b21.n(fc.h("keys must match regex [a-z0-9_-]{1,120}: \"", str, "\""));
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        synchronized (this.f21398k) {
            try {
                if (this.p && !this.q) {
                    for (Entry entry : (Entry[]) this.f21396i.values().toArray(new Entry[0])) {
                        Editor editor = entry.g;
                        if (editor != null) {
                            Entry entry2 = editor.f21399a;
                            if (Intrinsics.c(entry2.g, editor)) {
                                entry2.f21406f = true;
                            }
                        }
                    }
                    p();
                    CoroutineScopeKt.c(this.f21397j, null);
                    RealBufferedSink realBufferedSink = this.n;
                    realBufferedSink.getClass();
                    realBufferedSink.close();
                    this.n = null;
                    this.q = true;
                    return;
                }
                this.q = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Editor d(String str) {
        synchronized (this.f21398k) {
            if (this.q) {
                throw new IllegalStateException("cache is closed");
            }
            q(str);
            h();
            Entry entry = (Entry) this.f21396i.get(str);
            if ((entry != null ? entry.g : null) != null) {
                return null;
            }
            if (entry != null && entry.f21407h != 0) {
                return null;
            }
            if (!this.r && !this.s) {
                RealBufferedSink realBufferedSink = this.n;
                realBufferedSink.getClass();
                realBufferedSink.r0("DIRTY");
                realBufferedSink.writeByte(32);
                realBufferedSink.r0(str);
                realBufferedSink.writeByte(10);
                realBufferedSink.flush();
                if (this.o) {
                    return null;
                }
                if (entry == null) {
                    entry = new Entry(str);
                    this.f21396i.put(str, entry);
                }
                Editor editor = new Editor(entry);
                entry.g = editor;
                return editor;
            }
            j();
            return null;
        }
    }

    public final Snapshot e(String str) {
        Snapshot snapshotA;
        synchronized (this.f21398k) {
            if (this.q) {
                throw new IllegalStateException("cache is closed");
            }
            q(str);
            h();
            Entry entry = (Entry) this.f21396i.get(str);
            if (entry != null && (snapshotA = entry.a()) != null) {
                boolean z = true;
                this.m++;
                RealBufferedSink realBufferedSink = this.n;
                realBufferedSink.getClass();
                realBufferedSink.r0("READ");
                realBufferedSink.writeByte(32);
                realBufferedSink.r0(str);
                realBufferedSink.writeByte(10);
                realBufferedSink.flush();
                if (this.m < 2000) {
                    z = false;
                }
                if (z) {
                    j();
                }
                return snapshotA;
            }
            return null;
        }
    }

    public final void h() {
        synchronized (this.f21398k) {
            try {
                if (this.p) {
                    return;
                }
                this.t.j(this.g);
                if (this.t.k(this.f21395h)) {
                    boolean zK = this.t.k(this.f21394f);
                    DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.t;
                    Path path = this.f21395h;
                    if (zK) {
                        diskLruCache$fileSystem$1.j(path);
                    } else {
                        diskLruCache$fileSystem$1.d(path, this.f21394f);
                    }
                }
                if (this.t.k(this.f21394f)) {
                    try {
                        m();
                        k();
                        this.p = true;
                        return;
                    } catch (IOException unused) {
                        try {
                            close();
                            FileSystemsKt.b(this.t, this.f21391b);
                            this.q = false;
                            r();
                            this.p = true;
                        } catch (Throwable th) {
                            this.q = false;
                            throw th;
                        }
                    }
                }
                r();
                this.p = true;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void j() {
        BuildersKt.c(this.f21397j, null, null, new DiskLruCache$launchCleanup$1(this, null), 3);
    }

    public final void k() {
        Iterator it = this.f21396i.values().iterator();
        long j2 = 0;
        while (it.hasNext()) {
            Entry entry = (Entry) it.next();
            Editor editor = entry.g;
            int i2 = this.f21393e;
            int i3 = 0;
            if (editor == null) {
                while (i3 < i2) {
                    j2 += entry.f21403b[i3];
                    i3++;
                }
            } else {
                entry.g = null;
                while (i3 < i2) {
                    Path path = (Path) entry.f21404c.get(i3);
                    DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.t;
                    diskLruCache$fileSystem$1.j(path);
                    diskLruCache$fileSystem$1.j((Path) entry.d.get(i3));
                    i3++;
                }
                it.remove();
            }
        }
        this.l = j2;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00d4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00d5  */
    public final void m() throws Throwable {
        DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.t;
        Path path = this.f21394f;
        RealBufferedSource realBufferedSourceC = Okio.c(diskLruCache$fileSystem$1.r(path));
        try {
            String strZ = realBufferedSourceC.Z(Long.MAX_VALUE);
            String strZ2 = realBufferedSourceC.Z(Long.MAX_VALUE);
            String strZ3 = realBufferedSourceC.Z(Long.MAX_VALUE);
            String strZ4 = realBufferedSourceC.Z(Long.MAX_VALUE);
            String strZ5 = realBufferedSourceC.Z(Long.MAX_VALUE);
            if (!"libcore.io.DiskLruCache".equals(strZ) || !"1".equals(strZ2) || !Intrinsics.c(String.valueOf(this.d), strZ3) || !Intrinsics.c(String.valueOf(this.f21393e), strZ4) || strZ5.length() > 0) {
                throw new IOException("unexpected journal header: [" + strZ + ", " + strZ2 + ", " + strZ3 + ", " + strZ4 + ", " + strZ5 + "]");
            }
            int i2 = 0;
            while (true) {
                try {
                    n(realBufferedSourceC.Z(Long.MAX_VALUE));
                    i2++;
                } catch (EOFException unused) {
                    this.m = i2 - this.f21396i.size();
                    if (realBufferedSourceC.Z0()) {
                        diskLruCache$fileSystem$1.getClass();
                        path.getClass();
                        this.n = new RealBufferedSink(new FaultHidingSink(diskLruCache$fileSystem$1.c(path), new ck(this, 13)));
                    } else {
                        r();
                    }
                    try {
                        realBufferedSourceC.close();
                        th = null;
                    } catch (Throwable th) {
                        th = th;
                    }
                    if (th == null) {
                        throw th;
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            try {
                realBufferedSourceC.close();
            } catch (Throwable th3) {
                ExceptionsKt.a(th, th3);
            }
            if (th == null) {
                throw th;
            }
        }
    }

    public final void n(String str) throws IOException {
        String strSubstring;
        int iU = StringsKt.u(str, ' ', 0, 6);
        if (iU == -1) {
            az.o("unexpected journal line: ".concat(str));
            return;
        }
        int i2 = iU + 1;
        int iU2 = StringsKt.u(str, ' ', i2, 4);
        LinkedHashMap linkedHashMap = this.f21396i;
        if (iU2 == -1) {
            strSubstring = str.substring(i2);
            if (iU == 6 && StringsKt.P(str, "REMOVE", false)) {
                linkedHashMap.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i2, iU2);
        }
        Object entry = linkedHashMap.get(strSubstring);
        if (entry == null) {
            entry = new Entry(strSubstring);
            linkedHashMap.put(strSubstring, entry);
        }
        Entry entry2 = (Entry) entry;
        if (iU2 == -1 || iU != 5 || !StringsKt.P(str, "CLEAN", false)) {
            if (iU2 == -1 && iU == 5 && StringsKt.P(str, "DIRTY", false)) {
                entry2.g = new Editor(entry2);
                return;
            } else {
                if (iU2 == -1 && iU == 4 && StringsKt.P(str, "READ", false)) {
                    return;
                }
                az.o("unexpected journal line: ".concat(str));
                return;
            }
        }
        List listM = StringsKt.M(str.substring(iU2 + 1), new char[]{' '});
        entry2.f21405e = true;
        entry2.g = null;
        if (listM.size() != DiskLruCache.this.f21393e) {
            a61.n(listM, "unexpected journal line: ");
            return;
        }
        try {
            int size = listM.size();
            for (int i3 = 0; i3 < size; i3++) {
                entry2.f21403b[i3] = Long.parseLong((String) listM.get(i3));
            }
        } catch (NumberFormatException unused) {
            a61.n(listM, "unexpected journal line: ");
        }
    }

    public final void o(Entry entry) {
        RealBufferedSink realBufferedSink;
        int i2 = entry.f21407h;
        String str = entry.f21402a;
        if (i2 > 0 && (realBufferedSink = this.n) != null) {
            realBufferedSink.r0("DIRTY");
            realBufferedSink.writeByte(32);
            realBufferedSink.r0(str);
            realBufferedSink.writeByte(10);
            realBufferedSink.flush();
        }
        if (entry.f21407h > 0 || entry.g != null) {
            entry.f21406f = true;
            return;
        }
        for (int i3 = 0; i3 < this.f21393e; i3++) {
            this.t.j((Path) entry.f21404c.get(i3));
            long j2 = this.l;
            long[] jArr = entry.f21403b;
            this.l = j2 - jArr[i3];
            jArr[i3] = 0;
        }
        this.m++;
        RealBufferedSink realBufferedSink2 = this.n;
        if (realBufferedSink2 != null) {
            realBufferedSink2.r0("REMOVE");
            realBufferedSink2.writeByte(32);
            realBufferedSink2.r0(str);
            realBufferedSink2.writeByte(10);
            realBufferedSink2.flush();
        }
        this.f21396i.remove(str);
        if (this.m >= 2000) {
            j();
        }
    }

    public final void p() {
        while (this.l > this.f21392c) {
            for (Entry entry : this.f21396i.values()) {
                if (!entry.f21406f) {
                    o(entry);
                }
            }
            return;
        }
        this.r = false;
    }

    public final void r() {
        Throwable th;
        synchronized (this.f21398k) {
            try {
                RealBufferedSink realBufferedSink = this.n;
                if (realBufferedSink != null) {
                    realBufferedSink.close();
                }
                RealBufferedSink realBufferedSinkB = Okio.b(this.t.q(this.g, false));
                try {
                    realBufferedSinkB.r0("libcore.io.DiskLruCache");
                    realBufferedSinkB.writeByte(10);
                    realBufferedSinkB.r0("1");
                    realBufferedSinkB.writeByte(10);
                    realBufferedSinkB.F0(this.d);
                    realBufferedSinkB.writeByte(10);
                    realBufferedSinkB.F0(this.f21393e);
                    realBufferedSinkB.writeByte(10);
                    realBufferedSinkB.writeByte(10);
                    for (Entry entry : this.f21396i.values()) {
                        if (entry.g != null) {
                            realBufferedSinkB.r0("DIRTY");
                            realBufferedSinkB.writeByte(32);
                            realBufferedSinkB.r0(entry.f21402a);
                            realBufferedSinkB.writeByte(10);
                        } else {
                            realBufferedSinkB.r0("CLEAN");
                            realBufferedSinkB.writeByte(32);
                            realBufferedSinkB.r0(entry.f21402a);
                            for (long j2 : entry.f21403b) {
                                realBufferedSinkB.writeByte(32);
                                realBufferedSinkB.F0(j2);
                            }
                            realBufferedSinkB.writeByte(10);
                        }
                    }
                    try {
                        realBufferedSinkB.close();
                        th = null;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Throwable th3) {
                    try {
                        realBufferedSinkB.close();
                    } catch (Throwable th4) {
                        ExceptionsKt.a(th3, th4);
                    }
                    th = th3;
                }
                if (th != null) {
                    throw th;
                }
                boolean zK = this.t.k(this.f21394f);
                DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.t;
                if (zK) {
                    diskLruCache$fileSystem$1.d(this.f21394f, this.f21395h);
                    this.t.d(this.g, this.f21394f);
                    this.t.j(this.f21395h);
                } else {
                    diskLruCache$fileSystem$1.d(this.g, this.f21394f);
                }
                DiskLruCache$fileSystem$1 diskLruCache$fileSystem$2 = this.t;
                Path path = this.f21394f;
                diskLruCache$fileSystem$2.getClass();
                path.getClass();
                this.n = new RealBufferedSink(new FaultHidingSink(diskLruCache$fileSystem$2.c(path), new ck(this, 13)));
                this.m = 0;
                this.o = false;
                this.s = false;
            } catch (Throwable th5) {
                throw th5;
            }
        }
    }
}
