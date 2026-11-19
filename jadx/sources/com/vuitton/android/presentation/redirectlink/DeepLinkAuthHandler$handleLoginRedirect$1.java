package com.vuitton.android.presentation.redirectlink;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.redirectlink.DeepLinkAuthHandler", f = "DeepLinkAuthHandler.kt", l = {EACTags.HISTORICAL_BYTES, EACTags.HISTORICAL_BYTES}, m = "handleLoginRedirect", v = 2)
final class DeepLinkAuthHandler$handleLoginRedirect$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f51903b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f51904c;
    public final /* synthetic */ DeepLinkAuthHandler d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f51905e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeepLinkAuthHandler$handleLoginRedirect$1(DeepLinkAuthHandler deepLinkAuthHandler, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = deepLinkAuthHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f51904c = obj;
        this.f51905e |= Integer.MIN_VALUE;
        return this.d.a(null, null, null, this);
    }
}
