package com.vuitton.foundation.exception;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0007\u0003\u0004\u0005\u0006\u0007\b\t\u0082\u0001\u0007\n\u000b\f\r\u000e\u000f\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/foundation/exception/NetworkException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "Unauthorized", "NotFound", "NoNetwork", "InMaintenance", "TooManyRequest", "Unknown", "CustomException", "Lcom/vuitton/foundation/exception/NetworkException$CustomException;", "Lcom/vuitton/foundation/exception/NetworkException$InMaintenance;", "Lcom/vuitton/foundation/exception/NetworkException$NoNetwork;", "Lcom/vuitton/foundation/exception/NetworkException$NotFound;", "Lcom/vuitton/foundation/exception/NetworkException$TooManyRequest;", "Lcom/vuitton/foundation/exception/NetworkException$Unauthorized;", "Lcom/vuitton/foundation/exception/NetworkException$Unknown;", "util"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class NetworkException extends Exception {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/exception/NetworkException$CustomException;", "Lcom/vuitton/foundation/exception/NetworkException;", "", "customObject", "<init>", "(Ljava/lang/Object;)V", "util"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class CustomException extends NetworkException {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f66204b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CustomException(Object obj) {
            super("Custom exception", null);
            obj.getClass();
            this.f66204b = obj;
        }
    }

    public /* synthetic */ NetworkException(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, null);
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/exception/NetworkException$InMaintenance;", "Lcom/vuitton/foundation/exception/NetworkException;", "message", "", "<init>", "(Ljava/lang/String;)V", "util"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InMaintenance extends NetworkException {
        public /* synthetic */ InMaintenance(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "Maintenance in progress" : str);
        }

        public InMaintenance(String str) {
            super(str, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public InMaintenance() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/exception/NetworkException$NoNetwork;", "Lcom/vuitton/foundation/exception/NetworkException;", "message", "", "<init>", "(Ljava/lang/String;)V", "util"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NoNetwork extends NetworkException {
        public /* synthetic */ NoNetwork(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "No Network Connection" : str);
        }

        public NoNetwork(String str) {
            super(str, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public NoNetwork() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/exception/NetworkException$NotFound;", "Lcom/vuitton/foundation/exception/NetworkException;", "message", "", "<init>", "(Ljava/lang/String;)V", "util"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NotFound extends NetworkException {
        public /* synthetic */ NotFound(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "Not Found" : str);
        }

        public NotFound(String str) {
            super(str, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public NotFound() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/exception/NetworkException$TooManyRequest;", "Lcom/vuitton/foundation/exception/NetworkException;", "message", "", "<init>", "(Ljava/lang/String;)V", "util"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class TooManyRequest extends NetworkException {
        public /* synthetic */ TooManyRequest(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "Too many request" : str);
        }

        public TooManyRequest(String str) {
            super(str, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public TooManyRequest() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/exception/NetworkException$Unauthorized;", "Lcom/vuitton/foundation/exception/NetworkException;", "message", "", "<init>", "(Ljava/lang/String;)V", "util"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Unauthorized extends NetworkException {
        public /* synthetic */ Unauthorized(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "Unauthorized" : str);
        }

        public Unauthorized(String str) {
            super(str, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Unauthorized() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0013\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/exception/NetworkException$Unknown;", "Lcom/vuitton/foundation/exception/NetworkException;", "message", "", "<init>", "(Ljava/lang/String;)V", "util"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Unknown extends NetworkException {
        public /* synthetic */ Unknown(String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? "Unknown Network Error" : str);
        }

        public Unknown(String str) {
            super(str, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Unknown() {
            this(null, 1, 0 == true ? 1 : 0);
        }
    }

    public NetworkException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        super(str);
    }
}
