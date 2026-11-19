package com.vuitton.android.presentation.screen.livevideo;

import com.vuitton.foundation.model.domain.model.common.LiveVideoStatus;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.livevideo.LiveVideoViewModelImpl$getVideoInfo$1", f = "LiveVideoViewModelImpl.kt", l = {63, 72}, m = "invokeSuspend", v = 2)
final class LiveVideoViewModelImpl$getVideoInfo$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f58948b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LiveVideoViewModelImpl f58949c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LiveVideoViewModelImpl f58950e;

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f58951a;

        static {
            int[] iArr = new int[LiveVideoStatus.values().length];
            try {
                iArr[LiveVideoStatus.LIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LiveVideoStatus.LIVE_DONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LiveVideoStatus.LIVE_REPLAY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[LiveVideoStatus.LIVE_UPCOMING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f58951a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LiveVideoViewModelImpl$getVideoInfo$1(LiveVideoViewModelImpl liveVideoViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f58950e = liveVideoViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LiveVideoViewModelImpl$getVideoInfo$1(this.f58950e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LiveVideoViewModelImpl$getVideoInfo$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x010e, code lost:
    
        if (kotlinx.coroutines.DelayKt.b(30000, r12) == r0) goto L51;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            Method dump skipped, instruction units count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.livevideo.LiveVideoViewModelImpl$getVideoInfo$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
