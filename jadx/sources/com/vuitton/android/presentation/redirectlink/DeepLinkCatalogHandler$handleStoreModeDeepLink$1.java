package com.vuitton.android.presentation.redirectlink;

import android.net.Uri;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.redirectlink.DeepLinkCatalogHandler", f = "DeepLinkCatalogHandler.kt", l = {22}, m = "handleStoreModeDeepLink", v = 2)
final class DeepLinkCatalogHandler$handleStoreModeDeepLink$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Uri f51915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f51916c;
    public final /* synthetic */ DeepLinkCatalogHandler d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f51917e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeepLinkCatalogHandler$handleStoreModeDeepLink$1(DeepLinkCatalogHandler deepLinkCatalogHandler, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = deepLinkCatalogHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f51916c = obj;
        this.f51917e |= Integer.MIN_VALUE;
        return this.d.a(null, this);
    }
}
