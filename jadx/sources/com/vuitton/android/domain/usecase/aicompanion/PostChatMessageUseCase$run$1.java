package com.vuitton.android.domain.usecase.aicompanion;

import com.vuitton.foundation.model.domain.model.aicompanion.ChatRequest;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.aicompanion.PostChatMessageUseCase", f = "PostChatMessageUseCase.kt", l = {27, 28, 32}, m = "run-gIAlu-s", v = 2)
final class PostChatMessageUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ChatRequest f49161b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f49162c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PostChatMessageUseCase f49163e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f49164f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostChatMessageUseCase$run$1(PostChatMessageUseCase postChatMessageUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49163e = postChatMessageUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f49164f |= Integer.MIN_VALUE;
        Object objA = this.f49163e.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
