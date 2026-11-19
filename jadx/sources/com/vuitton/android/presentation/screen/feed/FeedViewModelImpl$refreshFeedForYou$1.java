package com.vuitton.android.presentation.screen.feed;

import com.vuitton.android.domain.usecase.feed.GetFeedForYouUseCase;
import com.vuitton.foundation.model.domain.model.common.Coordinates;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$refreshFeedForYou$1", f = "FeedViewModelImpl.kt", l = {901, 898}, m = "invokeSuspend", v = 2)
final class FeedViewModelImpl$refreshFeedForYou$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public GetFeedForYouUseCase f57708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Coordinates f57709c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f57710e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ FeedViewModelImpl f57711f;
    public final /* synthetic */ String g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$refreshFeedForYou$1(FeedViewModelImpl feedViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f57711f = feedViewModelImpl;
        this.g = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedViewModelImpl$refreshFeedForYou$1(this.f57711f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedViewModelImpl$refreshFeedForYou$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x005f, code lost:
    
        if (r11 == r0) goto L16;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            Method dump skipped, instruction units count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$refreshFeedForYou$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
