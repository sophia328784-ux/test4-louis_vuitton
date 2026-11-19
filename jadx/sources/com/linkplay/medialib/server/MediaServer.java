package com.linkplay.medialib.server;

import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import java.util.Random;

/* JADX INFO: loaded from: classes2.dex */
public class MediaServer {
    private static int portExt = new Random(System.currentTimeMillis()).nextInt(NBSApplicationStateMonitor.ALTERNATEPERIOD);
    public static final int defaultPort = 11234;
    public static int port = defaultPort;

    static {
        new HttpServer(port);
    }
}
