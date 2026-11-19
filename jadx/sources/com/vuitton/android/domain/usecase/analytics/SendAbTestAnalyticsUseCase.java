package com.vuitton.android.domain.usecase.analytics;

import com.vuitton.android.domain.repository.AppConfigRepository;
import com.vuitton.android.domain.usecase.config.RequireCachedAppConfigUseCase;
import com.vuitton.android.domain.usecase.dispatch.RequireUserInAppDispatchUseCase;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\fB)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase;", "", "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;", "requireUserInAppDispatchUseCase", "Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;", "requireCachedAppConfigUseCase", "Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;", "sendEventUseCase", "Lcom/vuitton/android/domain/repository/AppConfigRepository;", "appConfigRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/config/RequireCachedAppConfigUseCase;Lcom/vuitton/android/domain/usecase/analytics/SendHitUseCase;Lcom/vuitton/android/domain/repository/AppConfigRepository;)V", "Companion", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SendAbTestAnalyticsUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RequireUserInAppDispatchUseCase f49184a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequireCachedAppConfigUseCase f49185b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SendHitUseCase f49186c;
    public final AppConfigRepository d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/domain/usecase/analytics/SendAbTestAnalyticsUseCase$Companion;", "", "", "VARIANT_ID_CONTROL", "Ljava/lang/String;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public SendAbTestAnalyticsUseCase(RequireUserInAppDispatchUseCase requireUserInAppDispatchUseCase, RequireCachedAppConfigUseCase requireCachedAppConfigUseCase, SendHitUseCase sendHitUseCase, AppConfigRepository appConfigRepository) {
        requireUserInAppDispatchUseCase.getClass();
        requireCachedAppConfigUseCase.getClass();
        sendHitUseCase.getClass();
        appConfigRepository.getClass();
        this.f49184a = requireUserInAppDispatchUseCase;
        this.f49185b = requireCachedAppConfigUseCase;
        this.f49186c = sendHitUseCase;
        this.d = appConfigRepository;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0063  */
    /* JADX WARN: Code duplicated, block: B:21:0x007e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:24:0x0085  */
    /* JADX WARN: Code duplicated, block: B:26:0x0093 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x0095  */
    /* JADX WARN: Code duplicated, block: B:28:0x009e  */
    /* JADX WARN: Code duplicated, block: B:29:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x007c -> B:22:0x007f). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:24:0x0085
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object a(kotlin.coroutines.jvm.internal.ContinuationImpl r19) {
        /*
            Method dump skipped, instruction units count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.analytics.SendAbTestAnalyticsUseCase.a(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
