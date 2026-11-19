package com.vuitton.android.presentation.redirectlink;

import com.vuitton.android.domain.usecase.applink.CheckAppLinkExcludedUseCase;
import com.vuitton.android.domain.usecase.applink.GetContributionLinkFromAppLinkUseCase;
import com.vuitton.android.domain.usecase.applink.SaveContributionLinkToLaunchUseCase;
import com.vuitton.android.presentation.link.builder.WebAppLinkBuilder;
import com.vuitton.android.presentation.screen.analytics.AnalyticsTracker;
import com.vuitton.foundation.logger.Logger;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0014BI\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;", "tracker", "Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;", "webAppLinkBuilder", "Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase;", "checkAppLinkExcludedUseCase", "Lcom/vuitton/android/domain/usecase/applink/SaveContributionLinkToLaunchUseCase;", "saveContributionLinkToLaunchUseCase", "Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkFromAppLinkUseCase;", "getContributionLinkFromAppLinkUseCase", "Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;", "dynamicYieldLinkActivator", "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;", "emitter", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;Lcom/vuitton/android/domain/usecase/applink/CheckAppLinkExcludedUseCase;Lcom/vuitton/android/domain/usecase/applink/SaveContributionLinkToLaunchUseCase;Lcom/vuitton/android/domain/usecase/applink/GetContributionLinkFromAppLinkUseCase;Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AppLinkHandler {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f51881i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f51882a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AnalyticsTracker f51883b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final WebAppLinkBuilder f51884c;
    public final CheckAppLinkExcludedUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SaveContributionLinkToLaunchUseCase f51885e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetContributionLinkFromAppLinkUseCase f51886f;
    public final DynamicYieldLinkActivator g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final LinkEffectEmitter f51887h;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler$Companion;", "", "", "REASON_ID_QUERY_PARAM", "Ljava/lang/String;", "STORE_IDS_QUERY_PARAM", "TAG", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f51881i = Reflection.f71922a.b(AppLinkHandler.class).B();
    }

    @Inject
    public AppLinkHandler(Logger logger, AnalyticsTracker analyticsTracker, WebAppLinkBuilder webAppLinkBuilder, CheckAppLinkExcludedUseCase checkAppLinkExcludedUseCase, SaveContributionLinkToLaunchUseCase saveContributionLinkToLaunchUseCase, GetContributionLinkFromAppLinkUseCase getContributionLinkFromAppLinkUseCase, DynamicYieldLinkActivator dynamicYieldLinkActivator, LinkEffectEmitter linkEffectEmitter) {
        logger.getClass();
        analyticsTracker.getClass();
        webAppLinkBuilder.getClass();
        checkAppLinkExcludedUseCase.getClass();
        saveContributionLinkToLaunchUseCase.getClass();
        getContributionLinkFromAppLinkUseCase.getClass();
        dynamicYieldLinkActivator.getClass();
        linkEffectEmitter.getClass();
        this.f51882a = logger;
        this.f51883b = analyticsTracker;
        this.f51884c = webAppLinkBuilder;
        this.d = checkAppLinkExcludedUseCase;
        this.f51885e = saveContributionLinkToLaunchUseCase;
        this.f51886f = getContributionLinkFromAppLinkUseCase;
        this.g = dynamicYieldLinkActivator;
        this.f51887h = linkEffectEmitter;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0090  */
    /* JADX WARN: Code duplicated, block: B:45:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d0, code lost:
    
        if (r11 == r1) goto L42;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(java.lang.String r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.redirectlink.AppLinkHandler.a(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:109:0x01e7  */
    /* JADX WARN: Code duplicated, block: B:111:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:119:0x0208  */
    /* JADX WARN: Code duplicated, block: B:122:0x0224  */
    /* JADX WARN: Code duplicated, block: B:124:0x0233  */
    /* JADX WARN: Code duplicated, block: B:126:0x023d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:130:0x0251  */
    /* JADX WARN: Code duplicated, block: B:132:0x025d  */
    /* JADX WARN: Code duplicated, block: B:147:0x0186 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:148:0x026d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:149:? A[LOOP:1: B:87:0x016e->B:149:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:150:0x014a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:151:0x026d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:152:? A[LOOP:2: B:72:0x0132->B:152:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:153:0x010b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:154:0x026d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:155:? A[LOOP:3: B:57:0x00f3->B:155:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x00b6 A[PHI: r12 r13
      0x00b6: PHI (r12v4 java.lang.String) = (r12v2 java.lang.String), (r12v15 java.lang.String) binds: [B:41:0x00b2, B:16:0x0039] A[DONT_GENERATE, DONT_INLINE]
      0x00b6: PHI (r13v9 java.lang.Object) = (r13v4 java.lang.Object), (r13v1 java.lang.Object) binds: [B:41:0x00b2, B:16:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:45:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:47:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:49:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:51:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:53:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:59:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:64:0x0117  */
    /* JADX WARN: Code duplicated, block: B:68:0x0127  */
    /* JADX WARN: Code duplicated, block: B:71:0x012e  */
    /* JADX WARN: Code duplicated, block: B:74:0x0138  */
    /* JADX WARN: Code duplicated, block: B:79:0x0156  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:83:0x0163  */
    /* JADX WARN: Code duplicated, block: B:86:0x016a  */
    /* JADX WARN: Code duplicated, block: B:89:0x0174  */
    /* JADX WARN: Code duplicated, block: B:94:0x0190  */
    /* JADX WARN: Code duplicated, block: B:99:0x01a6  */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0275, code lost:
    
        if (a(r12, r0) == r1) goto L137;
     */
    /* JADX WARN: Instruction removed from duplicated block: B:119:0x0208, please report this as an issue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(java.lang.String r12, kotlin.coroutines.jvm.internal.ContinuationImpl r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 635
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.redirectlink.AppLinkHandler.b(java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
