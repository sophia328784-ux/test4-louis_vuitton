package com.vuitton.android.presentation.redirectlink;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.redirectlink.AppLinkHandler", f = "AppLinkHandler.kt", l = {EACTags.DATE_OF_BIRTH, 48, 60}, m = "handleAppLink", v = 2)
final class AppLinkHandler$handleAppLink$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f51892b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f51893c;
    public final /* synthetic */ AppLinkHandler d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f51894e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppLinkHandler$handleAppLink$1(AppLinkHandler appLinkHandler, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = appLinkHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f51893c = obj;
        this.f51894e |= Integer.MIN_VALUE;
        return this.d.b(null, this);
    }
}
