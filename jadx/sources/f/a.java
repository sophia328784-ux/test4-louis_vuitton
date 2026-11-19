package f;

import com.batch.android.q0.b;
import com.linkplay.core.app.LPDeviceManager;
import defpackage.n00;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f68985a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ReentrantLock f68986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ConcurrentHashMap f68987c;

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(LPDeviceManager.getInstance().getContext().getCacheDir().getAbsolutePath());
        String strR = n00.r(File.separator, "ipscan", sb);
        f68985a = strR;
        f68986b = new ReentrantLock();
        f68987c = new ConcurrentHashMap();
        File file = new File(strR);
        if (file.exists() && file.isDirectory()) {
            return;
        }
        file.mkdirs();
    }

    public static int a(String str) {
        String[] strArrSplit = str.split("\\.");
        if (strArrSplit.length != 4) {
            return 0;
        }
        int length = strArrSplit.length;
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = (byte) Integer.parseInt(strArrSplit[i2]);
        }
        return (bArr[0] & 255) | ((bArr[1] << 8) & 65280) | ((bArr[2] << 16) & 16711680) | ((bArr[3] << 24) & b.v);
    }

    public static File b(String str) {
        if (str == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(f68985a);
        String strR = n00.r(File.separator, str, sb);
        File file = new File(strR);
        if (file.exists()) {
            return file;
        }
        ReentrantLock reentrantLock = f68986b;
        reentrantLock.lock();
        File file2 = new File(strR);
        if (!file2.exists()) {
            try {
                file2.createNewFile();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
        reentrantLock.unlock();
        return file2;
    }
}
