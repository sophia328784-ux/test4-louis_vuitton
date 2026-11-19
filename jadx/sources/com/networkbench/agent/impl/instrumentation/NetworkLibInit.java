package com.networkbench.agent.impl.instrumentation;

import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.socket.b.b;
import com.networkbench.agent.impl.util.ad;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.d;
import com.networkbench.agent.impl.util.e;
import com.networkbench.agent.impl.util.w;
import java.io.IOException;
import java.lang.reflect.Field;
import java.net.Socket;
import java.net.SocketImpl;
import java.net.SocketImplFactory;
import okhttp3.OkHttpClient;

/* JADX INFO: loaded from: classes2.dex */
public class NetworkLibInit {
    public static boolean checkOkhttpVersion() {
        if (!isQuoteOkhttp3()) {
            return false;
        }
        try {
            w wVar = new w(ak.k());
            int iA = wVar.a();
            int iB = wVar.b();
            int iC = wVar.c();
            if (iA > 4) {
                g.h("Okhttp3 版本高于5,将不采集socket数据..");
                return true;
            }
            if (iA == 4) {
                if (iB == 0 && iC > 1) {
                    g.h("Okhttp3 版本高于4.0.1,将不采集socket数据..");
                    return true;
                }
                if (iB == 1 && iC > 1) {
                    g.h("Okhttp3 版本高于4.1.2,将不采集socket数据..");
                    return true;
                }
                if (iB >= 2) {
                    g.h("Okhttp3 版本高于4.2.0,将不采集socket数据..");
                    return true;
                }
            }
            if (iA != 3) {
                return false;
            }
            if (iB == 13 && iC > 1) {
                g.h("Okhttp3 版本高于3.13.1,将不采集socket数据..");
                return true;
            }
            if (iB == 14 && iC > 4) {
                g.h("Okhttp3 版本高于3.14.4,将不采集socket数据..");
                return true;
            }
            if (iB == 12 && iC > 6) {
                g.h("Okhttp3 版本高于3.12.6,将不采集socket数据..");
                return true;
            }
            if (iB < 15) {
                return false;
            }
            g.h("Okhttp3 版本高于3.15.X,将不采集socket数据..");
            return true;
        } catch (Throwable unused) {
        }
    }

    public static boolean checkOkhttpVersionForTcp() {
        try {
            w wVar = new w(ak.k());
            int iA = wVar.a();
            int iB = wVar.b();
            if (iA == 3) {
                if (iB < 11) {
                    return false;
                }
                g.h("Okhttp3 版本高于3.9");
                return true;
            }
            if (iA <= 3) {
                return false;
            }
            g.h("Okhttp3 版本高于4。。。。");
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static Class<? extends SocketImpl> getDefaultSocketImplType() {
        try {
            SocketImpl socketImpl = (SocketImpl) ad.a(ad.a((Class<?>) Socket.class, (Class<?>) SocketImpl.class), new Socket());
            if (socketImpl == null) {
                return null;
            }
            return socketImpl.getClass();
        } catch (d unused) {
            return null;
        }
    }

    public static boolean installNetworkMonitor() {
        try {
            if (checkOkhttpVersion()) {
                g.t("installNetworkMonitor : true");
                return false;
            }
            installSocketImplFactoryV24();
            e.c("install ssl network monitor:false");
            return false;
        } catch (Throwable th) {
            g.d("installNetworkMonitor error:" + th.getMessage());
            return false;
        }
    }

    public static boolean installSocketImplFactoryV24() {
        try {
            Class<? extends SocketImpl> defaultSocketImplType = null;
            SocketImplFactory socketImplFactory = (SocketImplFactory) ad.a(ad.a((Class<?>) Socket.class, (Class<?>) SocketImplFactory.class), (Object) null);
            if (socketImplFactory == null) {
                defaultSocketImplType = getDefaultSocketImplType();
                if (defaultSocketImplType == null) {
                    return false;
                }
            } else if (socketImplFactory instanceof b) {
                return true;
            }
            if (socketImplFactory == null) {
                if (defaultSocketImplType != null) {
                    Socket.setSocketImplFactory(new b(defaultSocketImplType));
                }
                return false;
            }
            reflectivelyInstallSocketImplFactory(new b(socketImplFactory));
            return true;
        } catch (d | IOException | IllegalAccessException unused) {
        }
    }

    public static boolean isQuoteOkhttp3() {
        try {
            Class.forName(OkHttpClient.class.getName());
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean reflectivelyInstallSocketImplFactory(SocketImplFactory socketImplFactory) throws IllegalAccessException, d {
        Field fieldA = ad.a((Class<?>) Socket.class, (Class<?>) SocketImplFactory.class);
        fieldA.setAccessible(true);
        fieldA.set(null, socketImplFactory);
        return true;
    }
}
