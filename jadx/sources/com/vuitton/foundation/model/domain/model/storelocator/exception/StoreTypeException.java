package com.vuitton.foundation.model.domain.model.storelocator.exception;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0001\u0003\u0082\u0001\u0001\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/storelocator/exception/StoreTypeException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "InvalidStoreType", "Lcom/vuitton/foundation/model/domain/model/storelocator/exception/StoreTypeException$InvalidStoreType;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class StoreTypeException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68256b;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/storelocator/exception/StoreTypeException$InvalidStoreType;", "Lcom/vuitton/foundation/model/domain/model/storelocator/exception/StoreTypeException;", "<init>", "()V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class InvalidStoreType extends StoreTypeException {
        public InvalidStoreType() {
            super("Invalid store type", null);
        }
    }

    public StoreTypeException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f68256b = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f68256b;
    }
}
