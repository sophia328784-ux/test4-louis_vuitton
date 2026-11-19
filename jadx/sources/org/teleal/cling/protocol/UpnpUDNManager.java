package org.teleal.cling.protocol;

import android.text.TextUtils;
import com.linkplay.log.LinkplayLog;
import defpackage.n00;
import java.util.ArrayList;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.teleal.cling.model.types.UpnpDeviceType;

/* JADX INFO: loaded from: classes5.dex */
public class UpnpUDNManager {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final UpnpUDNManager f78538c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ReentrantReadWriteLock f78539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f78540b;

    public static class UpnpUDNInstance {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f78541a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f78542b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f78543c = UpnpDeviceType.MediaRenderer.a();
        public String d = "";

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f78544e = "";

        public UpnpUDNInstance(String str, String str2) {
            this.f78541a = "";
            this.f78542b = "";
            this.f78541a = str;
            this.f78542b = str2;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("UpnpUDNInstance{udn='");
            sb.append(this.f78541a);
            sb.append("', descriptionUrl='");
            sb.append(this.f78542b);
            sb.append("', mediaType='");
            sb.append(this.f78543c);
            sb.append("', security='");
            sb.append(this.d);
            sb.append("', bootid='");
            return n00.r(this.f78544e, "'}", sb);
        }
    }

    static {
        UpnpUDNManager upnpUDNManager = new UpnpUDNManager();
        upnpUDNManager.f78539a = new ReentrantReadWriteLock();
        upnpUDNManager.f78540b = new ArrayList();
        f78538c = upnpUDNManager;
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.contains("uuid:")) {
            str = str.replaceAll("uuid:", "");
        }
        return str.contains("-") ? str.replaceAll("-", "") : str;
    }

    public static boolean d(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        String strB = b(str);
        String strB2 = b(str2);
        return strB.toLowerCase().contains(strB2.toLowerCase()) || strB2.toLowerCase().contains(strB.toLowerCase());
    }

    public final void a(String str) {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f78539a;
        reentrantReadWriteLock.writeLock().lock();
        if (TextUtils.isEmpty(str)) {
            reentrantReadWriteLock.writeLock().unlock();
            return;
        }
        if (this.f78540b == null) {
            this.f78540b = new ArrayList();
        }
        if (!c(str)) {
            boolean zIsEmpty = TextUtils.isEmpty(str);
            if (TextUtils.isEmpty(b(str))) {
                zIsEmpty = true;
            }
            if (!zIsEmpty) {
                if (TextUtils.isEmpty(str)) {
                    reentrantReadWriteLock.writeLock().unlock();
                    return;
                }
                this.f78540b.add(str);
                LinkplayLog.i("UPNP-SEARCH", "UpnpUDNManager add uuid: ".concat(str));
                reentrantReadWriteLock.writeLock().unlock();
                return;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
    }

    public final boolean c(String str) {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f78539a;
        reentrantReadWriteLock.readLock().lock();
        boolean z = false;
        if (TextUtils.isEmpty(str)) {
            reentrantReadWriteLock.readLock().unlock();
            return false;
        }
        ArrayList arrayList = this.f78540b;
        if (arrayList == null || arrayList.size() <= 0) {
            reentrantReadWriteLock.readLock().unlock();
            return false;
        }
        int size = this.f78540b.size();
        for (int i2 = 0; i2 < size; i2++) {
            String strB = b((String) this.f78540b.get(i2));
            if (!TextUtils.isEmpty(strB) && d(strB, str)) {
                z = true;
                break;
            }
        }
        reentrantReadWriteLock.readLock().unlock();
        return z;
    }

    public final void e(String str) {
        ReentrantReadWriteLock reentrantReadWriteLock = this.f78539a;
        reentrantReadWriteLock.writeLock().lock();
        if (TextUtils.isEmpty(str)) {
            reentrantReadWriteLock.writeLock().unlock();
            return;
        }
        String strB = b(str);
        if (TextUtils.isEmpty(strB)) {
            reentrantReadWriteLock.writeLock().unlock();
            return;
        }
        ArrayList arrayList = this.f78540b;
        if (arrayList == null || arrayList.size() <= 0) {
            reentrantReadWriteLock.writeLock().unlock();
            return;
        }
        int size = this.f78540b.size();
        for (int i2 = 0; i2 < size; i2++) {
            String str2 = (String) this.f78540b.get(i2);
            String strB2 = b(str2);
            if (!TextUtils.isEmpty(strB2) && d(strB2, strB)) {
                LinkplayLog.i("UPNP-SEARCH", "UpnpUDNManager get Removed item = " + ((String) this.f78540b.get(i2)));
                this.f78540b.remove(str2);
                LinkplayLog.i("UPNP-SEARCH", "UpnpUDNManager remove uuid = " + str2);
                break;
            }
        }
        reentrantReadWriteLock.writeLock().unlock();
    }
}
