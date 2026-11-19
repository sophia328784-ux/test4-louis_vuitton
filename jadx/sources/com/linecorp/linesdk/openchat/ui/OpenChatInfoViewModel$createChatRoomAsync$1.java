package com.linecorp.linesdk.openchat.ui;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel", f = "OpenChatInfoViewModel.kt", l = {Sink.ORIENTATION_90}, m = "createChatRoomAsync")
final class OpenChatInfoViewModel$createChatRoomAsync$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f36283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OpenChatInfoViewModel f36284c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OpenChatInfoViewModel$createChatRoomAsync$1(OpenChatInfoViewModel openChatInfoViewModel, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f36284c = openChatInfoViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f36283b = obj;
        this.d |= Integer.MIN_VALUE;
        return OpenChatInfoViewModel.zc(this.f36284c, null, this);
    }
}
