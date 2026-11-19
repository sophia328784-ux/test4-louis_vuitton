package com.vuitton.android.data.repository;

import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.InAppDispatchRepositoryImpl", f = "InAppDispatchRepositoryImpl.kt", l = {34, 36}, m = "getUserInAppDispatchOrNull", v = 2)
final class InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f47733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f47734c;
    public final /* synthetic */ InAppDispatchRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47735e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InAppDispatchRepositoryImpl$getUserInAppDispatchOrNull$1(InAppDispatchRepositoryImpl inAppDispatchRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = inAppDispatchRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47734c = obj;
        this.f47735e |= Integer.MIN_VALUE;
        return this.d.c(null, this);
    }
}
