package androidx.paging;

import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u0003*\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", "Key", "", "Value", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.paging.RemoteMediatorAccessImpl$launchRefresh$1", f = "RemoteMediatorAccessor.kt", l = {314}, m = "invokeSuspend")
final class RemoteMediatorAccessImpl$launchRefresh$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Ref$BooleanRef f18924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18925c;
    public final /* synthetic */ RemoteMediatorAccessImpl d;

    /* JADX INFO: renamed from: androidx.paging.RemoteMediatorAccessImpl$launchRefresh$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\b\b\u0000\u0010\u0002*\u00020\u0003\"\b\b\u0001\u0010\u0004*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "Key", "", "Value"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.paging.RemoteMediatorAccessImpl$launchRefresh$1$1", f = "RemoteMediatorAccessor.kt", l = {321}, m = "invokeSuspend")
    final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f18926b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Ref$BooleanRef f18927c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ RemoteMediatorAccessImpl f18928e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Ref$BooleanRef f18929f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(RemoteMediatorAccessImpl remoteMediatorAccessImpl, Ref$BooleanRef ref$BooleanRef, Continuation continuation) {
            super(1, continuation);
            this.f18928e = remoteMediatorAccessImpl;
            this.f18929f = ref$BooleanRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Continuation continuation) {
            return new AnonymousClass1(this.f18928e, this.f18929f, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            return ((AnonymousClass1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            RemoteMediatorAccessImpl remoteMediatorAccessImpl;
            Ref$BooleanRef ref$BooleanRef;
            boolean zBooleanValue;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.d;
            if (i2 == 0) {
                ResultKt.b(obj);
                RemoteMediatorAccessImpl remoteMediatorAccessImpl2 = this.f18928e;
                if (((PagingState) remoteMediatorAccessImpl2.f18910c.a(RemoteMediatorAccessImpl$launchRefresh$1$1$pendingPagingState$1.f18932c)) != null) {
                    RemoteMediator remoteMediator = remoteMediatorAccessImpl2.f18909b;
                    this.f18926b = remoteMediatorAccessImpl2;
                    Ref$BooleanRef ref$BooleanRef2 = this.f18929f;
                    this.f18927c = ref$BooleanRef2;
                    this.d = 1;
                    Object objA = remoteMediator.a();
                    if (objA == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    obj = objA;
                    remoteMediatorAccessImpl = remoteMediatorAccessImpl2;
                    ref$BooleanRef = ref$BooleanRef2;
                }
                return Unit.f71739a;
            }
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$BooleanRef = this.f18927c;
            remoteMediatorAccessImpl = (RemoteMediatorAccessImpl) this.f18926b;
            ResultKt.b(obj);
            RemoteMediator.MediatorResult mediatorResult = (RemoteMediator.MediatorResult) obj;
            if (mediatorResult instanceof RemoteMediator.MediatorResult.Success) {
                final RemoteMediator.MediatorResult.Success success = (RemoteMediator.MediatorResult.Success) mediatorResult;
                zBooleanValue = ((Boolean) remoteMediatorAccessImpl.f18910c.a(new Function1<AccessorState<Object, Object>, Boolean>() { // from class: androidx.paging.RemoteMediatorAccessImpl$launchRefresh$1$1$1$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        AccessorState accessorState = (AccessorState) obj2;
                        accessorState.getClass();
                        LoadType loadType = LoadType.REFRESH;
                        accessorState.a(loadType);
                        if (success.f18906a) {
                            AccessorState.BlockState blockState = AccessorState.BlockState.COMPLETED;
                            accessorState.d(loadType, blockState);
                            accessorState.d(LoadType.PREPEND, blockState);
                            accessorState.d(LoadType.APPEND, blockState);
                            accessorState.f18514c.clear();
                        } else {
                            LoadType loadType2 = LoadType.PREPEND;
                            AccessorState.BlockState blockState2 = AccessorState.BlockState.UNBLOCKED;
                            accessorState.d(loadType2, blockState2);
                            accessorState.d(LoadType.APPEND, blockState2);
                        }
                        accessorState.e(LoadType.PREPEND, null);
                        accessorState.e(LoadType.APPEND, null);
                        return Boolean.valueOf(accessorState.c() != null);
                    }
                })).booleanValue();
            } else {
                if (!(mediatorResult instanceof RemoteMediator.MediatorResult.Error)) {
                    v40.g();
                    return null;
                }
                final RemoteMediator.MediatorResult.Error error = (RemoteMediator.MediatorResult.Error) mediatorResult;
                zBooleanValue = ((Boolean) remoteMediatorAccessImpl.f18910c.a(new Function1<AccessorState<Object, Object>, Boolean>() { // from class: androidx.paging.RemoteMediatorAccessImpl$launchRefresh$1$1$1$2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        AccessorState accessorState = (AccessorState) obj2;
                        accessorState.getClass();
                        LoadType loadType = LoadType.REFRESH;
                        accessorState.a(loadType);
                        accessorState.e(loadType, new LoadState.Error(error.f18905a));
                        return Boolean.valueOf(accessorState.c() != null);
                    }
                })).booleanValue();
            }
            ref$BooleanRef.f71917b = zBooleanValue;
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteMediatorAccessImpl$launchRefresh$1(RemoteMediatorAccessImpl remoteMediatorAccessImpl, Continuation continuation) {
        super(2, continuation);
        this.d = remoteMediatorAccessImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RemoteMediatorAccessImpl$launchRefresh$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RemoteMediatorAccessImpl$launchRefresh$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Ref$BooleanRef ref$BooleanRef;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f18925c;
        RemoteMediatorAccessImpl remoteMediatorAccessImpl = this.d;
        if (i2 == 0) {
            ResultKt.b(obj);
            Ref$BooleanRef ref$BooleanRef2 = new Ref$BooleanRef();
            SingleRunner singleRunner = remoteMediatorAccessImpl.d;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(remoteMediatorAccessImpl, ref$BooleanRef2, null);
            this.f18924b = ref$BooleanRef2;
            this.f18925c = 1;
            if (singleRunner.a(2, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
            ref$BooleanRef = ref$BooleanRef2;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$BooleanRef = this.f18924b;
            ResultKt.b(obj);
        }
        if (ref$BooleanRef.f71917b) {
            int i3 = RemoteMediatorAccessImpl.f18907e;
            BuildersKt.c(remoteMediatorAccessImpl.f18908a, null, null, new RemoteMediatorAccessImpl$launchBoundary$1(remoteMediatorAccessImpl, null), 3);
        }
        return Unit.f71739a;
    }
}
