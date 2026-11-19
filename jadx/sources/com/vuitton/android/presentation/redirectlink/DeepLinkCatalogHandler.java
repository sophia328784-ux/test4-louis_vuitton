package com.vuitton.android.presentation.redirectlink;

import android.net.Uri;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.presentation.screen.storemode.models.StoreModeLaunchMode;
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
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\nB!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;", "emitter", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DeepLinkCatalogHandler {
    public static final String d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f51912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkEffectEmitter f51913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f51914c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler$Companion;", "", "", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        d = Reflection.f71922a.b(DeepLinkCatalogHandler.class).B();
    }

    @Inject
    public DeepLinkCatalogHandler(Logger logger, LinkEffectEmitter linkEffectEmitter, IsFeatureAvailableUseCase isFeatureAvailableUseCase) {
        logger.getClass();
        linkEffectEmitter.getClass();
        isFeatureAvailableUseCase.getClass();
        this.f51912a = logger;
        this.f51913b = linkEffectEmitter;
        this.f51914c = isFeatureAvailableUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Uri uri, ContinuationImpl continuationImpl) {
        DeepLinkCatalogHandler$handleStoreModeDeepLink$1 deepLinkCatalogHandler$handleStoreModeDeepLink$1;
        if (continuationImpl instanceof DeepLinkCatalogHandler$handleStoreModeDeepLink$1) {
            deepLinkCatalogHandler$handleStoreModeDeepLink$1 = (DeepLinkCatalogHandler$handleStoreModeDeepLink$1) continuationImpl;
            int i2 = deepLinkCatalogHandler$handleStoreModeDeepLink$1.f51917e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                deepLinkCatalogHandler$handleStoreModeDeepLink$1.f51917e = i2 - Integer.MIN_VALUE;
            } else {
                deepLinkCatalogHandler$handleStoreModeDeepLink$1 = new DeepLinkCatalogHandler$handleStoreModeDeepLink$1(this, continuationImpl);
            }
        } else {
            deepLinkCatalogHandler$handleStoreModeDeepLink$1 = new DeepLinkCatalogHandler$handleStoreModeDeepLink$1(this, continuationImpl);
        }
        Object objC = deepLinkCatalogHandler$handleStoreModeDeepLink$1.f51916c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = deepLinkCatalogHandler$handleStoreModeDeepLink$1.f51917e;
        if (i3 == 0) {
            ResultKt.b(objC);
            Feature[] featureArr = {Feature.STORE_MODE};
            deepLinkCatalogHandler$handleStoreModeDeepLink$1.f51915b = uri;
            deepLinkCatalogHandler$handleStoreModeDeepLink$1.f51917e = 1;
            objC = this.f51914c.c(featureArr, false, deepLinkCatalogHandler$handleStoreModeDeepLink$1);
            if (objC == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            uri = deepLinkCatalogHandler$handleStoreModeDeepLink$1.f51915b;
            ResultKt.b(objC);
        }
        boolean zBooleanValue = ((Boolean) objC).booleanValue();
        LinkEffectEmitter linkEffectEmitter = this.f51913b;
        if (!zBooleanValue) {
            this.f51912a.d(d, "STORE MODE feature is not available", null);
            LinkEffect.Tab.Catalog.CatalogDefault catalogDefault = LinkEffect.Tab.Catalog.CatalogDefault.f52001b;
            linkEffectEmitter.getClass();
            catalogDefault.getClass();
            linkEffectEmitter.f52016c.b(catalogDefault);
            return Unit.f71739a;
        }
        List<String> pathSegments = uri.getPathSegments();
        pathSegments.getClass();
        String str = (String) CollectionsKt.firstOrNull(pathSegments);
        List<String> pathSegments2 = uri.getPathSegments();
        pathSegments2.getClass();
        String str2 = (String) CollectionsKt.G(1, pathSegments2);
        if (str != null && str2 != null) {
            LinkEffect.Tab.Catalog.StoreMode storeMode = new LinkEffect.Tab.Catalog.StoreMode(str, str2, StoreModeLaunchMode.NEW_FROM_DEEPLINK);
            linkEffectEmitter.getClass();
            linkEffectEmitter.f52016c.b(storeMode);
        }
        return Unit.f71739a;
    }
}
