package com.vuitton.android.designkit.components.components;

import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.designkit.components.components.LVFlowerLoaderKt$LVFlowerLoader$1$1", f = "LVFlowerLoader.kt", l = {EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION, EACTags.ADDRESS, 72, EACTags.DEPRECATED, EACTags.ANSWER_TO_RESET, 87}, m = "invokeSuspend", v = 2)
final class LVFlowerLoaderKt$LVFlowerLoader$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f48242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f48243c;
    public final /* synthetic */ LottieAnimatable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f48244e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ LottieCompositionResultImpl f48245f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LVFlowerLoaderKt$LVFlowerLoader$1$1(LottieAnimatable lottieAnimatable, boolean z, LottieCompositionResultImpl lottieCompositionResultImpl, Continuation continuation) {
        super(2, continuation);
        this.d = lottieAnimatable;
        this.f48244e = z;
        this.f48245f = lottieCompositionResultImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LVFlowerLoaderKt$LVFlowerLoader$1$1(this.d, this.f48244e, this.f48245f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LVFlowerLoaderKt$LVFlowerLoader$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00d9  */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0061, code lost:
    
        if (com.airbnb.lottie.compose.LottieAnimatable.DefaultImpls.a(r0, r1, Integer.MAX_VALUE, false, 1.0f, null, net.rtccloud.sdk.Call.Parameters.DEFAULT_CAMERA_ZOOM, null, r16, 2026) == r10) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0097, code lost:
    
        if (com.airbnb.lottie.compose.LottieAnimatable.DefaultImpls.b(r12, r1, 0.5f, r16, 12) == r10) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00e7, code lost:
    
        if (com.airbnb.lottie.compose.LottieAnimatable.DefaultImpls.b(r12, r1, 0.5f, r16, 12) == r10) goto L37;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r17) {
        /*
            Method dump skipped, instruction units count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.designkit.components.components.LVFlowerLoaderKt$LVFlowerLoader$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
