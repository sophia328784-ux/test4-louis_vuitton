package com.vuitton.foundation.model.domain.error.storemode;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0001\u0003\u0082\u0001\u0001\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/storemode/StoreModeException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "NullRmsCodeException", "Lcom/vuitton/foundation/model/domain/error/storemode/StoreModeException$NullRmsCodeException;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class StoreModeException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66228b;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/storemode/StoreModeException$NullRmsCodeException;", "Lcom/vuitton/foundation/model/domain/error/storemode/StoreModeException;", "<init>", "()V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class NullRmsCodeException extends StoreModeException {
        public NullRmsCodeException() {
            super("Rms code can't be null", null);
        }
    }

    public StoreModeException(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this.f66228b = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f66228b;
    }
}
