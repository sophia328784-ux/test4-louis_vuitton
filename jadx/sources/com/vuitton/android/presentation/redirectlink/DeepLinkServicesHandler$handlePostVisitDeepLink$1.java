package com.vuitton.android.presentation.redirectlink;

import android.net.Uri;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.redirectlink.DeepLinkServicesHandler", f = "DeepLinkServicesHandler.kt", l = {EACTags.DISPLAY_IMAGE}, m = "handlePostVisitDeepLink", v = 2)
final class DeepLinkServicesHandler$handlePostVisitDeepLink$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Uri f51951b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f51952c;
    public final /* synthetic */ DeepLinkServicesHandler d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f51953e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeepLinkServicesHandler$handlePostVisitDeepLink$1(DeepLinkServicesHandler deepLinkServicesHandler, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = deepLinkServicesHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f51952c = obj;
        this.f51953e |= Integer.MIN_VALUE;
        return this.d.c(null, this);
    }
}
