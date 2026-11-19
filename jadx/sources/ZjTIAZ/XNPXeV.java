package ZjTIAZ;

import Ldr.Eel.PXi.JhV;
import defpackage.cj;
import defpackage.d21;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class XNPXeV {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static int f305h = 1219;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f306i = 4786;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final XNPXeV f307j = new XNPXeV();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static ExecutorService f308k = Executors.newFixedThreadPool(2);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f309a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile boolean f310b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile boolean f311c = false;
    public volatile boolean d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f312e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f313f;
    public final int g;

    class NQequ implements Runnable {
        static JhV JMMHHL;

        /* JADX INFO: Incorrect field signature: LSQm/RGT; */
        final /* synthetic */ int ErjBlv;

        static {
            uIM(false);
        }

        public NQequ(int i2) {
            this.ErjBlv = i2;
        }

        public static /* synthetic */ void uIM(boolean z) {
            if (z) {
                uIM(false);
            }
            JMMHHL = CNATAC.a("?\u0017\"\u001d\u0003\u001c\u001f\u000e ");
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                XNPXeV xNPXeV = XNPXeV.this;
                JhV jhV = JMMHHL;
                int i2 = this.ErjBlv;
                xNPXeV.getClass();
                if (XNPXeV.d(i2, jhV)) {
                    int i3 = this.ErjBlv;
                    XNPXeV xNPXeV2 = XNPXeV.this;
                    if (i3 == xNPXeV2.f312e) {
                        xNPXeV2.f310b = true;
                    } else if (i3 == xNPXeV2.f313f) {
                        xNPXeV2.f311c = true;
                    } else {
                        xNPXeV2.d = true;
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    class OAgEI implements Runnable {

        /* JADX INFO: Incorrect field signature: Lint; */
        static String XCXNC;
        static String eCqBTX;

        static {
            ZNa(false);
        }

        public OAgEI() {
        }

        public static /* synthetic */ void ZNa(boolean z) {
            if (z) {
                ZNa(false);
            }
            eCqBTX = CNATAC.a("i@aCA]_\u0000bHF\u0012@EU\u0016JEEJDI");
            XCXNC = CNATAC.a("i@aCA]_\u0000bHF\u0012@EU\u0016Z^JXH");
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                try {
                    boolean zA = XNPXeV.a(XNPXeV.this, XCXNC);
                    XNPXeV xNPXeV = XNPXeV.this;
                    if (zA) {
                        xNPXeV.f309a = true;
                    } else {
                        xNPXeV.f309a = XNPXeV.a(xNPXeV, eCqBTX);
                    }
                    XNPXeV xNPXeV2 = XNPXeV.this;
                    try {
                        XNPXeV.f308k.submit(xNPXeV2.new NQequ(xNPXeV2.f312e));
                    } catch (Exception unused) {
                    }
                    XNPXeV xNPXeV3 = XNPXeV.this;
                    try {
                        XNPXeV.f308k.submit(xNPXeV3.new NQequ(xNPXeV3.f313f));
                    } catch (Exception unused2) {
                    }
                    XNPXeV xNPXeV4 = XNPXeV.this;
                    XNPXeV.f308k.submit(xNPXeV4.new NQequ(xNPXeV4.g));
                } finally {
                    XNPXeV.b(XNPXeV.this);
                }
            } catch (Exception unused3) {
            }
        }
    }

    class uNjiQ implements Callable {
        final /* synthetic */ Process CSYbrM;

        public uNjiQ(Process process) {
            this.CSYbrM = process;
        }

        @Override // java.util.concurrent.Callable
        public Integer call() {
            try {
                return Integer.valueOf(this.CSYbrM.waitFor());
            } catch (InterruptedException unused) {
                return -1;
            }
        }
    }

    public XNPXeV() {
        Random random = new Random();
        int iA = cj.a(random.nextInt(50) + 1, 20, (random.nextInt(100) + 1) * 30, 5000);
        this.f312e = (6790 - iA) + iA;
        Random random2 = new Random();
        int iA2 = cj.a(random2.nextInt(50) + 1, 25, (random2.nextInt(100) + 1) * 40, 5500);
        this.f313f = (7810 - iA2) + iA2;
        Random random3 = new Random();
        int iA3 = cj.a(random3.nextInt(50) + 1, 20, (random3.nextInt(100) + 1) * 35, 5700);
        this.g = (8200 - iA3) + iA3;
        CNATAC.a("?\u0017\"\u001d\u0003\u001c\u001f\u000e ");
    }

    /* JADX INFO: Infinite loop detected, blocks: 37, insns: 0 */
    public static boolean a(XNPXeV xNPXeV, String str) {
        int i2;
        int i3;
        xNPXeV.getClass();
        Process process = null;
        try {
            Process processExec = Runtime.getRuntime().exec(str);
            if (((Integer) Executors.newSingleThreadExecutor().submit(xNPXeV.new uNjiQ(processExec)).get(2L, TimeUnit.SECONDS)).intValue() != 0) {
                processExec.destroy();
                processExec.destroy();
                return false;
            }
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(processExec.getInputStream()));
            try {
                String line = bufferedReader.readLine();
                boolean z = line != null && line.contains(CNATAC.a("oAw"));
                bufferedReader.close();
                processExec.destroy();
                return z;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Exception unused) {
            if (0 != 0) {
                process.destroy();
                if (f306i <= 4785) {
                    if ((f305h ^ 1219) != 0) {
                        while (true) {
                            int i4 = f305h;
                            if (i4 + 130 == 5) {
                                f305h = (i4 % 71) >> 27;
                            }
                        }
                    } else {
                        do {
                            i2 = f306i;
                            i3 = i2 + 117;
                            if (i3 != 46) {
                                if (i3 == 85) {
                                    f306i = ((i2 * 113) % 106) + i2;
                                }
                            }
                            f306i = (f306i ^ 7421) + i2;
                        } while (i3 != 199);
                        while (true) {
                            f306i = ((f306i >> 98) ^ 4031) + i2;
                            if ((f305h ^ 1219) != 0) {
                                while (true) {
                                    int i5 = f305h;
                                    int i6 = i5 + 182;
                                    if (i6 == 75) {
                                        break;
                                    }
                                    if (i6 == 211) {
                                        f305h = i5 * 214240;
                                    } else if (i6 == 343) {
                                        f305h = ((i5 ^ 2390) >> 109) + i5;
                                    } else if (i6 == 441) {
                                        f305h = ((i5 + i5) ^ 1985) + i5;
                                        break;
                                    }
                                }
                            }
                        }
                        while (true) {
                            f305h >>= 19;
                        }
                    }
                }
            }
            return false;
        } catch (Throwable th3) {
            if (0 != 0) {
                process.destroy();
            }
            throw th3;
        }
    }

    public static void b(XNPXeV xNPXeV) {
        xNPXeV.getClass();
        try {
            f308k.shutdown();
            try {
                if (!f308k.awaitTermination(5L, TimeUnit.SECONDS)) {
                    f308k.shutdownNow();
                }
            } catch (InterruptedException unused) {
                f308k.shutdownNow();
            }
        } catch (Exception unused2) {
        }
    }

    public static boolean d(int i2, String str) throws Throwable {
        Socket socket;
        OutputStream outputStream;
        BufferedReader bufferedReader = null;
        try {
            socket = new Socket();
            try {
                socket.connect(new InetSocketAddress(str, i2), 1500);
                socket.setSoTimeout(1500);
                outputStream = socket.getOutputStream();
                try {
                    outputStream.write(("GET /status HTTP/1.1\r\nHost: " + str + ":" + i2 + "\r\nConnection: close\r\n\r\n").getBytes());
                    outputStream.flush();
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(socket.getInputStream()));
                    boolean z = false;
                    while (true) {
                        try {
                            String line = bufferedReader2.readLine();
                            if (line == null) {
                                try {
                                    break;
                                } catch (IOException unused) {
                                }
                            } else if (!line.isEmpty()) {
                                z = true;
                            }
                        } catch (Exception unused2) {
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused3) {
                                }
                            }
                            if (outputStream != null) {
                                try {
                                    outputStream.close();
                                } catch (IOException unused4) {
                                }
                            }
                            if (socket != null) {
                                try {
                                    if (!socket.isClosed()) {
                                        socket.close();
                                    }
                                } catch (IOException unused5) {
                                }
                            }
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused6) {
                                }
                            }
                            if (outputStream != null) {
                                try {
                                    outputStream.close();
                                } catch (IOException unused7) {
                                }
                            }
                            if (socket == null) {
                                throw th;
                            }
                            try {
                                if (socket.isClosed()) {
                                    throw th;
                                }
                                socket.close();
                                throw th;
                            } catch (IOException unused8) {
                                throw th;
                            }
                        }
                    }
                    bufferedReader2.close();
                    try {
                        outputStream.close();
                    } catch (IOException unused9) {
                    }
                    try {
                        if (!socket.isClosed()) {
                            socket.close();
                        }
                    } catch (IOException unused10) {
                    }
                    return z;
                } catch (Exception unused11) {
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception unused12) {
                outputStream = null;
            } catch (Throwable th3) {
                th = th3;
                outputStream = null;
            }
        } catch (Exception unused13) {
            socket = null;
            outputStream = null;
        } catch (Throwable th4) {
            th = th4;
            socket = null;
            outputStream = null;
        }
    }

    public final String c() {
        Random random = new Random();
        int iNextInt = random.nextInt(1000) + 1;
        int iNextInt2 = random.nextInt(6) + 1;
        int iNextInt3 = random.nextInt(7) + 1;
        int iNextInt4 = random.nextInt(8) + 1;
        int iNextInt5 = random.nextInt(4) + 1;
        int i2 = iNextInt * 7;
        if (!this.f309a) {
            iNextInt2 = 0;
        }
        int i3 = i2 + iNextInt2;
        int i4 = iNextInt * 8;
        if (!this.f310b) {
            iNextInt3 = 0;
        }
        int i5 = i4 + iNextInt3;
        int i6 = iNextInt * 9;
        if (!this.f311c) {
            iNextInt4 = 0;
        }
        int i7 = i6 + iNextInt4;
        int i8 = iNextInt * 5;
        if (!this.d) {
            iNextInt5 = 0;
        }
        int i9 = i8 + iNextInt5;
        int i10 = i5 ^ i3;
        int i11 = i7 ^ i10;
        StringBuilder sb = new StringBuilder();
        sb.append(i3);
        sb.append(",");
        sb.append(i10);
        sb.append(",");
        sb.append(i11);
        return d21.f(i9 ^ i11, ",", sb);
    }

    public final void e() {
        try {
            if (f308k.isShutdown() || f308k.isTerminated()) {
                f308k = Executors.newFixedThreadPool(2);
            }
        } catch (Exception unused) {
        }
        try {
            f308k.submit(new OAgEI());
        } catch (Exception unused2) {
        }
    }
}
