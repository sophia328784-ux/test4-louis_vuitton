package com.linkplay.core.group;

import android.text.TextUtils;
import com.linkplay.core.app.LPDeviceManager;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.status.LPPendingSlave;
import com.linkplay.log.LinkplayLog;
import com.linkplay.log.LinkplayLogTags;
import com.linkplay.network.HttpRequestUtils;
import com.linkplay.network.IOkHttpRequestCallback;
import com.linkplay.network.OkHttpResponseItem;
import com.linkplay.request.LPRequestAction;
import com.linkplay.request.RequestItem;
import defpackage.n00;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class LPMultiroomManager implements Serializable {
    private static final String TAG = "LPMultiroomManager";
    Thread checkThread;
    private static final LPMultiroomManager instance = new LPMultiroomManager();
    private static long GROUP_TIMEOUT = 10000;
    private String version = "1.0.0";
    private int joinGroupCount = 0;
    private int joinGroupIndex = 0;
    private boolean isJoinGroupFailed = false;
    int leaveGroupCount = 0;
    int leaveGroupIndex = 0;
    boolean leaveGroupFailed = false;

    /* JADX INFO: renamed from: com.linkplay.core.group.LPMultiroomManager$5, reason: invalid class name */
    public class AnonymousClass5 implements Runnable {
        boolean running = true;
        final /* synthetic */ LPMultiroomListener val$listener;
        final /* synthetic */ LPDevice val$source;
        final /* synthetic */ long val$startTime;
        final /* synthetic */ LPDevice val$target;

        public AnonymousClass5(LPMultiroomManager lPMultiroomManager, LPDevice lPDevice, long j2, LPMultiroomListener lPMultiroomListener, LPDevice lPDevice2) {
            this.val$source = lPDevice;
            this.val$startTime = j2;
            this.val$listener = lPMultiroomListener;
            this.val$target = lPDevice2;
        }

        @Override // java.lang.Runnable
        public void run() {
            RequestItem requestItemL = n00.l(this.val$source, n00.k(this.val$source, new RequestItem.Builder()));
            while (this.running) {
                if (System.currentTimeMillis() - this.val$startTime > LPMultiroomManager.GROUP_TIMEOUT) {
                    LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager join group time out");
                    LPMultiroomListener lPMultiroomListener = this.val$listener;
                    if (lPMultiroomListener != null) {
                        lPMultiroomListener.failed(new Exception("time out"));
                        return;
                    }
                    return;
                }
                LPRequestAction.getInstance().getStatusEx(requestItemL, new LPRequestAction.IRequestListener() { // from class: com.linkplay.core.group.LPMultiroomManager.5.1
                    @Override // com.linkplay.request.LPRequestAction.IRequestListener
                    public void onFailed(Throwable th) {
                        LPMultiroomListener lPMultiroomListener2 = AnonymousClass5.this.val$listener;
                        if (lPMultiroomListener2 != null) {
                            lPMultiroomListener2.failed(new Exception(th.getLocalizedMessage()));
                        }
                    }

                    @Override // com.linkplay.request.LPRequestAction.IRequestListener
                    public void onSuccess(String str) {
                        AnonymousClass5.this.val$source.getDeviceStatus().setDeviceStatus(str);
                        LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager checkoutJoinResult:" + str + " group: " + AnonymousClass5.this.val$source.getDeviceStatus().getGroup() + "  sourceuuid: " + AnonymousClass5.this.val$source.getDeviceStatus().getUUID() + " sourceName: " + AnonymousClass5.this.val$source.getDeviceStatus().getFriendlyName() + "  targetuuid: " + AnonymousClass5.this.val$target.getDeviceStatus().getUUID() + " targetName: " + AnonymousClass5.this.val$target.getDeviceStatus().getFriendlyName());
                        LPDevice lPDevice = AnonymousClass5.this.val$source;
                        if (lPDevice == null || lPDevice.getDeviceStatus().getGroup() <= 0 || !AnonymousClass5.this.val$target.getDeviceStatus().getUUID().equals(AnonymousClass5.this.val$source.getDeviceStatus().getMaster_uuid())) {
                            return;
                        }
                        LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(AnonymousClass5.this.val$source.getUpnpUUID());
                        if (lPDeviceDeviceForID != null) {
                            lPDeviceDeviceForID.getDeviceStatus().setDeviceStatus(str);
                        }
                        AnonymousClass5 anonymousClass5 = AnonymousClass5.this;
                        if (anonymousClass5.val$listener == null || !anonymousClass5.running) {
                            return;
                        }
                        LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager 加组成功");
                        AnonymousClass5.this.val$listener.success("join group success");
                        AnonymousClass5.this.running = false;
                    }
                });
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.linkplay.core.group.LPMultiroomManager$7, reason: invalid class name */
    public class AnonymousClass7 implements Runnable {
        boolean running = true;
        final /* synthetic */ LPMultiroomListener val$listener;
        final /* synthetic */ LPDevice val$source;
        final /* synthetic */ long val$startTime;

        public AnonymousClass7(LPMultiroomManager lPMultiroomManager, LPDevice lPDevice, long j2, LPMultiroomListener lPMultiroomListener) {
            this.val$source = lPDevice;
            this.val$startTime = j2;
            this.val$listener = lPMultiroomListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            RequestItem requestItemL = n00.l(this.val$source, new RequestItem.Builder().ip(this.val$source.getIp()));
            while (this.running) {
                if (System.currentTimeMillis() - this.val$startTime > LPMultiroomManager.GROUP_TIMEOUT) {
                    LPMultiroomListener lPMultiroomListener = this.val$listener;
                    if (lPMultiroomListener != null) {
                        lPMultiroomListener.failed(new Exception("time out"));
                        return;
                    }
                    return;
                }
                LPRequestAction.getInstance().getStatusEx(requestItemL, new LPRequestAction.IRequestListener() { // from class: com.linkplay.core.group.LPMultiroomManager.7.1
                    @Override // com.linkplay.request.LPRequestAction.IRequestListener
                    public void onFailed(Throwable th) {
                        LPMultiroomListener lPMultiroomListener2 = AnonymousClass7.this.val$listener;
                        if (lPMultiroomListener2 != null) {
                            lPMultiroomListener2.failed(new Exception(th.getLocalizedMessage()));
                        }
                    }

                    @Override // com.linkplay.request.LPRequestAction.IRequestListener
                    public void onSuccess(String str) {
                        AnonymousClass7.this.val$source.getDeviceStatus().setDeviceStatus(str);
                        if (AnonymousClass7.this.val$source.getDeviceStatus() == null || AnonymousClass7.this.val$source.getDeviceStatus().getGroup() != 0) {
                            return;
                        }
                        LPDevice lPDeviceDeviceForID = LPDeviceManager.getInstance().deviceForID(AnonymousClass7.this.val$source.getUpnpUUID());
                        if (lPDeviceDeviceForID != null) {
                            lPDeviceDeviceForID.getDeviceStatus().setDeviceStatus(str);
                        }
                        AnonymousClass7 anonymousClass7 = AnonymousClass7.this;
                        if (anonymousClass7.val$listener == null || !anonymousClass7.running) {
                            return;
                        }
                        LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager leave group success device: " + AnonymousClass7.this.val$source.getDeviceStatus().getFriendlyName());
                        AnonymousClass7.this.val$listener.success("leave group success");
                        AnonymousClass7.this.running = false;
                    }
                });
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    private LPMultiroomManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkoutJoinResult(LPDevice lPDevice, LPDevice lPDevice2, LPMultiroomListener lPMultiroomListener) {
        if (lPDevice == null || lPDevice2 == null) {
            lPMultiroomListener.failed(new Exception("source and target can not be null."));
            return;
        }
        Thread thread = new Thread(new AnonymousClass5(this, lPDevice, System.currentTimeMillis(), lPMultiroomListener, lPDevice2));
        this.checkThread = thread;
        thread.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkoutLeaveResult(LPDevice lPDevice, LPMultiroomListener lPMultiroomListener) {
        if (lPDevice == null) {
            lPMultiroomListener.failed(new Exception("source and target can not be null."));
            return;
        }
        Thread thread = new Thread(new AnonymousClass7(this, lPDevice, System.currentTimeMillis(), lPMultiroomListener));
        this.checkThread = thread;
        thread.start();
    }

    private void deviceJoinGroup(final LPDevice lPDevice, final LPDevice lPDevice2, final LPMultiroomListener lPMultiroomListener) {
        if (lPDevice == null || lPDevice2 == null) {
            lPMultiroomListener.failed(new Exception("source and target can not be null."));
            return;
        }
        if (lPDevice2.getDeviceStatus() == null || lPDevice2.getDeviceStatus().getGroup() > 0) {
            lPMultiroomListener.failed(new Exception("target can not be Master"));
            return;
        }
        RequestItem requestItemL = n00.l(lPDevice, n00.k(lPDevice, new RequestItem.Builder()));
        HttpRequestUtils requestUtils = HttpRequestUtils.getRequestUtils(requestItemL);
        String str = HttpRequestUtils.getRequestPrefix(requestItemL) + "multiroom:JoinGroup:IP=" + lPDevice2.getIp() + ":uuid=" + lPDevice2.getDeviceStatus().getUUID();
        LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager masterDevice: " + lPDevice2.getDeviceStatus().getFriendlyName() + " slaveDevice: " + lPDevice.getDeviceStatus().getFriendlyName());
        requestUtils.get(str, new IOkHttpRequestCallback() { // from class: com.linkplay.core.group.LPMultiroomManager.4
            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onFailure(Exception exc) {
                super.onFailure(exc);
                LPMultiroomListener lPMultiroomListener2 = lPMultiroomListener;
                if (lPMultiroomListener2 != null) {
                    lPMultiroomListener2.failed(exc);
                }
            }

            @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
            public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                super.onSuccess(okHttpResponseItem);
                if (okHttpResponseItem == null) {
                    onFailure(new Exception("error response empty"));
                    return;
                }
                String uuid = lPDevice2.getDeviceStatus().getUUID();
                lPDevice.getDeviceStatus().setGroup(1);
                lPDevice.getDeviceStatus().setMaster_uuid(uuid);
                lPDevice.getDeviceStatus().setRouter(lPDevice.getDeviceStatus().getMaster_uuid());
                lPDevice.getDeviceStatus().setPendSlave(LPPendingSlave.LP_PENDING_SLAVE);
                LPDeviceManager.getInstance().addLPDevice(lPDevice);
                LPMultiroomManager.this.checkoutJoinResult(lPDevice, lPDevice2, lPMultiroomListener);
            }
        });
    }

    private void deviceLeaveGroup(final LPDevice lPDevice, final LPMultiroomListener lPMultiroomListener) {
        if (lPDevice == null) {
            lPMultiroomListener.failed(new Exception("source and target can not be null."));
        } else if (lPDevice.getDeviceStatus() == null || lPDevice.getDeviceStatus().getGroup() == 0) {
            lPMultiroomListener.success("leave group success");
        } else {
            RequestItem requestItemL = n00.l(lPDevice, new RequestItem.Builder().ip(lPDevice.getIp()));
            HttpRequestUtils.getRequestUtils(requestItemL).get(n00.n(requestItemL, new StringBuilder(), "multiroom:LeaveGroup"), new IOkHttpRequestCallback() { // from class: com.linkplay.core.group.LPMultiroomManager.6
                @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
                public void onFailure(Exception exc) {
                    super.onFailure(exc);
                    LPMultiroomListener lPMultiroomListener2 = lPMultiroomListener;
                    if (lPMultiroomListener2 != null) {
                        lPMultiroomListener2.failed(exc);
                    }
                }

                @Override // com.linkplay.network.IOkHttpRequestCallback, com.linkplay.network.HttpRequestUtils.ResultCallback
                public void onSuccess(OkHttpResponseItem okHttpResponseItem) {
                    super.onSuccess(okHttpResponseItem);
                    if (okHttpResponseItem == null) {
                        onFailure(new Exception("err"));
                    } else {
                        LPMultiroomManager.this.checkoutLeaveResult(lPDevice, lPMultiroomListener);
                    }
                }
            });
        }
    }

    private List<LPDevice> getCheckedDevices(List<LPDevice> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null && list.size() != 0) {
            for (LPDevice lPDevice : list) {
                if (lPDevice.isCheckDevice()) {
                    arrayList.add(lPDevice);
                }
            }
        }
        return arrayList;
    }

    public static LPMultiroomManager getInstance() {
        return instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void privateAddGroupDevices(LPDevice lPDevice, List<LPDevice> list, final LPMultiroomListener lPMultiroomListener) {
        if (list == null || list.size() <= 0) {
            if (lPMultiroomListener != null) {
                lPMultiroomListener.failed(new Exception("add group devices is empty"));
                return;
            }
            return;
        }
        int size = list.size();
        this.joinGroupCount = size;
        this.joinGroupIndex = 0;
        this.isJoinGroupFailed = false;
        for (int i2 = 0; i2 < size; i2++) {
            deviceJoinGroup(list.get(i2), lPDevice, new LPMultiroomListener() { // from class: com.linkplay.core.group.LPMultiroomManager.2
                @Override // com.linkplay.core.group.LPMultiroomListener
                public void failed(Exception exc) {
                    LPMultiroomManager lPMultiroomManager = LPMultiroomManager.this;
                    lPMultiroomManager.joinGroupIndex++;
                    if (lPMultiroomManager.isJoinGroupFailed) {
                        LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager deviceJoinGroup failed isJoinGroupFailed : " + exc.getLocalizedMessage());
                        return;
                    }
                    lPMultiroomManager.isJoinGroupFailed = true;
                    LPMultiroomListener lPMultiroomListener2 = lPMultiroomListener;
                    if (lPMultiroomListener2 != null) {
                        lPMultiroomListener2.failed(new Exception("current device add group failed -1001." + exc.getLocalizedMessage()));
                    }
                }

                @Override // com.linkplay.core.group.LPMultiroomListener
                public void success(String str) {
                    LPMultiroomListener lPMultiroomListener2;
                    LPMultiroomManager lPMultiroomManager = LPMultiroomManager.this;
                    lPMultiroomManager.joinGroupIndex++;
                    if (lPMultiroomManager.isJoinGroupFailed) {
                        LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager deviceJoinGroup success isJoinGroupFailed : " + str);
                        return;
                    }
                    LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager deviceJoinGroup success joinGroupIndex = " + LPMultiroomManager.this.joinGroupIndex + " , joinGroupCount= " + LPMultiroomManager.this.joinGroupCount);
                    LPMultiroomManager lPMultiroomManager2 = LPMultiroomManager.this;
                    if (lPMultiroomManager2.joinGroupIndex >= lPMultiroomManager2.joinGroupCount && (lPMultiroomListener2 = lPMultiroomListener) != null) {
                        lPMultiroomListener2.success(str);
                    }
                }
            });
        }
    }

    private List<LPDevice> privateGetUnSelectSlaveDevices(LPDevice lPDevice, List<LPDevice> list) {
        List<LPDevice> slaveDevices = LPDeviceManager.getInstance().getSlaveDevices(lPDevice.getDeviceStatus().getUUID());
        ArrayList arrayList = new ArrayList();
        if (slaveDevices == null || slaveDevices.size() == 0) {
            return null;
        }
        if (list == null || list.size() == 0) {
            return slaveDevices;
        }
        if (list.size() == slaveDevices.size()) {
            return null;
        }
        for (int i2 = 0; i2 < slaveDevices.size(); i2++) {
            LPDevice lPDevice2 = slaveDevices.get(i2);
            int i3 = 0;
            while (true) {
                if (i3 >= list.size()) {
                    arrayList.add(lPDevice2);
                    break;
                }
                if (lPDevice2.getDeviceStatus().getUpnpUUID().equals(list.get(i3).getDeviceStatus().getUpnpUUID())) {
                    break;
                }
                i3++;
            }
        }
        return arrayList;
    }

    private void privateLeaveSlaveDevice(List<LPDevice> list, final LPMultiroomListener lPMultiroomListener) {
        if (list == null || list.size() == 0) {
            if (lPMultiroomListener != null) {
                lPMultiroomListener.failed(new Exception("slave devices empty"));
                return;
            }
            return;
        }
        this.leaveGroupCount = list.size();
        this.leaveGroupIndex = 0;
        this.leaveGroupFailed = false;
        for (int i2 = 0; i2 < list.size(); i2++) {
            final LPDevice lPDevice = list.get(i2);
            deviceLeaveGroup(lPDevice, new LPMultiroomListener() { // from class: com.linkplay.core.group.LPMultiroomManager.3
                @Override // com.linkplay.core.group.LPMultiroomListener
                public void failed(Exception exc) {
                    LPMultiroomManager.this.leaveGroupIndex++;
                    LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager slaveDevice leave Group failed: " + lPDevice.getDeviceStatus().getFriendlyName());
                    LPMultiroomManager lPMultiroomManager = LPMultiroomManager.this;
                    if (lPMultiroomManager.leaveGroupFailed) {
                        LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager slaveDevice leave Group failed leaveGroupFailed : " + exc.getLocalizedMessage());
                        return;
                    }
                    lPMultiroomManager.leaveGroupFailed = true;
                    LPMultiroomListener lPMultiroomListener2 = lPMultiroomListener;
                    if (lPMultiroomListener2 != null) {
                        lPMultiroomListener2.failed(new Exception("leave group failed -1002. " + exc.getLocalizedMessage()));
                    }
                }

                @Override // com.linkplay.core.group.LPMultiroomListener
                public void success(String str) {
                    LPMultiroomListener lPMultiroomListener2;
                    LPMultiroomManager.this.leaveGroupIndex++;
                    LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager slaveDevice leave Group success: " + lPDevice.getDeviceStatus().getFriendlyName());
                    if (LPMultiroomManager.this.leaveGroupFailed) {
                        LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager deviceLeaveGroup success leaveGroupFailed : " + str);
                        return;
                    }
                    lPDevice.getDeviceStatus().setGroup(0);
                    lPDevice.getDeviceStatus().setRouter("");
                    lPDevice.getDeviceStatus().setMaster_uuid("");
                    lPDevice.getDeviceStatus().setPendSlave(LPPendingSlave.LP_PENDING_MASTER);
                    LPDeviceManager.getInstance().addLPDevice(lPDevice);
                    LPMultiroomManager lPMultiroomManager = LPMultiroomManager.this;
                    if (lPMultiroomManager.leaveGroupIndex >= lPMultiroomManager.leaveGroupCount && (lPMultiroomListener2 = lPMultiroomListener) != null) {
                        lPMultiroomListener2.success(str);
                    }
                }
            });
        }
    }

    private void privateOperateMasterDevice(LPDevice lPDevice, List<LPDevice> list, LPMultiroomListener lPMultiroomListener) {
        int size = list.size();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < size; i2++) {
            LPDevice lPDevice2 = list.get(i2);
            if (!lPDevice2.getDeviceStatus().getUpnpUUID().equals(lPDevice.getDeviceStatus().getUpnpUUID())) {
                if (lPDevice2.getDeviceStatus().getPendSlave().equals(LPPendingSlave.LP_PENDING_MASTER)) {
                    arrayList.add(lPDevice2);
                } else if (lPDevice2.getDeviceStatus().getMaster_uuid().equals(lPDevice.getDeviceStatus().getUUID())) {
                    arrayList2.add(lPDevice2);
                } else {
                    arrayList.add(lPDevice2);
                }
            }
        }
        List<LPDevice> listPrivateGetUnSelectSlaveDevices = privateGetUnSelectSlaveDevices(lPDevice, arrayList2);
        if (listPrivateGetUnSelectSlaveDevices != null && listPrivateGetUnSelectSlaveDevices.size() > 0) {
            LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager 有设备开始需要解组--");
            privateLeaveSlaveDevice(listPrivateGetUnSelectSlaveDevices, null);
        }
        if (arrayList.size() != 0) {
            privateAddGroupDevices(lPDevice, arrayList, lPMultiroomListener);
            return;
        }
        LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager 当前要加组的设备为空");
        if (lPMultiroomListener != null) {
            lPMultiroomListener.success("add group devices is empty");
        }
    }

    private void privateOperateSlaveDevice(final LPDevice lPDevice, List<LPDevice> list, final LPMultiroomListener lPMultiroomListener) {
        int size = list.size();
        final ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < size; i2++) {
            if (!lPDevice.getDeviceStatus().getUpnpUUID().equals(list.get(i2).getDeviceStatus().getUpnpUUID())) {
                arrayList.add(list.get(i2));
            }
        }
        deviceLeaveGroup(lPDevice, new LPMultiroomListener() { // from class: com.linkplay.core.group.LPMultiroomManager.1
            @Override // com.linkplay.core.group.LPMultiroomListener
            public void failed(Exception exc) {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager 当前设备是子设备，解组失败: " + lPDevice.getDeviceStatus().getFriendlyName() + " failed: " + exc.getLocalizedMessage());
                LPMultiroomListener lPMultiroomListener2 = lPMultiroomListener;
                if (lPMultiroomListener2 != null) {
                    lPMultiroomListener2.failed(new Exception("slave device change master failed -1000. " + exc.getLocalizedMessage()));
                }
            }

            @Override // com.linkplay.core.group.LPMultiroomListener
            public void success(String str) {
                LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager 当前设备是子设备，解组成功: " + lPDevice.getDeviceStatus().getFriendlyName());
                lPDevice.getDeviceStatus().setGroup(0);
                lPDevice.getDeviceStatus().setRouter("");
                lPDevice.getDeviceStatus().setMaster_uuid("");
                lPDevice.getDeviceStatus().setPendSlave(LPPendingSlave.LP_PENDING_MASTER);
                LPDeviceManager.getInstance().addLPDevice(lPDevice);
                LPMultiroomManager.this.privateAddGroupDevices(lPDevice, arrayList, lPMultiroomListener);
            }
        });
    }

    public void deviceMultiroomWithDeviceList(List<LPDevice> list, LPMultiroomListener lPMultiroomListener) {
        if (list == null || list.size() == 0) {
            LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager 没有传入设备");
            if (lPMultiroomListener != null) {
                lPMultiroomListener.failed(new Exception("no select device"));
                return;
            }
            return;
        }
        List<LPDevice> checkedDevices = getCheckedDevices(list);
        if (checkedDevices == null || checkedDevices.size() == 0) {
            LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager 没有选择加组的设备");
            for (LPDevice lPDevice : list) {
                if (lPDevice.getDeviceStatus().getPendSlave().equals(LPPendingSlave.LP_PENDING_MASTER)) {
                    privateLeaveSlaveDevice(privateGetUnSelectSlaveDevices(lPDevice, null), lPMultiroomListener);
                }
            }
            return;
        }
        int size = checkedDevices.size();
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < size; i2++) {
            LPDevice lPDevice2 = checkedDevices.get(i2);
            LPOperateParam lPOperateParam = new LPOperateParam();
            lPOperateParam.hardware = lPDevice2.getDeviceStatus().getHardware();
            lPOperateParam.ssid = lPDevice2.getDeviceStatus().getSSID();
            if (lPDevice2.getDeviceStatus().getPendSlave().equals(LPPendingSlave.LP_PENDING_SLAVE)) {
                lPOperateParam.slave_count = 0;
            } else {
                List<LPDevice> slaveDevices = LPDeviceManager.getInstance().getSlaveDevices(lPDevice2.getDeviceStatus().getUUID());
                if (slaveDevices == null || slaveDevices.size() == 0) {
                    lPOperateParam.slave_count = 0;
                } else {
                    lPOperateParam.slave_count = slaveDevices.size();
                }
            }
            lPOperateParam.index = i2;
            arrayList.add(lPOperateParam);
        }
        int size2 = arrayList.size();
        ArrayList arrayList2 = new ArrayList();
        for (int i3 = 0; i3 < size2; i3++) {
            LPOperateParam lPOperateParam2 = (LPOperateParam) arrayList.get(i3);
            int i4 = 0;
            while (true) {
                if (i4 >= arrayList2.size()) {
                    arrayList2.add(lPOperateParam2);
                    break;
                }
                LPOperateParam lPOperateParam3 = (LPOperateParam) arrayList2.get(i4);
                if (TextUtils.equals(lPOperateParam2.hardware, "A28") || TextUtils.equals(lPOperateParam2.hardware, "A31")) {
                    if ((TextUtils.equals(lPOperateParam3.hardware, "A28") || TextUtils.equals(lPOperateParam3.hardware, "A31")) && lPOperateParam2.slave_count > lPOperateParam3.slave_count) {
                        arrayList2.add(i4, lPOperateParam2);
                        break;
                    }
                    i4++;
                } else if (TextUtils.equals(lPOperateParam3.hardware, "A28") || TextUtils.equals(lPOperateParam3.hardware, "A31")) {
                    arrayList2.add(i4, lPOperateParam2);
                    break;
                } else {
                    if (lPOperateParam2.slave_count > lPOperateParam3.slave_count) {
                        arrayList2.add(i4, lPOperateParam2);
                        break;
                    }
                    i4++;
                }
            }
        }
        int i5 = -1;
        int i6 = 0;
        for (int i7 = 0; i7 < arrayList2.size(); i7++) {
            LPOperateParam lPOperateParam4 = (LPOperateParam) arrayList2.get(i7);
            int i8 = lPOperateParam4.slave_count;
            LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager 每项组网配置参数 名称: " + lPOperateParam4.ssid + ", index: " + lPOperateParam4.index + ", slave count: " + i8);
            if (i7 == 0) {
                i5 = lPOperateParam4.index;
            } else {
                if (i6 < i8 && !TextUtils.equals(lPOperateParam4.hardware, "A28") && !TextUtils.equals(lPOperateParam4.hardware, "A31")) {
                    i5 = lPOperateParam4.index;
                }
            }
            i6 = i8;
        }
        if (i5 < 0 || i5 >= checkedDevices.size()) {
            LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager 选择设备异常.");
            if (lPMultiroomListener != null) {
                lPMultiroomListener.failed(new Exception("other errors -1003"));
                return;
            }
            return;
        }
        LPDevice lPDevice3 = checkedDevices.get(i5);
        LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager 最终选择的主设备名称: " + lPDevice3.getDeviceStatus().getSSID());
        LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager 开始加解组操作+++");
        if (lPDevice3.getDeviceStatus().getPendSlave().equals(LPPendingSlave.LP_PENDING_MASTER)) {
            LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager 当前设备是主设备: " + lPDevice3.getDeviceStatus().getFriendlyName());
            privateOperateMasterDevice(lPDevice3, checkedDevices, lPMultiroomListener);
            return;
        }
        LinkplayLog.i(LinkplayLogTags.LPLogTag, "LPMultiroomManager 当前设备是子设备，先解组: " + lPDevice3.getDeviceStatus().getFriendlyName());
        privateOperateSlaveDevice(lPDevice3, checkedDevices, lPMultiroomListener);
    }

    public void deviceMultiroomWithSlaveDeviceList(List<LPDevice> list, LPDevice lPDevice, LPMultiroomListener lPMultiroomListener) {
        if (lPDevice == null) {
            privateLeaveSlaveDevice(list, lPMultiroomListener);
        } else {
            privateAddGroupDevices(lPDevice, list, lPMultiroomListener);
        }
    }

    public String getVersion() {
        return this.version;
    }
}
