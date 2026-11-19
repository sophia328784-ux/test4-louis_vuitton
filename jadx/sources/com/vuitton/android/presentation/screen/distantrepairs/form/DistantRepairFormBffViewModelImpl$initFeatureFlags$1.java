package com.vuitton.android.presentation.screen.distantrepairs.form;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl", f = "DistantRepairFormBffViewModelImpl.kt", l = {266, 269, 272, 275}, m = "initFeatureFlags", v = 2)
final class DistantRepairFormBffViewModelImpl$initFeatureFlags$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MutableStateFlow f57114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f57115c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f57116e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f57117f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f57118h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public /* synthetic */ Object f57119i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ DistantRepairFormBffViewModelImpl f57120j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f57121k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairFormBffViewModelImpl$initFeatureFlags$1(DistantRepairFormBffViewModelImpl distantRepairFormBffViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f57120j = distantRepairFormBffViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f57119i = obj;
        this.f57121k |= Integer.MIN_VALUE;
        return DistantRepairFormBffViewModelImpl.yc(this.f57120j, this);
    }
}
