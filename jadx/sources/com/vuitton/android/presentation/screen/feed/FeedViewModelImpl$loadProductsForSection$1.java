package com.vuitton.android.presentation.screen.feed;

import com.vuitton.foundation.model.domain.model.common.editorial.AlgorithmType;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$loadProductsForSection$1", f = "FeedViewModelImpl.kt", l = {699, 700, 706, 730, 742}, m = "invokeSuspend", v = 2)
final class FeedViewModelImpl$loadProductsForSection$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57694b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AlgorithmType f57695c;
    public final /* synthetic */ FeedViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f57696e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ List f57697f;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57698a;

        static {
            int[] iArr = new int[AlgorithmType.values().length];
            try {
                iArr[AlgorithmType.DYNAMIC_YIELD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AlgorithmType.SKUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AlgorithmType.LAST_VIEWED_PRODUCTS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AlgorithmType.MOST_PURCHASED_WITH.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f57698a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FeedViewModelImpl$loadProductsForSection$1(AlgorithmType algorithmType, FeedViewModelImpl feedViewModelImpl, String str, List list, Continuation continuation) {
        super(2, continuation);
        this.f57695c = algorithmType;
        this.d = feedViewModelImpl;
        this.f57696e = str;
        this.f57697f = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new FeedViewModelImpl$loadProductsForSection$1(this.f57695c, this.d, this.f57696e, this.f57697f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((FeedViewModelImpl$loadProductsForSection$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f8 A[LOOP:0: B:46:0x00f2->B:48:0x00f8, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:52:0x0115  */
    /* JADX WARN: Code duplicated, block: B:58:0x013e  */
    /* JADX WARN: Code duplicated, block: B:61:0x0147  */
    /* JADX WARN: Code duplicated, block: B:67:0x0161 A[DONT_INVERT, PHI: r5
      0x0161: PHI (r5v7 boolean) = (r5v0 boolean), (r5v0 boolean), (r5v9 boolean) binds: [B:60:0x0145, B:65:0x015e, B:66:0x0160] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:68:0x0163  */
    /* JADX WARN: Code duplicated, block: B:70:0x0173  */
    /* JADX WARN: Code duplicated, block: B:73:0x017e  */
    /* JADX WARN: Code duplicated, block: B:76:0x0185  */
    /* JADX WARN: Code duplicated, block: B:79:0x019f A[LOOP:1: B:77:0x0199->B:79:0x019f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:83:0x01e5  */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0084, code lost:
    
        if (com.vuitton.android.presentation.screen.feed.FeedViewModelImpl.Bc(r1, r5, r21) == r2) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0155, code lost:
    
        if (r3 == r2) goto L72;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instruction units count: 511
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.feed.FeedViewModelImpl$loadProductsForSection$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
