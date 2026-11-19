package androidx.paging;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B-\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/paging/InvalidateCallbackTracker;", "T", "", "Lkotlin/Function1;", "", "callbackInvoker", "Lkotlin/Function0;", "", "invalidGetter", "<init>", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class InvalidateCallbackTracker<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f18627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Function0 f18628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ReentrantLock f18629c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f18630e;

    public InvalidateCallbackTracker(Function1<? super T, Unit> function1, Function0<Boolean> function0) {
        function1.getClass();
        this.f18627a = function1;
        this.f18628b = function0;
        this.f18629c = new ReentrantLock();
        this.d = new ArrayList();
    }

    public final boolean a() {
        ArrayList arrayList = this.d;
        if (this.f18630e) {
            return false;
        }
        ReentrantLock reentrantLock = this.f18629c;
        try {
            reentrantLock.lock();
            if (this.f18630e) {
                reentrantLock.unlock();
                return false;
            }
            this.f18630e = true;
            List listY0 = CollectionsKt.y0(arrayList);
            arrayList.clear();
            reentrantLock.unlock();
            Iterator<T> it = listY0.iterator();
            while (it.hasNext()) {
                this.f18627a.invoke(it.next());
            }
            return true;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public /* synthetic */ InvalidateCallbackTracker(Function1 function1, Function0 function0, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1, (i2 & 2) != 0 ? null : function0);
    }
}
