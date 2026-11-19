package com.vuitton.android.presentation.screen.repairs;

import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import com.vuitton.foundation.model.domain.model.careservices.CareServiceDetail;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl", f = "RepairViewModelImpl.kt", l = {449}, m = "fillRepairDetails-OF59NWs", v = 2)
final class RepairViewModelImpl$fillRepairDetails$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CareServiceDetail f63516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public CareServiceDetailUiModel f63517c;
    public MutableStateFlow d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f63518e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CareServiceDetailUiModel f63519f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f63520h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ RepairViewModelImpl f63521i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f63522j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairViewModelImpl$fillRepairDetails$1(RepairViewModelImpl repairViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f63521i = repairViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f63520h = obj;
        this.f63522j |= Integer.MIN_VALUE;
        return RepairViewModelImpl.yc(this.f63521i, null, null, this);
    }
}
