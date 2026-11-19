package okhttp3.internal.cache;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.a61;
import defpackage.az;
import defpackage.b21;
import defpackage.ck;
import defpackage.d21;
import defpackage.md;
import defpackage.n00;
import defpackage.vg;
import io.jsonwebtoken.JwtParser;
import java.io.Closeable;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.TimeZone;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal._UtilCommonKt;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Lockable;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.platform.Platform;
import okio.FileSystem;
import okio.ForwardingSource;
import okio.Okio;
import okio.Path;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Source;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0004\u0011\u0012\u0013\u0014B7\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0015"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache;", "Ljava/io/Closeable;", "Ljava/io/Flushable;", "Lokhttp3/internal/concurrent/Lockable;", "Lokio/FileSystem;", "fileSystem", "Lokio/Path;", "directory", "", "appVersion", "valueCount", "", "maxSize", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "<init>", "(Lokio/FileSystem;Lokio/Path;IIJLokhttp3/internal/concurrent/TaskRunner;)V", "Snapshot", "Editor", "Entry", "Companion", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DiskLruCache implements Closeable, Flushable, Lockable {
    public static final String A;
    public static final long B;
    public static final Regex C;
    public static final String D;
    public static final String E;
    public static final String F;
    public static final String G;
    public static final String w;
    public static final String x;
    public static final String y;
    public static final String z;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Path f77039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f77040c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DiskLruCache$fileSystem$1 f77041e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f77042f;
    public final Path g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Path f77043h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Path f77044i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f77045j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public RealBufferedSink f77046k;
    public final LinkedHashMap l;
    public int m;
    public boolean n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public boolean s;
    public long t;
    public final TaskQueue u;
    public final DiskLruCache$cleanupTask$1 v;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087D¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0087D¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0087D¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0087D¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0087D¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\n\u001a\u00020\t8\u0006X\u0087D¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0087D¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0010\u001a\u00020\u00028\u0006X\u0087D¢\u0006\u0006\n\u0004\b\u0010\u0010\u0004R\u0014\u0010\u0011\u001a\u00020\u00028\u0006X\u0087D¢\u0006\u0006\n\u0004\b\u0011\u0010\u0004R\u0014\u0010\u0012\u001a\u00020\u00028\u0006X\u0087D¢\u0006\u0006\n\u0004\b\u0012\u0010\u0004¨\u0006\u0013"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Companion;", "", "", "JOURNAL_FILE", "Ljava/lang/String;", "JOURNAL_FILE_TEMP", "JOURNAL_FILE_BACKUP", "MAGIC", "VERSION_1", "", "ANY_SEQUENCE_NUMBER", "J", "Lkotlin/text/Regex;", "LEGAL_KEY_PATTERN", "Lkotlin/text/Regex;", "CLEAN", "DIRTY", "REMOVE", "READ", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0015\b\u0000\u0012\n\u0010\u0004\u001a\u00060\u0002R\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Editor;", "", "Lokhttp3/internal/cache/DiskLruCache$Entry;", "Lokhttp3/internal/cache/DiskLruCache;", "entry", "<init>", "(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class Editor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Entry f77047a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean[] f77048b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f77049c;
        public final /* synthetic */ DiskLruCache d;

        public Editor(DiskLruCache diskLruCache, Entry entry) {
            entry.getClass();
            this.d = diskLruCache;
            this.f77047a = entry;
            this.f77048b = entry.f77053e ? null : new boolean[diskLruCache.d];
        }

        public final void a() {
            DiskLruCache diskLruCache = this.d;
            synchronized (diskLruCache) {
                try {
                    if (this.f77049c) {
                        throw new IllegalStateException("Check failed.");
                    }
                    if (Intrinsics.c(this.f77047a.g, this)) {
                        diskLruCache.j(this, false);
                    }
                    this.f77049c = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void b() {
            DiskLruCache diskLruCache = this.d;
            synchronized (diskLruCache) {
                try {
                    if (this.f77049c) {
                        throw new IllegalStateException("Check failed.");
                    }
                    if (Intrinsics.c(this.f77047a.g, this)) {
                        diskLruCache.j(this, true);
                    }
                    this.f77049c = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void c() {
            Entry entry = this.f77047a;
            if (Intrinsics.c(entry.g, this)) {
                DiskLruCache diskLruCache = this.d;
                if (diskLruCache.o) {
                    diskLruCache.j(this, false);
                } else {
                    entry.f77054f = true;
                }
            }
        }

        public final Sink d(int i2) {
            DiskLruCache diskLruCache = this.d;
            synchronized (diskLruCache) {
                if (this.f77049c) {
                    throw new IllegalStateException("Check failed.");
                }
                if (!Intrinsics.c(this.f77047a.g, this)) {
                    return Okio.a();
                }
                if (!this.f77047a.f77053e) {
                    boolean[] zArr = this.f77048b;
                    zArr.getClass();
                    zArr[i2] = true;
                }
                Path path = (Path) this.f77047a.d.get(i2);
                try {
                    DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = diskLruCache.f77041e;
                    diskLruCache$fileSystem$1.getClass();
                    path.getClass();
                    return new FaultHidingSink(diskLruCache$fileSystem$1.q(path, false), new vg(diskLruCache, this, 23));
                } catch (FileNotFoundException unused) {
                    return Okio.a();
                }
            }
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0080\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Entry;", "", "", ConfigurationName.KEY, "<init>", "(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f77050a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long[] f77051b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f77052c;
        public final ArrayList d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f77053e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f77054f;
        public Editor g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f77055h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public long f77056i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ DiskLruCache f77057j;

        public Entry(DiskLruCache diskLruCache, String str) {
            str.getClass();
            this.f77057j = diskLruCache;
            this.f77050a = str;
            this.f77051b = new long[diskLruCache.d];
            this.f77052c = new ArrayList();
            this.d = new ArrayList();
            StringBuilder sb = new StringBuilder(str);
            sb.append(JwtParser.SEPARATOR_CHAR);
            int length = sb.length();
            int i2 = diskLruCache.d;
            for (int i3 = 0; i3 < i2; i3++) {
                sb.append(i3);
                this.f77052c.add(this.f77057j.f77039b.e(sb.toString()));
                sb.append(".tmp");
                this.d.add(this.f77057j.f77039b.e(sb.toString()));
                sb.setLength(length);
            }
        }

        public final Snapshot a() {
            TimeZone timeZone = _UtilJvmKt.f77018a;
            if (!this.f77053e) {
                return null;
            }
            final DiskLruCache diskLruCache = this.f77057j;
            if (!diskLruCache.o && (this.g != null || this.f77054f)) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            long[] jArr = (long[]) this.f77051b.clone();
            try {
                int i2 = diskLruCache.d;
                for (int i3 = 0; i3 < i2; i3++) {
                    final Source sourceR = diskLruCache.f77041e.r((Path) this.f77052c.get(i3));
                    if (!diskLruCache.o) {
                        this.f77055h++;
                        sourceR = new ForwardingSource(sourceR) { // from class: okhttp3.internal.cache.DiskLruCache$Entry$newSource$1

                            /* JADX INFO: renamed from: h, reason: collision with root package name */
                            public boolean f77058h;

                            @Override // okio.ForwardingSource, java.io.Closeable, java.lang.AutoCloseable
                            public final void close() {
                                super.close();
                                if (this.f77058h) {
                                    return;
                                }
                                this.f77058h = true;
                                DiskLruCache diskLruCache2 = diskLruCache;
                                DiskLruCache.Entry entry = this;
                                synchronized (diskLruCache2) {
                                    int i4 = entry.f77055h - 1;
                                    entry.f77055h = i4;
                                    if (i4 == 0 && entry.f77054f) {
                                        diskLruCache2.t(entry);
                                    }
                                }
                            }
                        };
                    }
                    arrayList.add(sourceR);
                }
                return new Snapshot(this.f77057j, this.f77050a, this.f77056i, arrayList, jArr);
            } catch (FileNotFoundException unused) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    _UtilCommonKt.b((Source) it.next());
                }
                try {
                    diskLruCache.t(this);
                    return null;
                } catch (IOException unused2) {
                    return null;
                }
            }
        }
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0016\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B/\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lokhttp3/internal/cache/DiskLruCache$Snapshot;", "Ljava/io/Closeable;", "", ConfigurationName.KEY, "", "sequenceNumber", "", "Lokio/Source;", "sources", "", "lengths", "<init>", "(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;JLjava/util/List;[J)V", "okhttp"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class Snapshot implements Closeable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f77061b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f77062c;
        public final List d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ DiskLruCache f77063e;

        public Snapshot(DiskLruCache diskLruCache, String str, long j2, List<? extends Source> list, long[] jArr) {
            str.getClass();
            list.getClass();
            jArr.getClass();
            this.f77063e = diskLruCache;
            this.f77061b = str;
            this.f77062c = j2;
            this.d = list;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                _UtilCommonKt.b((Source) it.next());
            }
        }
    }

    static {
        new Companion(null);
        w = "journal";
        x = "journal.tmp";
        y = "journal.bkp";
        z = "libcore.io.DiskLruCache";
        A = "1";
        B = -1L;
        C = new Regex("[a-z0-9_-]{1,120}");
        D = "CLEAN";
        E = "DIRTY";
        F = "REMOVE";
        G = "READ";
    }

    /* JADX WARN: Type inference failed for: r5v4, types: [okhttp3.internal.cache.DiskLruCache$cleanupTask$1] */
    public DiskLruCache(FileSystem fileSystem, Path path, int i2, int i3, long j2, TaskRunner taskRunner) {
        fileSystem.getClass();
        path.getClass();
        taskRunner.getClass();
        this.f77039b = path;
        this.f77040c = i2;
        this.d = i3;
        this.f77041e = new DiskLruCache$fileSystem$1(fileSystem);
        this.f77042f = j2;
        this.l = new LinkedHashMap(0, 0.75f, true);
        this.u = taskRunner.d();
        final String strR = n00.r(_UtilJvmKt.f77019b, " Cache", new StringBuilder());
        this.v = new Task(strR) { // from class: okhttp3.internal.cache.DiskLruCache$cleanupTask$1
            @Override // okhttp3.internal.concurrent.Task
            public final long runOnce() {
                DiskLruCache diskLruCache = this.f77064a;
                synchronized (diskLruCache) {
                    try {
                        if (!diskLruCache.p || diskLruCache.q) {
                            return -1L;
                        }
                        try {
                            diskLruCache.u();
                        } catch (IOException unused) {
                            diskLruCache.r = true;
                        }
                        try {
                            if (diskLruCache.o()) {
                                diskLruCache.s();
                                diskLruCache.m = 0;
                            }
                        } catch (IOException unused2) {
                            diskLruCache.s = true;
                            RealBufferedSink realBufferedSink = diskLruCache.f77046k;
                            if (realBufferedSink != null) {
                                _UtilCommonKt.b(realBufferedSink);
                            }
                            diskLruCache.f77046k = new RealBufferedSink(Okio.a());
                        }
                        return -1L;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        if (j2 <= 0) {
            md.n("maxSize <= 0");
            throw null;
        }
        if (i3 <= 0) {
            md.n("valueCount <= 0");
            throw null;
        }
        this.g = path.e(w);
        this.f77043h = path.e(x);
        this.f77044i = path.e(y);
    }

    public static void w(String str) {
        if (C.f(str)) {
            return;
        }
        b21.n(d21.d('\"', "keys must match regex [a-z0-9_-]{1,120}: \"", str));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.p && !this.q) {
                Collection collectionValues = this.l.values();
                collectionValues.getClass();
                for (Entry entry : (Entry[]) collectionValues.toArray(new Entry[0])) {
                    entry.getClass();
                    Editor editor = entry.g;
                    if (editor != null) {
                        editor.c();
                    }
                }
                u();
                RealBufferedSink realBufferedSink = this.f77046k;
                if (realBufferedSink != null) {
                    _UtilCommonKt.b(realBufferedSink);
                }
                this.f77046k = null;
                this.q = true;
                return;
            }
            this.q = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.Flushable
    public final synchronized void flush() {
        if (this.p) {
            h();
            u();
            RealBufferedSink realBufferedSink = this.f77046k;
            realBufferedSink.getClass();
            realBufferedSink.flush();
        }
    }

    public final synchronized void h() {
        if (this.q) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public final synchronized void j(Editor editor, boolean z2) {
        Entry entry = editor.f77047a;
        if (!Intrinsics.c(entry.g, editor)) {
            throw new IllegalStateException("Check failed.");
        }
        if (z2 && !entry.f77053e) {
            int i2 = this.d;
            for (int i3 = 0; i3 < i2; i3++) {
                boolean[] zArr = editor.f77048b;
                zArr.getClass();
                if (!zArr[i3]) {
                    editor.a();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i3);
                }
                if (!this.f77041e.k((Path) entry.d.get(i3))) {
                    editor.a();
                    return;
                }
            }
        }
        int i4 = this.d;
        for (int i5 = 0; i5 < i4; i5++) {
            Path path = (Path) entry.d.get(i5);
            if (!z2 || entry.f77054f) {
                _UtilCommonKt.d(this.f77041e, path);
            } else if (this.f77041e.k(path)) {
                Path path2 = (Path) entry.f77052c.get(i5);
                this.f77041e.d(path, path2);
                long j2 = entry.f77051b[i5];
                Long l = this.f77041e.n(path2).d;
                long jLongValue = l != null ? l.longValue() : 0L;
                entry.f77051b[i5] = jLongValue;
                this.f77045j = (this.f77045j - j2) + jLongValue;
            }
        }
        entry.g = null;
        if (entry.f77054f) {
            t(entry);
            return;
        }
        this.m++;
        RealBufferedSink realBufferedSink = this.f77046k;
        realBufferedSink.getClass();
        if (entry.f77053e || z2) {
            entry.f77053e = true;
            realBufferedSink.r0(D);
            realBufferedSink.writeByte(32);
            realBufferedSink.r0(entry.f77050a);
            for (long j3 : entry.f77051b) {
                realBufferedSink.writeByte(32);
                realBufferedSink.F0(j3);
            }
            realBufferedSink.writeByte(10);
            if (z2) {
                long j4 = this.t;
                this.t = 1 + j4;
                entry.f77056i = j4;
            }
        } else {
            this.l.remove(entry.f77050a);
            realBufferedSink.r0(F);
            realBufferedSink.writeByte(32);
            realBufferedSink.r0(entry.f77050a);
            realBufferedSink.writeByte(10);
        }
        realBufferedSink.flush();
        if (this.f77045j > this.f77042f || o()) {
            this.u.d(this.v, 0L);
        }
    }

    public final synchronized Editor k(long j2, String str) {
        str.getClass();
        n();
        h();
        w(str);
        Entry entry = (Entry) this.l.get(str);
        if (j2 != B && (entry == null || entry.f77056i != j2)) {
            return null;
        }
        if ((entry != null ? entry.g : null) != null) {
            return null;
        }
        if (entry != null && entry.f77055h != 0) {
            return null;
        }
        if (!this.r && !this.s) {
            RealBufferedSink realBufferedSink = this.f77046k;
            realBufferedSink.getClass();
            realBufferedSink.r0(E);
            realBufferedSink.writeByte(32);
            realBufferedSink.r0(str);
            realBufferedSink.writeByte(10);
            realBufferedSink.flush();
            if (this.n) {
                return null;
            }
            if (entry == null) {
                entry = new Entry(this, str);
                this.l.put(str, entry);
            }
            Editor editor = new Editor(this, entry);
            entry.g = editor;
            return editor;
        }
        this.u.d(this.v, 0L);
        return null;
    }

    public final synchronized Snapshot m(String str) {
        str.getClass();
        n();
        h();
        w(str);
        Entry entry = (Entry) this.l.get(str);
        if (entry == null) {
            return null;
        }
        Snapshot snapshotA = entry.a();
        if (snapshotA == null) {
            return null;
        }
        this.m++;
        RealBufferedSink realBufferedSink = this.f77046k;
        realBufferedSink.getClass();
        realBufferedSink.r0(G);
        realBufferedSink.writeByte(32);
        realBufferedSink.r0(str);
        realBufferedSink.writeByte(10);
        if (o()) {
            this.u.d(this.v, 0L);
        }
        return snapshotA;
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0066 A[Catch: all -> 0x0027, TRY_ENTER, TryCatch #2 {all -> 0x0027, blocks: (B:4:0x0003, B:8:0x000b, B:10:0x0015, B:13:0x0023, B:16:0x002a, B:17:0x002f, B:38:0x006c, B:40:0x0078, B:50:0x00be, B:44:0x0083, B:46:0x00b7, B:48:0x00bb, B:49:0x00bd, B:37:0x0066, B:53:0x00c5, B:28:0x0055, B:25:0x0050, B:45:0x00ad, B:19:0x0041), top: B:59:0x0003, inners: #1, #3, #4, #8 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x00c5 A[Catch: all -> 0x0027, TRY_ENTER, TryCatch #2 {all -> 0x0027, blocks: (B:4:0x0003, B:8:0x000b, B:10:0x0015, B:13:0x0023, B:16:0x002a, B:17:0x002f, B:38:0x006c, B:40:0x0078, B:50:0x00be, B:44:0x0083, B:46:0x00b7, B:48:0x00bb, B:49:0x00bd, B:37:0x0066, B:53:0x00c5, B:28:0x0055, B:25:0x0050, B:45:0x00ad, B:19:0x0041), top: B:59:0x0003, inners: #1, #3, #4, #8 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0078 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public final synchronized void n() {
        boolean z2;
        try {
            TimeZone timeZone = _UtilJvmKt.f77018a;
            if (this.p) {
                return;
            }
            if (this.f77041e.k(this.f77044i)) {
                boolean zK = this.f77041e.k(this.g);
                DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.f77041e;
                Path path = this.f77044i;
                if (zK) {
                    diskLruCache$fileSystem$1.j(path);
                } else {
                    diskLruCache$fileSystem$1.d(path, this.g);
                }
            }
            DiskLruCache$fileSystem$1 diskLruCache$fileSystem$2 = this.f77041e;
            Path path2 = this.f77044i;
            byte[] bArr = _UtilCommonKt.f77016a;
            diskLruCache$fileSystem$2.getClass();
            path2.getClass();
            Sink sinkQ = diskLruCache$fileSystem$2.q(path2, false);
            try {
                diskLruCache$fileSystem$2.d.h(path2);
                if (sinkQ != null) {
                    try {
                        sinkQ.close();
                    } catch (Throwable unused) {
                    }
                }
                z2 = true;
            } catch (IOException unused2) {
                if (sinkQ != null) {
                    try {
                        sinkQ.close();
                    } catch (Throwable th) {
                        th = th;
                        th = th;
                        if (th != null) {
                            throw th;
                        }
                        diskLruCache$fileSystem$2.d.h(path2);
                        z2 = false;
                        this.o = z2;
                        if (this.f77041e.k(this.g)) {
                            try {
                                q();
                                p();
                                this.p = true;
                                return;
                            } catch (IOException e2) {
                                Platform.f77312a.getClass();
                                Platform.f77313b.e(5, "DiskLruCache " + this.f77039b + " is corrupt: " + e2.getMessage() + ", removing", e2);
                                try {
                                    close();
                                    _UtilCommonKt.c(this.f77041e, this.f77039b);
                                    this.q = false;
                                    s();
                                    this.p = true;
                                } catch (Throwable th2) {
                                    this.q = false;
                                    throw th2;
                                }
                            }
                        }
                        s();
                        this.p = true;
                    }
                }
                th = null;
                th = th;
                if (th != null) {
                    throw th;
                }
                diskLruCache$fileSystem$2.d.h(path2);
                z2 = false;
            } catch (Throwable th3) {
                th = th3;
                if (sinkQ != null) {
                    try {
                        sinkQ.close();
                    } catch (Throwable th4) {
                        ExceptionsKt.a(th, th4);
                    }
                }
                if (th != null) {
                    throw th;
                }
                diskLruCache$fileSystem$2.d.h(path2);
                z2 = false;
                this.o = z2;
                if (this.f77041e.k(this.g)) {
                    q();
                    p();
                    this.p = true;
                    return;
                }
                s();
                this.p = true;
            }
            this.o = z2;
            if (this.f77041e.k(this.g)) {
                q();
                p();
                this.p = true;
                return;
            }
            s();
            this.p = true;
        } catch (Throwable th5) {
            throw th5;
        }
    }

    public final boolean o() {
        int i2 = this.m;
        return i2 >= 2000 && i2 >= this.l.size();
    }

    public final void p() {
        Path path = this.f77043h;
        DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.f77041e;
        _UtilCommonKt.d(diskLruCache$fileSystem$1, path);
        Iterator it = this.l.values().iterator();
        while (it.hasNext()) {
            Object next = it.next();
            next.getClass();
            Entry entry = (Entry) next;
            Editor editor = entry.g;
            int i2 = this.d;
            int i3 = 0;
            if (editor == null) {
                while (i3 < i2) {
                    this.f77045j += entry.f77051b[i3];
                    i3++;
                }
            } else {
                entry.g = null;
                while (i3 < i2) {
                    _UtilCommonKt.d(diskLruCache$fileSystem$1, (Path) entry.f77052c.get(i3));
                    _UtilCommonKt.d(diskLruCache$fileSystem$1, (Path) entry.d.get(i3));
                    i3++;
                }
                it.remove();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00d5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x00d6  */
    public final void q() throws Throwable {
        DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.f77041e;
        Path path = this.g;
        RealBufferedSource realBufferedSourceC = Okio.c(diskLruCache$fileSystem$1.r(path));
        try {
            String strZ = realBufferedSourceC.Z(Long.MAX_VALUE);
            String strZ2 = realBufferedSourceC.Z(Long.MAX_VALUE);
            String strZ3 = realBufferedSourceC.Z(Long.MAX_VALUE);
            String strZ4 = realBufferedSourceC.Z(Long.MAX_VALUE);
            String strZ5 = realBufferedSourceC.Z(Long.MAX_VALUE);
            if (!Intrinsics.c(z, strZ) || !Intrinsics.c(A, strZ2) || !Intrinsics.c(String.valueOf(this.f77040c), strZ3) || !Intrinsics.c(String.valueOf(this.d), strZ4) || strZ5.length() > 0) {
                throw new IOException("unexpected journal header: [" + strZ + ", " + strZ2 + ", " + strZ4 + ", " + strZ5 + ']');
            }
            int i2 = 0;
            while (true) {
                try {
                    r(realBufferedSourceC.Z(Long.MAX_VALUE));
                    i2++;
                } catch (EOFException unused) {
                    this.m = i2 - this.l.size();
                    if (realBufferedSourceC.Z0()) {
                        RealBufferedSink realBufferedSink = this.f77046k;
                        if (realBufferedSink != null) {
                            _UtilCommonKt.b(realBufferedSink);
                        }
                        diskLruCache$fileSystem$1.getClass();
                        path.getClass();
                        this.f77046k = new RealBufferedSink(new FaultHidingSink(diskLruCache$fileSystem$1.c(path), new ck(this, 12)));
                    } else {
                        s();
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

    public final void r(String str) throws IOException {
        String strSubstring;
        int iU = StringsKt.u(str, ' ', 0, 6);
        if (iU == -1) {
            az.o("unexpected journal line: ".concat(str));
            return;
        }
        int i2 = iU + 1;
        int iU2 = StringsKt.u(str, ' ', i2, 4);
        LinkedHashMap linkedHashMap = this.l;
        if (iU2 == -1) {
            strSubstring = str.substring(i2);
            String str2 = F;
            if (iU == str2.length() && StringsKt.P(str, str2, false)) {
                linkedHashMap.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i2, iU2);
        }
        Entry entry = (Entry) linkedHashMap.get(strSubstring);
        if (entry == null) {
            entry = new Entry(this, strSubstring);
            linkedHashMap.put(strSubstring, entry);
        }
        if (iU2 != -1) {
            String str3 = D;
            if (iU == str3.length() && StringsKt.P(str, str3, false)) {
                List listM = StringsKt.M(str.substring(iU2 + 1), new char[]{' '});
                entry.f77053e = true;
                entry.g = null;
                if (listM.size() != entry.f77057j.d) {
                    a61.n(listM, "unexpected journal line: ");
                    return;
                }
                try {
                    int size = listM.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        entry.f77051b[i3] = Long.parseLong((String) listM.get(i3));
                    }
                    return;
                } catch (NumberFormatException unused) {
                    a61.n(listM, "unexpected journal line: ");
                    return;
                }
            }
        }
        if (iU2 == -1) {
            String str4 = E;
            if (iU == str4.length() && StringsKt.P(str, str4, false)) {
                entry.g = new Editor(this, entry);
                return;
            }
        }
        if (iU2 == -1) {
            String str5 = G;
            if (iU == str5.length() && StringsKt.P(str, str5, false)) {
                return;
            }
        }
        az.o("unexpected journal line: ".concat(str));
    }

    public final synchronized void s() {
        Throwable th;
        try {
            RealBufferedSink realBufferedSink = this.f77046k;
            if (realBufferedSink != null) {
                realBufferedSink.close();
            }
            RealBufferedSink realBufferedSinkB = Okio.b(this.f77041e.q(this.f77043h, false));
            try {
                realBufferedSinkB.r0(z);
                realBufferedSinkB.writeByte(10);
                realBufferedSinkB.r0(A);
                realBufferedSinkB.writeByte(10);
                realBufferedSinkB.F0(this.f77040c);
                realBufferedSinkB.writeByte(10);
                realBufferedSinkB.F0(this.d);
                realBufferedSinkB.writeByte(10);
                realBufferedSinkB.writeByte(10);
                for (Object obj : this.l.values()) {
                    obj.getClass();
                    Entry entry = (Entry) obj;
                    if (entry.g != null) {
                        realBufferedSinkB.r0(E);
                        realBufferedSinkB.writeByte(32);
                        realBufferedSinkB.r0(entry.f77050a);
                        realBufferedSinkB.writeByte(10);
                    } else {
                        realBufferedSinkB.r0(D);
                        realBufferedSinkB.writeByte(32);
                        realBufferedSinkB.r0(entry.f77050a);
                        for (long j2 : entry.f77051b) {
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
            boolean zK = this.f77041e.k(this.g);
            DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1 = this.f77041e;
            if (zK) {
                diskLruCache$fileSystem$1.d(this.g, this.f77044i);
                this.f77041e.d(this.f77043h, this.g);
                _UtilCommonKt.d(this.f77041e, this.f77044i);
            } else {
                diskLruCache$fileSystem$1.d(this.f77043h, this.g);
            }
            RealBufferedSink realBufferedSink2 = this.f77046k;
            if (realBufferedSink2 != null) {
                _UtilCommonKt.b(realBufferedSink2);
            }
            DiskLruCache$fileSystem$1 diskLruCache$fileSystem$2 = this.f77041e;
            Path path = this.g;
            diskLruCache$fileSystem$2.getClass();
            path.getClass();
            this.f77046k = new RealBufferedSink(new FaultHidingSink(diskLruCache$fileSystem$2.c(path), new ck(this, 12)));
            this.n = false;
            this.s = false;
        } catch (Throwable th5) {
            throw th5;
        }
    }

    public final void t(Entry entry) {
        RealBufferedSink realBufferedSink;
        entry.getClass();
        String str = entry.f77050a;
        if (!this.o) {
            if (entry.f77055h > 0 && (realBufferedSink = this.f77046k) != null) {
                realBufferedSink.r0(E);
                realBufferedSink.writeByte(32);
                realBufferedSink.r0(str);
                realBufferedSink.writeByte(10);
                realBufferedSink.flush();
            }
            if (entry.f77055h > 0 || entry.g != null) {
                entry.f77054f = true;
                return;
            }
        }
        Editor editor = entry.g;
        if (editor != null) {
            editor.c();
        }
        for (int i2 = 0; i2 < this.d; i2++) {
            _UtilCommonKt.d(this.f77041e, (Path) entry.f77052c.get(i2));
            long j2 = this.f77045j;
            long[] jArr = entry.f77051b;
            this.f77045j = j2 - jArr[i2];
            jArr[i2] = 0;
        }
        this.m++;
        RealBufferedSink realBufferedSink2 = this.f77046k;
        if (realBufferedSink2 != null) {
            realBufferedSink2.r0(F);
            realBufferedSink2.writeByte(32);
            realBufferedSink2.r0(str);
            realBufferedSink2.writeByte(10);
        }
        this.l.remove(str);
        if (o()) {
            this.u.d(this.v, 0L);
        }
    }

    public final void u() {
        while (this.f77045j > this.f77042f) {
            for (Object obj : this.l.values()) {
                obj.getClass();
                Entry entry = (Entry) obj;
                if (!entry.f77054f) {
                    t(entry);
                }
            }
            return;
        }
        this.r = false;
    }
}
