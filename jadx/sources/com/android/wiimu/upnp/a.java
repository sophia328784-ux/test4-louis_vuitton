package com.android.wiimu.upnp;

import android.R;
import android.app.Application;
import android.widget.ArrayAdapter;
import java.util.concurrent.locks.ReentrantLock;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.DeviceIdentity;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static a f22488f = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f22489a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Device f22490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayAdapter<Device> f22491c;
    private ArrayAdapter<Device> d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ReentrantLock f22492e = new ReentrantLock();

    private a() {
    }

    public static a f() {
        return f22488f;
    }

    public Device a(String str) {
        DeviceIdentity deviceIdentity;
        this.f22492e.lock();
        ArrayAdapter<Device> arrayAdapter = this.f22491c;
        Device device = null;
        if (arrayAdapter == null || arrayAdapter.getCount() == 0) {
            this.f22492e.unlock();
            return null;
        }
        for (int i2 = 0; i2 < this.f22491c.getCount(); i2++) {
            try {
                Device item = this.f22491c.getItem(i2);
                if (item != null && (deviceIdentity = item.f78444a) != null) {
                    String string = deviceIdentity.f78458a.toString();
                    if (str != null && string.equals(str)) {
                        device = item;
                        break;
                    }
                }
            } finally {
                this.f22492e.unlock();
            }
        }
        return device;
    }

    public Device b(String str) {
        Device item;
        this.f22492e.lock();
        int i2 = 0;
        while (true) {
            try {
                if (i2 >= this.f22491c.getCount()) {
                    item = null;
                    break;
                }
                item = this.f22491c.getItem(i2);
                if (item.f78444a.f78458a.toString().equals(str)) {
                    break;
                }
                i2++;
            } catch (Throwable th) {
                this.f22492e.unlock();
                throw th;
            }
        }
        if (item != null) {
            this.f22491c.remove(item);
        }
        this.f22492e.unlock();
        return item;
    }

    public synchronized void c(Device device) {
        this.f22492e.lock();
        try {
            if (this.d.getPosition(device) >= 0) {
                this.d.remove(device);
            }
            this.d.notifyDataSetChanged();
            this.f22492e.unlock();
        } catch (Throwable th) {
            this.f22492e.unlock();
            throw th;
        }
    }

    public int d() {
        this.f22492e.lock();
        try {
            return this.d.getCount();
        } finally {
            this.f22492e.unlock();
        }
    }

    public ArrayAdapter<Device> e() {
        this.f22492e.lock();
        try {
            return this.d;
        } finally {
            this.f22492e.unlock();
        }
    }

    public ArrayAdapter<Device> c() {
        this.f22492e.lock();
        try {
            return this.f22491c;
        } finally {
            this.f22492e.unlock();
        }
    }

    public void b() {
        this.f22492e.lock();
        try {
            this.d.clear();
        } finally {
            this.f22492e.unlock();
        }
    }

    public synchronized void b(Device device) {
        this.f22492e.lock();
        try {
            int position = this.d.getPosition(device);
            ArrayAdapter<Device> arrayAdapter = this.d;
            if (position >= 0) {
                arrayAdapter.remove(device);
                this.d.insert(device, position);
            } else {
                arrayAdapter.add(device);
            }
            this.d.notifyDataSetChanged();
            this.f22492e.unlock();
        } catch (Throwable th) {
            this.f22492e.unlock();
            throw th;
        }
    }

    public synchronized void a(Device device) {
        this.f22492e.lock();
        try {
            int position = this.f22491c.getPosition(device);
            ArrayAdapter<Device> arrayAdapter = this.f22491c;
            if (position >= 0) {
                arrayAdapter.remove(device);
                this.f22491c.insert(device, position);
            } else {
                arrayAdapter.add(device);
            }
            this.f22491c.notifyDataSetChanged();
            this.f22492e.unlock();
        } catch (Throwable th) {
            this.f22492e.unlock();
            throw th;
        }
    }

    public void a() {
        this.f22492e.lock();
        try {
            this.f22491c.clear();
        } finally {
            this.f22492e.unlock();
        }
    }

    public void a(Application application) {
        this.f22492e.lock();
        try {
            this.f22491c = new ArrayAdapter<>(application, R.layout.simple_list_item_1);
            this.d = new ArrayAdapter<>(application, R.layout.simple_list_item_1);
            this.f22490b = null;
            this.f22489a = null;
        } finally {
            this.f22492e.unlock();
        }
    }
}
