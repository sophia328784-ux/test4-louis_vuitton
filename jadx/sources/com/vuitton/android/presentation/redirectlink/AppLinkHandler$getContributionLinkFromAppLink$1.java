package com.vuitton.android.presentation.redirectlink;

import com.vuitton.foundation.model.domain.model.dispatch.SwapDispatch;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.redirectlink.AppLinkHandler", f = "AppLinkHandler.kt", l = {122, 125, 128}, m = "getContributionLinkFromAppLink", v = 2)
final class AppLinkHandler$getContributionLinkFromAppLink$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f51888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SwapDispatch f51889c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AppLinkHandler f51890e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f51891f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppLinkHandler$getContributionLinkFromAppLink$1(AppLinkHandler appLinkHandler, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f51890e = appLinkHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f51891f |= Integer.MIN_VALUE;
        String str = AppLinkHandler.f51881i;
        return this.f51890e.a(null, this);
    }
}
