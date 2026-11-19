package com.vuitton.android.data.net.interceptor;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.net.auth.TokenRefreshCoordinator;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.foundation.logger.Logger;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.Request;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0015Bv\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012U\u0010\u0012\u001aQ\u0012M\u0012K\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u000f\u0012\u0013\u0012\u00110\u000e¢\u0006\f\b\u000b\u0012\b\b\f\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\n0\tj\u0002`\u00110\b¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator;", "Lcom/vuitton/android/data/net/interceptor/SuspendAuthenticator;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;", "tokenRefreshCoordinator", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "", "Lkotlin/Function3;", "Lokhttp3/Request;", "Lkotlin/ParameterName;", "name", "req", "", "slasAccessToken", "sfidAccessToken", "Lcom/vuitton/android/data/net/interceptor/RequestAuthUpdater;", "requestUpdaters", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/net/auth/TokenRefreshCoordinator;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Ljava/util/List;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RefreshAuthenticator extends SuspendAuthenticator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f47080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TokenRefreshCoordinator f47081c;
    public final AuthTokenRepository d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f47082e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/net/interceptor/RefreshAuthenticator$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public RefreshAuthenticator(Logger logger, TokenRefreshCoordinator tokenRefreshCoordinator, AuthTokenRepository authTokenRepository, List<? extends Function3<? super Request, ? super String, ? super String, Request>> list) {
        logger.getClass();
        tokenRefreshCoordinator.getClass();
        authTokenRepository.getClass();
        list.getClass();
        this.f47080b = logger;
        this.f47081c = tokenRefreshCoordinator;
        this.d = authTokenRepository;
        this.f47082e = list;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00a6, code lost:
    
        if (r13 == r1) goto L34;
     */
    @Override // com.vuitton.android.data.net.interceptor.SuspendAuthenticator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(okhttp3.Response r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.net.interceptor.RefreshAuthenticator.a(okhttp3.Response, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
