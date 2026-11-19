package com.networkbench.nbslens.nbsnativecrashlib;

import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Date;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.internal.ws.RealWebSocket;

/* JADX INFO: loaded from: classes2.dex */
class f {
    private static final f m = new f();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f38756a = "placeholder";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f38757b = ".clean.nbscrash";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f38758c = ".dirty.nbscrash";
    private String d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f38759e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f38760f = 0;
    private int g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f38761h = 1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f38762i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f38763j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f38764k = 0;
    private AtomicInteger l = new AtomicInteger();

    public class a implements FilenameFilter {
        public a() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(f.this.f38756a);
            sb.append("_");
            return str.startsWith(sb.toString()) && str.endsWith(f.this.f38758c);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.a();
        }
    }

    public class c extends TimerTask {
        public c() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            f.this.a();
        }
    }

    public class d implements FilenameFilter {
        public d() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(f.this.f38756a);
            sb.append("_");
            return str.startsWith(sb.toString()) && str.endsWith(f.this.f38757b);
        }
    }

    public class e implements FilenameFilter {
        public e() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(f.this.f38756a);
            sb.append("_");
            return str.startsWith(sb.toString()) && str.endsWith(f.this.f38757b);
        }
    }

    /* JADX INFO: renamed from: com.networkbench.nbslens.nbsnativecrashlib.f$f, reason: collision with other inner class name */
    public class C0112f implements FilenameFilter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f38770a;

        public C0112f(String str) {
            this.f38770a = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.startsWith("tombstone_") && str.endsWith(this.f38770a);
        }
    }

    public class g implements Comparator<File> {
        public g() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(File file, File file2) {
            return file.getName().compareTo(file2.getName());
        }
    }

    public class h implements FilenameFilter {
        public h() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(f.this.f38756a);
            sb.append("_");
            return str.startsWith(sb.toString()) && str.endsWith(f.this.f38757b);
        }
    }

    public class i implements FilenameFilter {
        public i() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(f.this.f38756a);
            sb.append("_");
            return str.startsWith(sb.toString()) && str.endsWith(f.this.f38758c);
        }
    }

    public class j implements FilenameFilter {
        public j() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(f.this.f38756a);
            sb.append("_");
            return str.startsWith(sb.toString()) && str.endsWith(f.this.f38757b);
        }
    }

    private f() {
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0080 A[EDGE_INSN: B:49:0x0080->B:28:0x0080 BREAK  A[LOOP:0: B:9:0x0021->B:50:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:? A[LOOP:0: B:9:0x0021->B:50:?, LOOP_END, SYNTHETIC] */
    private void b(File file) {
        File[] fileArrListFiles;
        int i2;
        File[] fileArrListFiles2 = file.listFiles(new h());
        if (fileArrListFiles2 == null || (fileArrListFiles = file.listFiles(new i())) == null) {
            return;
        }
        int length = fileArrListFiles2.length;
        int length2 = fileArrListFiles.length;
        int i3 = 0;
        while (length < this.f38762i) {
            if (length2 <= 0) {
                try {
                    i2 = i3;
                    try {
                        File file2 = new File(String.format(Locale.US, "%s/%s_%020d%s", this.d, this.f38756a, Long.valueOf((new Date().getTime() * 1000) + ((long) c())), this.f38758c));
                        if (file2.createNewFile() && a(file2)) {
                            length++;
                        }
                    } catch (Exception unused) {
                    }
                } catch (Exception unused2) {
                    i2 = i3;
                }
                i3 = i2 + 1;
                if (i3 > this.f38762i * 2) {
                    break;
                }
            } else {
                if (a(fileArrListFiles[length2 - 1])) {
                    length++;
                }
                length2--;
            }
            i2 = i3;
            i3 = i2 + 1;
            if (i3 > this.f38762i * 2) {
                break;
                break;
            }
        }
        if (i3 > 0) {
            fileArrListFiles2 = file.listFiles(new j());
            fileArrListFiles = file.listFiles(new a());
        }
        if (fileArrListFiles2 != null && fileArrListFiles2.length > this.f38762i) {
            for (int i4 = 0; i4 < fileArrListFiles2.length - this.f38762i; i4++) {
                fileArrListFiles2[i4].delete();
            }
        }
        if (fileArrListFiles != null) {
            for (File file3 : fileArrListFiles) {
                file3.delete();
            }
        }
    }

    private void c(File file) {
        a(file, n.m, this.f38760f);
        a(file, n.l, this.f38759e);
        a(file, n.n, this.g);
        a(file, n.o, this.f38761h);
    }

    public void a(String str, int i2, int i3, int i4, int i5, int i6, int i7) {
        File[] fileArrListFiles;
        this.d = str;
        this.f38759e = i2;
        this.f38760f = i3;
        this.g = i4;
        this.f38762i = i5;
        this.f38763j = i6;
        this.f38764k = i7;
        try {
            File file = new File(str);
            if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                int i8 = 0;
                int i9 = 0;
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                int i13 = 0;
                for (File file2 : fileArrListFiles) {
                    if (file2.isFile()) {
                        String name = file2.getName();
                        if (!name.startsWith("tombstone_")) {
                            if (name.startsWith(this.f38756a + "_")) {
                                if (name.endsWith(this.f38757b)) {
                                    i12++;
                                } else if (name.endsWith(this.f38758c)) {
                                    i13++;
                                }
                            }
                        } else if (name.endsWith(n.l)) {
                            i8++;
                        } else if (name.endsWith(n.m)) {
                            i9++;
                        } else if (name.endsWith(n.n)) {
                            i10++;
                        } else if (name.endsWith(n.o)) {
                            i11++;
                        }
                    }
                }
                int i14 = this.f38759e;
                if (i8 <= i14 && i9 <= this.f38760f && i10 <= this.g && i11 <= this.f38761h && i12 == this.f38762i && i13 == 0) {
                    this.f38764k = -1;
                    return;
                }
                if (i8 <= i14 + 10) {
                    int i15 = this.f38760f;
                    if (i9 <= i15 + 10) {
                        int i16 = this.g;
                        if (i10 <= i16 + 10) {
                            int i17 = this.f38761h;
                            if (i11 <= i17 + 10) {
                                int i18 = this.f38762i;
                                if (i12 <= i18 + 10 && i13 <= 10) {
                                    if (i8 > i14 || i9 > i15 || i10 > i16 || i11 > i17 || i12 > i18 || i13 > 0) {
                                        this.f38764k = 0;
                                        return;
                                    }
                                    return;
                                }
                            }
                        }
                    }
                }
                a();
                this.f38764k = -1;
            }
        } catch (Exception e2) {
            NBSNativeCrash.c().a("NBSAgent", "FileManager init failed", e2);
        }
    }

    public boolean d(File file) {
        if (file == null) {
            return false;
        }
        if (this.d == null || this.f38762i <= 0) {
            try {
                return file.delete();
            } catch (Exception unused) {
                return false;
            }
        }
        try {
            File[] fileArrListFiles = new File(this.d).listFiles(new e());
            if (fileArrListFiles != null && fileArrListFiles.length >= this.f38762i) {
                try {
                    return file.delete();
                } catch (Exception unused2) {
                    return false;
                }
            }
            File file2 = new File(String.format(Locale.US, "%s/%s_%020d%s", this.d, this.f38756a, Long.valueOf((new Date().getTime() * 1000) + ((long) c())), this.f38758c));
            if (file.renameTo(file2)) {
                return a(file2);
            }
            try {
                return file.delete();
            } catch (Exception unused3) {
                return false;
            }
        } catch (Exception e2) {
            NBSNativeCrash.c().a("NBSAgent", "FileManager recycleLogFile failed", e2);
            try {
                return file.delete();
            } catch (Exception unused4) {
                return false;
            }
        }
    }

    public boolean e() {
        if (!n.a(this.d)) {
            return false;
        }
        try {
            return a(new File(this.d), n.n, this.g);
        } catch (Exception e2) {
            NBSNativeCrash.c().a("NBSAgent", "FileManager maintainAnr failed", e2);
            return false;
        }
    }

    private int c() {
        int iIncrementAndGet = this.l.incrementAndGet();
        if (iIncrementAndGet >= 999) {
            this.l.set(0);
        }
        return iIncrementAndGet;
    }

    public void d() {
        int i2;
        if (this.d == null || (i2 = this.f38764k) < 0) {
            return;
        }
        try {
            if (i2 == 0) {
                new Thread(new b(), "nbscrash_file_mgr").start();
            } else {
                new Timer("nbscrash_file_mgr").schedule(new c(), this.f38764k);
            }
        } catch (Exception e2) {
            NBSNativeCrash.c().a("NBSAgent", "FileManager maintain start failed", e2);
        }
    }

    public static f b() {
        return m;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004b A[Catch: Exception -> 0x0055, TRY_LEAVE, TryCatch #0 {Exception -> 0x0055, blocks: (B:19:0x0044, B:22:0x004b), top: B:27:0x0044 }] */
    public File a(String str) {
        String str2 = this.d;
        if (str2 == null || !n.a(str2)) {
            return null;
        }
        File file = new File(str);
        File[] fileArrListFiles = new File(this.d).listFiles(new d());
        if (fileArrListFiles != null) {
            for (int length = fileArrListFiles.length; length > 0; length--) {
                File file2 = fileArrListFiles[length - 1];
                try {
                    if (!file2.renameTo(file)) {
                        file2.delete();
                    }
                } catch (Exception e2) {
                    NBSNativeCrash.c().a("NBSAgent", "FileManager createLogFile by renameTo failed", e2);
                }
            }
            try {
                if (!file.createNewFile()) {
                    NBSNativeCrash.c().a("NBSAgent", "FileManager createLogFile by createNewFile failed, file already exists");
                    return null;
                }
            } catch (Exception e3) {
                NBSNativeCrash.c().a("NBSAgent", "FileManager createLogFile by createNewFile failed", e3);
                return null;
            }
        } else if (!file.createNewFile()) {
            NBSNativeCrash.c().a("NBSAgent", "FileManager createLogFile by createNewFile failed, file already exists");
            return null;
        }
        return file;
    }

    public boolean a(String str, String str2) throws Throwable {
        Exception exc;
        Throwable th;
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(str, "rws");
                try {
                    long j2 = 0;
                    if (randomAccessFile2.length() > 0) {
                        MappedByteBuffer map = randomAccessFile2.getChannel().map(FileChannel.MapMode.READ_ONLY, 0L, randomAccessFile2.length());
                        long length = randomAccessFile2.length();
                        while (length > 0 && map.get(((int) length) - 1) == 0) {
                            length--;
                        }
                        j2 = length;
                    }
                    randomAccessFile2.seek(j2);
                    randomAccessFile2.write(str2.getBytes("UTF-8"));
                    try {
                        randomAccessFile2.close();
                    } catch (Exception unused) {
                    }
                    return true;
                } catch (Exception e2) {
                    exc = e2;
                    randomAccessFile = randomAccessFile2;
                    NBSNativeCrash.c().a("NBSAgent", "FileManager appendText failed", exc);
                    if (randomAccessFile == null) {
                        return false;
                    }
                    try {
                        randomAccessFile.close();
                        return false;
                    } catch (Exception unused2) {
                        return false;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    randomAccessFile = randomAccessFile2;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                            throw th;
                        } catch (Exception unused3) {
                            throw th;
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e3) {
            exc = e3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        if (n.a(this.d)) {
            File file = new File(this.d);
            try {
                c(file);
            } catch (Exception e2) {
                NBSNativeCrash.c().a("NBSAgent", "FileManager doMaintainTombstone failed", e2);
            }
            try {
                b(file);
            } catch (Exception e3) {
                NBSNativeCrash.c().a("NBSAgent", "FileManager doMaintainPlaceholder failed", e3);
            }
        }
    }

    private boolean a(File file, String str, int i2) {
        File[] fileArrListFiles = file.listFiles(new C0112f(str));
        boolean z = true;
        if (fileArrListFiles != null && fileArrListFiles.length > i2) {
            if (i2 > 0) {
                Arrays.sort(fileArrListFiles, new g());
            }
            for (int i3 = 0; i3 < fileArrListFiles.length - i2; i3++) {
                if (!d(fileArrListFiles[i3])) {
                    z = false;
                }
            }
        }
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private boolean a(File file) throws Throwable {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2 = null;
        boolean zRenameTo = false;
        try {
            try {
                try {
                    byte[] bArr = new byte[1024];
                    Arrays.fill(bArr, (byte) 0);
                    long j2 = this.f38763j;
                    long length = file.length();
                    if (length > this.f38763j * 1024) {
                        j2 = length / RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE;
                        if (length % RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE != 0) {
                            j2++;
                        }
                    }
                    fileOutputStream = new FileOutputStream(file.getAbsoluteFile(), false);
                    int i2 = 0;
                    while (i2 < j2) {
                        i2++;
                        if (i2 == j2) {
                            try {
                                if (length % RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE != 0) {
                                    fileOutputStream.write(bArr, 0, (int) (length % RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE));
                                }
                            } catch (Exception e2) {
                                e = e2;
                                fileOutputStream2 = fileOutputStream;
                                NBSNativeCrash.c().a("NBSAgent", "FileManager cleanTheDirtyFile failed", e);
                                if (fileOutputStream2 != null) {
                                    fileOutputStream2.close();
                                }
                                if (!zRenameTo) {
                                    try {
                                        file.delete();
                                    } catch (Exception unused) {
                                    }
                                }
                                return zRenameTo;
                            } catch (Throwable th) {
                                th = th;
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (Exception unused2) {
                                    }
                                }
                                throw th;
                            }
                        }
                        fileOutputStream.write(bArr);
                    }
                    fileOutputStream.flush();
                    zRenameTo = file.renameTo(new File(String.format(Locale.US, "%s/%s_%020d%s", this.d, this.f38756a, Long.valueOf((new Date().getTime() * 1000) + ((long) c())), this.f38757b)));
                    fileOutputStream.close();
                } catch (Exception e3) {
                    e = e3;
                }
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = fileOutputStream2;
            }
        } catch (Exception unused3) {
        }
        if (!zRenameTo) {
            file.delete();
        }
        return zRenameTo;
    }
}
