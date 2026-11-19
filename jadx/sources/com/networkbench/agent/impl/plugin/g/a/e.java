package com.networkbench.agent.impl.plugin.g.a;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f38104a = -3;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f38105b = -2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f38106c = -4;
    public static final int d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f38107e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f38108f;
    private final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f38109h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final a f38110i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f38111j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private c f38112k;

    public interface a {
        void a(b bVar);
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f38113a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f38114b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f38115c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f38116e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f38117f;
        public final int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f38118h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f38119i;

        public b(String str, int i2, String str2, int i3, int i4, int i5, int i6, int i7, int i8) {
            this.f38113a = i2;
            this.f38114b = str2;
            this.f38115c = i3;
            this.d = i4;
            this.f38116e = i5;
            this.f38117f = i6;
            this.g = i7;
            this.f38118h = i8;
            this.f38119i = str;
        }

        public String toString() {
            return String.format("code:%d, ip:%s, maxtime:%d, mintime:%d, avgtime:%d, stddevtime:%d, count:%d, dropped:%d", Integer.valueOf(this.f38113a), this.f38114b, Integer.valueOf(this.f38115c), Integer.valueOf(this.d), Integer.valueOf(this.f38116e), Integer.valueOf(this.f38117f), Integer.valueOf(this.g), Integer.valueOf(this.f38118h));
        }
    }

    private e(String str, int i2, int i3, c cVar, a aVar) {
        this.f38108f = str;
        this.g = i2;
        this.f38109h = i3;
        this.f38110i = aVar;
        this.f38112k = cVar;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0023 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private void a(InetSocketAddress inetSocketAddress, int i2) throws Throwable {
        Throwable th;
        IOException e2;
        Socket socket = null;
        try {
            try {
                Socket socket2 = new Socket();
                try {
                    socket2.connect(inetSocketAddress, i2);
                    try {
                        socket2.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                } catch (IOException e4) {
                    e2 = e4;
                    e2.printStackTrace();
                    throw e2;
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    try {
                        socket.close();
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (IOException e6) {
            e2 = e6;
        } catch (Throwable th3) {
            th = th3;
            if (0 != 0) {
                socket.close();
            }
            throw th;
        }
    }

    private void b() {
        try {
            try {
                int i2 = 0;
                String hostAddress = InetAddress.getAllByName(this.f38108f)[0].getHostAddress();
                InetSocketAddress inetSocketAddress = new InetSocketAddress(hostAddress, this.g);
                this.f38112k.a("connect to " + hostAddress + ":" + this.g);
                int[] iArr = new int[this.f38109h];
                byte b2 = (byte) 0;
                int i3 = 0;
                int i4 = 0;
                int i5 = -1;
                while (i2 < this.f38109h && !this.f38111j) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    try {
                        a(inetSocketAddress, 5000);
                    } catch (IOException e2) {
                        this.f38107e = e2.getMessage();
                        this.f38112k.a(e2.getMessage());
                        b2 = e2 instanceof SocketTimeoutException ? (byte) -3 : (byte) -2;
                        i3++;
                    }
                    byte b3 = b2;
                    int iCurrentTimeMillis = (int) (System.currentTimeMillis() - jCurrentTimeMillis);
                    if (b3 >= 0) {
                        i4 += iCurrentTimeMillis;
                    }
                    iArr[i2] = iCurrentTimeMillis;
                    try {
                        if (!this.f38111j && 100 > iCurrentTimeMillis && iCurrentTimeMillis > 0) {
                            Thread.sleep(100 - ((long) iCurrentTimeMillis));
                        }
                    } catch (Throwable th) {
                        if (th instanceof InterruptedException) {
                            this.f38110i.a(null);
                        }
                    }
                    int i6 = i2;
                    i2++;
                    b2 = b3;
                    i5 = i6;
                }
                a aVar = this.f38110i;
                if (i5 == -1) {
                    aVar.a(new b(this.f38107e, -1, hostAddress, 0, 0, 0, 0, 0, 0));
                } else {
                    aVar.a(a(iArr, i5, hostAddress, i3, i4));
                }
            } catch (UnknownHostException e3) {
                this.f38107e = e3.getMessage();
                this.f38112k.a("Unknown host: " + this.f38108f);
                a aVar2 = this.f38110i;
                String str = this.f38107e;
                int i7 = this.f38109h;
                aVar2.a(new b(str, -4, "", 0, 0, 0, 0, i7, i7));
            }
        } catch (Throwable unused) {
        }
    }

    public static d a(String str, int i2, int i3, c cVar, a aVar) {
        e eVar = new e(str, i2, i3, cVar, aVar);
        eVar.b();
        return eVar;
    }

    private b a(int[] iArr, int i2, String str, int i3, int i4) {
        int i5 = 1000000;
        int i6 = 0;
        for (int i7 = 0; i7 <= i2; i7++) {
            int i8 = iArr[i7];
            if (i8 > i6) {
                i6 = i8;
            }
            if (i8 < i5) {
                i5 = i8;
            }
        }
        return new b(this.f38107e, 0, str, i6, i5, i4, 0, i2 + 1, i3);
    }

    public static d a(String str, c cVar, a aVar) {
        return a(str, 80, 3, cVar, aVar);
    }

    @Override // com.networkbench.agent.impl.plugin.g.a.d
    public void a() {
        this.f38111j = true;
    }
}
