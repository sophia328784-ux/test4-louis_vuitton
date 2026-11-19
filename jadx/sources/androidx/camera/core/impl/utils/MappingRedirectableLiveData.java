package androidx.camera.core.impl.utils;

import androidx.arch.core.util.Function;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MediatorLiveData;
import androidx.lifecycle.Observer;
import defpackage.aa0;
import defpackage.tb0;
import defpackage.zi;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u00028\u00010\u0003B#\u0012\u0006\u0010\u0004\u001a\u00028\u0001\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/camera/core/impl/utils/MappingRedirectableLiveData;", "I", "O", "Landroidx/lifecycle/MediatorLiveData;", "initialValue", "Landroidx/arch/core/util/Function;", "mapFunction", "<init>", "(Ljava/lang/Object;Landroidx/arch/core/util/Function;)V", "camera-core_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class MappingRedirectableLiveData<I, O> extends MediatorLiveData<O> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f2425b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function f2426c;
    public LiveData d;

    public MappingRedirectableLiveData(O o, Function<I, O> function) {
        function.getClass();
        this.f2425b = o;
        this.f2426c = function;
    }

    public static void d(MappingRedirectableLiveData mappingRedirectableLiveData, LiveData liveData) {
        super.b(liveData, new zi(new tb0(mappingRedirectableLiveData, 2), 4));
    }

    @Override // androidx.lifecycle.MediatorLiveData
    public final void b(LiveData liveData, Observer observer) {
        throw null;
    }

    public final void e(LiveData liveData) {
        liveData.getClass();
        LiveData liveData2 = this.d;
        if (liveData2 != null) {
            c(liveData2);
        }
        this.d = liveData;
        Threads.c(new aa0(this, liveData, 4));
    }

    @Override // androidx.lifecycle.LiveData
    public final Object getValue() {
        LiveData liveData = this.d;
        return liveData == null ? this.f2425b : this.f2426c.mo0apply(liveData.getValue());
    }
}
