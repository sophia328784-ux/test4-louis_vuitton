package com.android.wiimu.onlineprotect;

import android.net.wifi.WifiManager;
import android.text.TextUtils;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.clingx.LPSearchControlPoint;
import com.linkplay.core.model.menubar.MenuBarConstants;
import com.sightcall.universal.media.offline.FileUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.DatagramPacket;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import org.teleal.cling.transport.Router;
import org.teleal.cling.transport.impl.DatagramProcessorImpl;

/* JADX INFO: loaded from: classes.dex */
public class b extends Thread {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f22465a = "WiimuSDK";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f22466b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Timer f22467c = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<e.a> f22468e = new ArrayList();
    private Executor d = a();

    public class a extends ThreadPoolExecutor implements AutoCloseable {
        public a(b bVar, int i2, int i3, long j2, TimeUnit timeUnit, BlockingQueue blockingQueue) {
            super(i2, i3, j2, timeUnit, blockingQueue);
        }

        @Override // java.util.concurrent.ThreadPoolExecutor
        public void beforeExecute(Thread thread, Runnable runnable) {
            super.beforeExecute(thread, runnable);
            thread.setName("Thread " + thread.getId() + " (Active: " + getActiveCount() + ")");
        }

        @Override // java.lang.AutoCloseable
        public final /* synthetic */ void close() {
            boolean zIsTerminated;
            if (this == ForkJoinPool.commonPool() || (zIsTerminated = isTerminated())) {
                return;
            }
            shutdown();
            boolean z = false;
            while (!zIsTerminated) {
                try {
                    zIsTerminated = awaitTermination(1L, TimeUnit.DAYS);
                } catch (InterruptedException unused) {
                    if (!z) {
                        shutdownNow();
                        z = true;
                    }
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* JADX INFO: renamed from: com.android.wiimu.onlineprotect.b$b, reason: collision with other inner class name */
    public class C0035b extends ThreadPoolExecutor.DiscardPolicy {
        public C0035b(b bVar) {
        }

        @Override // java.util.concurrent.ThreadPoolExecutor.DiscardPolicy, java.util.concurrent.RejectedExecutionHandler
        public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            Runnable runnablePeek = threadPoolExecutor.getQueue().peek();
            BlockingQueue<Runnable> queue = threadPoolExecutor.getQueue();
            if (queue != null) {
                queue.clear();
                if (runnablePeek != null) {
                    queue.add(runnablePeek);
                }
            }
            runnable.getClass().toString();
            super.rejectedExecution(runnable, threadPoolExecutor);
        }
    }

    public class c extends TimerTask {
        public c() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (LPDeviceManager.getInstance().isAppOnForeground()) {
                b.this.b();
            }
        }
    }

    private Executor a() {
        a aVar = new a(this, 8, 16, 5L, TimeUnit.SECONDS, new ArrayBlockingQueue(512));
        aVar.setRejectedExecutionHandler(new C0035b(this));
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        WifiManager wifiManager = (WifiManager) LPDeviceManager.getInstance().getContext().getApplicationContext().getSystemService(MenuBarConstants.MEDIA_TYPE_WIFI);
        if (wifiManager != null) {
            String strReplaceAll = wifiManager.getConnectionInfo().getSSID().replaceAll("\"", "");
            int ipAddress = wifiManager.getConnectionInfo().getIpAddress();
            String str = f.a.f68985a;
            byte[] bArr = {(byte) (ipAddress & 255), (byte) ((65280 & ipAddress) >> 8), (byte) ((16711680 & ipAddress) >> 16), (byte) ((ipAddress & com.batch.android.q0.b.v) >> 24)};
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < 4; i2++) {
                sb.append(bArr[i2] & 255);
                if (i2 < 3) {
                    sb.append(FileUtils.HIDDEN_PREFIX);
                }
            }
            String string = sb.toString();
            File fileB = f.a.b(strReplaceAll);
            Executor executor = this.d;
            if (executor != null) {
                executor.execute(new d(fileB, strReplaceAll, string));
            }
        }
    }

    private void c() {
        Timer timer = new Timer();
        this.f22467c = timer;
        timer.schedule(new c(), 1000L, 10000L);
    }

    private void d() {
        Timer timer = this.f22467c;
        if (timer != null) {
            timer.cancel();
        }
    }

    public void e() {
        this.f22466b = false;
        d();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        c();
    }

    public class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private File f22470a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f22471b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f22472c;

        public d(File file, String str, String str2) {
            this.f22470a = file;
            this.f22471b = str;
            this.f22472c = str2;
        }

        private String a(e.a aVar) {
            StringBuffer stringBuffer = new StringBuffer("HTTP/1.1 200 OK\r\nCACHE-CONTROL: max-age=1800\r\n");
            stringBuffer.append("LOCATION: http://" + aVar.f68708a + ":59152/description.xml\r\n");
            stringBuffer.append("SERVER: Linux/2.6.21\r\nST: urn:schemas-upnp-org:device:MediaRenderer:1\r\n");
            String str = aVar.d;
            if (!TextUtils.isEmpty(str)) {
                stringBuffer.append("MAC: " + str.toUpperCase() + "\r\n");
            }
            stringBuffer.append("USN: " + aVar.f68709b + "::urn:schemas-upnp-org:device:MediaRenderer:1\r\n");
            stringBuffer.append("\r\n");
            return stringBuffer.toString();
        }

        private void b(e.a aVar) {
            String str = aVar.f68709b;
            String str2 = aVar.f68708a;
            if (TextUtils.isEmpty(str)) {
                return;
            }
            LPSearchControlPoint.getInstance();
            if (LPSearchControlPoint.upnpservice != null) {
                LPSearchControlPoint.getInstance();
                Router routerC = LPSearchControlPoint.upnpservice.b().f78548a.c();
                if (routerC == null) {
                    return;
                }
                byte[] bytes = a(aVar).getBytes();
                try {
                    DatagramPacket datagramPacket = new DatagramPacket(bytes, bytes.length);
                    DatagramProcessorImpl datagramProcessorImpl = new DatagramProcessorImpl();
                    datagramPacket.setAddress(InetAddress.getByName(str2));
                    routerC.b(datagramProcessorImpl.b(InetAddress.getByName(str2), datagramPacket));
                } catch (AssertionError e2) {
                    e2.printStackTrace();
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            FileOutputStream fileOutputStream;
            FileOutputStream fileOutputStream2;
            List<e.a> listA = a();
            b.this.f22468e = listA;
            for (int i2 = 0; i2 < listA.size(); i2++) {
                e.a aVar = listA.get(i2);
                String str = aVar.f68708a;
                if (((int) (((long) f.a.a(str)) & 16777215)) != ((int) (((long) f.a.a(this.f22472c)) & 16777215))) {
                    String str2 = this.f22471b;
                    ReentrantLock reentrantLock = f.a.f68986b;
                    reentrantLock.lock();
                    File fileB = f.a.b(str2);
                    if (fileB != null) {
                        fileB.deleteOnExit();
                    }
                    reentrantLock.unlock();
                    return;
                }
                if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(aVar.f68709b)) {
                    com.android.wiimu.onlineprotect.a.f22462c.containsKey(str);
                }
            }
            int size = b.this.f22468e.size();
            StringBuffer stringBuffer = new StringBuffer();
            HashMap map = new HashMap();
            StringBuffer stringBuffer2 = new StringBuffer();
            Iterator<Map.Entry<String, String>> it = com.android.wiimu.onlineprotect.a.f22462c.entrySet().iterator();
            while (true) {
                fileOutputStream = null;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, String> next = it.next();
                e.a aVar2 = new e.a(next.getKey(), next.getValue(), null);
                stringBuffer2.append(aVar2.toString().concat("\r\n"));
                map.put(aVar2.f68709b, 1);
            }
            if (!b.this.f22468e.isEmpty()) {
                for (int i3 = size - 1; i3 >= 0; i3--) {
                    e.a aVar3 = (e.a) b.this.f22468e.get(i3);
                    String str3 = aVar3.f68709b;
                    Integer num = (Integer) map.get(str3);
                    int iIntValue = num == null ? 0 : num.intValue();
                    if (f.a.f68987c.containsKey(str3) || iIntValue > 0) {
                        b.this.f22468e.remove(i3);
                    } else {
                        map.put(str3, Integer.valueOf(iIntValue + 1));
                        if (!TextUtils.isEmpty(aVar3.f68708a) && !TextUtils.isEmpty(str3)) {
                            stringBuffer.append(aVar3.toString().concat("\r\n"));
                            b(aVar3);
                        }
                    }
                }
            }
            stringBuffer.append(stringBuffer2.toString());
            String string = stringBuffer.toString();
            String str4 = this.f22471b;
            ReentrantLock reentrantLock2 = f.a.f68986b;
            reentrantLock2.lock();
            try {
                try {
                    try {
                        fileOutputStream2 = new FileOutputStream(f.a.b(str4), false);
                        try {
                            fileOutputStream2.write(string.getBytes());
                            fileOutputStream2.flush();
                            fileOutputStream2.close();
                        } catch (AssertionError e2) {
                            e = e2;
                            fileOutputStream = fileOutputStream2;
                            e.printStackTrace();
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            reentrantLock2.unlock();
                        } catch (Exception e3) {
                            e = e3;
                            fileOutputStream = fileOutputStream2;
                            e.printStackTrace();
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            reentrantLock2.unlock();
                        } catch (Throwable th) {
                            th = th;
                            if (fileOutputStream2 != null) {
                                try {
                                    fileOutputStream2.close();
                                } catch (IOException e4) {
                                    e4.printStackTrace();
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e5) {
                        e5.printStackTrace();
                    }
                } catch (AssertionError e6) {
                    e = e6;
                } catch (Exception e7) {
                    e = e7;
                }
                reentrantLock2.unlock();
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
            }
        }

        private List<e.a> a() {
            ArrayList arrayList = new ArrayList();
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(this.f22470a)));
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    if (line.contains("@")) {
                        String[] strArrSplit = line.split("@");
                        try {
                            arrayList.add(new e.a(strArrSplit[0], strArrSplit[1]));
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
            return arrayList;
        }
    }
}
