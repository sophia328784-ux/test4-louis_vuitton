package com.vuitton.android.presentation.redirectlink;

import com.vuitton.android.presentation.screen.connectivity.watch.PairWatchV2Ui;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;", "", "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;", "emitter", "<init>", "(Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LinkRedirectionState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkEffectEmitter f52019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PendingPostAuthAction f52020b;

    @Inject
    public LinkRedirectionState(LinkEffectEmitter linkEffectEmitter) {
        linkEffectEmitter.getClass();
        this.f52019a = linkEffectEmitter;
    }

    public final void a(boolean z) {
        PendingPostAuthAction pendingPostAuthAction = this.f52020b;
        PendingPostAuthAction.LoginRedirect loginRedirect = pendingPostAuthAction instanceof PendingPostAuthAction.LoginRedirect ? (PendingPostAuthAction.LoginRedirect) pendingPostAuthAction : null;
        LinkEffectEmitter linkEffectEmitter = this.f52019a;
        if (loginRedirect != null) {
            LinkEffect.Navigation.RedirectAfterLogin redirectAfterLogin = new LinkEffect.Navigation.RedirectAfterLogin(loginRedirect.f52035a, loginRedirect.f52036b);
            linkEffectEmitter.getClass();
            linkEffectEmitter.f52016c.b(redirectAfterLogin);
            this.f52020b = null;
            return;
        }
        if (z) {
            linkEffectEmitter.getClass();
            linkEffectEmitter.f52016c.b(LinkEffect.Navigation.Direct.FromDeeplink.ToMyAccount.f51984a);
        }
    }

    public final void b(PairWatchV2Ui pairWatchV2Ui) {
        PendingPostAuthAction pendingPostAuthAction = null;
        PendingPostAuthAction.PairingV2 pairingV2 = pairWatchV2Ui != null ? new PendingPostAuthAction.PairingV2(pairWatchV2Ui) : null;
        if (pairingV2 == null) {
            PendingPostAuthAction pendingPostAuthAction2 = this.f52020b;
            if (!(pendingPostAuthAction2 instanceof PendingPostAuthAction.PairingV2)) {
                pendingPostAuthAction = pendingPostAuthAction2;
            }
        } else {
            pendingPostAuthAction = pairingV2;
        }
        this.f52020b = pendingPostAuthAction;
    }
}
