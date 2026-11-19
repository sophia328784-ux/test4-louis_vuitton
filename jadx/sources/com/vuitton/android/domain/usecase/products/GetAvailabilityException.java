package com.vuitton.android.domain.usecase.products;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0001\u0003\u0082\u0001\u0001\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/domain/usecase/products/GetAvailabilityException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "NotECommerce", "Lcom/vuitton/android/domain/usecase/products/GetAvailabilityException$NotECommerce;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class GetAvailabilityException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f50294b;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/domain/usecase/products/GetAvailabilityException$NotECommerce;", "Lcom/vuitton/android/domain/usecase/products/GetAvailabilityException;", "<init>", "()V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NotECommerce extends GetAvailabilityException {
        public NotECommerce() {
            super("The current locale is not E-commerce", null);
        }
    }

    public GetAvailabilityException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f50294b = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f50294b;
    }
}
