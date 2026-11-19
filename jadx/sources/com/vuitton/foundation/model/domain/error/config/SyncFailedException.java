package com.vuitton.foundation.model.domain.error.config;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00060\u0001j\u0002`\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/error/config/SyncFailedException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "", "message", "<init>", "(Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SyncFailedException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66218b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SyncFailedException(String str) {
        super(str);
        str.getClass();
        this.f66218b = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f66218b;
    }
}
