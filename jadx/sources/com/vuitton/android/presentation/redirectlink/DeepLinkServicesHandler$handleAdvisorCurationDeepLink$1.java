package com.vuitton.android.presentation.redirectlink;

import android.net.Uri;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.redirectlink.DeepLinkServicesHandler", f = "DeepLinkServicesHandler.kt", l = {EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION}, m = "handleAdvisorCurationDeepLink", v = 2)
final class DeepLinkServicesHandler$handleAdvisorCurationDeepLink$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Uri f51945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f51946c;
    public final /* synthetic */ DeepLinkServicesHandler d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f51947e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeepLinkServicesHandler$handleAdvisorCurationDeepLink$1(DeepLinkServicesHandler deepLinkServicesHandler, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = deepLinkServicesHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f51946c = obj;
        this.f51947e |= Integer.MIN_VALUE;
        return this.d.a(null, this);
    }
}
