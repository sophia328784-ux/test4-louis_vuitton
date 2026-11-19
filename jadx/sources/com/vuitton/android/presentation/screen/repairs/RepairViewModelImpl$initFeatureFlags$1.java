package com.vuitton.android.presentation.screen.repairs;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl", f = "RepairViewModelImpl.kt", l = {192, 195, 198, 201, 204}, m = "initFeatureFlags", v = 2)
final class RepairViewModelImpl$initFeatureFlags$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableStateFlow f63545b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f63546c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f63547e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f63548f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f63549h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f63550i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public /* synthetic */ Object f63551j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ RepairViewModelImpl f63552k;
    public int l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairViewModelImpl$initFeatureFlags$1(RepairViewModelImpl repairViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f63552k = repairViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f63551j = obj;
        this.l |= Integer.MIN_VALUE;
        return RepairViewModelImpl.zc(this.f63552k, this);
    }
}
