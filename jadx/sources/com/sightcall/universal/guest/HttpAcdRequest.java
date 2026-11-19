package com.sightcall.universal.guest;

/* JADX INFO: loaded from: classes3.dex */
public class HttpAcdRequest {
    private final int estimatedTime;
    private final String id;
    private final String partner;
    private final String rawStatus;
    private final Status status;

    /* JADX INFO: renamed from: com.sightcall.universal.guest.HttpAcdRequest$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$guest$HttpAcdRequest$Status;

        static {
            int[] iArr = new int[Status.values().length];
            $SwitchMap$com$sightcall$universal$guest$HttpAcdRequest$Status = iArr;
            try {
                iArr[Status.ATTENDEE_REQUEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$guest$HttpAcdRequest$Status[Status.WAITING_TIME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sightcall$universal$guest$HttpAcdRequest$Status[Status.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sightcall$universal$guest$HttpAcdRequest$Status[Status.SERVICE_CLOSED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sightcall$universal$guest$HttpAcdRequest$Status[Status.SERVICE_UNAVAILABLE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sightcall$universal$guest$HttpAcdRequest$Status[Status.AGENT_UNAVAILABLE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public enum Status {
        UNKNOWN(""),
        ATTENDEE_REQUEST("attendee_request"),
        SERVICE_CLOSED("service_closed"),
        SERVICE_UNAVAILABLE("service_unavailable"),
        AGENT_UNAVAILABLE("agent_unavailable"),
        WAITING_TIME("waiting_time");

        private final String value;

        Status(String str) {
            this.value = str;
        }

        public static Status parse(String str) {
            for (Status status : values()) {
                if (status.value.equals(str)) {
                    return status;
                }
            }
            return UNKNOWN;
        }
    }

    public HttpAcdRequest(String str, String str2, int i2, String str3) {
        this.id = str;
        this.partner = str2;
        this.estimatedTime = i2;
        this.rawStatus = str3;
        this.status = Status.parse(str3);
    }

    public int estimatedTime() {
        return this.estimatedTime;
    }

    public String id() {
        return this.id;
    }

    public boolean isPending() {
        int i2 = AnonymousClass1.$SwitchMap$com$sightcall$universal$guest$HttpAcdRequest$Status[this.status.ordinal()];
        return i2 == 1 || i2 == 2 || i2 == 3;
    }

    public String partner() {
        return this.partner;
    }

    public String rawStatus() {
        return this.rawStatus;
    }

    public Status status() {
        return this.status;
    }

    public String toString() {
        return "HttpAcdRequest{id='" + this.id + "', estimatedTime=" + this.estimatedTime + ", rawStatus='" + this.rawStatus + "', status=" + this.status + '}';
    }
}
