package com.linecorp.linesdk;

import com.appsflyer.sdk_base.referrer.Payload;

/* JADX INFO: loaded from: classes2.dex */
public class SendMessageResponse {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f36103a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Status f36104b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Status {
        private static final /* synthetic */ Status[] $VALUES;
        public static final Status DISCARDED;
        public static final Status OK;

        static {
            Status status = new Status(Payload.RESPONSE_OK, 0);
            OK = status;
            Status status2 = new Status("DISCARDED", 1);
            DISCARDED = status2;
            $VALUES = new Status[]{status, status2};
        }

        public static Status valueOf(String str) {
            return (Status) Enum.valueOf(Status.class, str);
        }

        public static Status[] values() {
            return (Status[]) $VALUES.clone();
        }
    }

    public SendMessageResponse(String str, Status status) {
        this.f36103a = str;
        this.f36104b = status;
    }

    public final String toString() {
        return "SendMessageResponse{receiverId='" + this.f36103a + "', status='" + this.f36104b + "'}";
    }
}
