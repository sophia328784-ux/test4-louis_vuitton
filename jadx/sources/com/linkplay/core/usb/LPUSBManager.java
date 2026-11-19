package com.linkplay.core.usb;

import android.text.TextUtils;
import com.android.wiimu.upnp.IWiimuActionCallback;
import com.android.wiimu.upnp.impl.h;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.clingx.LPDlnaPlayerData;
import com.linkplay.core.device.LPDevice;
import java.util.Map;
import org.teleal.cling.model.meta.Device;

/* JADX INFO: loaded from: classes2.dex */
public class LPUSBManager {
    private static LPUSBManager instance;

    private LPUSBManager() {
    }

    private Device getDevice(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return LPDlnaPlayerData.me().getMediaRenderByuuid(str);
    }

    public static LPUSBManager getInstance() {
        if (instance == null) {
            synchronized (LPUSBManager.class) {
                try {
                    if (instance == null) {
                        instance = new LPUSBManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    public void browseUSBWithId(String str, final LPBrowseUSBListener lPBrowseUSBListener) {
        LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(str);
        if (lPDeviceDeviceForID == null) {
            if (lPBrowseUSBListener != null) {
                lPBrowseUSBListener.onFail(new Exception("Device is null"));
                return;
            }
            return;
        }
        Device device = getDevice(lPDeviceDeviceForID.getUpnpUUID());
        if (device == null) {
            if (lPBrowseUSBListener != null) {
                lPBrowseUSBListener.onFail(new Exception("remote Device is null"));
                return;
            }
            return;
        }
        try {
            h.b().browseQueueUSBDisk(device, new IWiimuActionCallback(this) { // from class: com.linkplay.core.usb.LPUSBManager.1
                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void failure(Exception exc) {
                    LPBrowseUSBListener lPBrowseUSBListener2 = lPBrowseUSBListener;
                    if (lPBrowseUSBListener2 != null) {
                        lPBrowseUSBListener2.onFail(exc);
                    }
                }

                @Override // com.android.wiimu.upnp.IWiimuActionCallback
                public void success(Map map) {
                    if (map != null) {
                        String string = map.containsKey("QueueContext") ? map.get("QueueContext").toString() : "";
                        LPBrowseUSBListener lPBrowseUSBListener2 = lPBrowseUSBListener;
                        if (lPBrowseUSBListener2 != null) {
                            lPBrowseUSBListener2.onSuccess(string);
                        }
                    }
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            if (lPBrowseUSBListener != null) {
                lPBrowseUSBListener.onFail(e2);
            }
        }
    }
}
