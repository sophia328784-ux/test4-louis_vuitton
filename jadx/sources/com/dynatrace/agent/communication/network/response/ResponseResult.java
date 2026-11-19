package com.dynatrace.agent.communication.network.response;

import com.dynatrace.agent.communication.api.ServerDataUpdate;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b0\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/dynatrace/agent/communication/network/response/ResponseResult;", "", "Success", "TooManyRequests", "Retry", "RetryExecution", "UnexpectedError", "Lcom/dynatrace/agent/communication/network/response/ResponseResult$Retry;", "Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;", "Lcom/dynatrace/agent/communication/network/response/ResponseResult$Success;", "Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;", "Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class ResponseResult {

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/communication/network/response/ResponseResult$Retry;", "Lcom/dynatrace/agent/communication/network/response/ResponseResult;", "", "retryReason", "Lcom/dynatrace/agent/communication/api/ServerDataUpdate;", "serverDataUpdate", "<init>", "(Ljava/lang/String;Lcom/dynatrace/agent/communication/api/ServerDataUpdate;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Retry extends ResponseResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f26655a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ServerDataUpdate f26656b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Retry(String str, ServerDataUpdate serverDataUpdate) {
            super(null);
            str.getClass();
            this.f26655a = str;
            this.f26656b = serverDataUpdate;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Retry)) {
                return false;
            }
            Retry retry = (Retry) obj;
            return Intrinsics.c(this.f26655a, retry.f26655a) && Intrinsics.c(this.f26656b, retry.f26656b);
        }

        public final int hashCode() {
            int iHashCode = this.f26655a.hashCode() * 31;
            ServerDataUpdate serverDataUpdate = this.f26656b;
            return iHashCode + (serverDataUpdate == null ? 0 : serverDataUpdate.hashCode());
        }

        public final String toString() {
            return "Retry(retryReason=" + this.f26655a + ", serverDataUpdate=" + this.f26656b + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/communication/network/response/ResponseResult$RetryExecution;", "Lcom/dynatrace/agent/communication/network/response/ResponseResult;", "", "retryReason", "<init>", "(Ljava/lang/String;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class RetryExecution extends ResponseResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f26657a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RetryExecution(String str) {
            super(null);
            str.getClass();
            this.f26657a = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof RetryExecution) && Intrinsics.c(this.f26657a, ((RetryExecution) obj).f26657a);
        }

        public final int hashCode() {
            return this.f26657a.hashCode();
        }

        public final String toString() {
            return fc.l(new StringBuilder("RetryExecution(retryReason="), this.f26657a, ')');
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/communication/network/response/ResponseResult$Success;", "Lcom/dynatrace/agent/communication/network/response/ResponseResult;", "Lcom/dynatrace/agent/communication/api/ServerDataUpdate;", "serverDataUpdate", "<init>", "(Lcom/dynatrace/agent/communication/api/ServerDataUpdate;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class Success extends ResponseResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ServerDataUpdate f26658a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Success(ServerDataUpdate serverDataUpdate) {
            super(null);
            serverDataUpdate.getClass();
            this.f26658a = serverDataUpdate;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof Success) && Intrinsics.c(this.f26658a, ((Success) obj).f26658a);
        }

        public final int hashCode() {
            return this.f26658a.hashCode();
        }

        public final String toString() {
            return "Success(serverDataUpdate=" + this.f26658a + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/communication/network/response/ResponseResult$TooManyRequests;", "Lcom/dynatrace/agent/communication/network/response/ResponseResult;", "Lkotlin/time/Duration;", "delay", "<init>", "(JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class TooManyRequests extends ResponseResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f26659a;

        public TooManyRequests(long j2, DefaultConstructorMarker defaultConstructorMarker) {
            super(null);
            this.f26659a = j2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof TooManyRequests) && Duration.d(this.f26659a, ((TooManyRequests) obj).f26659a);
        }

        public final int hashCode() {
            Duration.Companion companion = Duration.INSTANCE;
            return Long.hashCode(this.f26659a);
        }

        public final String toString() {
            return "TooManyRequests(delay=" + ((Object) Duration.l(this.f26659a)) + ')';
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/communication/network/response/ResponseResult$UnexpectedError;", "Lcom/dynatrace/agent/communication/network/response/ResponseResult;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final /* data */ class UnexpectedError extends ResponseResult {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final UnexpectedError f26660a = new UnexpectedError(null);

        public final boolean equals(Object obj) {
            return this == obj || (obj instanceof UnexpectedError);
        }

        public final int hashCode() {
            return 1881588853;
        }

        public final String toString() {
            return "UnexpectedError";
        }
    }

    public ResponseResult(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
