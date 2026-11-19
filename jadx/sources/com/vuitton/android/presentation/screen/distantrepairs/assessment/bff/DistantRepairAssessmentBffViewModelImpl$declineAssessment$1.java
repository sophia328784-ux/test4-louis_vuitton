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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl$declineAssessment$1", f = "DistantRepairAssessmentBffViewModelImpl.kt", l = {476, 478, 479, 482}, m = "invokeSuspend", v = 2)
final class DistantRepairAssessmentBffViewModelImpl$declineAssessment$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f56980b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DistantRepairAssessmentBffViewModelImpl f56981c;
    public Throwable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f56982e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f56983f;
    public final /* synthetic */ DistantRepairAssessmentBffViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f56984h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairAssessmentBffViewModelImpl$declineAssessment$1(DistantRepairAssessmentBffViewModelImpl distantRepairAssessmentBffViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.g = distantRepairAssessmentBffViewModelImpl;
        this.f56984h = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairAssessmentBffViewModelImpl$declineAssessment$1(this.g, this.f56984h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairAssessmentBffViewModelImpl$declineAssessment$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00b0  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a6, code lost:
    
        if (r7.u(r10, r11) == r2) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00be, code lost:
    
        if (com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl.yc(r0, r11) == r2) goto L34;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.distantrepairs.assessment.bff.DistantRepairAssessmentBffViewModelImpl$declineAssessment$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
