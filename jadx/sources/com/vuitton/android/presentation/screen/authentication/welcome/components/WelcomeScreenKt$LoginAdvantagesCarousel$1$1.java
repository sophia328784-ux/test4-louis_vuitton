package com.vuitton.android.presentation.screen.authentication.welcome.components;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableState;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeScreenKt$LoginAdvantagesCarousel$1$1", f = "WelcomeScreen.kt", l = {255, 258, 261}, m = "invokeSuspend", v = 2)
final class WelcomeScreenKt$LoginAdvantagesCarousel$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f54274c;
    public final /* synthetic */ List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f54275e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WelcomeScreenKt$LoginAdvantagesCarousel$1$1(PagerState pagerState, List list, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f54274c = pagerState;
        this.d = list;
        this.f54275e = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WelcomeScreenKt$LoginAdvantagesCarousel$1$1(this.f54274c, this.d, this.f54275e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WelcomeScreenKt$LoginAdvantagesCarousel$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x001e  */
    /* JADX WARN: Code duplicated, block: B:14:0x002e  */
    /* JADX WARN: Code duplicated, block: B:17:0x0039  */
    /* JADX WARN: Code duplicated, block: B:19:0x0048  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x004f -> B:12:0x001e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0059 -> B:12:0x001e). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r8.f54273b
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L1b
            if (r1 == r5) goto L17
            if (r1 == r4) goto L1b
            if (r1 != r3) goto L11
            goto L1b
        L11:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r2
        L17:
            kotlin.ResultKt.b(r9)
            goto L39
        L1b:
            kotlin.ResultKt.b(r9)
        L1e:
            float r9 = com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeScreenKt.f54272a
            androidx.compose.runtime.MutableState r9 = r8.f54275e
            java.lang.Object r9 = r9.getF10755b()
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 != 0) goto L5c
            r8.f54273b = r5
            r6 = 4000(0xfa0, double:1.9763E-320)
            java.lang.Object r9 = kotlinx.coroutines.DelayKt.b(r6, r8)
            if (r9 != r0) goto L39
            goto L5b
        L39:
            androidx.compose.foundation.pager.PagerState r9 = r8.f54274c
            int r1 = r9.k()
            int r1 = r1 + r5
            java.util.List r6 = r8.d
            int r6 = r6.size()
            if (r1 >= r6) goto L52
            r8.f54273b = r4
            r6 = 6
            java.lang.Object r9 = androidx.compose.foundation.pager.PagerState.g(r9, r1, r2, r8, r6)
            if (r9 != r0) goto L1e
            goto L5b
        L52:
            r8.f54273b = r3
            r1 = 0
            java.lang.Object r9 = androidx.compose.foundation.pager.PagerState.v(r9, r1, r8)
            if (r9 != r0) goto L1e
        L5b:
            return r0
        L5c:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.authentication.welcome.components.WelcomeScreenKt$LoginAdvantagesCarousel$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
