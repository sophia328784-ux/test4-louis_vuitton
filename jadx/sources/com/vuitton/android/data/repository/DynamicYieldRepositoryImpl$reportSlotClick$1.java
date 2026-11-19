package com.vuitton.android.data.repository;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.DynamicYieldRepositoryImpl", f = "DynamicYieldRepositoryImpl.kt", l = {ModuleDescriptor.MODULE_VERSION, 186}, m = "reportSlotClick-gIAlu-s", v = 2)
final class DynamicYieldRepositoryImpl$reportSlotClick$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f47691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f47692c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f47693e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f47694f;
    public final /* synthetic */ DynamicYieldRepositoryImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f47695h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicYieldRepositoryImpl$reportSlotClick$1(DynamicYieldRepositoryImpl dynamicYieldRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = dynamicYieldRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47694f = obj;
        this.f47695h |= Integer.MIN_VALUE;
        Object objH = this.g.h(null, this);
        return objH == CoroutineSingletons.COROUTINE_SUSPENDED ? objH : new Result(objH);
    }
}
