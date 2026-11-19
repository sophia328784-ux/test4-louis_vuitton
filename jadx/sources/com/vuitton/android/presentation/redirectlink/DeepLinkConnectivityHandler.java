package com.vuitton.android.presentation.redirectlink;

import com.vuitton.android.domain.service.authentication.UserSessionService;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;", "", "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;", "emitter", "Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "userSessionService", "Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;", "redirectionState", "<init>", "(Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DeepLinkConnectivityHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkEffectEmitter f51918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UserSessionService f51919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkRedirectionState f51920c;

    @Inject
    public DeepLinkConnectivityHandler(LinkEffectEmitter linkEffectEmitter, UserSessionService userSessionService, LinkRedirectionState linkRedirectionState) {
        linkEffectEmitter.getClass();
        userSessionService.getClass();
        linkRedirectionState.getClass();
        this.f51918a = linkEffectEmitter;
        this.f51919b = userSessionService;
        this.f51920c = linkRedirectionState;
    }
}
