package com.vuitton.android.presentation.screen.distantrepairs.assessment.bff;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl$confirmAddress$1", f = "DistantRepairAssessmentBffViewModelImpl.kt", l = {499, 505, 508}, m = "invokeSuspend", v = 2)
final class DistantRepairAssessmentBffViewModelImpl$confirmAddress$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f56976b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DistantRepairAssessmentBffViewModelImpl f56977c;
    public Throwable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f56978e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ DistantRepairAssessmentBffViewModelImpl f56979f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairAssessmentBffViewModelImpl$confirmAddress$1(Continuation continuation, DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl) {
        super(2, continuation);
        this.f56979f = distantRepairAssessmentBffViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairAssessmentBffViewModelImpl$confirmAddress$1(continuation, this.f56979f);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairAssessmentBffViewModelImpl$confirmAddress$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:63:0x014a  */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0157, code lost:
    
        if (com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl.yc(r1, r49) == r3) goto L65;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r50) {
        /*
            Method dump skipped, instruction units count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl$confirmAddress$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
