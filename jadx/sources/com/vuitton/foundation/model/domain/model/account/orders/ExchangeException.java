package com.vuitton.foundation.model.domain.model.account.orders;

import com.networkbench.nbslens.nbsnativecrashlib.m;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0004\u0003\u0004\u0005\u0006\u0082\u0001\u0004\u0007\b\t\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "NotSellable", "Skip", "OutOfStock", "Unknown", "Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$NotSellable;", "Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$OutOfStock;", "Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$Skip;", "Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$Unknown;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ExchangeException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66312b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66313c;

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$NotSellable;", "Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException;", "message", "", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NotSellable extends ExchangeException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NotSellable(String str) {
            super(str, "notSellableError", null);
            str.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$OutOfStock;", "Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException;", "message", "", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class OutOfStock extends ExchangeException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OutOfStock(String str) {
            super(str, "outOfStockError", null);
            str.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$Skip;", "Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException;", "message", "", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Skip extends ExchangeException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Skip(String str) {
            super(str, "skipToReviewError", null);
            str.getClass();
        }
    }

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException$Unknown;", "Lcom/vuitton/foundation/model/domain/model/account/orders/ExchangeException;", "message", "", m.v, "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Unknown extends ExchangeException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Unknown(String str, String str2) {
            super(str, str2, null);
            str.getClass();
            str2.getClass();
        }
    }

    public ExchangeException(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this.f66312b = str;
        this.f66313c = str2;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f66312b;
    }
}
