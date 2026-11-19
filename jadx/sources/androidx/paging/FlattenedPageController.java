package androidx.paging;

import defpackage.md;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.sync.MutexImpl;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/paging/FlattenedPageController;", "", "T", "<init>", "()V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
final class FlattenedPageController<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FlattenedPageEventStorage f18573a = new FlattenedPageEventStorage();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutexImpl f18574b = MutexKt.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18575c = -1;

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Serializable a(ContinuationImpl continuationImpl) {
        FlattenedPageController$getStateAsEvents$1 flattenedPageController$getStateAsEvents$1;
        MutexImpl mutexImpl;
        if (continuationImpl instanceof FlattenedPageController$getStateAsEvents$1) {
            flattenedPageController$getStateAsEvents$1 = (FlattenedPageController$getStateAsEvents$1) continuationImpl;
            int i2 = flattenedPageController$getStateAsEvents$1.f18579f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flattenedPageController$getStateAsEvents$1.f18579f = i2 - Integer.MIN_VALUE;
            } else {
                flattenedPageController$getStateAsEvents$1 = new FlattenedPageController$getStateAsEvents$1(this, continuationImpl);
            }
        } else {
            flattenedPageController$getStateAsEvents$1 = new FlattenedPageController$getStateAsEvents$1(this, continuationImpl);
        }
        Object obj = flattenedPageController$getStateAsEvents$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = flattenedPageController$getStateAsEvents$1.f18579f;
        if (i3 == 0) {
            ResultKt.b(obj);
            flattenedPageController$getStateAsEvents$1.f18576b = this;
            mutexImpl = this.f18574b;
            flattenedPageController$getStateAsEvents$1.f18577c = mutexImpl;
            flattenedPageController$getStateAsEvents$1.f18579f = 1;
            if (mutexImpl.c(flattenedPageController$getStateAsEvents$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            MutexImpl mutexImpl2 = flattenedPageController$getStateAsEvents$1.f18577c;
            FlattenedPageController<T> flattenedPageController = (FlattenedPageController) flattenedPageController$getStateAsEvents$1.f18576b;
            ResultKt.b(obj);
            mutexImpl = mutexImpl2;
            this = flattenedPageController;
        }
        try {
            List listB = this.f18573a.b();
            int size = (this.f18575c - listB.size()) + 1;
            List list = listB;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            int i4 = 0;
            for (T t : list) {
                int i5 = i4 + 1;
                if (i4 < 0) {
                    CollectionsKt.t0();
                    throw null;
                }
                arrayList.add(new IndexedValue(i4 + size, (PageEvent) t));
                i4 = i5;
            }
            mutexImpl.d(null);
            return arrayList;
        } catch (Throwable th) {
            mutexImpl.d(null);
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(IndexedValue indexedValue, ContinuationImpl continuationImpl) {
        FlattenedPageController$record$1 flattenedPageController$record$1;
        MutexImpl mutexImpl;
        if (continuationImpl instanceof FlattenedPageController$record$1) {
            flattenedPageController$record$1 = (FlattenedPageController$record$1) continuationImpl;
            int i2 = flattenedPageController$record$1.g;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flattenedPageController$record$1.g = i2 - Integer.MIN_VALUE;
            } else {
                flattenedPageController$record$1 = new FlattenedPageController$record$1(this, continuationImpl);
            }
        } else {
            flattenedPageController$record$1 = new FlattenedPageController$record$1(this, continuationImpl);
        }
        Object obj = flattenedPageController$record$1.f18582e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = flattenedPageController$record$1.g;
        if (i3 == 0) {
            ResultKt.b(obj);
            flattenedPageController$record$1.f18580b = this;
            flattenedPageController$record$1.f18581c = indexedValue;
            mutexImpl = this.f18574b;
            flattenedPageController$record$1.d = mutexImpl;
            flattenedPageController$record$1.g = 1;
            if (mutexImpl.c(flattenedPageController$record$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            MutexImpl mutexImpl2 = flattenedPageController$record$1.d;
            indexedValue = flattenedPageController$record$1.f18581c;
            FlattenedPageController<T> flattenedPageController = (FlattenedPageController) flattenedPageController$record$1.f18580b;
            ResultKt.b(obj);
            mutexImpl = mutexImpl2;
            this = flattenedPageController;
        }
        try {
            this.f18575c = indexedValue.f71771a;
            this.f18573a.a((PageEvent) indexedValue.f71772b);
            return Unit.f71739a;
        } finally {
            mutexImpl.d(null);
        }
    }
}
