package com.vuitton.android.presentation.compose.components;

import androidx.compose.runtime.MutableState;
import java.text.BreakIterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.compose.components.TextWithTypingAnimationKt$TextWithTypingAnimation$2$1", f = "TextWithTypingAnimation.kt", l = {56, EACTags.CARDHOLDER_HANDWRITTEN_SIGNATURE}, m = "invokeSuspend", v = 2)
final class TextWithTypingAnimationKt$TextWithTypingAnimation$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f51060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f51061c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f51062e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ BreakIterator f51063f;
    public final /* synthetic */ String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ long f51064h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function0 f51065i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ MutableState f51066j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ MutableState f51067k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TextWithTypingAnimationKt$TextWithTypingAnimation$2$1(long j2, BreakIterator breakIterator, String str, long j3, Function0 function0, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.f51062e = j2;
        this.f51063f = breakIterator;
        this.g = str;
        this.f51064h = j3;
        this.f51065i = function0;
        this.f51066j = mutableState;
        this.f51067k = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TextWithTypingAnimationKt$TextWithTypingAnimation$2$1(this.f51062e, this.f51063f, this.g, this.f51064h, this.f51065i, this.f51066j, this.f51067k, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TextWithTypingAnimationKt$TextWithTypingAnimation$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x006b  */
    /* JADX WARN: Code duplicated, block: B:30:0x0092  */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0049, code lost:
    
        if (kotlinx.coroutines.DelayKt.c(r7, r9) == r0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008f, code lost:
    
        if (kotlinx.coroutines.DelayKt.c(r7, r9) == r0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0091, code lost:
    
        return r0;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008f -> B:7:0x0019). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r9.d
            androidx.compose.runtime.MutableState r2 = r9.f51066j
            r3 = 2
            r4 = 1
            java.lang.String r5 = r9.g
            java.text.BreakIterator r6 = r9.f51063f
            if (r1 == 0) goto L28
            if (r1 == r4) goto L22
            if (r1 != r3) goto L1b
            int r1 = r9.f51061c
            int r4 = r9.f51060b
            kotlin.ResultKt.b(r10)
        L19:
            r10 = r1
            goto L68
        L1b:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            r9 = 0
            return r9
        L22:
            int r1 = r9.f51060b
            kotlin.ResultKt.b(r10)
            goto L4c
        L28:
            kotlin.ResultKt.b(r10)
            java.lang.Object r10 = r2.getF10755b()
            java.lang.String r10 = (java.lang.String) r10
            int r1 = r10.length()
            if (r1 != 0) goto L4c
            kotlin.time.Duration$Companion r10 = kotlin.time.Duration.INSTANCE
            long r7 = r9.f51062e
            kotlin.time.DurationUnit r10 = kotlin.time.DurationUnit.MILLISECONDS
            long r7 = kotlin.time.DurationKt.h(r7, r10)
            r9.f51060b = r1
            r9.d = r4
            java.lang.Object r10 = kotlinx.coroutines.DelayKt.c(r7, r9)
            if (r10 != r0) goto L4c
            goto L91
        L4c:
            java.text.StringCharacterIterator r10 = new java.text.StringCharacterIterator
            r10.<init>(r5)
            r6.setText(r10)
            if (r1 != 0) goto L5b
            int r10 = r6.next()
            goto L67
        L5b:
            int r10 = r5.length()
            if (r1 <= r10) goto L62
            goto L63
        L62:
            r10 = r1
        L63:
            int r10 = r6.following(r10)
        L67:
            r4 = r1
        L68:
            r1 = -1
            if (r10 == r1) goto L92
            r1 = 0
            java.lang.CharSequence r10 = r5.subSequence(r1, r10)
            java.lang.String r10 = r10.toString()
            r2.setValue(r10)
            int r1 = r6.next()
            kotlin.time.Duration$Companion r10 = kotlin.time.Duration.INSTANCE
            long r7 = r9.f51064h
            kotlin.time.DurationUnit r10 = kotlin.time.DurationUnit.MILLISECONDS
            long r7 = kotlin.time.DurationKt.h(r7, r10)
            r9.f51060b = r4
            r9.f51061c = r1
            r9.d = r3
            java.lang.Object r10 = kotlinx.coroutines.DelayKt.c(r7, r9)
            if (r10 != r0) goto L19
        L91:
            return r0
        L92:
            androidx.compose.runtime.MutableState r10 = r9.f51067k
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            r10.setValue(r0)
            kotlin.jvm.functions.Function0 r9 = r9.f51065i
            r9.mo47invoke()
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.compose.components.TextWithTypingAnimationKt$TextWithTypingAnimation$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
