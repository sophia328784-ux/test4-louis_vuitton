package com.google.android.datatransport.runtime.firebase.transport;

import com.google.firebase.encoders.proto.ProtoEnum;

/* JADX INFO: loaded from: classes2.dex */
public final class LogEventDropped {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f28024c = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f28025a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Reason f28026b;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f28027a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Reason f28028b = Reason.REASON_UNKNOWN;
    }

    public enum Reason implements ProtoEnum {
        REASON_UNKNOWN(0),
        MESSAGE_TOO_OLD(1),
        CACHE_FULL(2),
        PAYLOAD_TOO_BIG(3),
        MAX_RETRIES_REACHED(4),
        INVALID_PAYLOD(5),
        SERVER_ERROR(6);

        private final int number_;

        Reason(int i2) {
            this.number_ = i2;
        }

        @Override // com.google.firebase.encoders.proto.ProtoEnum
        public final int m() {
            return this.number_;
        }
    }

    static {
        new Builder();
    }

    public LogEventDropped(long j2, Reason reason) {
        this.f28025a = j2;
        this.f28026b = reason;
    }
}
