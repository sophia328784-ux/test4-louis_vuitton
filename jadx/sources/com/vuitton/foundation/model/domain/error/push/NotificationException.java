package com.vuitton.foundation.model.domain.error.push;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0002\u0003\u0004\u0082\u0001\u0002\u0005\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/push/NotificationException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "NotificationNotFoundException", "FailToRetrieveException", "Lcom/vuitton/foundation/model/domain/error/push/NotificationException$FailToRetrieveException;", "Lcom/vuitton/foundation/model/domain/error/push/NotificationException$NotificationNotFoundException;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class NotificationException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66226b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/push/NotificationException$FailToRetrieveException;", "Lcom/vuitton/foundation/model/domain/error/push/NotificationException;", "", "errorMessage", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class FailToRetrieveException extends NotificationException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FailToRetrieveException(String str) {
            super("Fail to retrieve notifications: " + str, null);
            str.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/push/NotificationException$NotificationNotFoundException;", "Lcom/vuitton/foundation/model/domain/error/push/NotificationException;", "<init>", "()V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NotificationNotFoundException extends NotificationException {
        public NotificationNotFoundException() {
            super("UiNotification Not Found", null);
        }
    }

    public NotificationException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f66226b = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f66226b;
    }
}
