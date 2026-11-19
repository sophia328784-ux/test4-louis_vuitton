package com.linecorp.linesdk.openchat.ui;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel", f = "OpenChatInfoViewModel.kt", l = {93}, m = "checkAgreementStatusAsync")
final class OpenChatInfoViewModel$checkAgreementStatusAsync$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f36280b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OpenChatInfoViewModel f36281c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpenChatInfoViewModel$checkAgreementStatusAsync$1(OpenChatInfoViewModel openChatInfoViewModel, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f36281c = openChatInfoViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f36280b = obj;
        this.d |= Integer.MIN_VALUE;
        return OpenChatInfoViewModel.yc(this.f36281c, this);
    }
}
