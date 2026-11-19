package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import androidx.compose.animation.core.Animatable;
import androidx.compose.runtime.MutableState;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpBottomAreaKt$PdpBottomArea$3$1$2$1", f = "PdpBottomArea.kt", l = {131, 134, 138}, m = "invokeSuspend", v = 2)
final class PdpBottomAreaKt$PdpBottomArea$3$1$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f61445c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f61446e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Animatable f61447f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ boolean f61448h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ boolean f61449i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ MutableState f61450j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ Animatable f61451k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpBottomAreaKt$PdpBottomArea$3$1$2$1(boolean z, boolean z2, MutableState mutableState, Animatable animatable, Continuation continuation) {
        super(2, continuation);
        this.f61448h = z;
        this.f61449i = z2;
        this.f61450j = mutableState;
        this.f61451k = animatable;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpBottomAreaKt$PdpBottomArea$3$1$2$1(this.f61448h, this.f61449i, this.f61450j, this.f61451k, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpBottomAreaKt$PdpBottomArea$3$1$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0078  */
    /* JADX WARN: Code duplicated, block: B:28:0x009e  */
    /* JADX WARN: Code duplicated, block: B:32:0x00c9  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00c9 -> B:33:0x00cb). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r16) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpBottomAreaKt$PdpBottomArea$3$1$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
