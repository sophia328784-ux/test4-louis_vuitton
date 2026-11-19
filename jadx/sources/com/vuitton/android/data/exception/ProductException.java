package com.vuitton.android.data.exception;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0001\u0003\u0082\u0001\u0001\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/exception/ProductException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "NoPriceException", "Lcom/vuitton/android/data/exception/ProductException$NoPriceException;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ProductException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46967b;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/data/exception/ProductException$NoPriceException;", "Lcom/vuitton/android/data/exception/ProductException;", "<init>", "()V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NoPriceException extends ProductException {
        public NoPriceException() {
            super("Price can't be null if sellable is true", null);
        }
    }

    public ProductException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f46967b = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f46967b;
    }
}
