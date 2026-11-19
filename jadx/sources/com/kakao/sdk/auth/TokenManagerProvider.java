package com.kakao.sdk.auth;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/kakao/sdk/auth/TokenManagerProvider;", "", "Lcom/kakao/sdk/auth/TokenManageable;", "manager", "<init>", "(Lcom/kakao/sdk/auth/TokenManageable;)V", "Companion", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class TokenManagerProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f35842b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy f35843c = LazyKt.b(TokenManagerProvider$Companion$instance$2.f35845c);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TokenManageable f35844a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/kakao/sdk/auth/TokenManagerProvider$Companion;", "", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public TokenManagerProvider(TokenManageable tokenManageable, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            TokenManager.d.getClass();
            tokenManageable = (TokenManager) TokenManager.f35837e.getF71699b();
        }
        this(tokenManageable);
    }

    public TokenManagerProvider(TokenManageable tokenManageable) {
        tokenManageable.getClass();
        this.f35844a = tokenManageable;
    }

    public TokenManagerProvider() {
        this(null, 1, null);
    }
}
