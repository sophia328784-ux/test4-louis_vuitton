package com.kakao.sdk.common.model;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00060\u0001j\u0002`\u0002R\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\u0082\u0001\u0004\b\t\n\u000b¨\u0006\f"}, d2 = {"Lcom/kakao/sdk/common/model/KakaoSdkError;", "Ljava/lang/RuntimeException;", "Lkotlin/RuntimeException;", "", "msg", "Ljava/lang/String;", "getMsg", "()Ljava/lang/String;", "Lcom/kakao/sdk/common/model/ApiError;", "Lcom/kakao/sdk/common/model/AppsError;", "Lcom/kakao/sdk/common/model/AuthError;", "Lcom/kakao/sdk/common/model/ClientError;", "common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class KakaoSdkError extends RuntimeException {
    private final String msg;

    public KakaoSdkError(String str, DefaultConstructorMarker defaultConstructorMarker) {
        super(str);
        this.msg = str;
    }
}
