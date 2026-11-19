package com.kakao.sdk.network;

import java.io.IOException;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/kakao/sdk/network/ExceptionWrapper;", "Ljava/io/IOException;", "", "origin", "<init>", "(Ljava/lang/Throwable;)V", "network_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ExceptionWrapper extends IOException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Throwable f35907b;

    public ExceptionWrapper(Throwable th) {
        th.getClass();
        this.f35907b = th;
    }
}
