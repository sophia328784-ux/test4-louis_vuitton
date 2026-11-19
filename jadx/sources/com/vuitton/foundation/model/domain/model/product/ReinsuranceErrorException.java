package com.vuitton.foundation.model.domain.model.product;

import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0004\u0003\u0004\u0005\u0006\u0082\u0001\u0004\u0007\b\t\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "NotFound", "ServerErrorException", "NetworkErrorException", "UnknownErrorException", "Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$NetworkErrorException;", "Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$NotFound;", "Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$ServerErrorException;", "Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$UnknownErrorException;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ReinsuranceErrorException extends Exception {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$NetworkErrorException;", "Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException;", "", "cause", "<init>", "(Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NetworkErrorException extends ReinsuranceErrorException {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Throwable f67925b;

        public NetworkErrorException(Throwable th) {
            super(null);
            this.f67925b = th;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NetworkErrorException) && Intrinsics.c(this.f67925b, ((NetworkErrorException) obj).f67925b);
        }

        @Override // java.lang.Throwable
        public final Throwable getCause() {
            return this.f67925b;
        }

        public final int hashCode() {
            Throwable th = this.f67925b;
            if (th == null) {
                return 0;
            }
            return th.hashCode();
        }

        @Override // java.lang.Throwable
        public final String toString() {
            return d21.n("NetworkErrorException(cause=", ")", this.f67925b);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$NotFound;", "Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException;", "", "message", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class NotFound extends ReinsuranceErrorException {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f67926b;

        public NotFound(String str) {
            super(null);
            this.f67926b = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof NotFound) && Intrinsics.c(this.f67926b, ((NotFound) obj).f67926b);
        }

        @Override // java.lang.Throwable
        public final String getMessage() {
            return this.f67926b;
        }

        public final int hashCode() {
            String str = this.f67926b;
            if (str == null) {
                return 0;
            }
            return str.hashCode();
        }

        @Override // java.lang.Throwable
        public final String toString() {
            return fc.h("NotFound(message=", this.f67926b, ")");
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$ServerErrorException;", "Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException;", "", "message", "", "statusCode", "errorCode", "<init>", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ServerErrorException extends ReinsuranceErrorException {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f67927b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Integer f67928c;
        public final String d;

        public ServerErrorException(String str, Integer num, String str2) {
            super(null);
            this.f67927b = str;
            this.f67928c = num;
            this.d = str2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ServerErrorException)) {
                return false;
            }
            ServerErrorException serverErrorException = (ServerErrorException) obj;
            return Intrinsics.c(this.f67927b, serverErrorException.f67927b) && Intrinsics.c(this.f67928c, serverErrorException.f67928c) && Intrinsics.c(this.d, serverErrorException.d);
        }

        @Override // java.lang.Throwable
        public final String getMessage() {
            return this.f67927b;
        }

        public final int hashCode() {
            String str = this.f67927b;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            Integer num = this.f67928c;
            int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
            String str2 = this.d;
            return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
        }

        @Override // java.lang.Throwable
        public final String toString() {
            StringBuilder sb = new StringBuilder("ServerErrorException(message=");
            sb.append(this.f67927b);
            sb.append(", statusCode=");
            sb.append(this.f67928c);
            sb.append(", errorCode=");
            return n00.r(this.d, ")", sb);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$UnknownErrorException;", "Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException;", "", "message", "", "cause", "<init>", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class UnknownErrorException extends ReinsuranceErrorException {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f67929b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Throwable f67930c;

        public UnknownErrorException(String str, Throwable th) {
            super(null);
            this.f67929b = str;
            this.f67930c = th;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UnknownErrorException)) {
                return false;
            }
            UnknownErrorException unknownErrorException = (UnknownErrorException) obj;
            return Intrinsics.c(this.f67929b, unknownErrorException.f67929b) && Intrinsics.c(this.f67930c, unknownErrorException.f67930c);
        }

        @Override // java.lang.Throwable
        public final Throwable getCause() {
            return this.f67930c;
        }

        @Override // java.lang.Throwable
        public final String getMessage() {
            return this.f67929b;
        }

        public final int hashCode() {
            String str = this.f67929b;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            Throwable th = this.f67930c;
            return iHashCode + (th != null ? th.hashCode() : 0);
        }

        @Override // java.lang.Throwable
        public final String toString() {
            return "UnknownErrorException(message=" + this.f67929b + ", cause=" + this.f67930c + ")";
        }
    }

    public ReinsuranceErrorException(DefaultConstructorMarker defaultConstructorMarker) {
    }
}
