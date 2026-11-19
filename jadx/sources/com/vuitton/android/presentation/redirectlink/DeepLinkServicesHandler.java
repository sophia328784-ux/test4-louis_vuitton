package com.vuitton.android.presentation.redirectlink;

import android.net.Uri;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\fB)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;", "emitter", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;", "authHandler", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DeepLinkServicesHandler {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f51941e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f51942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkEffectEmitter f51943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f51944c;
    public final DeepLinkAuthHandler d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler$Companion;", "", "", "TAG", "Ljava/lang/String;", "PIN_QUERY_PARAM", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f51941e = Reflection.f71922a.b(DeepLinkServicesHandler.class).B();
    }

    @Inject
    public DeepLinkServicesHandler(Logger logger, LinkEffectEmitter linkEffectEmitter, IsFeatureAvailableUseCase isFeatureAvailableUseCase, DeepLinkAuthHandler deepLinkAuthHandler) {
        logger.getClass();
        linkEffectEmitter.getClass();
        isFeatureAvailableUseCase.getClass();
        deepLinkAuthHandler.getClass();
        this.f51942a = logger;
        this.f51943b = linkEffectEmitter;
        this.f51944c = isFeatureAvailableUseCase;
        this.d = deepLinkAuthHandler;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Uri uri, ContinuationImpl continuationImpl) {
        DeepLinkServicesHandler$handleAdvisorCurationDeepLink$1 deepLinkServicesHandler$handleAdvisorCurationDeepLink$1;
        String str;
        if (continuationImpl instanceof DeepLinkServicesHandler$handleAdvisorCurationDeepLink$1) {
            deepLinkServicesHandler$handleAdvisorCurationDeepLink$1 = (DeepLinkServicesHandler$handleAdvisorCurationDeepLink$1) continuationImpl;
            int i2 = deepLinkServicesHandler$handleAdvisorCurationDeepLink$1.f51947e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                deepLinkServicesHandler$handleAdvisorCurationDeepLink$1.f51947e = i2 - Integer.MIN_VALUE;
            } else {
                deepLinkServicesHandler$handleAdvisorCurationDeepLink$1 = new DeepLinkServicesHandler$handleAdvisorCurationDeepLink$1(this, continuationImpl);
            }
        } else {
            deepLinkServicesHandler$handleAdvisorCurationDeepLink$1 = new DeepLinkServicesHandler$handleAdvisorCurationDeepLink$1(this, continuationImpl);
        }
        Object objC = deepLinkServicesHandler$handleAdvisorCurationDeepLink$1.f51946c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = deepLinkServicesHandler$handleAdvisorCurationDeepLink$1.f51947e;
        if (i3 == 0) {
            ResultKt.b(objC);
            Feature[] featureArr = {Feature.PERSONAL_SELECTIONS};
            deepLinkServicesHandler$handleAdvisorCurationDeepLink$1.f51945b = uri;
            deepLinkServicesHandler$handleAdvisorCurationDeepLink$1.f51947e = 1;
            objC = this.f51944c.c(featureArr, false, deepLinkServicesHandler$handleAdvisorCurationDeepLink$1);
            if (objC == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            uri = deepLinkServicesHandler$handleAdvisorCurationDeepLink$1.f51945b;
            ResultKt.b(objC);
        }
        if (!((Boolean) objC).booleanValue()) {
            return Unit.f71739a;
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments == null || (str = (String) CollectionsKt.firstOrNull(pathSegments)) == null) {
            this.f51942a.c(f51941e, "Unable to parse the advisor's curation deep link", null);
        } else {
            LinkEffect.Navigation.Direct.FromDeeplink.ToAdvisorCurationFromDeepLink toAdvisorCurationFromDeepLink = new LinkEffect.Navigation.Direct.FromDeeplink.ToAdvisorCurationFromDeepLink(str);
            LinkEffectEmitter linkEffectEmitter = this.f51943b;
            linkEffectEmitter.getClass();
            linkEffectEmitter.f52016c.b(toAdvisorCurationFromDeepLink);
        }
        return Unit.f71739a;
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0014  */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a4, code lost:
    
        if (com.vuitton.android.presentation.redirectlink.DeepLinkAuthHandler.b(r9.d, r2, null, null, r5, 6) == r0) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00f0, code lost:
    
        if (com.vuitton.android.presentation.redirectlink.DeepLinkAuthHandler.b(r9.d, r2, r3, null, r5, 4) == r0) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0105, code lost:
    
        if (com.vuitton.android.presentation.redirectlink.DeepLinkAuthHandler.b(r9.d, r2, null, null, r5, 6) == r0) goto L58;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(android.net.Uri r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            Method dump skipped, instruction units count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.redirectlink.DeepLinkServicesHandler.b(android.net.Uri, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(Uri uri, ContinuationImpl continuationImpl) {
        DeepLinkServicesHandler$handlePostVisitDeepLink$1 deepLinkServicesHandler$handlePostVisitDeepLink$1;
        String str;
        if (continuationImpl instanceof DeepLinkServicesHandler$handlePostVisitDeepLink$1) {
            deepLinkServicesHandler$handlePostVisitDeepLink$1 = (DeepLinkServicesHandler$handlePostVisitDeepLink$1) continuationImpl;
            int i2 = deepLinkServicesHandler$handlePostVisitDeepLink$1.f51953e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                deepLinkServicesHandler$handlePostVisitDeepLink$1.f51953e = i2 - Integer.MIN_VALUE;
            } else {
                deepLinkServicesHandler$handlePostVisitDeepLink$1 = new DeepLinkServicesHandler$handlePostVisitDeepLink$1(this, continuationImpl);
            }
        } else {
            deepLinkServicesHandler$handlePostVisitDeepLink$1 = new DeepLinkServicesHandler$handlePostVisitDeepLink$1(this, continuationImpl);
        }
        Object objC = deepLinkServicesHandler$handlePostVisitDeepLink$1.f51952c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = deepLinkServicesHandler$handlePostVisitDeepLink$1.f51953e;
        if (i3 == 0) {
            ResultKt.b(objC);
            Feature[] featureArr = {Feature.PERSONAL_SELECTIONS};
            deepLinkServicesHandler$handlePostVisitDeepLink$1.f51951b = uri;
            deepLinkServicesHandler$handlePostVisitDeepLink$1.f51953e = 1;
            objC = this.f51944c.c(featureArr, false, deepLinkServicesHandler$handlePostVisitDeepLink$1);
            if (objC == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            uri = deepLinkServicesHandler$handlePostVisitDeepLink$1.f51951b;
            ResultKt.b(objC);
        }
        if (!((Boolean) objC).booleanValue()) {
            return Unit.f71739a;
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments == null || (str = (String) CollectionsKt.firstOrNull(pathSegments)) == null) {
            this.f51942a.c(f51941e, "Unable to parse the InStore selection deep link", null);
        } else {
            LinkEffect.Navigation.Direct.FromDeeplink.ToInStoreSelectionFromDeepLink toInStoreSelectionFromDeepLink = new LinkEffect.Navigation.Direct.FromDeeplink.ToInStoreSelectionFromDeepLink(str);
            LinkEffectEmitter linkEffectEmitter = this.f51943b;
            linkEffectEmitter.getClass();
            linkEffectEmitter.f52016c.b(toInStoreSelectionFromDeepLink);
        }
        return Unit.f71739a;
    }
}
