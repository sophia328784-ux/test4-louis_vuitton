package androidx.paging;

import defpackage.md;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "T", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.PagingDataPresenter$collectFrom$2", f = "PagingDataPresenter.kt", l = {121}, m = "invokeSuspend")
final class PagingDataPresenter$collectFrom$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18875b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagingDataPresenter f18876c;
    public final /* synthetic */ PagingData d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagingDataPresenter$collectFrom$2(PagingDataPresenter pagingDataPresenter, PagingData pagingData, Continuation continuation) {
        super(1, continuation);
        this.f18876c = pagingDataPresenter;
        this.d = pagingData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new PagingDataPresenter$collectFrom$2(this.f18876c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((PagingDataPresenter$collectFrom$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f18875b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final PagingData pagingData = this.d;
            UiReceiver uiReceiver = pagingData.f18845b;
            final PagingDataPresenter pagingDataPresenter = this.f18876c;
            UiReceiver uiReceiver2 = pagingDataPresenter.f18865c;
            pagingDataPresenter.f18865c = uiReceiver;
            if (uiReceiver2 instanceof PagingDataPresenter.InitialUiReceiver) {
                PagingDataPresenter.InitialUiReceiver initialUiReceiver = (PagingDataPresenter.InitialUiReceiver) uiReceiver2;
                if (initialUiReceiver.f18873a) {
                    uiReceiver.a();
                }
                if (initialUiReceiver.f18874b) {
                    uiReceiver.G0();
                }
            }
            Flow flow = pagingData.f18844a;
            FlowCollector flowCollector = new FlowCollector() { // from class: androidx.paging.PagingDataPresenter$collectFrom$2.1

                /* JADX INFO: renamed from: androidx.paging.PagingDataPresenter$collectFrom$2$1$2, reason: invalid class name */
                @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003*\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", "T", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
                @DebugMetadata(c = "androidx.paging.PagingDataPresenter$collectFrom$2$1$2", f = "PagingDataPresenter.kt", l = {141, 158, 170, 173, 225, 228}, m = "invokeSuspend")
                final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public int f18879b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ PageEvent f18880c;
                    public final /* synthetic */ PagingDataPresenter d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ PagingData f18881e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public AnonymousClass2(PageEvent pageEvent, PagingDataPresenter pagingDataPresenter, PagingData pagingData, Continuation continuation) {
                        super(2, continuation);
                        this.f18880c = pageEvent;
                        this.d = pagingDataPresenter;
                        this.f18881e = pagingData;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation create(Object obj, Continuation continuation) {
                        return new AnonymousClass2(this.f18880c, this.d, this.f18881e, continuation);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                    }

                    /* JADX WARN: Code duplicated, block: B:102:0x0208  */
                    /* JADX WARN: Code duplicated, block: B:105:0x0216 A[LOOP:0: B:103:0x0210->B:105:0x0216, LOOP_END] */
                    /* JADX WARN: Code duplicated, block: B:31:0x0099  */
                    /* JADX WARN: Code duplicated, block: B:33:0x00a9  */
                    /* JADX WARN: Code duplicated, block: B:36:0x00b4 A[PHI: r9
                      0x00b4: PHI (r9v6 androidx.paging.PagingDataPresenter$collectFrom$2$1$2) = 
                      (r9v0 androidx.paging.PagingDataPresenter$collectFrom$2$1$2)
                      (r9v0 androidx.paging.PagingDataPresenter$collectFrom$2$1$2)
                      (r9v7 androidx.paging.PagingDataPresenter$collectFrom$2$1$2)
                     binds: [B:32:0x00a7, B:34:0x00b0, B:9:0x0022] A[DONT_GENERATE, DONT_INLINE]] */
                    /* JADX WARN: Code duplicated, block: B:77:0x016d  */
                    /* JADX WARN: Code duplicated, block: B:79:0x0173  */
                    /* JADX WARN: Code duplicated, block: B:82:0x0186  */
                    /* JADX WARN: Code duplicated, block: B:84:0x018a  */
                    /* JADX WARN: Code duplicated, block: B:86:0x019a  */
                    /* JADX WARN: Code duplicated, block: B:89:0x01a4 A[PHI: r9
                      0x01a4: PHI (r9v10 androidx.paging.PagingDataPresenter$collectFrom$2$1$2) = 
                      (r9v0 androidx.paging.PagingDataPresenter$collectFrom$2$1$2)
                      (r9v0 androidx.paging.PagingDataPresenter$collectFrom$2$1$2)
                      (r9v11 androidx.paging.PagingDataPresenter$collectFrom$2$1$2)
                     binds: [B:85:0x0198, B:87:0x01a1, B:7:0x0016] A[DONT_GENERATE, DONT_INLINE]] */
                    /* JADX WARN: Code duplicated, block: B:93:0x01de  */
                    /* JADX WARN: Code duplicated, block: B:95:0x01e2  */
                    /* JADX WARN: Code duplicated, block: B:98:0x0200  */
                    /* JADX WARN: Code restructure failed: missing block: B:21:0x0068, code lost:
                    
                        if (r14 == r0) goto L91;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:28:0x0093, code lost:
                    
                        if (androidx.paging.PagingDataPresenter.a(r1, r2, r3, r4, true, r6, r7, r8, r9) == r0) goto L91;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c4, code lost:
                    
                        if (r14.c() == r0) goto L91;
                     */
                    /* JADX WARN: Code restructure failed: missing block: B:90:0x01b4, code lost:
                    
                        if (r14.c() == r0) goto L91;
                     */
                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
                        /*
                            Method dump skipped, instruction units count: 566
                            To view this dump add '--comments-level debug' option
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PagingDataPresenter$collectFrom$2.AnonymousClass1.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) throws Throwable {
                    PageEvent pageEvent = (PageEvent) obj2;
                    if (PagingLogger.a(2)) {
                        Objects.toString(pageEvent);
                    }
                    PagingDataPresenter pagingDataPresenter2 = pagingDataPresenter;
                    Object objF = BuildersKt.f(pagingDataPresenter2.f18863a, new AnonymousClass2(pageEvent, pagingDataPresenter2, pagingData, null), continuation);
                    return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                }
            };
            this.f18875b = 1;
            if (flow.f(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
