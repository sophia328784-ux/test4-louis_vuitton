package androidx.paging;

import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004:\u0001\u000bB#\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/paging/RemoteMediatorAccessImpl;", "", "Key", "Value", "Landroidx/paging/RemoteMediatorAccessor;", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Landroidx/paging/RemoteMediator;", "remoteMediator", "<init>", "(Lkotlinx/coroutines/CoroutineScope;Landroidx/paging/RemoteMediator;)V", "Companion", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
final class RemoteMediatorAccessImpl<Key, Value> implements RemoteMediatorAccessor<Key, Value> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f18907e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineScope f18908a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RemoteMediator f18909b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AccessorStateHolder f18910c;
    public final SingleRunner d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Landroidx/paging/RemoteMediatorAccessImpl$Companion;", "", "", "PRIORITY_APPEND_PREPEND", "I", "PRIORITY_REFRESH", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f18911a;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.REFRESH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f18911a = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public RemoteMediatorAccessImpl(CoroutineScope coroutineScope, RemoteMediator<Key, Value> remoteMediator) {
        coroutineScope.getClass();
        remoteMediator.getClass();
        this.f18908a = coroutineScope;
        this.f18909b = remoteMediator;
        this.f18910c = new AccessorStateHolder();
        this.d = new SingleRunner(false);
    }

    @Override // androidx.paging.RemoteMediatorConnection
    public final void a() {
        this.f18910c.a(RemoteMediatorAccessImpl$allowRefresh$1.f18912c);
    }

    @Override // androidx.paging.RemoteMediatorConnection
    public final void b(PagingState pagingState) {
        pagingState.getClass();
        final ArrayList arrayList = new ArrayList();
        this.f18910c.a(new Function1<AccessorState<Object, Object>, Unit>() { // from class: androidx.paging.RemoteMediatorAccessImpl$retryFailed$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                AccessorState accessorState = (AccessorState) obj;
                accessorState.getClass();
                LoadStates loadStates = new LoadStates(accessorState.b(LoadType.REFRESH), accessorState.b(LoadType.PREPEND), accessorState.b(LoadType.APPEND));
                boolean z = loadStates.f18639a instanceof LoadState.Error;
                LoadState.Error[] errorArr = accessorState.f18513b;
                int length = errorArr.length;
                for (int i2 = 0; i2 < length; i2++) {
                    errorArr[i2] = null;
                }
                ArrayList arrayList2 = arrayList;
                if (z) {
                    LoadType loadType = LoadType.REFRESH;
                    arrayList2.add(loadType);
                    accessorState.d(loadType, AccessorState.BlockState.UNBLOCKED);
                }
                if (loadStates.f18641c instanceof LoadState.Error) {
                    if (!z) {
                        arrayList2.add(LoadType.APPEND);
                    }
                    accessorState.a(LoadType.APPEND);
                }
                if (loadStates.f18640b instanceof LoadState.Error) {
                    if (!z) {
                        arrayList2.add(LoadType.PREPEND);
                    }
                    accessorState.a(LoadType.PREPEND);
                }
                return Unit.f71739a;
            }
        });
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            e((LoadType) it.next(), pagingState);
        }
    }

    @Override // androidx.paging.RemoteMediatorConnection
    public final void c(final PagingState pagingState) {
        this.f18910c.a(new Function1<AccessorState<Object, Object>, Unit>() { // from class: androidx.paging.RemoteMediatorAccessImpl$requestRefreshIfAllowed$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                AccessorState accessorState = (AccessorState) obj;
                accessorState.getClass();
                if (accessorState.d) {
                    accessorState.d = false;
                    RemoteMediatorAccessImpl remoteMediatorAccessImpl = this.f18934c;
                    remoteMediatorAccessImpl.f(remoteMediatorAccessImpl.f18910c, LoadType.REFRESH, pagingState);
                }
                return Unit.f71739a;
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // androidx.paging.RemoteMediatorAccessor
    public final Object d(ContinuationImpl continuationImpl) {
        RemoteMediatorAccessImpl$initialize$1 remoteMediatorAccessImpl$initialize$1;
        if (continuationImpl instanceof RemoteMediatorAccessImpl$initialize$1) {
            remoteMediatorAccessImpl$initialize$1 = (RemoteMediatorAccessImpl$initialize$1) continuationImpl;
            int i2 = remoteMediatorAccessImpl$initialize$1.f18915e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                remoteMediatorAccessImpl$initialize$1.f18915e = i2 - Integer.MIN_VALUE;
            } else {
                remoteMediatorAccessImpl$initialize$1 = new RemoteMediatorAccessImpl$initialize$1(this, continuationImpl);
            }
        } else {
            remoteMediatorAccessImpl$initialize$1 = new RemoteMediatorAccessImpl$initialize$1(this, continuationImpl);
        }
        Object obj = remoteMediatorAccessImpl$initialize$1.f18914c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = remoteMediatorAccessImpl$initialize$1.f18915e;
        if (i3 == 0) {
            ResultKt.b(obj);
            remoteMediatorAccessImpl$initialize$1.f18913b = this;
            remoteMediatorAccessImpl$initialize$1.f18915e = 1;
            this.f18909b.getClass();
            obj = RemoteMediator.InitializeAction.LAUNCH_INITIAL_REFRESH;
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            this = (RemoteMediatorAccessImpl) remoteMediatorAccessImpl$initialize$1.f18913b;
            ResultKt.b(obj);
        }
        if (((RemoteMediator.InitializeAction) obj) == RemoteMediator.InitializeAction.LAUNCH_INITIAL_REFRESH) {
            this.f18910c.a(RemoteMediatorAccessImpl$initialize$2$1.f18916c);
        }
        return obj;
    }

    @Override // androidx.paging.RemoteMediatorConnection
    public final void e(LoadType loadType, PagingState pagingState) {
        loadType.getClass();
        pagingState.getClass();
        f(this.f18910c, loadType, pagingState);
    }

    public final void f(AccessorStateHolder accessorStateHolder, final LoadType loadType, final PagingState pagingState) {
        if (((Boolean) accessorStateHolder.a(new Function1<AccessorState<Object, Object>, Boolean>() { // from class: androidx.paging.RemoteMediatorAccessImpl$requestLoad$newRequest$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Object next;
                AccessorState accessorState = (AccessorState) obj;
                accessorState.getClass();
                LoadType loadType2 = loadType;
                loadType2.getClass();
                PagingState pagingState2 = pagingState;
                pagingState2.getClass();
                ArrayDeque arrayDeque = accessorState.f18514c;
                Iterator<E> it = arrayDeque.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (((AccessorState.PendingRequest) next).f18515a != loadType2);
                AccessorState.PendingRequest pendingRequest = (AccessorState.PendingRequest) next;
                boolean z = false;
                if (pendingRequest != null) {
                    pendingRequest.f18516b = pagingState2;
                } else {
                    AccessorState.BlockState blockState = accessorState.f18512a[loadType2.ordinal()];
                    if (blockState == AccessorState.BlockState.REQUIRES_REFRESH && loadType2 != LoadType.REFRESH) {
                        arrayDeque.addLast(new AccessorState.PendingRequest(loadType2, pagingState2));
                    } else if (blockState == AccessorState.BlockState.UNBLOCKED || loadType2 == LoadType.REFRESH) {
                        LoadType loadType3 = LoadType.REFRESH;
                        if (loadType2 == loadType3) {
                            accessorState.e(loadType3, null);
                        }
                        if (accessorState.f18513b[loadType2.ordinal()] == null) {
                            arrayDeque.addLast(new AccessorState.PendingRequest(loadType2, pagingState2));
                            z = true;
                        }
                    }
                }
                return Boolean.valueOf(z);
            }
        })).booleanValue()) {
            int i2 = WhenMappings.f18911a[loadType.ordinal()];
            CoroutineScope coroutineScope = this.f18908a;
            if (i2 == 1) {
                BuildersKt.c(coroutineScope, null, null, new RemoteMediatorAccessImpl$launchRefresh$1(this, null), 3);
            } else {
                BuildersKt.c(coroutineScope, null, null, new RemoteMediatorAccessImpl$launchBoundary$1(this, null), 3);
            }
        }
    }

    @Override // androidx.paging.RemoteMediatorAccessor
    public final StateFlow getState() {
        return this.f18910c.f18521b;
    }
}
