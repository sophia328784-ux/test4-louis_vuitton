package com.vuitton.android.presentation.redirectlink;

import android.net.Uri;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.android.presentation.link.models.ParsedLink;
import com.vuitton.android.presentation.link.parsing.LinkParser;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u001cBi\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001b¨\u0006\u001d"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;", "", "Lcom/vuitton/android/presentation/link/parsing/LinkParser;", "linkParser", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;", "dynamicYieldLinkActivator", "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;", "emitter", "Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;", "redirectionState", "Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;", "authHandler", "Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;", "servicesHandler", "Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;", "accountHandler", "Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;", "cartHandler", "Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;", "connectivityHandler", "Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;", "catalogHandler", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Lcom/vuitton/android/presentation/link/parsing/LinkParser;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/presentation/redirectlink/DynamicYieldLinkActivator;Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;Lcom/vuitton/android/presentation/redirectlink/DeepLinkAuthHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkServicesHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkAccountHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkCartHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;Lcom/vuitton/android/presentation/redirectlink/DeepLinkCatalogHandler;Lcom/vuitton/foundation/logger/Logger;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DeepLinkHandler {
    public static final String m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkParser f51921a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f51922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final DynamicYieldLinkActivator f51923c;
    public final LinkEffectEmitter d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkRedirectionState f51924e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final DeepLinkAuthHandler f51925f;
    public final DeepLinkServicesHandler g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final DeepLinkAccountHandler f51926h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final DeepLinkCartHandler f51927i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final DeepLinkConnectivityHandler f51928j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final DeepLinkCatalogHandler f51929k;
    public final Logger l;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        m = Reflection.f71922a.b(DeepLinkHandler.class).B();
    }

    @Inject
    public DeepLinkHandler(LinkParser linkParser, IsFeatureAvailableUseCase isFeatureAvailableUseCase, DynamicYieldLinkActivator dynamicYieldLinkActivator, LinkEffectEmitter linkEffectEmitter, LinkRedirectionState linkRedirectionState, DeepLinkAuthHandler deepLinkAuthHandler, DeepLinkServicesHandler deepLinkServicesHandler, DeepLinkAccountHandler deepLinkAccountHandler, DeepLinkCartHandler deepLinkCartHandler, DeepLinkConnectivityHandler deepLinkConnectivityHandler, DeepLinkCatalogHandler deepLinkCatalogHandler, Logger logger) {
        linkParser.getClass();
        isFeatureAvailableUseCase.getClass();
        dynamicYieldLinkActivator.getClass();
        linkEffectEmitter.getClass();
        linkRedirectionState.getClass();
        deepLinkAuthHandler.getClass();
        deepLinkServicesHandler.getClass();
        deepLinkAccountHandler.getClass();
        deepLinkCartHandler.getClass();
        deepLinkConnectivityHandler.getClass();
        deepLinkCatalogHandler.getClass();
        logger.getClass();
        this.f51921a = linkParser;
        this.f51922b = isFeatureAvailableUseCase;
        this.f51923c = dynamicYieldLinkActivator;
        this.d = linkEffectEmitter;
        this.f51924e = linkRedirectionState;
        this.f51925f = deepLinkAuthHandler;
        this.g = deepLinkServicesHandler;
        this.f51926h = deepLinkAccountHandler;
        this.f51927i = deepLinkCartHandler;
        this.f51928j = deepLinkConnectivityHandler;
        this.f51929k = deepLinkCatalogHandler;
        this.l = logger;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Uri uri, ContinuationImpl continuationImpl) throws Throwable {
        DeepLinkHandler$handleDynamicYieldParam$1 deepLinkHandler$handleDynamicYieldParam$1;
        Object failure;
        if (continuationImpl instanceof DeepLinkHandler$handleDynamicYieldParam$1) {
            deepLinkHandler$handleDynamicYieldParam$1 = (DeepLinkHandler$handleDynamicYieldParam$1) continuationImpl;
            int i2 = deepLinkHandler$handleDynamicYieldParam$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                deepLinkHandler$handleDynamicYieldParam$1.d = i2 - Integer.MIN_VALUE;
            } else {
                deepLinkHandler$handleDynamicYieldParam$1 = new DeepLinkHandler$handleDynamicYieldParam$1(this, continuationImpl);
            }
        } else {
            deepLinkHandler$handleDynamicYieldParam$1 = new DeepLinkHandler$handleDynamicYieldParam$1(this, continuationImpl);
        }
        Object obj = deepLinkHandler$handleDynamicYieldParam$1.f51936b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = deepLinkHandler$handleDynamicYieldParam$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                if (!Intrinsics.c(uri.getQueryParameter("abVariant"), "Dynamic_Yield")) {
                    return Unit.f71739a;
                }
                Result.Companion companion = Result.INSTANCE;
                DynamicYieldLinkActivator dynamicYieldLinkActivator = this.f51923c;
                deepLinkHandler$handleDynamicYieldParam$1.d = 1;
                if (dynamicYieldLinkActivator.a(deepLinkHandler$handleDynamicYieldParam$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        Throwable thA2 = Result.a(((Result) failure).f71708b);
        if (thA2 != null) {
            this.l.c(m, "Unable to activate Dynamic Yield from deep link", thA2);
        }
        return Unit.f71739a;
    }

    public final void b(ParsedLink parsedLink) {
        LinkEffect.Navigation.Direct.FromDeeplink.ToMyAccountWithParsedLink toMyAccountWithParsedLink = new LinkEffect.Navigation.Direct.FromDeeplink.ToMyAccountWithParsedLink(parsedLink);
        LinkEffectEmitter linkEffectEmitter = this.d;
        linkEffectEmitter.getClass();
        linkEffectEmitter.f52016c.b(toMyAccountWithParsedLink);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(Feature feature, ParsedLink parsedLink, ContinuationImpl continuationImpl) {
        DeepLinkHandler$sendToMyAccountIfFeatureAvailable$1 deepLinkHandler$sendToMyAccountIfFeatureAvailable$1;
        if (continuationImpl instanceof DeepLinkHandler$sendToMyAccountIfFeatureAvailable$1) {
            deepLinkHandler$sendToMyAccountIfFeatureAvailable$1 = (DeepLinkHandler$sendToMyAccountIfFeatureAvailable$1) continuationImpl;
            int i2 = deepLinkHandler$sendToMyAccountIfFeatureAvailable$1.f51940e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                deepLinkHandler$sendToMyAccountIfFeatureAvailable$1.f51940e = i2 - Integer.MIN_VALUE;
            } else {
                deepLinkHandler$sendToMyAccountIfFeatureAvailable$1 = new DeepLinkHandler$sendToMyAccountIfFeatureAvailable$1(this, continuationImpl);
            }
        } else {
            deepLinkHandler$sendToMyAccountIfFeatureAvailable$1 = new DeepLinkHandler$sendToMyAccountIfFeatureAvailable$1(this, continuationImpl);
        }
        Object objC = deepLinkHandler$sendToMyAccountIfFeatureAvailable$1.f51939c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = deepLinkHandler$sendToMyAccountIfFeatureAvailable$1.f51940e;
        if (i3 == 0) {
            ResultKt.b(objC);
            deepLinkHandler$sendToMyAccountIfFeatureAvailable$1.f51938b = parsedLink;
            deepLinkHandler$sendToMyAccountIfFeatureAvailable$1.f51940e = 1;
            objC = this.f51922b.c(new Feature[]{feature}, false, deepLinkHandler$sendToMyAccountIfFeatureAvailable$1);
            if (objC == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            parsedLink = deepLinkHandler$sendToMyAccountIfFeatureAvailable$1.f51938b;
            ResultKt.b(objC);
        }
        if (((Boolean) objC).booleanValue()) {
            b(parsedLink);
        }
        return Unit.f71739a;
    }
}
