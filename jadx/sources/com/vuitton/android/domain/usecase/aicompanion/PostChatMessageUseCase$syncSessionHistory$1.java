package com.vuitton.android.domain.usecase.aicompanion;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.aicompanion.PostChatMessageUseCase", f = "PostChatMessageUseCase.kt", l = {EACTags.CURRENCY_CODE, 48}, m = "syncSessionHistory", v = 2)
final class PostChatMessageUseCase$syncSessionHistory$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f49165b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PostChatMessageUseCase f49166c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PostChatMessageUseCase$syncSessionHistory$1(PostChatMessageUseCase postChatMessageUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f49166c = postChatMessageUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49165b = obj;
        this.d |= Integer.MIN_VALUE;
        String str = PostChatMessageUseCase.d;
        return this.f49166c.b(null, null, this);
    }
}
