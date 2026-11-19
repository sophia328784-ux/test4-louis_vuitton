package com.vuitton.android.presentation.redirectlink;

import com.vuitton.android.presentation.link.models.ParsedLink;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.redirectlink.DeepLinkHandler", f = "DeepLinkHandler.kt", l = {276}, m = "sendToMyAccountIfFeatureAvailable", v = 2)
final class DeepLinkHandler$sendToMyAccountIfFeatureAvailable$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ParsedLink f51938b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f51939c;
    public final /* synthetic */ DeepLinkHandler d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f51940e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeepLinkHandler$sendToMyAccountIfFeatureAvailable$1(DeepLinkHandler deepLinkHandler, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = deepLinkHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f51939c = obj;
        this.f51940e |= Integer.MIN_VALUE;
        String str = DeepLinkHandler.m;
        return this.d.c(null, null, this);
    }
}
