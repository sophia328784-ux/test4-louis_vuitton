package com.vuitton.android.presentation.screen.connectivity;

import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b!\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;", "View", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class LVViewModel<View> extends ViewModel {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f55943b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashSet f55944a = new LinkedHashSet();

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001c\u0010\u0004\u001a\n \u0003*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel$Companion;", "", "", "kotlin.jvm.PlatformType", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f55943b = "LVViewModel";
    }

    public static void Bc(LVViewModel lVViewModel, Function2 function2, Function2 function3, int i2) {
        if ((i2 & 1) != 0) {
            function2 = new LVViewModel$execute$1(2, null);
        }
        LVViewModel$execute$2 lVViewModel$execute$2 = new LVViewModel$execute$2(1, null);
        lVViewModel.getClass();
        BuildersKt.c(ViewModelKt.a(lVViewModel), null, null, new LVViewModel$execute$3(function3, function2, lVViewModel$execute$2, null), 3);
    }

    public final void Ac(LifecycleOwner lifecycleOwner) {
        Object next;
        lifecycleOwner.getClass();
        LinkedHashSet linkedHashSet = this.f55944a;
        Iterator it = linkedHashSet.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((Pair) next).f71705b, lifecycleOwner));
        Pair pair = (Pair) next;
        if (pair != null) {
            linkedHashSet.remove(pair);
        }
    }

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        super.onCleared();
        this.f55944a.clear();
    }

    public final void yc(LifecycleOwner lifecycleOwner, Object obj) {
        lifecycleOwner.getClass();
        this.f55944a.add(new Pair(lifecycleOwner, obj));
    }

    public final Object zc(Continuation continuation, Function1 function1) throws Throwable {
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        Object objF = BuildersKt.f(MainDispatcherLoader.f75131a, new LVViewModel$callView$2(function1, this, null), continuation);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
    }
}
