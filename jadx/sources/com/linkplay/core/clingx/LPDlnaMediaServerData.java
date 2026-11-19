package com.linkplay.core.clingx;

import android.R;
import android.app.Application;
import android.widget.ArrayAdapter;
import com.linkplay.log.LinkplayLog;
import com.linkplay.log.LinkplayLogTags;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.DeviceIdentity;

/* JADX INFO: loaded from: classes2.dex */
public class LPDlnaMediaServerData {

    /* JADX INFO: renamed from: me, reason: collision with root package name */
    private static LPDlnaMediaServerData f36293me = new LPDlnaMediaServerData();
    private ArrayAdapter<Device> MediaServerAdapter;
    private ReentrantReadWriteLock lock = new ReentrantReadWriteLock();

    private LPDlnaMediaServerData() {
    }

    public static LPDlnaMediaServerData me() {
        return f36293me;
    }

    public void addMediaServer(Device device) {
        this.lock.writeLock().lock();
        try {
            int position = this.MediaServerAdapter.getPosition(device);
            ArrayAdapter<Device> arrayAdapter = this.MediaServerAdapter;
            if (position >= 0) {
                arrayAdapter.remove(device);
                this.MediaServerAdapter.insert(device, position);
            } else {
                arrayAdapter.add(device);
            }
            LinkplayLog.i(LinkplayLogTags.LPLogTag, "add media server");
            this.MediaServerAdapter.notifyDataSetChanged();
        } finally {
            this.lock.writeLock().unlock();
        }
    }

    public void clearMediaServers() {
        try {
            this.lock.writeLock().lock();
            if (this.MediaServerAdapter != null) {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "clear media server");
                this.MediaServerAdapter.clear();
            }
        } finally {
            this.lock.writeLock().unlock();
        }
    }

    public Device getMediaServerByuuid(String str) {
        DeviceIdentity deviceIdentity;
        try {
            this.lock.readLock().lock();
            ArrayAdapter<Device> arrayAdapter = this.MediaServerAdapter;
            Device device = null;
            if (arrayAdapter != null && arrayAdapter.getCount() != 0) {
                for (int i2 = 0; i2 < this.MediaServerAdapter.getCount(); i2++) {
                    Device item = this.MediaServerAdapter.getItem(i2);
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

    public int getMediaServerCount() {
        this.lock.readLock().lock();
        try {
            ArrayAdapter<Device> arrayAdapter = this.MediaServerAdapter;
            if (arrayAdapter != null) {
                return arrayAdapter.getCount();
            }
            return 0;
        } finally {
            this.lock.readLock().unlock();
        }
    }

    public ArrayAdapter<Device> getMediaServers() {
        try {
            this.lock.readLock().lock();
            ArrayAdapter<Device> arrayAdapter = this.MediaServerAdapter;
            ReentrantReadWriteLock reentrantReadWriteLock = this.lock;
            if (arrayAdapter != null) {
                reentrantReadWriteLock.readLock().unlock();
                return arrayAdapter;
            }
            reentrantReadWriteLock.readLock().unlock();
            return null;
        } catch (Throwable th) {
            this.lock.readLock().unlock();
            throw th;
        }
    }

    public void removeMediaServer(Device device) {
        this.lock.writeLock().lock();
        try {
            if (this.MediaServerAdapter.getPosition(device) >= 0) {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "remove media server");
                this.MediaServerAdapter.remove(device);
            }
            this.MediaServerAdapter.notifyDataSetChanged();
        } finally {
            this.lock.writeLock().unlock();
        }
    }

    public Device removeMediaServerByuuid(String str) {
        try {
            this.lock.writeLock().lock();
            ArrayAdapter<Device> arrayAdapter = this.MediaServerAdapter;
            Device device = null;
            if (arrayAdapter != null && arrayAdapter.getCount() != 0) {
                for (int i2 = 0; i2 < this.MediaServerAdapter.getCount(); i2++) {
                    Device item = this.MediaServerAdapter.getItem(i2);
                    if (item.f78444a.f78458a.toString().equals(str)) {
                        device = item;
                        break;
                    }
                }
                if (device != null) {
                    this.MediaServerAdapter.remove(device);
                }
                return device;
            }
            return null;
        } finally {
            this.lock.writeLock().unlock();
        }
    }

    public void resetDlnaPlayerData(Application application) {
        this.lock.writeLock().lock();
        try {
            this.MediaServerAdapter = new ArrayAdapter<>(application, R.layout.simple_list_item_1);
        } finally {
            this.lock.writeLock().unlock();
        }
    }
}
