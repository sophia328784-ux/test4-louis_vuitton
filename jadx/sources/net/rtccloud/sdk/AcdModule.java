package net.rtccloud.sdk;

import defpackage.fc;
import defpackage.n00;
import java.util.ArrayList;
import java.util.List;
import net.rtccloud.sdk.event.acd.AcdQueueEvent;
import net.rtccloud.sdk.event.acd.AcdReadyEvent;
import net.rtccloud.sdk.internal.Preconditions;
import net.rtccloud.sdk.util.OldLogger;

/* JADX INFO: loaded from: classes4.dex */
public class AcdModule {
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.ACD);
    private final Native nativeInterface;
    private List<AcdUser> ongoingAcdUserList = null;
    private List<AcdWaiting> ongoingAcdWaitingList = null;
    private Request request;
    private final Rtcc rtcc;

    public class AcdUser {
        long presence;
        String uid;

        public AcdUser(String str, long j2) {
            this.uid = str;
            this.presence = j2;
        }

        public String jsonString() {
            return "{\"uid\":\"" + this.uid + "\",\"presence\":\"" + String.format("%X", Long.valueOf(this.presence)) + "\"}";
        }
    }

    public class AcdWaiting extends AcdUser {
        long mask;

        public AcdWaiting(String str, long j2, long j3) {
            super(str, j2);
            this.mask = j3;
        }

        @Override // net.rtccloud.sdk.AcdModule.AcdUser
        public String jsonString() {
            return "{\"uid\":\"" + this.uid + "\",\"presence\":\"" + String.format("%X", Long.valueOf(this.presence)) + "\",\"mask\":\"" + String.format("%X", Long.valueOf(this.mask)) + "\"}";
        }
    }

    public interface Native {
        public static final Native JNI = new Native() { // from class: net.rtccloud.sdk.AcdModule.Native.1
            @Override // net.rtccloud.sdk.AcdModule.Native
            public boolean acceptRequest(String str) {
                return Jni.nAcdAcceptRequest(str);
            }

            @Override // net.rtccloud.sdk.AcdModule.Native
            public boolean cancel() {
                return Jni.nAcdCancel();
            }

            @Override // net.rtccloud.sdk.AcdModule.Native
            public boolean declineRequest(String str) {
                return Jni.nAcdDeclineRequest(str);
            }

            @Override // net.rtccloud.sdk.AcdModule.Native
            public boolean getSingleUser(long j2, long j3) {
                return Jni.nAcdGetUser(j2, j3, false);
            }

            @Override // net.rtccloud.sdk.AcdModule.Native
            public boolean getUserList(long j2, long j3) {
                return Jni.nAcdGetUser(j2, j3, true);
            }

            @Override // net.rtccloud.sdk.AcdModule.Native
            public boolean getWaitingList() {
                return Jni.nAcdGetWaitingList();
            }

            @Override // net.rtccloud.sdk.AcdModule.Native
            public boolean request(long j2, long j3) {
                return Jni.nAcdRequest(j2, j3);
            }

            @Override // net.rtccloud.sdk.AcdModule.Native
            public boolean setPresence(long j2) {
                return Jni.nAcdSetPresence(j2);
            }

            @Override // net.rtccloud.sdk.AcdModule.Native
            public boolean setPriority(long j2) {
                return Jni.nAcdSetPriority(j2);
            }
        };

        boolean acceptRequest(String str);

        boolean cancel();

        boolean declineRequest(String str);

        boolean getSingleUser(long j2, long j3);

        boolean getUserList(long j2, long j3);

        boolean getWaitingList();

        boolean request(long j2, long j3);

        boolean setPresence(long j2);

        boolean setPriority(long j2);
    }

    public static class Request {
        private boolean cancelled;
        private int index;
        private int length;
        private boolean ready;
        private String uid;

        public int index() {
            return this.index;
        }

        public boolean isCancelled() {
            return this.cancelled;
        }

        public boolean isReady() {
            return this.ready;
        }

        public int length() {
            return this.length;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Request{index=");
            sb.append(this.index);
            sb.append(", length=");
            sb.append(this.length);
            sb.append(", cancelled=");
            sb.append(this.cancelled);
            sb.append(", ready=");
            sb.append(this.ready);
            sb.append(", uid='");
            return n00.r(this.uid, "'}", sb);
        }

        public String uid() {
            return this.uid;
        }
    }

    public AcdModule(Rtcc rtcc, Native r3) {
        this.rtcc = rtcc;
        this.nativeInterface = r3;
    }

    public boolean acceptRequest(String str) {
        return this.nativeInterface.acceptRequest(str);
    }

    public boolean cancel() {
        OldLogger oldLogger = log;
        oldLogger.d("cancel()");
        if (!Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) || !Preconditions.enforceUserStatus(oldLogger, this.rtcc.user(), User.Status.REGISTERED)) {
            return false;
        }
        Request request = this.request;
        if (request != null) {
            request.cancelled = true;
        }
        return this.nativeInterface.cancel();
    }

    public void clear() {
        Request request = this.request;
        if (request != null) {
            request.cancelled = true;
            this.request = null;
        }
    }

    public boolean declineRequest(String str) {
        return this.nativeInterface.declineRequest(str);
    }

    public Request get() {
        return this.request;
    }

    public boolean getSingleUser(long j2, long j3) {
        return this.nativeInterface.getSingleUser(j2, j3);
    }

    public boolean getUserList(long j2, long j3) {
        return this.nativeInterface.getUserList(j2, j3);
    }

    public boolean getWaitingList() {
        return this.nativeInterface.getWaitingList();
    }

    public void handleAcdCanceled(String str) {
        this.rtcc.sendMeetingCallBack("{\"evt\":\"acdcanceled\",\"uid\":\"" + str + "\"}");
    }

    public void handleAcdRequested(String str) {
        this.rtcc.sendMeetingCallBack("{\"evt\":\"acdrequested\",\"uid\":\"" + str + "\"}");
    }

    public void handleQueue(int i2, int i3) {
        this.rtcc.sendMeetingCallBack(fc.f(i2, i3, "{\"evt\":\"acdqueue\",\"position\":", ",\"len\":", "}"));
        if (this.request == null) {
            this.request = new Request();
        }
        this.request.index = i2;
        this.request.length = i3;
        this.rtcc.bus().post(new AcdQueueEvent(this.request));
    }

    public void handleReady(String str) {
        if (this.request == null) {
            this.request = new Request();
        }
        this.request.ready = true;
        this.request.uid = str;
        this.rtcc.bus().post(new AcdReadyEvent(this.request));
    }

    public void handleUserList(int i2, int i3, String str, long j2) {
        if (this.ongoingAcdUserList == null) {
            this.ongoingAcdUserList = new ArrayList(i3);
        }
        this.ongoingAcdUserList.add(i2, new AcdUser(str, j2));
        if (i2 >= i3 - 1) {
            StringBuilder sb = new StringBuilder();
            for (AcdUser acdUser : this.ongoingAcdUserList) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(acdUser.jsonString());
            }
            this.rtcc.sendMeetingCallBack("{\"evt\":\"acduserlist\",\"agents\":[" + ((Object) sb) + "]}");
            this.ongoingAcdUserList = null;
        }
    }

    public void handleWaitingList(int i2, int i3, String str, long j2, long j3) {
        if (this.ongoingAcdWaitingList == null) {
            this.ongoingAcdWaitingList = new ArrayList(i3);
        }
        this.ongoingAcdWaitingList.add(i2, new AcdWaiting(str, j2, j3));
        if (i2 >= i3 - 1) {
            StringBuilder sb = new StringBuilder();
            for (AcdWaiting acdWaiting : this.ongoingAcdWaitingList) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(acdWaiting.jsonString());
            }
            this.rtcc.sendMeetingCallBack("{\"evt\":\"acdwaitinglist\",\"waiting\":[" + ((Object) sb) + "]}");
            this.ongoingAcdWaitingList = null;
        }
    }

    public boolean request(long j2, long j3) {
        OldLogger oldLogger = log;
        oldLogger.d("request(mask=%d, value=%d)", Long.valueOf(j2), Long.valueOf(j3));
        if (!Preconditions.enforceRtccStatus(oldLogger, this.rtcc, Rtcc.Status.CONNECTED) || !Preconditions.enforceUserStatus(oldLogger, this.rtcc.user(), User.Status.REGISTERED)) {
            return false;
        }
        clear();
        this.request = new Request();
        return this.nativeInterface.request(j2, j3);
    }

    public Rtcc rtcc() {
        return this.rtcc;
    }

    public boolean setPresence(long j2) {
        return this.nativeInterface.setPresence(j2);
    }

    public boolean setPriority(long j2) {
        return this.nativeInterface.setPriority(j2);
    }
}
