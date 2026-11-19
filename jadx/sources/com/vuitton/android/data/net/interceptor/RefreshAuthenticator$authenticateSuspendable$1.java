package com.vuitton.android.data.net.interceptor;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import okhttp3.Response;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.net.interceptor.RefreshAuthenticator", f = "RefreshAuthenticator.kt", l = {56, EACTags.ELEMENT_LIST}, m = "authenticateSuspendable", v = 2)
final class RefreshAuthenticator$authenticateSuspendable$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Response f47083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RefreshAuthenticator f47084c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f47085e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ RefreshAuthenticator f47086f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RefreshAuthenticator$authenticateSuspendable$1(RefreshAuthenticator refreshAuthenticator, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47086f = refreshAuthenticator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47085e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f47086f.a(null, this);
    }
}
