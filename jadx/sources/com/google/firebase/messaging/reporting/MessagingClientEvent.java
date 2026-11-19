package com.google.firebase.messaging.reporting;

import com.google.firebase.encoders.proto.ProtoEnum;

/* JADX INFO: loaded from: classes2.dex */
public final class MessagingClientEvent {
    public static final /* synthetic */ int n = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f35339a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f35340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f35341c;
    public final MessageType d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SDKPlatform f35342e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f35343f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f35344h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f35345i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f35346j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Event f35347k;
    public final String l;
    public final String m;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f35348a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f35349b = "";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f35350c = "";
        public MessageType d = MessageType.UNKNOWN;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SDKPlatform f35351e = SDKPlatform.UNKNOWN_OS;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f35352f = "";
        public String g = "";

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f35353h = 0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f35354i = 0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public String f35355j = "";

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Event f35356k = Event.UNKNOWN_EVENT;
        public String l = "";
        public String m = "";

        public final MessagingClientEvent a() {
            return new MessagingClientEvent(this.f35348a, this.f35349b, this.f35350c, this.d, this.f35351e, this.f35352f, this.g, this.f35353h, this.f35354i, this.f35355j, this.f35356k, this.l, this.m);
        }
    }

    public enum Event implements ProtoEnum {
        UNKNOWN_EVENT(0),
        MESSAGE_DELIVERED(1),
        MESSAGE_OPEN(2);

        private final int number_;

        Event(int i2) {
            this.number_ = i2;
        }

        @Override // com.google.firebase.encoders.proto.ProtoEnum
        public final int m() {
            return this.number_;
        }
    }

    public enum MessageType implements ProtoEnum {
        UNKNOWN(0),
        DATA_MESSAGE(1),
        TOPIC(2),
        DISPLAY_NOTIFICATION(3);

        private final int number_;

        MessageType(int i2) {
            this.number_ = i2;
        }

        @Override // com.google.firebase.encoders.proto.ProtoEnum
        public final int m() {
            return this.number_;
        }
    }

    public enum SDKPlatform implements ProtoEnum {
        UNKNOWN_OS(0),
        ANDROID(1),
        IOS(2),
        WEB(3);

        private final int number_;

        SDKPlatform(int i2) {
            this.number_ = i2;
        }

        @Override // com.google.firebase.encoders.proto.ProtoEnum
        public final int m() {
            return this.number_;
        }
    }

    static {
        new Builder().a();
    }

    public MessagingClientEvent(long j2, String str, String str2, MessageType messageType, SDKPlatform sDKPlatform, String str3, String str4, int i2, int i3, String str5, Event event, String str6, String str7) {
        this.f35339a = j2;
        this.f35340b = str;
        this.f35341c = str2;
        this.d = messageType;
        this.f35342e = sDKPlatform;
        this.f35343f = str3;
        this.g = str4;
        this.f35344h = i2;
        this.f35345i = i3;
        this.f35346j = str5;
        this.f35347k = event;
        this.l = str6;
        this.m = str7;
    }
}
