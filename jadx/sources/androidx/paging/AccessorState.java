package androidx.paging;

import defpackage.v40;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001:\u0002\u0006\u0007B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Landroidx/paging/AccessorState;", "", "Key", "Value", "<init>", "()V", "BlockState", "PendingRequest", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
final class AccessorState<Key, Value> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BlockState[] f18512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LoadState.Error[] f18513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayDeque f18514c;
    public boolean d;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Landroidx/paging/AccessorState$BlockState;", "", "UNBLOCKED", "COMPLETED", "REQUIRES_REFRESH", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class BlockState {
        private static final /* synthetic */ BlockState[] $VALUES;
        public static final BlockState COMPLETED;
        public static final BlockState REQUIRES_REFRESH;
        public static final BlockState UNBLOCKED;

        static {
            BlockState blockState = new BlockState("UNBLOCKED", 0);
            UNBLOCKED = blockState;
            BlockState blockState2 = new BlockState("COMPLETED", 1);
            COMPLETED = blockState2;
            BlockState blockState3 = new BlockState("REQUIRES_REFRESH", 2);
            REQUIRES_REFRESH = blockState3;
            $VALUES = new BlockState[]{blockState, blockState2, blockState3};
        }

        public static BlockState valueOf(String str) {
            return (BlockState) Enum.valueOf(BlockState.class, str);
        }

        public static BlockState[] values() {
            return (BlockState[]) $VALUES.clone();
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\b\b\u0002\u0010\u0002*\u00020\u0001*\b\b\u0003\u0010\u0003*\u00020\u00012\u00020\u0001B#\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0002\u0012\u0004\u0012\u00028\u00030\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/paging/AccessorState$PendingRequest;", "", "Key", "Value", "Landroidx/paging/LoadType;", "loadType", "Landroidx/paging/PagingState;", "pagingState", "<init>", "(Landroidx/paging/LoadType;Landroidx/paging/PagingState;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class PendingRequest<Key, Value> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LoadType f18515a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public PagingState f18516b;

        public PendingRequest(LoadType loadType, PagingState<Key, Value> pagingState) {
            loadType.getClass();
            pagingState.getClass();
            this.f18515a = loadType;
            this.f18516b = pagingState;
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f18517a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f18518b;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.REFRESH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f18517a = iArr;
            int[] iArr2 = new int[BlockState.values().length];
            try {
                iArr2[BlockState.COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr2[BlockState.REQUIRES_REFRESH.ordinal()] = 2;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[BlockState.UNBLOCKED.ordinal()] = 3;
            } catch (NoSuchFieldError unused4) {
            }
            f18518b = iArr2;
        }
    }

    public AccessorState() {
        int length = LoadType.values().length;
        BlockState[] blockStateArr = new BlockState[length];
        for (int i2 = 0; i2 < length; i2++) {
            blockStateArr[i2] = BlockState.UNBLOCKED;
        }
        this.f18512a = blockStateArr;
        int length2 = LoadType.values().length;
        LoadState.Error[] errorArr = new LoadState.Error[length2];
        for (int i3 = 0; i3 < length2; i3++) {
            errorArr[i3] = null;
        }
        this.f18513b = errorArr;
        this.f18514c = new ArrayDeque();
    }

    public final void a(final LoadType loadType) {
        loadType.getClass();
        CollectionsKt.a0(this.f18514c, new Function1<PendingRequest<Object, Object>, Boolean>() { // from class: androidx.paging.AccessorState$clearPendingRequest$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                AccessorState.PendingRequest pendingRequest = (AccessorState.PendingRequest) obj;
                pendingRequest.getClass();
                return Boolean.valueOf(pendingRequest.f18515a == loadType);
            }
        });
    }

    public final LoadState b(LoadType loadType) {
        BlockState blockState = this.f18512a[loadType.ordinal()];
        ArrayDeque arrayDeque = this.f18514c;
        if (arrayDeque == null || !arrayDeque.isEmpty()) {
            Iterator<E> it = arrayDeque.iterator();
            while (it.hasNext()) {
                if (((PendingRequest) it.next()).f18515a == loadType) {
                    if (blockState == BlockState.REQUIRES_REFRESH) {
                        break;
                    }
                    return LoadState.Loading.f18635b;
                }
            }
        }
        LoadState.Error error = this.f18513b[loadType.ordinal()];
        if (error != null) {
            return error;
        }
        int i2 = WhenMappings.f18518b[blockState.ordinal()];
        if (i2 == 1) {
            if (WhenMappings.f18517a[loadType.ordinal()] == 1) {
                LoadState.NotLoading.f18636b.getClass();
                return LoadState.NotLoading.d;
            }
            LoadState.NotLoading.f18636b.getClass();
            return LoadState.NotLoading.f18637c;
        }
        if (i2 == 2) {
            LoadState.NotLoading.f18636b.getClass();
            return LoadState.NotLoading.d;
        }
        if (i2 == 3) {
            LoadState.NotLoading.f18636b.getClass();
            return LoadState.NotLoading.d;
        }
        v40.g();
        return null;
    }

    public final Pair c() {
        Object next;
        Iterator<E> it = this.f18514c.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            LoadType loadType = ((PendingRequest) next).f18515a;
            if (loadType != LoadType.REFRESH && this.f18512a[loadType.ordinal()] == BlockState.UNBLOCKED) {
                break;
            }
        }
        PendingRequest pendingRequest = (PendingRequest) next;
        if (pendingRequest != null) {
            return new Pair(pendingRequest.f18515a, pendingRequest.f18516b);
        }
        return null;
    }

    public final void d(LoadType loadType, BlockState blockState) {
        loadType.getClass();
        blockState.getClass();
        this.f18512a[loadType.ordinal()] = blockState;
    }

    public final void e(LoadType loadType, LoadState.Error error) {
        loadType.getClass();
        this.f18513b[loadType.ordinal()] = error;
    }
}
