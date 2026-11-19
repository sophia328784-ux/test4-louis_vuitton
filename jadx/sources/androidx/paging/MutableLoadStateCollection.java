package androidx.paging;

import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/paging/MutableLoadStateCollection;", "", "<init>", "()V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class MutableLoadStateCollection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public LoadState f18659a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LoadState f18660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LoadState f18661c;

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f18662a;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.REFRESH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.APPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LoadType.PREPEND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f18662a = iArr;
        }
    }

    public MutableLoadStateCollection() {
        LoadState.NotLoading.Companion companion = LoadState.NotLoading.f18636b;
        companion.getClass();
        LoadState.NotLoading notLoading = LoadState.NotLoading.d;
        this.f18659a = notLoading;
        companion.getClass();
        this.f18660b = notLoading;
        companion.getClass();
        this.f18661c = notLoading;
    }

    public final LoadState a(LoadType loadType) {
        loadType.getClass();
        int i2 = WhenMappings.f18662a[loadType.ordinal()];
        if (i2 == 1) {
            return this.f18659a;
        }
        if (i2 == 2) {
            return this.f18661c;
        }
        if (i2 == 3) {
            return this.f18660b;
        }
        v40.g();
        return null;
    }

    public final void b(LoadStates loadStates) {
        loadStates.getClass();
        this.f18659a = loadStates.f18639a;
        this.f18661c = loadStates.f18641c;
        this.f18660b = loadStates.f18640b;
    }

    public final void c(LoadType loadType, LoadState loadState) {
        loadType.getClass();
        loadState.getClass();
        int i2 = WhenMappings.f18662a[loadType.ordinal()];
        if (i2 == 1) {
            this.f18659a = loadState;
            return;
        }
        if (i2 == 2) {
            this.f18661c = loadState;
        } else if (i2 == 3) {
            this.f18660b = loadState;
        } else {
            v40.g();
        }
    }

    public final LoadStates d() {
        return new LoadStates(this.f18659a, this.f18660b, this.f18661c);
    }
}
