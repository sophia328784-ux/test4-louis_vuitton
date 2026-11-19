package com.vuitton.android.data.net.interceptor;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.net.interceptor.RefreshTokenCommonKt", f = "RefreshTokenCommon.kt", l = {11, 15}, m = "mapRefreshResponseOrThrow", v = 2)
final class RefreshTokenCommonKt$mapRefreshResponseOrThrow$1<T, R> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47087b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f47088c;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47087b = obj;
        this.f47088c |= Integer.MIN_VALUE;
        return RefreshTokenCommonKt.a(null, null, null, this);
    }
}
