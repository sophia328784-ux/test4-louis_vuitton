package com.vuitton.foundation.model.domain.model.authentication.oauth;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0002\u0003\u0004\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "InvalidPassword", "UnknownError", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException$InvalidPassword;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException$UnknownError;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class NativeLoginException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66634b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException$InvalidPassword;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InvalidPassword extends NativeLoginException {
        public InvalidPassword(String str) {
            super(str, null);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException$UnknownError;", "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeLoginException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class UnknownError extends NativeLoginException {
        public UnknownError(String str) {
            super(str, null);
        }
    }

    public NativeLoginException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f66634b = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f66634b;
    }
}
