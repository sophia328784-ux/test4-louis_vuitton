package com.linkplay.core.clingx;

import android.R;
import android.app.Application;
import android.widget.ArrayAdapter;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.DeviceIdentity;

/* JADX INFO: loaded from: classes2.dex */
public class LPDlnaPlayerData {

    /* JADX INFO: renamed from: me, reason: collision with root package name */
    private static LPDlnaPlayerData f36294me = new LPDlnaPlayerData();
    public Device CurrentMediaRender;
    private ArrayAdapter<Device> MediaRenderAdapter;
    private ReentrantReadWriteLock lock = new ReentrantReadWriteLock();

    private LPDlnaPlayerData() {
    }

    public static LPDlnaPlayerData me() {
        return f36294me;
    }

    public void addMediaRenderer(Device device) {
        this.lock.writeLock().lock();
        try {
            int position = this.MediaRenderAdapter.getPosition(device);
            ArrayAdapter<Device> arrayAdapter = this.MediaRenderAdapter;
            if (position >= 0) {
                arrayAdapter.remove(device);
                this.MediaRenderAdapter.insert(device, position);
            } else {
                arrayAdapter.add(device);
            }
            this.MediaRenderAdapter.notifyDataSetChanged();
        } finally {
            this.lock.writeLock().unlock();
        }
    }

    public void clearMediaRenderers() {
        this.lock.writeLock().lock();
        try {
            this.MediaRenderAdapter.clear();
        } finally {
            this.lock.writeLock().unlock();
        }
    }

    public Device getMediaRenderByuuid(String str) {
        DeviceIdentity deviceIdentity;
        try {
            this.lock.readLock().lock();
            ArrayAdapter<Device> arrayAdapter = this.MediaRenderAdapter;
            Device device = null;
            if (arrayAdapter != null && arrayAdapter.getCount() != 0) {
                for (int i2 = 0; i2 < this.MediaRenderAdapter.getCount(); i2++) {
                    Device item = this.MediaRenderAdapter.getItem(i2);
                    if (item != null && (deviceIdentity = item.f78444a) != null) {
                        String string = deviceIdentity.f78458a.toString();
                        if (str != null && string.equals(str)) {
                            device = item;
                            break;
                        }
                    }
                }
                return device;
            }
            return null;
        } finally {
            this.lock.readLock().unlock();
        }
    }

    public ArrayAdapter<Device> getMediaRenderers() {
        this.lock.readLock().lock();
        try {
            return this.MediaRenderAdapter;
        } finally {
            this.lock.readLock().unlock();
        }
    }

    public Device removeMediaRenderByuuid(String str) {
        Device item;
        try {
            this.lock.writeLock().lock();
            int i2 = 0;
            while (true) {
                if (i2 >= this.MediaRenderAdapter.getCount()) {
                    item = null;
                    break;
                }
                item = this.MediaRenderAdapter.getItem(i2);
                if (item.f78444a.f78458a.toString().equals(str)) {
                    break;
                }
                i2++;
            }
            if (item != null) {
                this.MediaRenderAdapter.remove(item);
            }
            return item;
        } finally {
            this.lock.writeLock().unlock();
        }
    }

    public void resetDlnaPlayerData(Application application) {
        this.lock.writeLock().lock();
        try {
            this.MediaRenderAdapter = new ArrayAdapter<>(application, R.layout.simple_list_item_1);
            this.CurrentMediaRender = null;
        } finally {
            this.lock.writeLock().unlock();
        }
    }
}
