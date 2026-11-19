package com.vuitton.android.presentation.redirectlink;

import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.redirectlink.DeepLinkAuthHandler", f = "DeepLinkAuthHandler.kt", l = {107}, m = "handleRegisterDeepLink", v = 2)
final class DeepLinkAuthHandler$handleRegisterDeepLink$2 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f51906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f51907c;
    public final /* synthetic */ DeepLinkAuthHandler d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f51908e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeepLinkAuthHandler$handleRegisterDeepLink$2(DeepLinkAuthHandler deepLinkAuthHandler, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = deepLinkAuthHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f51907c = obj;
        this.f51908e |= Integer.MIN_VALUE;
        String str = DeepLinkAuthHandler.g;
        return this.d.c(null, null, this);
    }
}
