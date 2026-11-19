package com.vuitton.android.presentation.di.file;

import com.vuitton.android.core.type.FileLocation;
import kotlin.Metadata;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.di.file.FileStorageProviderImpl", f = "FileStorageProviderImpl.kt", l = {25}, m = "saveToCache-fQzCQlw", v = 2)
final class FileStorageProviderImpl$saveToCache$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f51478b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FileStorageProviderImpl f51479c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FileStorageProviderImpl$saveToCache$1(FileStorageProviderImpl fileStorageProviderImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f51479c = fileStorageProviderImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f51478b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f51479c.a(null, null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new FileLocation((String) objA);
    }
}
