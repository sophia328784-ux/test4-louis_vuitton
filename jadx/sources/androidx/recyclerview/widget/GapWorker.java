package androidx.recyclerview.widget;

import android.os.Trace;
import defpackage.md;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class GapWorker implements Runnable {
    static final ThreadLocal<GapWorker> sGapWorker = new ThreadLocal<>();
    static Comparator<Task> sTaskComparator = new AnonymousClass1();
    long mFrameIntervalNs;
    long mPostTimeNs;
    ArrayList<RecyclerView> mRecyclerViews = new ArrayList<>();
    private final ArrayList<Task> mTasks = new ArrayList<>();

    /* JADX INFO: renamed from: androidx.recyclerview.widget.GapWorker$1, reason: invalid class name */
    public class AnonymousClass1 implements Comparator<Task> {
        @Override // java.util.Comparator
        public final int compare(Task task, Task task2) {
            Task task3 = task;
            Task task4 = task2;
            RecyclerView recyclerView = task3.d;
            if ((recyclerView == null) == (task4.d == null)) {
                boolean z = task3.f19193a;
                if (z == task4.f19193a) {
                    int i2 = task4.f19194b - task3.f19194b;
                    if (i2 != 0) {
                        return i2;
                    }
                    int i3 = task3.f19195c - task4.f19195c;
                    if (i3 != 0) {
                        return i3;
                    }
                    return 0;
                }
                if (z) {
                    return -1;
                }
            } else if (recyclerView != null) {
                return -1;
            }
            return 1;
        }
    }

    public static class LayoutPrefetchRegistryImpl implements RecyclerView.LayoutManager.LayoutPrefetchRegistry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f19190a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f19191b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int[] f19192c;
        public int d;

        public final void a(int i2, int i3) {
            if (i2 < 0) {
                md.n("Layout positions must be non-negative");
                return;
            }
            if (i3 < 0) {
                md.n("Pixel distance must be non-negative");
                return;
            }
            int i4 = this.d;
            int i5 = i4 * 2;
            int[] iArr = this.f19192c;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.f19192c = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i5 >= iArr.length) {
                int[] iArr3 = new int[i4 * 4];
                this.f19192c = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.f19192c;
            iArr4[i5] = i2;
            iArr4[i5 + 1] = i3;
            this.d++;
        }

        public final void b(RecyclerView recyclerView, boolean z) {
            this.d = 0;
            int[] iArr = this.f19192c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.LayoutManager layoutManager = recyclerView.mLayout;
            if (recyclerView.mAdapter == null || layoutManager == null || !layoutManager.f19276i) {
                return;
            }
            if (z) {
                if (!recyclerView.mAdapterHelper.g()) {
                    layoutManager.k(recyclerView.mAdapter.getItemCount(), this);
                }
            } else if (!recyclerView.hasPendingAdapterUpdates()) {
                layoutManager.j(this.f19190a, this.f19191b, recyclerView.mState, this);
            }
            int i2 = this.d;
            if (i2 > layoutManager.f19277j) {
                layoutManager.f19277j = i2;
                layoutManager.f19278k = z;
                recyclerView.mRecycler.o();
            }
        }
    }

    public static class Task {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f19193a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f19194b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f19195c;
        public RecyclerView d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f19196e;
    }

    private void buildTaskList() {
        Task task;
        int size = this.mRecyclerViews.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView recyclerView = this.mRecyclerViews.get(i3);
            if (recyclerView.getWindowVisibility() == 0) {
                recyclerView.mPrefetchRegistry.b(recyclerView, false);
                i2 += recyclerView.mPrefetchRegistry.d;
            }
        }
        this.mTasks.ensureCapacity(i2);
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView recyclerView2 = this.mRecyclerViews.get(i5);
            if (recyclerView2.getWindowVisibility() == 0) {
                LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView2.mPrefetchRegistry;
                int iAbs = Math.abs(layoutPrefetchRegistryImpl.f19191b) + Math.abs(layoutPrefetchRegistryImpl.f19190a);
                for (int i6 = 0; i6 < layoutPrefetchRegistryImpl.d * 2; i6 += 2) {
                    int size2 = this.mTasks.size();
                    ArrayList<Task> arrayList = this.mTasks;
                    if (i4 >= size2) {
                        task = new Task();
                        arrayList.add(task);
                    } else {
                        task = arrayList.get(i4);
                    }
                    int[] iArr = layoutPrefetchRegistryImpl.f19192c;
                    int i7 = iArr[i6 + 1];
                    task.f19193a = i7 <= iAbs;
                    task.f19194b = iAbs;
                    task.f19195c = i7;
                    task.d = recyclerView2;
                    task.f19196e = iArr[i6];
                    i4++;
                }
            }
        }
        Collections.sort(this.mTasks, sTaskComparator);
    }

    private void flushTaskWithDeadline(Task task, long j2) {
        RecyclerView.ViewHolder viewHolderPrefetchPositionWithDeadline = prefetchPositionWithDeadline(task.d, task.f19196e, task.f19193a ? Long.MAX_VALUE : j2);
        if (viewHolderPrefetchPositionWithDeadline == null || viewHolderPrefetchPositionWithDeadline.mNestedRecyclerView == null || !viewHolderPrefetchPositionWithDeadline.isBound() || viewHolderPrefetchPositionWithDeadline.isInvalid()) {
            return;
        }
        prefetchInnerRecyclerViewWithDeadline(viewHolderPrefetchPositionWithDeadline.mNestedRecyclerView.get(), j2);
    }

    private void flushTasksWithDeadline(long j2) {
        for (int i2 = 0; i2 < this.mTasks.size(); i2++) {
            Task task = this.mTasks.get(i2);
            if (task.d == null) {
                return;
            }
            flushTaskWithDeadline(task, j2);
            task.f19193a = false;
            task.f19194b = 0;
            task.f19195c = 0;
            task.d = null;
            task.f19196e = 0;
        }
    }

    public static boolean isPrefetchPositionAttached(RecyclerView recyclerView, int i2) {
        int childCount = RecyclerView.this.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            RecyclerView.ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(RecyclerView.this.getChildAt(i3));
            if (childViewHolderInt.mPosition == i2 && !childViewHolderInt.isInvalid()) {
                return true;
            }
        }
        return false;
    }

    private void prefetchInnerRecyclerViewWithDeadline(RecyclerView recyclerView, long j2) {
        if (recyclerView == null) {
            return;
        }
        if (recyclerView.mDataSetHasChangedAfterLayout && RecyclerView.this.getChildCount() != 0) {
            recyclerView.removeAndRecycleViews();
        }
        LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView.mPrefetchRegistry;
        layoutPrefetchRegistryImpl.b(recyclerView, true);
        if (layoutPrefetchRegistryImpl.d != 0) {
            try {
                Trace.beginSection(j2 == Long.MAX_VALUE ? "RV Nested Prefetch" : "RV Nested Prefetch forced - needed next frame");
                RecyclerView.State state = recyclerView.mState;
                RecyclerView.Adapter adapter = recyclerView.mAdapter;
                state.d = 1;
                state.f19314e = adapter.getItemCount();
                state.g = false;
                state.f19316h = false;
                state.f19317i = false;
                for (int i2 = 0; i2 < layoutPrefetchRegistryImpl.d * 2; i2 += 2) {
                    prefetchPositionWithDeadline(recyclerView, layoutPrefetchRegistryImpl.f19192c[i2], j2);
                }
                Trace.endSection();
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        }
    }

    private RecyclerView.ViewHolder prefetchPositionWithDeadline(RecyclerView recyclerView, int i2, long j2) {
        if (isPrefetchPositionAttached(recyclerView, i2)) {
            return null;
        }
        RecyclerView.Recycler recycler = recyclerView.mRecycler;
        if (j2 == Long.MAX_VALUE) {
            try {
                if (Trace.isEnabled()) {
                    Trace.beginSection("RV Prefetch forced - needed next frame");
                }
            } finally {
                recyclerView.onExitLayoutOrScroll(false);
                Trace.endSection();
            }
        }
        recyclerView.onEnterLayoutOrScroll();
        RecyclerView.ViewHolder viewHolderM = recycler.m(i2, j2);
        if (viewHolderM != null) {
            if (!viewHolderM.isBound() || viewHolderM.isInvalid()) {
                recycler.a(viewHolderM, false);
            } else {
                recycler.j(viewHolderM.itemView);
            }
        }
        return viewHolderM;
    }

    public void add(RecyclerView recyclerView) {
        if (RecyclerView.sDebugAssertionsEnabled && this.mRecyclerViews.contains(recyclerView)) {
            md.k("RecyclerView already present in worker list!");
        } else {
            this.mRecyclerViews.add(recyclerView);
        }
    }

    public void postFromTraversal(RecyclerView recyclerView, int i2, int i3) {
        if (recyclerView.isAttachedToWindow()) {
            if (RecyclerView.sDebugAssertionsEnabled && !this.mRecyclerViews.contains(recyclerView)) {
                md.k("attempting to post unregistered view!");
                return;
            } else if (this.mPostTimeNs == 0) {
                this.mPostTimeNs = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = recyclerView.mPrefetchRegistry;
        layoutPrefetchRegistryImpl.f19190a = i2;
        layoutPrefetchRegistryImpl.f19191b = i3;
    }

    public void prefetch(long j2) {
        buildTaskList();
        flushTasksWithDeadline(j2);
    }

    public void remove(RecyclerView recyclerView) {
        boolean zRemove = this.mRecyclerViews.remove(recyclerView);
        if (!RecyclerView.sDebugAssertionsEnabled || zRemove) {
            return;
        }
        md.k("RecyclerView removal failed!");
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Trace.beginSection("RV Prefetch");
            if (!this.mRecyclerViews.isEmpty()) {
                int size = this.mRecyclerViews.size();
                long jMax = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    RecyclerView recyclerView = this.mRecyclerViews.get(i2);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    prefetch(TimeUnit.MILLISECONDS.toNanos(jMax) + this.mFrameIntervalNs);
                }
            }
        } finally {
            this.mPostTimeNs = 0L;
            Trace.endSection();
        }
    }
}
