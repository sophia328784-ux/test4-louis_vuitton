package com.vuitton.android.presentation.compose.components;

import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.MutableState;
import java.time.Instant;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.compose.components.LVLiveCountdownKt$LVLiveCountdown$1$1", f = "LVLiveCountdown.kt", l = {EACTags.DEPRECATED}, m = "invokeSuspend", v = 2)
final class LVLiveCountdownKt$LVLiveCountdown$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f50986b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Instant f50987c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableLongState f50988e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f50989f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LVLiveCountdownKt$LVLiveCountdown$1$1(Instant instant, Function0 function0, MutableLongState mutableLongState, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f50987c = instant;
        this.d = function0;
        this.f50988e = mutableLongState;
        this.f50989f = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LVLiveCountdownKt$LVLiveCountdown$1$1(this.f50987c, this.d, this.f50988e, this.f50989f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LVLiveCountdownKt$LVLiveCountdown$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0034  */
    /* JADX WARN: Code duplicated, block: B:13:0x0044 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x0042 -> B:14:0x0045). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r11.f50986b
            r2 = 1000(0x3e8, double:4.94E-321)
            java.time.Instant r4 = r11.f50987c
            r5 = 1
            androidx.compose.runtime.MutableLongState r6 = r11.f50988e
            if (r1 == 0) goto L1a
            if (r1 != r5) goto L13
            kotlin.ResultKt.b(r12)
            goto L45
        L13:
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r11)
            r11 = 0
            return r11
        L1a:
            kotlin.ResultKt.b(r12)
            long r7 = r4.getEpochSecond()
            long r9 = java.lang.System.currentTimeMillis()
            long r9 = r9 / r2
            long r7 = r7 - r9
            r6.D(r7)
        L2a:
            long r7 = r6.b()
            r9 = 0
            int r12 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r12 <= 0) goto L60
            kotlin.time.Duration$Companion r12 = kotlin.time.Duration.INSTANCE
            kotlin.time.DurationUnit r12 = kotlin.time.DurationUnit.SECONDS
            long r7 = kotlin.time.DurationKt.g(r5, r12)
            r11.f50986b = r5
            java.lang.Object r12 = kotlinx.coroutines.DelayKt.c(r7, r11)
            if (r12 != r0) goto L45
            return r0
        L45:
            long r7 = r4.getEpochSecond()
            long r9 = java.lang.System.currentTimeMillis()
            long r9 = r9 / r2
            long r7 = r7 - r9
            r6.D(r7)
            long r7 = r6.b()
            com.vuitton.android.presentation.compose.components.LiveEventState r12 = com.vuitton.android.presentation.compose.components.LVLiveCountdownKt.c(r7)
            androidx.compose.runtime.MutableState r1 = r11.f50989f
            r1.setValue(r12)
            goto L2a
        L60:
            kotlin.jvm.functions.Function0 r11 = r11.d
            r11.mo47invoke()
            kotlin.Unit r11 = kotlin.Unit.f71739a
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.compose.components.LVLiveCountdownKt$LVLiveCountdown$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
