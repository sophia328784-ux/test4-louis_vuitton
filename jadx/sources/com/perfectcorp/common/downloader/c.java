package com.perfectcorp.common.downloader;

import com.dynatrace.android.callback.Callback;
import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.base.Preconditions;
import defpackage.fc;
import defpackage.mt;
import java.io.DataOutput;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.SocketTimeoutException;
import java.net.URI;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
class c extends p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f39190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile int f39191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile int f39192c;
    private volatile boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile int f39193e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile int f39194f;
    private volatile int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Object f39195h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final C0118c.a f39196i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f39197j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final AtomicInteger f39198k;
    private volatile a l;
    private final AtomicInteger m;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f39199a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f39200b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f39201c;

        public a(int i2, int i3, int i4) {
            this.f39199a = i2;
            this.f39200b = i3;
            this.f39201c = i4;
        }
    }

    public static class b extends IOException {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f39202b;

        public b(String str, SocketTimeoutException socketTimeoutException, int i2) {
            super(str, socketTimeoutException);
            this.f39202b = i2;
        }
    }

    /* JADX INFO: renamed from: com.perfectcorp.common.downloader.c$c, reason: collision with other inner class name */
    public static final class C0118c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f39203a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f39204b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List f39205c;

        /* JADX INFO: renamed from: com.perfectcorp.common.downloader.c$c$a */
        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f39206a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public long f39207b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f39208c;
            public final ArrayList d = new ArrayList();

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final ArrayList f39209e = new ArrayList();
        }

        public C0118c(a aVar) {
            this.f39203a = aVar.f39206a;
            this.f39204b = Collections.unmodifiableList(aVar.d);
            this.f39205c = Collections.unmodifiableList(aVar.f39209e);
        }
    }

    private c(p.f fVar, int i2, int i3) {
        super(fVar);
        this.f39190a = new byte[8192];
        this.f39194f = Integer.MAX_VALUE;
        this.g = -1;
        this.f39195h = new Object();
        C0118c.a aVar = new C0118c.a();
        this.f39196i = aVar;
        this.m = new AtomicInteger();
        this.f39197j = i3;
        this.f39198k = new AtomicInteger(i2);
        aVar.f39206a = i2;
    }

    private static int b(int i2, int i3, int i4) {
        if (i2 != i4 - 1) {
            return com.perfectcorp.common.downloader.a.f39185f;
        }
        int i5 = i3 - (i2 * com.perfectcorp.common.downloader.a.f39185f);
        Preconditions.g(i5 >= 0, "length can't be less than 0");
        return i5;
    }

    /* JADX WARN: Code duplicated, block: B:124:0x0240 A[Catch: all -> 0x0248, TRY_ENTER, TryCatch #19 {all -> 0x0248, blocks: (B:124:0x0240, B:125:0x0247, B:128:0x024a, B:129:0x0251), top: B:179:0x023e }] */
    /* JADX WARN: Code duplicated, block: B:128:0x024a A[Catch: all -> 0x0248, TryCatch #19 {all -> 0x0248, blocks: (B:124:0x0240, B:125:0x0247, B:128:0x024a, B:129:0x0251), top: B:179:0x023e }] */
    /* JADX WARN: Code duplicated, block: B:132:0x025d A[Catch: all -> 0x0261, b -> 0x0263, e -> 0x02fa, TryCatch #31 {e -> 0x02fa, blocks: (B:13:0x004a, B:15:0x0053, B:20:0x0080, B:72:0x01b7, B:130:0x0252, B:132:0x025d, B:137:0x0265), top: B:186:0x004a }] */
    /* JADX WARN: Code duplicated, block: B:144:0x0287 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:146:0x028a  */
    /* JADX WARN: Code duplicated, block: B:148:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:149:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:151:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:210:0x0282 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:0x02f5 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:212:0x02f1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:0x02f1 A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:148:0x02a4, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:151:0x02d6, please report this as an issue */
    @Override // com.perfectcorp.common.downloader.p
    public final void a(URI uri, File file) throws Exception {
        int iA;
        int iA2;
        int i2;
        int i3;
        AtomicInteger atomicInteger;
        AtomicInteger atomicInteger2;
        HttpURLConnection httpURLConnection;
        RandomAccessFile randomAccessFile;
        boolean z;
        this.m.compareAndSet(0, 2);
        this.f39196i.getClass();
        this.f39196i.getClass();
        this.f39196i.getClass();
        for (int i4 = 0; i4 < this.f39197j + 1; i4++) {
            this.f39198k.incrementAndGet();
            this.f39196i.f39206a++;
            com.perfectcorp.common.downloader.a aVar = com.perfectcorp.common.downloader.a.f39184e;
            synchronized (aVar) {
                iA = com.perfectcorp.common.downloader.a.a(aVar.f39188c.get(), aVar.f39186a);
            }
            synchronized (aVar) {
                iA2 = com.perfectcorp.common.downloader.a.a(aVar.d.get(), aVar.f39187b);
            }
            try {
                try {
                    int i5 = this.f39191b + this.f39193e;
                    if (this.f39193e > 0) {
                        Log.g(3, "DownloadTask", "[Retry] copiedBytes:" + this.f39193e + ", realStartByte:" + i5);
                    }
                    d();
                    InputStream inputStream = null;
                    try {
                        System.nanoTime();
                        try {
                            try {
                                try {
                                    URLConnection uRLConnectionOpenConnection = uri.toURL().openConnection();
                                    Callback.C(uRLConnectionOpenConnection);
                                    httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                                    try {
                                        try {
                                            httpURLConnection.setUseCaches(false);
                                            httpURLConnection.setRequestMethod("GET");
                                            httpURLConnection.setRequestProperty("User-Agent", "Mozilla/5.0");
                                            if (iA > 0) {
                                                try {
                                                    httpURLConnection.setConnectTimeout(iA);
                                                    httpURLConnection.setReadTimeout(iA2);
                                                } catch (SocketTimeoutException e2) {
                                                    e = e2;
                                                    i2 = iA;
                                                    randomAccessFile = null;
                                                    httpURLConnection = httpURLConnection;
                                                    z = false;
                                                    if (!z) {
                                                        throw new b("Connection timeout", e, 1);
                                                    }
                                                    throw new b("Read timeout", e, 2);
                                                }
                                            }
                                            if (this.d) {
                                                httpURLConnection.setRequestProperty("Range", "bytes=" + i5 + "-" + ((this.f39191b + this.f39192c) - 1));
                                            }
                                            C0118c.a aVar2 = this.f39196i;
                                            System.nanoTime();
                                            aVar2.getClass();
                                            d();
                                            long jNanoTime = System.nanoTime();
                                            boolean z2 = this.d;
                                            int iK = Callback.k(httpURLConnection);
                                            if (iK >= 400 && iK < 600) {
                                                throw new RuntimeException("Response code=" + iK + ", message=" + Callback.l(httpURLConnection));
                                            }
                                            if (z2 && !a(httpURLConnection)) {
                                                throw new UnsupportedOperationException("Server doesn't support byte range access. Response code=" + iK);
                                            }
                                            this.f39196i.f39207b = (System.nanoTime() - jNanoTime) / 1000000;
                                            try {
                                                Callback.e("Setting", httpURLConnection);
                                            } catch (Exception unused) {
                                            }
                                            this.f39196i.getClass();
                                            d();
                                            System.nanoTime();
                                            InputStream inputStreamG = Callback.g(httpURLConnection);
                                            try {
                                                C0118c.a aVar3 = this.f39196i;
                                                System.nanoTime();
                                                aVar3.getClass();
                                                System.nanoTime();
                                                int iC = Callback.c(httpURLConnection);
                                                C0118c.a aVar4 = this.f39196i;
                                                System.nanoTime();
                                                aVar4.getClass();
                                                System.nanoTime();
                                                try {
                                                    randomAccessFile = new RandomAccessFile(file, "rw");
                                                    try {
                                                        i2 = iA;
                                                        try {
                                                            try {
                                                                if (this.d) {
                                                                    randomAccessFile.seek(i5);
                                                                } else {
                                                                    this.f39193e = 0;
                                                                }
                                                                try {
                                                                    C0118c.a aVar5 = this.f39196i;
                                                                    System.nanoTime();
                                                                    aVar5.getClass();
                                                                    d();
                                                                    System.nanoTime();
                                                                    try {
                                                                        a(inputStreamG, randomAccessFile, iC);
                                                                        C0118c.a aVar6 = this.f39196i;
                                                                        System.nanoTime();
                                                                        aVar6.getClass();
                                                                        try {
                                                                            IO.a(inputStreamG, randomAccessFile);
                                                                            httpURLConnection.disconnect();
                                                                            return;
                                                                        } catch (b e3) {
                                                                            e = e3;
                                                                            i3 = e.f39202b;
                                                                            if (i3 != 1) {
                                                                                C0118c.a aVar7 = this.f39196i;
                                                                                aVar7.f39208c++;
                                                                                aVar7.d.add(Integer.valueOf(i2));
                                                                                atomicInteger = com.perfectcorp.common.downloader.a.f39184e.f39188c;
                                                                                if (i2 > atomicInteger.get()) {
                                                                                    Log.g(3, "Config", "timeoutMs:" + i2);
                                                                                    atomicInteger.set(i2);
                                                                                }
                                                                            } else if (i3 == 2) {
                                                                                C0118c.a aVar8 = this.f39196i;
                                                                                aVar8.f39208c++;
                                                                                aVar8.f39209e.add(Integer.valueOf(iA2));
                                                                                atomicInteger2 = com.perfectcorp.common.downloader.a.f39184e.d;
                                                                                if (iA2 > atomicInteger2.get()) {
                                                                                    Log.g(3, "Config", "timeoutMs:" + iA2);
                                                                                    atomicInteger2.set(iA2);
                                                                                }
                                                                            }
                                                                            if (i4 != this.f39197j) {
                                                                                throw e.getCause();
                                                                            }
                                                                        } catch (Throwable th) {
                                                                            th = th;
                                                                            Log.i("DownloadTask", "onExecuteImpl downloadCount count=" + this.f39196i.f39206a, th);
                                                                            if (i4 != this.f39197j) {
                                                                                throw th;
                                                                            }
                                                                        }
                                                                    } catch (Throwable th2) {
                                                                        C0118c.a aVar9 = this.f39196i;
                                                                        System.nanoTime();
                                                                        aVar9.getClass();
                                                                        throw th2;
                                                                    }
                                                                } catch (SocketTimeoutException e4) {
                                                                    e = e4;
                                                                    z = true;
                                                                    inputStream = inputStreamG;
                                                                    if (!z) {
                                                                        throw new b("Read timeout", e, 2);
                                                                    }
                                                                    throw new b("Connection timeout", e, 1);
                                                                }
                                                            } catch (SocketTimeoutException e5) {
                                                                e = e5;
                                                                z = false;
                                                                inputStream = inputStreamG;
                                                                if (!z) {
                                                                    throw new b("Read timeout", e, 2);
                                                                }
                                                                throw new b("Connection timeout", e, 1);
                                                            }
                                                        } catch (Throwable th3) {
                                                            th = th3;
                                                            inputStream = inputStreamG;
                                                            try {
                                                                IO.a(inputStream, randomAccessFile);
                                                                if (httpURLConnection != null) {
                                                                    httpURLConnection.disconnect();
                                                                }
                                                                throw th;
                                                            } catch (b e6) {
                                                                e = e6;
                                                                i3 = e.f39202b;
                                                                if (i3 != 1) {
                                                                    C0118c.a aVar10 = this.f39196i;
                                                                    aVar10.f39208c++;
                                                                    aVar10.d.add(Integer.valueOf(i2));
                                                                    atomicInteger = com.perfectcorp.common.downloader.a.f39184e.f39188c;
                                                                    if (i2 > atomicInteger.get()) {
                                                                        Log.g(3, "Config", "timeoutMs:" + i2);
                                                                        atomicInteger.set(i2);
                                                                    }
                                                                } else if (i3 == 2) {
                                                                    C0118c.a aVar11 = this.f39196i;
                                                                    aVar11.f39208c++;
                                                                    aVar11.f39209e.add(Integer.valueOf(iA2));
                                                                    atomicInteger2 = com.perfectcorp.common.downloader.a.f39184e.d;
                                                                    if (iA2 > atomicInteger2.get()) {
                                                                        Log.g(3, "Config", "timeoutMs:" + iA2);
                                                                        atomicInteger2.set(iA2);
                                                                    }
                                                                }
                                                                if (i4 != this.f39197j) {
                                                                    throw e.getCause();
                                                                }
                                                            } catch (Throwable th4) {
                                                                th = th4;
                                                                Log.i("DownloadTask", "onExecuteImpl downloadCount count=" + this.f39196i.f39206a, th);
                                                                if (i4 != this.f39197j) {
                                                                    throw th;
                                                                }
                                                            }
                                                        }
                                                    } catch (SocketTimeoutException e7) {
                                                        e = e7;
                                                        i2 = iA;
                                                    } catch (Throwable th5) {
                                                        th = th5;
                                                        i2 = iA;
                                                    }
                                                } catch (SocketTimeoutException e8) {
                                                    e = e8;
                                                    i2 = iA;
                                                    z = false;
                                                    randomAccessFile = null;
                                                    inputStream = inputStreamG;
                                                    if (!z) {
                                                        throw new b("Read timeout", e, 2);
                                                    }
                                                    throw new b("Connection timeout", e, 1);
                                                } catch (Throwable th6) {
                                                    th = th6;
                                                    i2 = iA;
                                                    randomAccessFile = null;
                                                    inputStream = inputStreamG;
                                                    IO.a(inputStream, randomAccessFile);
                                                    if (httpURLConnection != null) {
                                                        httpURLConnection.disconnect();
                                                    }
                                                    throw th;
                                                }
                                            } catch (SocketTimeoutException e9) {
                                                e = e9;
                                            } catch (Throwable th7) {
                                                th = th7;
                                            }
                                        } catch (Throwable th8) {
                                            th = th8;
                                            i2 = iA;
                                            randomAccessFile = null;
                                        }
                                    } catch (SocketTimeoutException e10) {
                                        e = e10;
                                        i2 = iA;
                                        z = false;
                                        randomAccessFile = null;
                                    }
                                } catch (SocketTimeoutException e11) {
                                    e = e11;
                                    i2 = iA;
                                    z = false;
                                    httpURLConnection = null;
                                    randomAccessFile = null;
                                }
                            } catch (Throwable th9) {
                                th = th9;
                                i2 = iA;
                                httpURLConnection = null;
                                randomAccessFile = null;
                                IO.a(inputStream, randomAccessFile);
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                throw th;
                            }
                        } catch (Exception e12) {
                            i2 = iA;
                            try {
                                StringBuilder sb = new StringBuilder("Convert URI to URL failed. URI=");
                                try {
                                    sb.append(uri);
                                    Log.e("DownloadTask", sb.toString(), e12);
                                    throw e12;
                                } catch (SocketTimeoutException e13) {
                                    e = e13;
                                    z = false;
                                    httpURLConnection = null;
                                    randomAccessFile = null;
                                    if (!z) {
                                        throw new b("Read timeout", e, 2);
                                    }
                                    throw new b("Connection timeout", e, 1);
                                } catch (Throwable th10) {
                                    th = th10;
                                    httpURLConnection = null;
                                    randomAccessFile = null;
                                    IO.a(inputStream, randomAccessFile);
                                    if (httpURLConnection != null) {
                                        httpURLConnection.disconnect();
                                    }
                                    throw th;
                                }
                            } catch (SocketTimeoutException e14) {
                                e = e14;
                                z = false;
                                httpURLConnection = null;
                                randomAccessFile = null;
                                if (!z) {
                                    throw new b("Read timeout", e, 2);
                                }
                                throw new b("Connection timeout", e, 1);
                            } catch (Throwable th11) {
                                th = th11;
                                httpURLConnection = null;
                                randomAccessFile = null;
                                IO.a(inputStream, randomAccessFile);
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                                throw th;
                            }
                        }
                    } catch (SocketTimeoutException e15) {
                        e = e15;
                        i2 = iA;
                    } catch (Throwable th12) {
                        th = th12;
                        i2 = iA;
                    }
                    try {
                        if (!z) {
                            throw new b("Read timeout", e, 2);
                        }
                        throw new b("Connection timeout", e, 1);
                    } catch (Throwable th13) {
                        th = th13;
                        IO.a(inputStream, randomAccessFile);
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        throw th;
                    }
                } catch (p.e e16) {
                    throw e16;
                }
            } catch (b e17) {
                e = e17;
                i2 = iA;
            } catch (Throwable th14) {
                th = th14;
            }
        }
    }

    public final C0118c b() {
        return new C0118c(this.f39196i);
    }

    public c(p.f fVar, int i2) {
        this(fVar, 0, i2);
    }

    public /* synthetic */ c(p.f fVar, int i2, int i3, byte b2) {
        this(fVar, i2, i3);
    }

    public static c a(p pVar, p.f fVar) {
        if (pVar instanceof c) {
            return new d(fVar, pVar.a(), 0, (c) pVar);
        }
        mt.i("from is not DownloadTask");
        return null;
    }

    private void a(int i2, int i3) {
        boolean z = false;
        if (this.m.compareAndSet(0, 1)) {
            this.f39191b = i2;
            this.f39192c = i3;
            if (this.f39191b >= 0 && this.f39192c > 0) {
                z = true;
            }
            this.d = z;
        }
    }

    public final void a(int i2, int i3, int i4) {
        this.l = new a(i2, i3, i4);
        int i5 = this.l.f39199a * com.perfectcorp.common.downloader.a.f39185f;
        int iB = b(this.l.f39199a, this.l.f39200b, this.l.f39201c);
        StringBuilder sbP = fc.p(i2, i5, "setByteRange. index=", ", start:", ", length:");
        sbP.append(iB);
        Log.g(3, "DownloadTask", sbP.toString());
        a(i5, iB);
    }

    public final void a(c cVar) {
        if (cVar.l != null) {
            a(cVar.l.f39199a, cVar.l.f39200b, cVar.l.f39201c);
        }
        if (cVar.f39193e > 0) {
            this.f39193e = cVar.f39193e;
        }
    }

    private void a(InputStream inputStream, DataOutput dataOutput, int i2) throws Exception {
        System.nanoTime();
        int i3 = inputStream.read(this.f39190a);
        while (i3 >= 0) {
            d();
            dataOutput.write(this.f39190a, 0, i3);
            synchronized (this.f39195h) {
                try {
                    this.f39193e += i3;
                    if (this.f39193e > this.f39194f) {
                        a(1.0d);
                        throw new p.b();
                    }
                    a(this.f39193e / (this.d ? this.f39192c : Math.min(i2, this.f39194f)));
                } catch (Throwable th) {
                    throw th;
                }
            }
            d();
            System.nanoTime();
            i3 = inputStream.read(this.f39190a);
        }
        this.f39196i.getClass();
    }

    @Override // com.perfectcorp.common.downloader.p
    public final int a() {
        return this.f39198k.get();
    }

    private static boolean a(HttpURLConnection httpURLConnection) {
        List list;
        try {
            int iK = Callback.k(httpURLConnection);
            Map mapF = Callback.f(httpURLConnection);
            if (iK != 206) {
                return iK == 200 && (list = (List) mapF.get("Accept-Ranges")) != null && !list.isEmpty() && "bytes".equalsIgnoreCase((String) list.get(0));
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }
}
