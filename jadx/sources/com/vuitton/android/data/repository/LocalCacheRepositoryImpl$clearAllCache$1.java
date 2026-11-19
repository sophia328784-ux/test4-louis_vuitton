package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.LocalCacheRepositoryImpl", f = "LocalCacheRepositoryImpl.kt", l = {EACTags.DATE_OF_BIRTH}, m = "clearAllCache", v = 2)
final class LocalCacheRepositoryImpl$clearAllCache$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47784b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LocalCacheRepositoryImpl f47785c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocalCacheRepositoryImpl$clearAllCache$1(LocalCacheRepositoryImpl localCacheRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47785c = localCacheRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47784b = obj;
        this.d |= Integer.MIN_VALUE;
        return this.f47785c.a(this);
    }
}
