package com.vuitton.android.presentation.screen.feed.components;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.components.FeedScreenKt$FeedScreen$3$1", f = "FeedScreen.kt", l = {116, 118}, m = "invokeSuspend", v = 2)
final class FeedScreenKt$FeedScreen$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FeedTab f57842c;
    public final /* synthetic */ PagerState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f57843e;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57844a;

        static {
            int[] iArr = new int[FeedTab.values().length];
            try {
                iArr[FeedTab.DISCOVER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FeedTab.FOR_YOU.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f57844a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedScreenKt$FeedScreen$3$1(FeedTab feedTab, PagerState pagerState, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f57842c = feedTab;
        this.d = pagerState;
        this.f57843e = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedScreenKt$FeedScreen$3$1(this.f57842c, this.d, this.f57843e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedScreenKt$FeedScreen$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0056, code lost:
    
        if (androidx.compose.foundation.pager.PagerState.g(r1, r8, null, r7, 6) == r0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005f, code lost:
    
        if (androidx.compose.foundation.pager.PagerState.v(r1, r8, r7) == r0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0061, code lost:
    
        return r0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r7.f57841b
            r2 = 0
            androidx.compose.runtime.MutableState r3 = r7.f57843e
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L1a
            if (r1 == r5) goto L16
            if (r1 != r4) goto L10
            goto L16
        L10:
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r7)
            return r2
        L16:
            kotlin.ResultKt.b(r8)
            goto L62
        L1a:
            kotlin.ResultKt.b(r8)
            r8 = -1
            com.vuitton.android.presentation.screen.feed.models.FeedTab r1 = r7.f57842c
            if (r1 != 0) goto L24
            r1 = r8
            goto L2c
        L24:
            int[] r6 = com.vuitton.android.presentation.screen.feed.components.FeedScreenKt$FeedScreen$3$1.WhenMappings.f57844a
            int r1 = r1.ordinal()
            r1 = r6[r1]
        L2c:
            if (r1 == r8) goto L6c
            if (r1 == r5) goto L38
            if (r1 != r4) goto L34
            r8 = r5
            goto L39
        L34:
            defpackage.v40.g()
            return r2
        L38:
            r8 = 0
        L39:
            androidx.compose.foundation.pager.PagerState r1 = r7.d
            int r6 = r1.k()
            if (r6 == r8) goto L62
            java.util.List r6 = com.vuitton.android.presentation.screen.feed.components.FeedScreenKt.f57835a
            java.lang.Object r6 = r3.getF10755b()
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L59
            r7.f57841b = r5
            r4 = 6
            java.lang.Object r7 = androidx.compose.foundation.pager.PagerState.g(r1, r8, r2, r7, r4)
            if (r7 != r0) goto L62
            goto L61
        L59:
            r7.f57841b = r4
            java.lang.Object r7 = androidx.compose.foundation.pager.PagerState.v(r1, r8, r7)
            if (r7 != r0) goto L62
        L61:
            return r0
        L62:
            java.util.List r7 = com.vuitton.android.presentation.screen.feed.components.FeedScreenKt.f57835a
            java.lang.Boolean r7 = java.lang.Boolean.TRUE
            r3.setValue(r7)
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        L6c:
            kotlin.Unit r7 = kotlin.Unit.f71739a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.feed.components.FeedScreenKt$FeedScreen$3$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
