package com.vuitton.android.presentation.redirectlink;

import android.app.Activity;
import android.net.Uri;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.presentation.applink.AppLinkTrackingUiModel;
import com.vuitton.android.presentation.applink.AppLinkTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.watch.PairWatchV2Ui;
import defpackage.v40;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B!\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/LinkViewModelImpl;", "Landroidx/lifecycle/ViewModel;", "Lcom/vuitton/android/presentation/redirectlink/LinkViewModel;", "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;", "emitter", "Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;", "deepLinkHandler", "Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;", "appLinkHandler", "<init>", "(Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/presentation/redirectlink/DeepLinkHandler;Lcom/vuitton/android/presentation/redirectlink/AppLinkHandler;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LinkViewModelImpl extends ViewModel implements LinkViewModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DeepLinkHandler f52021a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppLinkHandler f52022b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateFlow f52023c;
    public final Flow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SharedFlow f52024e;

    @Inject
    public LinkViewModelImpl(LinkEffectEmitter linkEffectEmitter, DeepLinkHandler deepLinkHandler, AppLinkHandler appLinkHandler) {
        linkEffectEmitter.getClass();
        deepLinkHandler.getClass();
        appLinkHandler.getClass();
        this.f52021a = deepLinkHandler;
        this.f52022b = appLinkHandler;
        this.f52023c = linkEffectEmitter.f52015b;
        this.d = linkEffectEmitter.d;
        this.f52024e = linkEffectEmitter.f52018f;
    }

    @Override // com.vuitton.android.presentation.redirectlink.LinkViewModel
    public final void B8() {
        DeepLinkHandler deepLinkHandler = this.f52021a;
        DeepLinkConnectivityHandler deepLinkConnectivityHandler = deepLinkHandler.f51928j;
        LinkRedirectionState linkRedirectionState = deepLinkHandler.f51924e;
        PendingPostAuthAction pendingPostAuthAction = linkRedirectionState.f52020b;
        if (pendingPostAuthAction instanceof PendingPostAuthAction.PairingV2) {
            LinkRedirectionState linkRedirectionState2 = deepLinkConnectivityHandler.f51920c;
            PendingPostAuthAction pendingPostAuthAction2 = linkRedirectionState2.f52020b;
            PendingPostAuthAction.PairingV2 pairingV2 = pendingPostAuthAction2 instanceof PendingPostAuthAction.PairingV2 ? (PendingPostAuthAction.PairingV2) pendingPostAuthAction2 : null;
            PairWatchV2Ui pairWatchV2Ui = pairingV2 != null ? pairingV2.f52037a : null;
            if (pairWatchV2Ui != null) {
                LinkEffectEmitter linkEffectEmitter = deepLinkConnectivityHandler.f51918a;
                if (!deepLinkConnectivityHandler.f51919b.b()) {
                    linkRedirectionState2.b(pairWatchV2Ui);
                    linkEffectEmitter.getClass();
                    linkEffectEmitter.f52016c.b(LinkEffect.Navigation.Direct.FromDeeplink.ToAuthenticateDeeplinkV2.f51975a);
                    return;
                } else {
                    linkRedirectionState2.b(null);
                    LinkEffect.Navigation.Direct.FromDeeplink.ToMyWatchFromPairingWith toMyWatchFromPairingWith = new LinkEffect.Navigation.Direct.FromDeeplink.ToMyWatchFromPairingWith(pairWatchV2Ui);
                    linkEffectEmitter.getClass();
                    linkEffectEmitter.f52016c.b(toMyWatchFromPairingWith);
                    return;
                }
            }
            return;
        }
        PendingPostAuthAction.Travel travel = PendingPostAuthAction.Travel.f52038a;
        if (!Intrinsics.c(pendingPostAuthAction, travel)) {
            if ((pendingPostAuthAction instanceof PendingPostAuthAction.LoginRedirect) || pendingPostAuthAction == null) {
                linkRedirectionState.a(false);
                return;
            } else {
                v40.g();
                return;
            }
        }
        LinkEffectEmitter linkEffectEmitter2 = deepLinkConnectivityHandler.f51918a;
        boolean zB = deepLinkConnectivityHandler.f51919b.b();
        LinkRedirectionState linkRedirectionState3 = deepLinkConnectivityHandler.f51920c;
        if (!zB) {
            linkRedirectionState3.getClass();
            linkRedirectionState3.f52020b = travel;
            linkEffectEmitter2.getClass();
            linkEffectEmitter2.f52016c.b(LinkEffect.Navigation.Direct.FromDeeplink.ToAuthenticateFromTravel.f51976a);
            return;
        }
        linkRedirectionState3.getClass();
        PendingPostAuthAction pendingPostAuthAction3 = linkRedirectionState3.f52020b;
        linkRedirectionState3.f52020b = pendingPostAuthAction3 instanceof PendingPostAuthAction.Travel ? null : pendingPostAuthAction3;
        linkEffectEmitter2.getClass();
        linkEffectEmitter2.f52016c.b(LinkEffect.Navigation.Direct.FromDeeplink.ToTravelFromDeepLink.f51997a);
    }

    @Override // com.vuitton.android.presentation.redirectlink.LinkViewModel
    /* JADX INFO: renamed from: Eb, reason: from getter */
    public final SharedFlow getF52024e() {
        return this.f52024e;
    }

    @Override // com.vuitton.android.presentation.redirectlink.LinkViewModel
    /* JADX INFO: renamed from: Z6, reason: from getter */
    public final StateFlow getF52023c() {
        return this.f52023c;
    }

    @Override // com.vuitton.android.presentation.redirectlink.LinkViewModel
    public final void Zb() {
        BuildersKt.c(ViewModelKt.a(this), null, null, new LinkViewModelImpl$handleRepairCreateRedirection$1(this, null), 3);
    }

    @Override // com.vuitton.android.presentation.redirectlink.LinkViewModel
    /* JADX INFO: renamed from: c2, reason: from getter */
    public final Flow getD() {
        return this.d;
    }

    @Override // com.vuitton.android.presentation.redirectlink.LinkViewModel
    public final void f1() {
        AppLinkHandler appLinkHandler = this.f52022b;
        appLinkHandler.getClass();
        appLinkHandler.f51883b.a(AppLinkTrackingUiModelKt.a(AppLinkTrackingUiModel.SwapLocaleScreen.f50544a));
    }

    @Override // com.vuitton.android.presentation.redirectlink.LinkViewModel
    public final void l9(Activity activity, Uri uri, String str, boolean z) {
        uri.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new LinkViewModelImpl$dispatchDeepLinks$1(this, activity, uri, str, z, null), 3);
    }

    @Override // com.vuitton.android.presentation.redirectlink.LinkViewModel
    public final void wc(String str) {
        str.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new LinkViewModelImpl$handleAppLink$1(this, str, null), 3);
    }
}
