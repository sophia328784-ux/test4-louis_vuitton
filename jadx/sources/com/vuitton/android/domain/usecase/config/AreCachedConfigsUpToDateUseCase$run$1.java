package com.vuitton.android.domain.usecase.config;

import com.vuitton.foundation.model.domain.model.config.version.ConfigsVersion;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.config.AreCachedConfigsUpToDateUseCase", f = "AreCachedConfigsUpToDateUseCase.kt", l = {16, 27}, m = "run", v = 2)
final class AreCachedConfigsUpToDateUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ConfigsVersion f49652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49653c;
    public final /* synthetic */ AreCachedConfigsUpToDateUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49654e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AreCachedConfigsUpToDateUseCase$run$1(AreCachedConfigsUpToDateUseCase areCachedConfigsUpToDateUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = areCachedConfigsUpToDateUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49653c = obj;
        this.f49654e |= Integer.MIN_VALUE;
        return this.d.a(null, this);
    }
}
