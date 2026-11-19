package com.kakao.sdk.auth;

import com.kakao.sdk.common.KakaoSdk;
import com.kakao.sdk.common.model.ServerHosts;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/kakao/sdk/auth/UriUtility;", "", "Lcom/kakao/sdk/common/model/ServerHosts;", "hosts", "<init>", "(Lcom/kakao/sdk/common/model/ServerHosts;)V", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class UriUtility {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ServerHosts f35846a;

    public /* synthetic */ UriUtility(ServerHosts serverHosts, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? KakaoSdk.b() : serverHosts);
    }

    public UriUtility(ServerHosts serverHosts) {
        serverHosts.getClass();
        this.f35846a = serverHosts;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public UriUtility() {
        this(null, 1, 0 == true ? 1 : 0);
    }
}
