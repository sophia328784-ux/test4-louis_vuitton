package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$updateWishlistState$1$1", f = "BeautyVtoViewModelImpl.kt", l = {1077, 1081, 1083, 1091, 1091}, m = "invokeSuspend", v = 2)
final class BeautyVtoViewModelImpl$updateWishlistState$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public BeautyVtoViewModelImpl f61957b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f61958c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f61959e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoViewModelImpl f61960f;
    public final /* synthetic */ String g;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f61961a;

        static {
            int[] iArr = new int[BeautyVtoMode.values().length];
            try {
                iArr[BeautyVtoMode.SIMPLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BeautyVtoMode.DUAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BeautyVtoMode.STACKING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f61961a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoViewModelImpl$updateWishlistState$1$1(BeautyVtoViewModelImpl beautyVtoViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f61960f = beautyVtoViewModelImpl;
        this.g = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyVtoViewModelImpl$updateWishlistState$1$1(this.f61960f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoViewModelImpl$updateWishlistState$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x009b  */
    /* JADX WARN: Code duplicated, block: B:45:0x00f8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:51:0x011d  */
    /* JADX WARN: Code duplicated, block: B:52:0x011f A[DONT_INVERT] */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b1, code lost:
    
        if (r12 == r2) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0112, code lost:
    
        if (r12 == r2) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0134, code lost:
    
        if (r12 == r2) goto L57;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instruction units count: 345
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$updateWishlistState$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
