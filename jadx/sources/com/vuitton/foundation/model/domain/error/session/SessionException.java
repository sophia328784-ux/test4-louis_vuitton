package com.vuitton.foundation.model.domain.error.session;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0007\u0003\u0004\u0005\u0006\u0007\b\t\u0082\u0001\u0007\n\u000b\f\r\u000e\u000f\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/session/SessionException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "NoAccessTokenException", "RefreshTokenUnknownException", "RefreshTokenExpiredException", "SessionAuthenticationFailException", "LoginOnActivationException", "NoFacadeApiUrl", "NoUserIdException", "Lcom/vuitton/foundation/model/domain/error/session/SessionException$LoginOnActivationException;", "Lcom/vuitton/foundation/model/domain/error/session/SessionException$NoAccessTokenException;", "Lcom/vuitton/foundation/model/domain/error/session/SessionException$NoFacadeApiUrl;", "Lcom/vuitton/foundation/model/domain/error/session/SessionException$NoUserIdException;", "Lcom/vuitton/foundation/model/domain/error/session/SessionException$RefreshTokenExpiredException;", "Lcom/vuitton/foundation/model/domain/error/session/SessionException$RefreshTokenUnknownException;", "Lcom/vuitton/foundation/model/domain/error/session/SessionException$SessionAuthenticationFailException;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class SessionException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66227b;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/session/SessionException$LoginOnActivationException;", "Lcom/vuitton/foundation/model/domain/error/session/SessionException;", "<init>", "()V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class LoginOnActivationException extends SessionException {
        public LoginOnActivationException() {
            super("Error during login on activation", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/session/SessionException$NoAccessTokenException;", "Lcom/vuitton/foundation/model/domain/error/session/SessionException;", "<init>", "()V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NoAccessTokenException extends SessionException {
        public NoAccessTokenException() {
            super("No access token found", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/session/SessionException$NoFacadeApiUrl;", "Lcom/vuitton/foundation/model/domain/error/session/SessionException;", "<init>", "()V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NoFacadeApiUrl extends SessionException {
        public NoFacadeApiUrl() {
            super("Facade API url not valid", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/session/SessionException$NoUserIdException;", "Lcom/vuitton/foundation/model/domain/error/session/SessionException;", "<init>", "()V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NoUserIdException extends SessionException {
        public NoUserIdException() {
            super("User ID not found", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/session/SessionException$RefreshTokenExpiredException;", "Lcom/vuitton/foundation/model/domain/error/session/SessionException;", "<init>", "()V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class RefreshTokenExpiredException extends SessionException {
        public RefreshTokenExpiredException() {
            super("Refresh token has expired", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/session/SessionException$RefreshTokenUnknownException;", "Lcom/vuitton/foundation/model/domain/error/session/SessionException;", "<init>", "()V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class RefreshTokenUnknownException extends SessionException {
        public RefreshTokenUnknownException() {
            super("Error while refreshing the token", null);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/session/SessionException$SessionAuthenticationFailException;", "Lcom/vuitton/foundation/model/domain/error/session/SessionException;", "<init>", "()V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class SessionAuthenticationFailException extends SessionException {
        public SessionAuthenticationFailException() {
            super("Error during the ATG session authentication", null);
        }
    }

    public SessionException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f66227b = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f66227b;
    }
}
