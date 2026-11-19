package com.networkbench.agent.impl.logtrack;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
class CLoganProtocol implements LoganProtocolHandler {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f37433e = "nbslog";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static CLoganProtocol f37434f;
    private static boolean g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f37435a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f37436b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private OnLoganProtocolStatus f37437c;
    private Set<Integer> d = Collections.synchronizedSet(new HashSet());

    static {
        try {
            System.loadLibrary(f37433e);
            g = true;
        } catch (Throwable th) {
            th.printStackTrace();
            g = false;
        }
    }

    private void a(String str, int i2) {
        if (i2 < 0) {
            if (b.a.p.endsWith(str) && i2 != -4060) {
                if (this.d.contains(Integer.valueOf(i2))) {
                    return;
                } else {
                    this.d.add(Integer.valueOf(i2));
                }
            }
            OnLoganProtocolStatus onLoganProtocolStatus = this.f37437c;
            if (onLoganProtocolStatus != null) {
                onLoganProtocolStatus.loganProtocolStatus(str, i2);
            }
        }
    }

    public static CLoganProtocol b() {
        if (f37434f == null) {
            synchronized (CLoganProtocol.class) {
                try {
                    if (f37434f == null) {
                        f37434f = new CLoganProtocol();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f37434f;
    }

    private native void nbslog_debug(boolean z);

    private native void nbslog_flush();

    private native int nbslog_init(String str, String str2, int i2, String str3, String str4);

    private native int nbslog_open(String str);

    private native int nbslog_write(String str, String str2, long j2, String str3, String str4, String str5, String str6, int i2, int i3);

    @Override // com.networkbench.agent.impl.logtrack.LoganProtocolHandler
    public void logan_debug(boolean z) {
        if (this.f37435a && g) {
            try {
                nbslog_debug(z);
            } catch (UnsatisfiedLinkError e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.networkbench.agent.impl.logtrack.LoganProtocolHandler
    public void logan_flush() {
        if (this.f37436b && g) {
            try {
                nbslog_flush();
            } catch (UnsatisfiedLinkError e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.networkbench.agent.impl.logtrack.LoganProtocolHandler
    public void logan_init(String str, String str2, int i2, String str3, String str4) {
        if (this.f37435a) {
            return;
        }
        if (!g) {
            a(b.a.w, b.a.x);
            return;
        }
        try {
            int iNbslog_init = nbslog_init(str, str2, i2, str3, str4);
            this.f37435a = true;
            a(b.a.f37460a, iNbslog_init);
        } catch (UnsatisfiedLinkError e2) {
            e2.printStackTrace();
            a(b.a.f37460a, b.a.g);
        }
    }

    @Override // com.networkbench.agent.impl.logtrack.LoganProtocolHandler
    public void logan_open(String str) {
        if (this.f37435a && g) {
            try {
                int iNbslog_open = nbslog_open(str);
                this.f37436b = true;
                a(b.a.f37465h, iNbslog_open);
            } catch (UnsatisfiedLinkError e2) {
                e2.printStackTrace();
                a(b.a.f37465h, b.a.o);
            }
        }
    }

    @Override // com.networkbench.agent.impl.logtrack.LoganProtocolHandler
    public void logan_write(String str, String str2, long j2, String str3, String str4, String str5, String str6, int i2, int i3) {
        if (this.f37436b && g) {
            try {
                int iNbslog_write = nbslog_write(str, str2, j2, str3, str4, str5, str6, i2, i3);
                if (iNbslog_write == -4010 && !Logan.f37440c) {
                    return;
                }
                a(b.a.p, iNbslog_write);
            } catch (UnsatisfiedLinkError e2) {
                e2.printStackTrace();
                a(b.a.p, b.a.v);
            }
        }
    }

    @Override // com.networkbench.agent.impl.logtrack.LoganProtocolHandler
    public void setOnLoganProtocolStatus(OnLoganProtocolStatus onLoganProtocolStatus) {
        this.f37437c = onLoganProtocolStatus;
    }

    public static boolean a() {
        return g;
    }
}
