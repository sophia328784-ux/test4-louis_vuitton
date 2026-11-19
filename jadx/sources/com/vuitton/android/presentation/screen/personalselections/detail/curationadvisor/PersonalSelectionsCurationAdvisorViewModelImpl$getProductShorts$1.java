package com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionsCurationAdvisorViewModelImpl", f = "PersonalSelectionsCurationAdvisorViewModelImpl.kt", l = {347}, m = "getProductShorts", v = 2)
final class PersonalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f62449b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PersonalSelectionsCurationAdvisorViewModelImpl f62450c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalSelectionsCurationAdvisorViewModelImpl$getProductShorts$1(PersonalSelectionsCurationAdvisorViewModelImpl personalSelectionsCurationAdvisorViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f62450c = personalSelectionsCurationAdvisorViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f62449b = obj;
        this.d |= Integer.MIN_VALUE;
        return PersonalSelectionsCurationAdvisorViewModelImpl.yc(this.f62450c, null, this);
    }
}
