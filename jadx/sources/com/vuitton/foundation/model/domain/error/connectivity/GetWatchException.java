package com.vuitton.foundation.model.domain.error.connectivity;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0002\u0003\u0004\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/connectivity/GetWatchException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "NotFound", "UnknownError", "Lcom/vuitton/foundation/model/domain/error/connectivity/GetWatchException$NotFound;", "Lcom/vuitton/foundation/model/domain/error/connectivity/GetWatchException$UnknownError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class GetWatchException extends Exception {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/connectivity/GetWatchException$NotFound;", "Lcom/vuitton/foundation/model/domain/error/connectivity/GetWatchException;", "", "watchId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotFound extends GetWatchException {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66219b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NotFound(String str) {
            super("Watch identifier '" + str + "' not found", null);
            str.getClass();
            this.f66219b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NotFound) && Intrinsics.c(this.f66219b, ((NotFound) obj).f66219b);
        }

        public final int hashCode() {
            return this.f66219b.hashCode();
        }

        @Override // java.lang.Throwable
        public final String toString() {
            return fc.h("NotFound(watchId=", this.f66219b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/connectivity/GetWatchException$UnknownError;", "Lcom/vuitton/foundation/model/domain/error/connectivity/GetWatchException;", "", "watchId", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UnknownError extends GetWatchException {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66220b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UnknownError(String str) {
            super("Unknown error while getting watch identifier '" + str + "'", null);
            str.getClass();
            this.f66220b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UnknownError) && Intrinsics.c(this.f66220b, ((UnknownError) obj).f66220b);
        }

        public final int hashCode() {
            return this.f66220b.hashCode();
        }

        @Override // java.lang.Throwable
        public final String toString() {
            return fc.h("UnknownError(watchId=", this.f66220b, ")");
        }
    }

    public GetWatchException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        super(str);
    }
}
