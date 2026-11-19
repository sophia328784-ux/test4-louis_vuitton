package androidx.paging;

import defpackage.md;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u0003*\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Key", "", "Value", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1", f = "RemoteMediatorAccessor.kt", l = {386}, m = "invokeSuspend")
final class RemoteMediatorAccessImpl$launchBoundary$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18917b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RemoteMediatorAccessImpl f18918c;

    /* JADX INFO: renamed from: androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Key", "", "Value"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1", f = "RemoteMediatorAccessor.kt", l = {393}, m = "invokeSuspend")
    final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LoadType f18919b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f18920c;
        public final /* synthetic */ RemoteMediatorAccessImpl d;

        /* JADX INFO: renamed from: androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u001c\u0012\u0004\u0012\u00020\u0002\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\u0003\u0018\u00010\u0001\"\b\b\u0000\u0010\u0004*\u00020\u0006\"\b\b\u0001\u0010\u0005*\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u0002H\u0004\u0012\u0004\u0012\u0002H\u00050\bH\n¢\u0006\u0002\b\t"}, d2 = {"<anonymous>", "Lkotlin/Pair;", "Landroidx/paging/LoadType;", "Landroidx/paging/PagingState;", "Key", "Value", "", "it", "Landroidx/paging/AccessorState;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
        final class C00311 extends Lambda implements Function1<AccessorState<Object, Object>, Pair<? extends LoadType, ? extends PagingState<Object, Object>>> {

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static final C00311 f18921c = new C00311(1);

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                AccessorState accessorState = (AccessorState) obj;
                accessorState.getClass();
                return accessorState.c();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(RemoteMediatorAccessImpl remoteMediatorAccessImpl, Continuation continuation) {
            super(1, continuation);
            this.d = remoteMediatorAccessImpl;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return new AnonymousClass1(this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return ((AnonymousClass1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0027  */
        /* JADX WARN: Code duplicated, block: B:13:0x002a  */
        /* JADX WARN: Code duplicated, block: B:15:0x003e A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:18:0x0045  */
        /* JADX WARN: Code duplicated, block: B:19:0x0050  */
        /* JADX WARN: Code duplicated, block: B:21:0x0054  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x003c -> B:16:0x003f). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:18:0x0045
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                androidx.paging.RemoteMediatorAccessImpl r0 = r6.d
                androidx.paging.AccessorStateHolder r1 = r0.f18910c
                kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                int r3 = r6.f18920c
                r4 = 1
                if (r3 == 0) goto L1a
                if (r3 != r4) goto L13
                androidx.paging.LoadType r3 = r6.f18919b
                kotlin.ResultKt.b(r7)
                goto L3f
            L13:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.md.k(r6)
                r6 = 0
                return r6
            L1a:
                kotlin.ResultKt.b(r7)
            L1d:
                androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1$1 r7 = androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1.AnonymousClass1.C00311.f18921c
                java.lang.Object r7 = r1.a(r7)
                kotlin.Pair r7 = (kotlin.Pair) r7
                if (r7 != 0) goto L2a
                kotlin.Unit r6 = kotlin.Unit.f71739a
                return r6
            L2a:
                java.lang.Object r3 = r7.f71705b
                androidx.paging.LoadType r3 = (androidx.paging.LoadType) r3
                java.lang.Object r7 = r7.f71706c
                androidx.paging.PagingState r7 = (androidx.paging.PagingState) r7
                androidx.paging.RemoteMediator r7 = r0.f18909b
                r6.f18919b = r3
                r6.f18920c = r4
                java.lang.Object r7 = r7.a()
                if (r7 != r2) goto L3f
                return r2
            L3f:
                androidx.paging.RemoteMediator$MediatorResult r7 = (androidx.paging.RemoteMediator.MediatorResult) r7
                boolean r5 = r7 instanceof androidx.paging.RemoteMediator.MediatorResult.Success
                if (r5 == 0) goto L50
                androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1$2 r5 = new androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1$2
                androidx.paging.RemoteMediator$MediatorResult$Success r7 = (androidx.paging.RemoteMediator.MediatorResult.Success) r7
                r5.<init>()
                r1.a(r5)
                goto L1d
            L50:
                boolean r5 = r7 instanceof androidx.paging.RemoteMediator.MediatorResult.Error
                if (r5 == 0) goto L1d
                androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1$3 r5 = new androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1$1$3
                androidx.paging.RemoteMediator$MediatorResult$Error r7 = (androidx.paging.RemoteMediator.MediatorResult.Error) r7
                r5.<init>()
                r1.a(r5)
                goto L1d
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.RemoteMediatorAccessImpl$launchBoundary$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteMediatorAccessImpl$launchBoundary$1(RemoteMediatorAccessImpl remoteMediatorAccessImpl, Continuation continuation) {
        super(2, continuation);
        this.f18918c = remoteMediatorAccessImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RemoteMediatorAccessImpl$launchBoundary$1(this.f18918c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RemoteMediatorAccessImpl$launchBoundary$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f18917b;
        if (i2 == 0) {
            ResultKt.b(obj);
            RemoteMediatorAccessImpl remoteMediatorAccessImpl = this.f18918c;
            SingleRunner singleRunner = remoteMediatorAccessImpl.d;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(remoteMediatorAccessImpl, null);
            this.f18917b = 1;
            if (singleRunner.a(1, anonymousClass1, this) == coroutineSingletons) {
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
