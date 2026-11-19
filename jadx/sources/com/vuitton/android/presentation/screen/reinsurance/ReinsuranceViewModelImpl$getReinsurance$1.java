package com.vuitton.android.presentation.screen.reinsurance;

import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.foundation.model.domain.model.product.ReinsurancePageType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModelImpl$getReinsurance$1", f = "ReinsuranceViewModelImpl.kt", l = {EACTags.CURRENCY_CODE, EACTags.CARDHOLDER_NATIONALITY, EACTags.CURRENCY_EXPONENT, 55, EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION}, m = "invokeSuspend", v = 2)
final class ReinsuranceViewModelImpl$getReinsurance$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f63426b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ReinsuranceViewModelImpl f63427c;
    public ReinsuranceUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f63428e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f63429f;
    public final /* synthetic */ ReinsuranceViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ReinsurancePageType f63430h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ boolean f63431i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReinsuranceViewModelImpl$getReinsurance$1(ReinsuranceViewModelImpl reinsuranceViewModelImpl, ReinsurancePageType reinsurancePageType, boolean z, Continuation continuation) {
        super(2, continuation);
        this.g = reinsuranceViewModelImpl;
        this.f63430h = reinsurancePageType;
        this.f63431i = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ReinsuranceViewModelImpl$getReinsurance$1(this.g, this.f63430h, this.f63431i, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ReinsuranceViewModelImpl$getReinsurance$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0090 A[Catch: all -> 0x00a2, TryCatch #0 {all -> 0x00a2, blocks: (B:24:0x0079, B:25:0x008a, B:27:0x0090, B:30:0x009e, B:33:0x00a4), top: B:69:0x0079 }] */
    /* JADX WARN: Code duplicated, block: B:38:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:41:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:46:0x0111 A[PHI: r14
      0x0111: PHI (r14v23 java.lang.Object) = (r14v19 java.lang.Object), (r14v32 java.lang.Object) binds: [B:37:0x00ce, B:45:0x0110] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:48:0x0117  */
    /* JADX WARN: Code duplicated, block: B:50:0x0127  */
    /* JADX WARN: Code duplicated, block: B:51:0x012d  */
    /* JADX WARN: Code duplicated, block: B:53:0x0133  */
    /* JADX WARN: Code duplicated, block: B:54:0x0140  */
    /* JADX WARN: Code duplicated, block: B:56:0x0144  */
    /* JADX WARN: Code duplicated, block: B:57:0x0150  */
    /* JADX WARN: Code duplicated, block: B:59:0x0154  */
    /* JADX WARN: Code duplicated, block: B:60:0x0161  */
    /* JADX WARN: Code duplicated, block: B:64:0x0188  */
    /* JADX WARN: Code duplicated, block: B:69:0x0079 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:72:0x009e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:73:0x009d A[SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x010c, code lost:
    
        if (r8.emit(r7, r13) == r2) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x018a, code lost:
    
        if (r13 == r2) goto L66;
     */
    /* JADX WARN: Instruction removed from duplicated block: B:60:0x0161, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instruction units count: 400
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModelImpl$getReinsurance$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
