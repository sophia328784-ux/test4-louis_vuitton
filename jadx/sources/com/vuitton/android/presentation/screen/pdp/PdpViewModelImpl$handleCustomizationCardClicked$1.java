package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$handleCustomizationCardClicked$1", f = "PdpViewModelImpl.kt", l = {1297, 1312}, m = "invokeSuspend", v = 2)
final class PdpViewModelImpl$handleCustomizationCardClicked$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CustomizationType f61200c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PdpViewModelImpl f61201e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f61202f;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f61203a;

        static {
            int[] iArr = new int[CustomizationType.values().length];
            try {
                iArr[CustomizationType.MONOGRAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CustomizationType.BEAUTY_ENGRAVING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CustomizationType.HOTSTAMPING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CustomizationType.PERFUME_ENGRAVING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CustomizationType.DIAMOND_ENGRAVING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[CustomizationType.NO_CUSTOMIZATION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f61203a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$handleCustomizationCardClicked$1(CustomizationType customizationType, boolean z, PdpViewModelImpl pdpViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f61200c = customizationType;
        this.d = z;
        this.f61201e = pdpViewModelImpl;
        this.f61202f = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpViewModelImpl$handleCustomizationCardClicked$1(this.f61200c, this.d, this.f61201e, this.f61202f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpViewModelImpl$handleCustomizationCardClicked$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:29:0x008c  */
    /* JADX WARN: Code duplicated, block: B:34:0x0097  */
    /* JADX WARN: Code duplicated, block: B:36:0x009a  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:43:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:59:0x00d2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:83:0x0114  */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00cb, code lost:
    
        if (r1.u(r11, r10) == r3) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0111, code lost:
    
        if (r1.u(r0, r10) == r3) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0113, code lost:
    
        return r3;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            Method dump skipped, instruction units count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$handleCustomizationCardClicked$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
