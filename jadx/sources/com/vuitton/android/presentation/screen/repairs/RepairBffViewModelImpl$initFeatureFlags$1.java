package com.vuitton.android.presentation.screen.repairs;

import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairBffViewModelImpl", f = "RepairBffViewModelImpl.kt", l = {173, 176, 179, 182, ModuleDescriptor.MODULE_VERSION}, m = "initFeatureFlags", v = 2)
final class RepairBffViewModelImpl$initFeatureFlags$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableStateFlow f63471b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f63472c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f63473e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f63474f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f63475h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f63476i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public /* synthetic */ Object f63477j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ RepairBffViewModelImpl f63478k;
    public int l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairBffViewModelImpl$initFeatureFlags$1(RepairBffViewModelImpl repairBffViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f63478k = repairBffViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f63477j = obj;
        this.l |= Integer.MIN_VALUE;
        return RepairBffViewModelImpl.zc(this.f63478k, this);
    }
}
