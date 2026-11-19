package androidx.datastore.core;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.FlowCollector;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/flow/FlowCollector;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$data$1", f = "DataStoreImpl.kt", l = {72, EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY, 100}, m = "invokeSuspend")
public final class DataStoreImpl$data$1<T> extends SuspendLambda implements Function2<FlowCollector<? super T>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Data f12656b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f12657c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DataStoreImpl f12658e;

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$data$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\u008a@"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "Landroidx/datastore/core/State;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$data$1$1", f = "DataStoreImpl.kt", l = {102}, m = "invokeSuspend")
    final class AnonymousClass1 extends SuspendLambda implements Function2<FlowCollector<? super State<Object>>, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f12659b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ DataStoreImpl f12660c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(DataStoreImpl dataStoreImpl, Continuation continuation) {
            super(2, continuation);
            this.f12660c = dataStoreImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f12660c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f12659b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f12659b = 1;
                if (DataStoreImpl.d(this.f12660c, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$data$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", "T", "it", "Landroidx/datastore/core/State;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$data$1$2", f = "DataStoreImpl.kt", l = {}, m = "invokeSuspend")
    final class AnonymousClass2 extends SuspendLambda implements Function2<State<Object>, Continuation<? super Boolean>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f12661b;

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(2, continuation);
            anonymousClass2.f12661b = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((State) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            return Boolean.valueOf(!(((State) this.f12661b) instanceof Final));
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$data$1$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@"}, d2 = {"<anonymous>", "", "T", "it", "Landroidx/datastore/core/State;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$data$1$3", f = "DataStoreImpl.kt", l = {}, m = "invokeSuspend")
    final class AnonymousClass3 extends SuspendLambda implements Function2<State<Object>, Continuation<? super Boolean>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f12662b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ State f12663c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(State state, Continuation continuation) {
            super(2, continuation);
            this.f12663c = state;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.f12663c, continuation);
            anonymousClass3.f12662b = obj;
            return anonymousClass3;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass3) create((State) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            State state = (State) this.f12662b;
            return Boolean.valueOf((state instanceof Data) && state.f12841a <= this.f12663c.f12841a);
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.core.DataStoreImpl$data$1$5, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u008a@"}, d2 = {"<anonymous>", "", "T", "Lkotlinx/coroutines/flow/FlowCollector;", "it", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$data$1$5", f = "DataStoreImpl.kt", l = {116}, m = "invokeSuspend")
    final class AnonymousClass5 extends SuspendLambda implements Function3<FlowCollector<Object>, Throwable, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f12664b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ DataStoreImpl f12665c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass5(DataStoreImpl dataStoreImpl, Continuation continuation) {
            super(3, continuation);
            this.f12665c = dataStoreImpl;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object A(Object obj, Object obj2, Object obj3) {
            return new AnonymousClass5(this.f12665c, (Continuation) obj3).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f12664b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f12664b = 1;
                if (DataStoreImpl.b(this.f12665c, this) == coroutineSingletons) {
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$data$1(DataStoreImpl dataStoreImpl, Continuation continuation) {
        super(2, continuation);
        this.f12658e = dataStoreImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DataStoreImpl$data$1 dataStoreImpl$data$1 = new DataStoreImpl$data$1(this.f12658e, continuation);
        dataStoreImpl$data$1.d = obj;
        return dataStoreImpl$data$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DataStoreImpl$data$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00b2, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.n(r3, r4, r9) == r0) goto L31;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) throws java.lang.Throwable {
        /*
            r9 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r9.f12657c
            r2 = 3
            r3 = 1
            androidx.datastore.core.DataStoreImpl r4 = r9.f12658e
            r5 = 2
            r6 = 0
            if (r1 == 0) goto L30
            if (r1 == r3) goto L27
            if (r1 == r5) goto L1d
            if (r1 != r2) goto L17
            kotlin.ResultKt.b(r10)
            goto Lb5
        L17:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            return r6
        L1d:
            androidx.datastore.core.Data r1 = r9.f12656b
            java.lang.Object r3 = r9.d
            kotlinx.coroutines.flow.FlowCollector r3 = (kotlinx.coroutines.flow.FlowCollector) r3
            kotlin.ResultKt.b(r10)
            goto L77
        L27:
            java.lang.Object r1 = r9.d
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            kotlin.ResultKt.b(r10)
            r3 = r1
            goto L4f
        L30:
            kotlin.ResultKt.b(r10)
            java.lang.Object r10 = r9.d
            kotlinx.coroutines.flow.FlowCollector r10 = (kotlinx.coroutines.flow.FlowCollector) r10
            r9.d = r10
            r9.f12657c = r3
            kotlinx.coroutines.CoroutineScope r1 = r4.f12628c
            kotlin.coroutines.CoroutineContext r1 = r1.getF50528e()
            androidx.datastore.core.DataStoreImpl$readState$2 r3 = new androidx.datastore.core.DataStoreImpl$readState$2
            r3.<init>(r4, r6)
            java.lang.Object r1 = kotlinx.coroutines.BuildersKt.f(r1, r3, r9)
            if (r1 != r0) goto L4d
            goto Lb4
        L4d:
            r3 = r10
            r10 = r1
        L4f:
            r1 = r10
            androidx.datastore.core.State r1 = (androidx.datastore.core.State) r1
            boolean r10 = r1 instanceof androidx.datastore.core.Data
            if (r10 == 0) goto L68
            r10 = r1
            androidx.datastore.core.Data r10 = (androidx.datastore.core.Data) r10
            java.lang.Object r7 = r10.f12610b
            r9.d = r3
            r9.f12656b = r10
            r9.f12657c = r5
            java.lang.Object r10 = r3.emit(r7, r9)
            if (r10 != r0) goto L77
            goto Lb4
        L68:
            boolean r10 = r1 instanceof androidx.datastore.core.UnInitialized
            if (r10 != 0) goto Lbd
            boolean r10 = r1 instanceof androidx.datastore.core.ReadException
            if (r10 != 0) goto Lb8
            boolean r10 = r1 instanceof androidx.datastore.core.Final
            if (r10 == 0) goto L77
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        L77:
            androidx.datastore.core.DataStoreInMemoryCache r10 = r4.f12631h
            kotlinx.coroutines.flow.MutableStateFlow r10 = r10.f12740a
            androidx.datastore.core.DataStoreImpl$data$1$1 r7 = new androidx.datastore.core.DataStoreImpl$data$1$1
            r7.<init>(r4, r6)
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 r8 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1
            r8.<init>(r7, r10)
            androidx.datastore.core.DataStoreImpl$data$1$2 r10 = new androidx.datastore.core.DataStoreImpl$data$1$2
            r10.<init>(r5, r6)
            kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1 r5 = new kotlinx.coroutines.flow.FlowKt__LimitKt$takeWhile$$inlined$unsafeFlow$1
            r5.<init>(r8, r10)
            androidx.datastore.core.DataStoreImpl$data$1$3 r10 = new androidx.datastore.core.DataStoreImpl$data$1$3
            r10.<init>(r1, r6)
            kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1 r1 = new kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$$inlined$unsafeFlow$1
            r1.<init>(r5, r10)
            androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1 r10 = new androidx.datastore.core.DataStoreImpl$data$1$invokeSuspend$$inlined$map$1
            r10.<init>()
            androidx.datastore.core.DataStoreImpl$data$1$5 r1 = new androidx.datastore.core.DataStoreImpl$data$1$5
            r1.<init>(r4, r6)
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 r4 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1
            r4.<init>(r10, r1)
            r9.d = r6
            r9.f12656b = r6
            r9.f12657c = r2
            java.lang.Object r9 = kotlinx.coroutines.flow.FlowKt.n(r3, r4, r9)
            if (r9 != r0) goto Lb5
        Lb4:
            return r0
        Lb5:
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        Lb8:
            androidx.datastore.core.ReadException r1 = (androidx.datastore.core.ReadException) r1
            java.lang.Throwable r9 = r1.f12813b
            throw r9
        Lbd:
            java.lang.String r9 = "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"
            defpackage.md.k(r9)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.core.DataStoreImpl$data$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
