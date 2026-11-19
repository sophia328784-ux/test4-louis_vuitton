package com.networkbench.agent.impl.socket.b;

import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.data.l;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.socket.h;
import com.networkbench.agent.impl.socket.i;
import com.networkbench.agent.impl.socket.j;
import com.networkbench.agent.impl.socket.m;
import com.networkbench.agent.impl.util.ad;
import com.networkbench.agent.impl.util.s;
import com.networkbench.agent.impl.util.v;
import defpackage.pq0;
import defpackage.r81;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.SocketImpl;

/* JADX INFO: loaded from: classes2.dex */
public class a extends SocketImpl implements m {
    private static boolean A = false;
    private static Throwable D = null;
    private static final e F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Field f38158a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Field f38159b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Field f38160c = null;
    private static Field d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f38161e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f38162f = 1;
    private static final int g = 2;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f38163h = 3;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final int f38164i = 4;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f38165j = 5;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f38166k = 6;
    private static final int l = 7;
    private static final int m = 8;
    private static final int n = 9;
    private static final int o = 10;
    private static final int p = 11;
    private static final int q = 12;
    private static final int r = 13;
    private static final int s = 14;
    private static final int t = 15;
    private static final int u = 16;
    private static final int v = 17;
    private static final int w = 18;
    private static final int x = 19;
    private static final int y = 20;
    private static Method[] z;
    private int B;
    private SocketImpl E;
    private boolean G;
    private String C = "";
    private j H = new j();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [int] */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v30 */
    /* JADX WARN: Type inference failed for: r8v4, types: [int] */
    static {
        boolean z2;
        String str = ConfigurationName.PORT;
        ?? r7 = 20;
        z = new Method[20];
        F = f.a();
        try {
            f38158a = SocketImpl.class.getDeclaredField("address");
            f38159b = SocketImpl.class.getDeclaredField("fd");
            f38160c = SocketImpl.class.getDeclaredField("localport");
            Field declaredField = SocketImpl.class.getDeclaredField(ConfigurationName.PORT);
            d = declaredField;
            ad.a((AccessibleObject) f38158a, new AccessibleObject[]{f38159b, f38160c, declaredField});
            z[0] = SocketImpl.class.getDeclaredMethod("accept", SocketImpl.class);
            z[1] = SocketImpl.class.getDeclaredMethod("available", null);
            Method[] methodArr = z;
            Class cls = Integer.TYPE;
            z2 = false;
            try {
                methodArr[2] = SocketImpl.class.getDeclaredMethod("bind", InetAddress.class, cls);
                z[3] = SocketImpl.class.getDeclaredMethod("close", null);
                z[4] = SocketImpl.class.getDeclaredMethod("connect", InetAddress.class, cls);
                z[5] = SocketImpl.class.getDeclaredMethod("connect", SocketAddress.class, cls);
                z[6] = SocketImpl.class.getDeclaredMethod("connect", String.class, cls);
                z[7] = SocketImpl.class.getDeclaredMethod("create", Boolean.TYPE);
                z[8] = SocketImpl.class.getDeclaredMethod("getFileDescriptor", null);
                z[9] = SocketImpl.class.getDeclaredMethod("getInetAddress", null);
                z[10] = SocketImpl.class.getDeclaredMethod("getInputStream", null);
                z[11] = SocketImpl.class.getDeclaredMethod("getLocalPort", null);
                z[12] = SocketImpl.class.getDeclaredMethod("getOutputStream", null);
                z[13] = SocketImpl.class.getDeclaredMethod("getPort", null);
                z[14] = SocketImpl.class.getDeclaredMethod("listen", cls);
                z[15] = SocketImpl.class.getDeclaredMethod("sendUrgentData", cls);
                z[16] = SocketImpl.class.getDeclaredMethod("setPerformancePreferences", cls, cls, cls);
                z[17] = SocketImpl.class.getDeclaredMethod("shutdownInput", null);
                z[18] = SocketImpl.class.getDeclaredMethod("shutdownOutput", null);
                z[19] = SocketImpl.class.getDeclaredMethod("supportsUrgentData", null);
                ad.a(z);
                A = true;
            } catch (NoSuchFieldException e2) {
                e = e2;
                A = z2;
                if (f38158a == null) {
                    str = "address";
                } else if (f38159b == null) {
                    str = "fd";
                } else if (f38160c == null) {
                    str = "localport";
                } else if (d != null) {
                    str = "unknown";
                }
                a(new com.networkbench.agent.impl.socket.a.a("No such field: ".concat(str), e));
            } catch (NoSuchMethodException e3) {
                e = e3;
                A = z2;
                for (?? r8 = z2; r8 < 20; r8++) {
                    if (z[r8] == null) {
                        r7 = r8;
                        break;
                    }
                }
                a(new com.networkbench.agent.impl.socket.a.a(pq0.k(r7, "Bad method: "), e));
            } catch (SecurityException e4) {
                e = e4;
                A = z2;
                a(e);
            } catch (Throwable th) {
                th = th;
                A = z2;
                a(th);
            }
        } catch (NoSuchFieldException e5) {
            e = e5;
            z2 = false;
        } catch (NoSuchMethodException e6) {
            e = e6;
            z2 = false;
        } catch (SecurityException e7) {
            e = e7;
            z2 = false;
        } catch (Throwable th2) {
            th = th2;
            z2 = false;
        }
    }

    public a(SocketImpl socketImpl) {
        if (socketImpl == null) {
            r81.d("delegate was null");
            throw null;
        }
        this.E = socketImpl;
        e();
    }

    private <T> T a(int i2, Object[] objArr) throws Exception {
        d();
        try {
            try {
                try {
                    try {
                        try {
                            try {
                                T t2 = (T) z[i2].invoke(this.E, objArr);
                                e();
                                return t2;
                            } catch (ClassCastException e2) {
                                throw new com.networkbench.agent.impl.socket.a.a(e2);
                            }
                        } catch (Throwable th) {
                            throw new com.networkbench.agent.impl.socket.a.a(th);
                        }
                    } catch (InvocationTargetException e3) {
                        Throwable targetException = e3.getTargetException();
                        if (targetException == null) {
                            throw new com.networkbench.agent.impl.socket.a.a(e3);
                        }
                        if (targetException instanceof Exception) {
                            throw ((Exception) targetException);
                        }
                        if (targetException instanceof Error) {
                            throw ((Error) targetException);
                        }
                        throw new com.networkbench.agent.impl.socket.a.a(targetException);
                    }
                } catch (IllegalAccessException e4) {
                    throw new com.networkbench.agent.impl.socket.a.a(e4);
                }
            } catch (IllegalArgumentException e5) {
                throw new com.networkbench.agent.impl.socket.a.a(e5);
            }
        } catch (Throwable th2) {
            e();
            throw th2;
        }
    }

    private <T> T b(int i2, Object[] objArr) {
        try {
            return (T) a(i2, objArr);
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Throwable th) {
            throw new com.networkbench.agent.impl.socket.a.a(th);
        }
    }

    private Object c(int i2, Object[] objArr) throws IOException {
        try {
            return a(i2, objArr);
        } catch (IOException e2) {
            throw e2;
        } catch (RuntimeException e3) {
            throw e3;
        } catch (Throwable th) {
            throw new com.networkbench.agent.impl.socket.a.a(th);
        }
    }

    private void d() {
        try {
            f38158a.set(this.E, ((SocketImpl) this).address);
            f38159b.set(this.E, ((SocketImpl) this).fd);
            f38160c.setInt(this.E, ((SocketImpl) this).localport);
            d.setInt(this.E, ((SocketImpl) this).port);
        } catch (IllegalAccessException | IllegalArgumentException unused) {
        }
    }

    private void e() {
        try {
            ((SocketImpl) this).address = (InetAddress) f38158a.get(this.E);
            ((SocketImpl) this).fd = (FileDescriptor) f38159b.get(this.E);
            ((SocketImpl) this).localport = f38160c.getInt(this.E);
            ((SocketImpl) this).port = d.getInt(this.E);
        } catch (IllegalAccessException e2) {
            throw new com.networkbench.agent.impl.socket.a.a(e2);
        } catch (IllegalArgumentException e3) {
            throw new com.networkbench.agent.impl.socket.a.a(e3);
        }
    }

    @Override // java.net.SocketImpl
    public void accept(SocketImpl socketImpl) throws IOException {
        c(0, new Object[]{socketImpl});
    }

    @Override // java.net.SocketImpl
    public int available() throws IOException {
        Integer num = (Integer) c(1, new Object[0]);
        if (num != null) {
            return num.intValue();
        }
        throw new com.networkbench.agent.impl.socket.a.a("Received a null Integer");
    }

    @Override // java.net.SocketImpl
    public void bind(InetAddress inetAddress, int i2) throws IOException {
        c(2, new Object[]{inetAddress, Integer.valueOf(i2)});
    }

    @Override // java.net.SocketImpl
    public void close() throws IOException {
        c(3, new Object[0]);
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x0055 */
    @Override // java.net.SocketImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void connect(java.lang.String r5, int r6) throws java.io.IOException {
        /*
            r4 = this;
            java.lang.String r0 = "connect(String host, int port) host:"
            com.networkbench.agent.impl.data.l r1 = new com.networkbench.agent.impl.data.l
            r1.<init>()
            com.networkbench.agent.impl.c.e r2 = com.networkbench.agent.impl.socket.b.a.F     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            r3.<init>(r0)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            r3.append(r5)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            java.lang.String r0 = ", port:"
            r3.append(r0)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            r3.append(r6)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            r2.a(r0)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            r1.b(r5)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            r1.b(r6)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            java.lang.Object[] r5 = new java.lang.Object[]{r5, r6}     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            r6 = 6
            r4.c(r6, r5)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            long r5 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            long r5 = r5 - r2
            int r5 = (int) r5     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            r4.B = r5     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            r1.c(r5)     // Catch: java.lang.Throwable -> L55 java.io.IOException -> L57
            java.lang.String r4 = r1.d()
            if (r4 == 0) goto L54
            java.lang.String r4 = r1.d()
            boolean r4 = com.networkbench.agent.impl.util.v.d(r4)
            if (r4 != 0) goto L54
            com.networkbench.agent.impl.harvest.Harvest.addSocketDatasInfo(r1)
        L54:
            return
        L55:
            r4 = move-exception
            goto L64
        L57:
            r4 = move-exception
            r5 = -1
            r1.a(r5)     // Catch: java.lang.Throwable -> L55
            java.lang.String r5 = r4.getMessage()     // Catch: java.lang.Throwable -> L55
            r1.d(r5)     // Catch: java.lang.Throwable -> L55
            throw r4     // Catch: java.lang.Throwable -> L55
        L64:
            java.lang.String r5 = r1.d()
            if (r5 == 0) goto L77
            java.lang.String r5 = r1.d()
            boolean r5 = com.networkbench.agent.impl.util.v.d(r5)
            if (r5 != 0) goto L77
            com.networkbench.agent.impl.harvest.Harvest.addSocketDatasInfo(r1)
        L77:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.networkbench.agent.impl.socket.b.a.connect(java.lang.String, int):void");
    }

    @Override // java.net.SocketImpl
    public void create(boolean z2) throws IOException {
        c(7, new Object[]{Boolean.valueOf(z2)});
    }

    @Override // java.net.SocketImpl
    public FileDescriptor getFileDescriptor() {
        return (FileDescriptor) b(8, new Object[0]);
    }

    @Override // java.net.SocketImpl
    public InetAddress getInetAddress() {
        return (InetAddress) b(9, new Object[0]);
    }

    @Override // java.net.SocketImpl
    public InputStream getInputStream() throws IOException {
        InputStream inputStream = (InputStream) c(10, new Object[0]);
        if (inputStream == null) {
            return null;
        }
        try {
            F.a("CustomPlainSocketImpl getInputStream time:" + System.currentTimeMillis());
            if (inputStream instanceof i) {
                return inputStream;
            }
            this.H.a(false);
            return new i(this.H, inputStream);
        } catch (Throwable th) {
            F.a("getInputStream error:" + th.getMessage());
            return inputStream;
        }
    }

    @Override // java.net.SocketImpl
    public int getLocalPort() {
        return ((Integer) b(11, new Object[0])).intValue();
    }

    @Override // java.net.SocketOptions
    public Object getOption(int i2) throws SocketException {
        return this.E.getOption(i2);
    }

    @Override // java.net.SocketImpl
    public OutputStream getOutputStream() throws IOException {
        OutputStream outputStream = (OutputStream) c(12, new Object[0]);
        if (outputStream == null) {
            return null;
        }
        try {
            F.a("customplainSocketImpl getOutputStream time:" + System.currentTimeMillis());
            return outputStream instanceof h ? outputStream : new h(this.H, outputStream);
        } catch (Throwable th) {
            F.a("getOutputStream error:" + th.getMessage());
            return outputStream;
        }
    }

    @Override // java.net.SocketImpl
    public int getPort() {
        return ((Integer) b(13, new Object[0])).intValue();
    }

    @Override // java.net.SocketImpl
    public void listen(int i2) throws IOException {
        c(14, new Object[]{Integer.valueOf(i2)});
    }

    @Override // java.net.SocketImpl
    public void sendUrgentData(int i2) throws IOException {
        c(15, new Object[]{Integer.valueOf(i2)});
    }

    @Override // java.net.SocketOptions
    public void setOption(int i2, Object obj) throws SocketException {
        this.E.setOption(i2, obj);
    }

    @Override // java.net.SocketImpl
    public void setPerformancePreferences(int i2, int i3, int i4) {
        b(16, new Object[]{Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)});
    }

    @Override // java.net.SocketImpl
    public void shutdownInput() throws IOException {
        c(17, new Object[0]);
    }

    @Override // java.net.SocketImpl
    public void shutdownOutput() throws IOException {
        c(18, new Object[0]);
    }

    @Override // java.net.SocketImpl
    public boolean supportsUrgentData() {
        return ((Boolean) b(19, new Object[0])).booleanValue();
    }

    @Override // java.net.SocketImpl
    public String toString() {
        return this.E.toString();
    }

    public static Throwable b() {
        return D;
    }

    public SocketImpl c() {
        return this.E;
    }

    public static boolean a() {
        return A;
    }

    private static void a(Throwable th) {
        D = th;
    }

    @Override // com.networkbench.agent.impl.socket.m
    public void a(NBSTransactionState nBSTransactionState) {
        this.H.a(nBSTransactionState);
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [byte[], java.io.Serializable] */
    @Override // java.net.SocketImpl
    public final void connect(InetAddress inetAddress, int i2) throws IOException {
        l lVar = new l();
        try {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis();
                lVar.a(s.a(inetAddress));
                lVar.b(s.b(inetAddress.getAddress()));
                lVar.b(i2);
                c(4, new Object[]{inetAddress, Integer.valueOf(i2)});
                int iCurrentTimeMillis = (int) (System.currentTimeMillis() - jCurrentTimeMillis);
                this.B = iCurrentTimeMillis;
                lVar.c(iCurrentTimeMillis);
                if (lVar.d() == null || v.d(lVar.d())) {
                    return;
                }
                Harvest.addSocketDatasInfo(lVar);
            } catch (IOException e2) {
                lVar.a(-1);
                lVar.d(e2.getMessage());
                throw e2;
            }
        } catch (Throwable th) {
            if (lVar.d() != null && !v.d(lVar.d())) {
                Harvest.addSocketDatasInfo(lVar);
            }
            throw th;
        }
    }

    @Override // java.net.SocketImpl
    public final void connect(SocketAddress socketAddress, int i2) throws IOException {
        String strA;
        String strB;
        if (socketAddress instanceof InetSocketAddress) {
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddress;
            strA = s.a(inetSocketAddress);
            strB = s.b(inetSocketAddress.getAddress());
            this.C = strB;
        } else {
            strA = "";
            strB = "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        c(5, new Object[]{socketAddress, Integer.valueOf(i2)});
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() - jCurrentTimeMillis);
        this.B = iCurrentTimeMillis;
        this.H.a(iCurrentTimeMillis);
        v.a(strB, strA, this.B, ((SocketImpl) this).port, false);
        this.H.a(strA);
    }
}
