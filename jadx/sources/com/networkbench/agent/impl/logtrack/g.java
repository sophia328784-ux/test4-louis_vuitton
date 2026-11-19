package com.networkbench.agent.impl.logtrack;

import android.os.StatFs;
import android.text.TextUtils;
import defpackage.n00;
import defpackage.o60;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes2.dex */
class g extends Thread {
    private static final String u = "LoganThread";
    private static final int v = 60000;
    private static final long w = 86400000;
    private static final int x = 1024;
    private long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f37495e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private File f37496f;
    private boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f37497h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private f f37498i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ConcurrentLinkedQueue<e> f37499j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f37500k;
    private String l;
    private long m;
    private long n;
    private long o;
    private String p;
    private String q;
    private int r;
    private ExecutorService t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f37492a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f37493b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f37494c = true;
    private ConcurrentLinkedQueue<e> s = new ConcurrentLinkedQueue<>();

    public class a implements OnLoganProtocolStatus {
        public a() {
        }

        @Override // com.networkbench.agent.impl.logtrack.OnLoganProtocolStatus
        public void loganProtocolStatus(String str, int i2) {
            Logan.a(str, i2);
        }
    }

    public class b implements SendLogRunnable.OnSendLogCallBackListener {
        public b() {
        }

        @Override // com.networkbench.agent.impl.logtrack.SendLogRunnable.OnSendLogCallBackListener
        public void onCallBack(int i2) {
            synchronized (g.this.f37493b) {
                try {
                    g.this.r = i2;
                    if (i2 == 10002) {
                        g.this.f37499j.addAll(g.this.s);
                        g.this.s.clear();
                        g.this.d();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public class c implements ThreadFactory {
        public c() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(Thread.currentThread().getThreadGroup(), runnable, "logan-thread-send-log", 0L);
            if (thread.isDaemon()) {
                thread.setDaemon(false);
            }
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    public g(ConcurrentLinkedQueue<e> concurrentLinkedQueue, String str, String str2, long j2, long j3, long j4, String str3, String str4) {
        this.f37499j = concurrentLinkedQueue;
        this.f37500k = str;
        this.l = str2;
        this.m = j2;
        this.n = j3;
        this.o = j4;
        this.p = str3;
        this.q = str4;
    }

    /* JADX WARN: Code duplicated, block: B:77:0x0089 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:81:0x0093 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:? A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v10, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19, types: [java.io.FileOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v9 */
    private boolean a(String str, String str2) throws Throwable {
        FileInputStream fileInputStream;
        boolean z = false;
        FileInputStream fileInputStream2 = null;
        ?? r0 = 0;
        fileInputStream2 = null;
        fileInputStream2 = null;
        fileInputStream2 = null;
        try {
            try {
                try {
                    fileInputStream = new FileInputStream(new File((String) str));
                    try {
                        str = new FileOutputStream(new File(str2));
                        try {
                            byte[] bArr = new byte[1024];
                            while (true) {
                                int i2 = fileInputStream.read(bArr);
                                if (i2 >= 0) {
                                    str.write(bArr, 0, i2);
                                    str.flush();
                                } else {
                                    try {
                                        break;
                                    } catch (Exception e2) {
                                        e2.printStackTrace();
                                    }
                                }
                            }
                            fileInputStream.close();
                            z = true;
                            str.close();
                        } catch (FileNotFoundException e3) {
                            e = e3;
                            fileInputStream2 = fileInputStream;
                            str = str;
                            e.printStackTrace();
                            if (fileInputStream2 != null) {
                                try {
                                    fileInputStream2.close();
                                } catch (Exception e4) {
                                    e4.printStackTrace();
                                }
                            }
                            if (str != 0) {
                                str.close();
                            }
                        } catch (IOException e5) {
                            e = e5;
                            fileInputStream2 = fileInputStream;
                            str = str;
                            e.printStackTrace();
                            if (fileInputStream2 != null) {
                                try {
                                    fileInputStream2.close();
                                } catch (Exception e6) {
                                    e6.printStackTrace();
                                }
                            }
                            if (str != 0) {
                                str.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            r0 = str;
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Exception e7) {
                                    e7.printStackTrace();
                                }
                            }
                            if (r0 != 0) {
                                throw th;
                            }
                            try {
                                r0.close();
                                throw th;
                            } catch (Exception e8) {
                                e8.printStackTrace();
                                throw th;
                            }
                        }
                    } catch (FileNotFoundException e9) {
                        e = e9;
                        str = 0;
                    } catch (IOException e10) {
                        e = e10;
                        str = 0;
                    } catch (Throwable th2) {
                        th = th2;
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        if (r0 != 0) {
                            throw th;
                        }
                        r0.close();
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileInputStream = fileInputStream2;
                    r0 = str;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    if (r0 != 0) {
                        throw th;
                    }
                    r0.close();
                    throw th;
                }
            } catch (FileNotFoundException e11) {
                e = e11;
                str = 0;
            } catch (IOException e12) {
                e = e12;
                str = 0;
            } catch (Throwable th4) {
                th = th4;
                str = 0;
                fileInputStream = fileInputStream2;
                r0 = str;
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                if (r0 != 0) {
                    throw th;
                }
                r0.close();
                throw th;
            }
        } catch (Exception e13) {
            e13.printStackTrace();
        }
        return z;
    }

    private boolean b(h hVar) {
        if (!a(hVar.f37505b)) {
            hVar.f37506c = "";
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.l);
        String str = File.separator;
        sb.append(str);
        sb.append(hVar.f37505b);
        String string = sb.toString();
        if (!hVar.f37505b.equals(String.valueOf(j.a()))) {
            hVar.f37506c = string;
            return true;
        }
        a();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(this.l);
        sb2.append(str);
        String strR = n00.r(hVar.f37505b, j.f37510a, sb2);
        if (!a(string, strR)) {
            return false;
        }
        hVar.f37506c = strR;
        return true;
    }

    private boolean c() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long j2 = this.d;
        return j2 < jCurrentTimeMillis && j2 + w > jCurrentTimeMillis;
    }

    public void d() {
        if (this.f37495e) {
            return;
        }
        synchronized (this.f37492a) {
            this.f37492a.notify();
        }
    }

    public void e() {
        this.f37494c = false;
        if (this.f37495e) {
            return;
        }
        synchronized (this.f37492a) {
            this.f37492a.notify();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        super.run();
        while (this.f37494c) {
            synchronized (this.f37492a) {
                try {
                    this.f37495e = true;
                    try {
                        e eVarPoll = this.f37499j.poll();
                        if (eVarPoll == null) {
                            this.f37495e = false;
                            this.f37492a.wait();
                            this.f37495e = true;
                        } else {
                            a(eVarPoll);
                        }
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                        this.f37495e = false;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private boolean b() {
        try {
            StatFs statFs = new StatFs(this.l);
            return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize()) > this.o;
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    private void a(e eVar) {
        if (eVar == null || !eVar.a()) {
            return;
        }
        if (this.f37498i == null) {
            f fVarA = f.a();
            this.f37498i = fVarA;
            fVarA.setOnLoganProtocolStatus(new a());
            this.f37498i.logan_init(this.f37500k, this.l, (int) this.n, this.p, this.q);
            this.f37498i.logan_debug(Logan.f37440c);
        }
        e.a aVar = eVar.f37483a;
        if (aVar == e.a.WRITE) {
            a(eVar.f37484b);
            return;
        }
        if (aVar == e.a.SEND) {
            if (eVar.f37485c.d != null) {
                synchronized (this.f37493b) {
                    try {
                        if (this.r == 10001) {
                            this.s.add(eVar);
                        } else {
                            a(eVar.f37485c);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            }
            return;
        }
        if (aVar == e.a.FLUSH) {
            a();
        }
    }

    private void a() {
        f fVar = this.f37498i;
        if (fVar != null) {
            fVar.logan_flush();
        }
    }

    public void a(int i2, long j2) {
        File[] fileArrA;
        File file = new File(this.l);
        if (!file.isDirectory() || (fileArrA = j.a(file)) == null || fileArrA.length <= 1) {
            return;
        }
        j.a(fileArrA);
        int i3 = 0;
        boolean z = false;
        for (File file2 : fileArrA) {
            if (file2.getName().equals(Long.toString(j2))) {
                z = true;
            }
        }
        if (fileArrA.length >= i2) {
            if (fileArrA.length == i2 && z) {
                return;
            }
            while (i3 < (fileArrA.length - i2) + 1) {
                if (!fileArrA[i3].getName().equals(Long.toString(j2))) {
                    if (Logan.f37440c) {
                        fileArrA[i3].getName();
                    }
                    fileArrA[i3].delete();
                } else {
                    i3++;
                    if (fileArrA.length > i3) {
                        if (Logan.f37440c) {
                            fileArrA[i3].getName();
                        }
                        fileArrA[i3].delete();
                    }
                }
                i3++;
            }
        }
    }

    private void a(long j2) {
        String[] list;
        File file = new File(this.l);
        if (!file.isDirectory() || (list = file.list()) == null) {
            return;
        }
        for (String str : list) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    String[] strArrSplit = str.split("\\.");
                    if (strArrSplit.length > 0 && Long.valueOf(strArrSplit[0]).longValue() <= j2 && strArrSplit.length == 1) {
                        new File(this.l, str).delete();
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private void a(k kVar) {
        if (this.f37496f == null) {
            this.f37496f = new File(this.l);
        }
        if (!c()) {
            long jA = j.a();
            a(7, jA);
            this.d = jA;
            this.f37498i.logan_open(String.valueOf(jA));
        }
        if (System.currentTimeMillis() - this.f37497h > 60000) {
            this.g = b();
        }
        this.f37497h = System.currentTimeMillis();
        if (this.g) {
            this.f37498i.logan_write(kVar.f37518i, kVar.f37512a, kVar.f37515e, kVar.g, kVar.f37517h, kVar.d, o60.j(kVar.f37514c, "", new StringBuilder()), kVar.f37519j, kVar.f37520k);
        }
    }

    private void a(h hVar) {
        if (TextUtils.isEmpty(this.l) || hVar == null || !hVar.a() || !b(hVar)) {
            return;
        }
        hVar.d.a(hVar);
        hVar.d.a(new b());
        this.r = SendLogRunnable.SENDING;
        if (this.t == null) {
            this.t = Executors.newSingleThreadExecutor(new c());
        }
        this.t.execute(hVar.d);
    }

    private boolean a(String str) {
        if (TextUtils.isEmpty(this.l)) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(this.l);
        File file = new File(n00.r(File.separator, str, sb));
        return file.exists() && file.isFile();
    }
}
