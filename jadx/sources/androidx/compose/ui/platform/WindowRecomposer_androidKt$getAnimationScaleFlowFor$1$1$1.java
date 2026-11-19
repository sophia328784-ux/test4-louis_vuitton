package androidx.compose.ui.platform;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelIterator;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1", f = "WindowRecomposer.android.kt", l = {119, 121}, m = "invokeSuspend", v = 1)
final class WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 extends SuspendLambda implements Function2<FlowCollector<? super Float>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ChannelIterator f10197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f10198c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ContentResolver f10199e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Uri f10200f;
    public final /* synthetic */ WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ BufferedChannel f10201h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Context f10202i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(ContentResolver contentResolver, Uri uri, WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1, BufferedChannel bufferedChannel, Context context, Continuation continuation) {
        super(2, continuation);
        this.f10199e = contentResolver;
        this.f10200f = uri;
        this.g = windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1;
        this.f10201h = bufferedChannel;
        this.f10202i = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1 = new WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1(this.f10199e, this.f10200f, this.g, this.f10201h, this.f10202i, continuation);
        windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.d = obj;
        return windowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x004d  */
    /* JADX WARN: Code duplicated, block: B:21:0x004e  */
    /* JADX WARN: Code duplicated, block: B:24:0x0059 A[Catch: all -> 0x001b, TRY_LEAVE, TryCatch #0 {all -> 0x001b, blocks: (B:7:0x0016, B:18:0x0041, B:22:0x0051, B:24:0x0059, B:14:0x002a, B:17:0x003b), top: B:31:0x000a }] */
    /* JADX WARN: Code duplicated, block: B:27:0x007e  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007b, code lost:
    
        if (r6.emit(r7, r10) == r0) goto L26;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x007b -> B:8:0x0019). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r10.f10198c
            r2 = 2
            r3 = 1
            androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$contentObserver$1 r4 = r10.g
            android.content.ContentResolver r5 = r10.f10199e
            if (r1 == 0) goto L2e
            if (r1 == r3) goto L24
            if (r1 != r2) goto L1d
            kotlinx.coroutines.channels.ChannelIterator r1 = r10.f10197b
            java.lang.Object r6 = r10.d
            kotlinx.coroutines.flow.FlowCollector r6 = (kotlinx.coroutines.flow.FlowCollector) r6
            kotlin.ResultKt.b(r11)     // Catch: java.lang.Throwable -> L1b
        L19:
            r11 = r6
            goto L41
        L1b:
            r10 = move-exception
            goto L84
        L1d:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r10)
            r10 = 0
            return r10
        L24:
            kotlinx.coroutines.channels.ChannelIterator r1 = r10.f10197b
            java.lang.Object r6 = r10.d
            kotlinx.coroutines.flow.FlowCollector r6 = (kotlinx.coroutines.flow.FlowCollector) r6
            kotlin.ResultKt.b(r11)     // Catch: java.lang.Throwable -> L1b
            goto L51
        L2e:
            kotlin.ResultKt.b(r11)
            java.lang.Object r11 = r10.d
            kotlinx.coroutines.flow.FlowCollector r11 = (kotlinx.coroutines.flow.FlowCollector) r11
            android.net.Uri r1 = r10.f10200f
            r6 = 0
            r5.registerContentObserver(r1, r6, r4)
            kotlinx.coroutines.channels.BufferedChannel r1 = r10.f10201h     // Catch: java.lang.Throwable -> L1b
            kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L1b
        L41:
            r10.d = r11     // Catch: java.lang.Throwable -> L1b
            r10.f10197b = r1     // Catch: java.lang.Throwable -> L1b
            r10.f10198c = r3     // Catch: java.lang.Throwable -> L1b
            java.lang.Object r6 = r1.a(r10)     // Catch: java.lang.Throwable -> L1b
            if (r6 != r0) goto L4e
            goto L7d
        L4e:
            r9 = r6
            r6 = r11
            r11 = r9
        L51:
            java.lang.Boolean r11 = (java.lang.Boolean) r11     // Catch: java.lang.Throwable -> L1b
            boolean r11 = r11.booleanValue()     // Catch: java.lang.Throwable -> L1b
            if (r11 == 0) goto L7e
            r1.next()     // Catch: java.lang.Throwable -> L1b
            android.content.Context r11 = r10.f10202i     // Catch: java.lang.Throwable -> L1b
            androidx.collection.MutableScatterMap r7 = androidx.compose.ui.platform.WindowRecomposer_androidKt.f10186a     // Catch: java.lang.Throwable -> L1b
            android.content.ContentResolver r11 = r11.getContentResolver()     // Catch: java.lang.Throwable -> L1b
            java.lang.String r7 = "animator_duration_scale"
            r8 = 1065353216(0x3f800000, float:1.0)
            float r11 = android.provider.Settings.Global.getFloat(r11, r7, r8)     // Catch: java.lang.Throwable -> L1b
            java.lang.Float r7 = new java.lang.Float     // Catch: java.lang.Throwable -> L1b
            r7.<init>(r11)     // Catch: java.lang.Throwable -> L1b
            r10.d = r6     // Catch: java.lang.Throwable -> L1b
            r10.f10197b = r1     // Catch: java.lang.Throwable -> L1b
            r10.f10198c = r2     // Catch: java.lang.Throwable -> L1b
            java.lang.Object r11 = r6.emit(r7, r10)     // Catch: java.lang.Throwable -> L1b
            if (r11 != r0) goto L19
        L7d:
            return r0
        L7e:
            r5.unregisterContentObserver(r4)
            kotlin.Unit r10 = kotlin.Unit.f71739a
            return r10
        L84:
            r5.unregisterContentObserver(r4)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.WindowRecomposer_androidKt$getAnimationScaleFlowFor$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
