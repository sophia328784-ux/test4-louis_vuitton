package defpackage;

import androidx.core.view.MenuHostHelper;
import androidx.core.view.MenuProvider;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LifecycleEffectKt;
import androidx.lifecycle.compose.LifecycleResumePauseEffectScope;
import androidx.lifecycle.compose.LifecycleStartStopEffectScope;
import androidx.lifecycle.compose.LifecycleStopOrDisposeEffectResult;
import java.io.Serializable;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n90 implements LifecycleEventObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Serializable f76476c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f76477e;

    public /* synthetic */ n90(Object obj, Serializable serializable, Object obj2, int i2) {
        this.f76475b = i2;
        this.f76477e = obj;
        this.f76476c = serializable;
        this.d = obj2;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        int i2 = this.f76475b;
        Object obj = this.d;
        Serializable serializable = this.f76476c;
        Object obj2 = this.f76477e;
        switch (i2) {
            case 0:
                LifecycleResumePauseEffectScope lifecycleResumePauseEffectScope = (LifecycleResumePauseEffectScope) obj2;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) serializable;
                Function1 function1 = (Function1) obj;
                int i3 = LifecycleEffectKt.WhenMappings.f13559a[event.ordinal()];
                if (i3 == 3) {
                    ref$ObjectRef.f71921b = function1.invoke(lifecycleResumePauseEffectScope);
                    break;
                } else if (i3 == 4) {
                    ref$ObjectRef.f71921b = null;
                    break;
                }
                break;
            case 1:
                LifecycleStartStopEffectScope lifecycleStartStopEffectScope = (LifecycleStartStopEffectScope) obj2;
                Ref$ObjectRef ref$ObjectRef2 = (Ref$ObjectRef) serializable;
                Function1 function2 = (Function1) obj;
                int i4 = LifecycleEffectKt.WhenMappings.f13559a[event.ordinal()];
                if (i4 == 1) {
                    ref$ObjectRef2.f71921b = function2.invoke(lifecycleStartStopEffectScope);
                    break;
                } else if (i4 == 2) {
                    LifecycleStopOrDisposeEffectResult lifecycleStopOrDisposeEffectResult = (LifecycleStopOrDisposeEffectResult) ref$ObjectRef2.f71921b;
                    if (lifecycleStopOrDisposeEffectResult != null) {
                        lifecycleStopOrDisposeEffectResult.a();
                    }
                    ref$ObjectRef2.f71921b = null;
                    break;
                }
                break;
            default:
                MenuHostHelper menuHostHelper = (MenuHostHelper) obj2;
                Runnable runnable = menuHostHelper.f12170a;
                CopyOnWriteArrayList copyOnWriteArrayList = menuHostHelper.f12171b;
                Lifecycle.State state = (Lifecycle.State) serializable;
                MenuProvider menuProvider = (MenuProvider) obj;
                Lifecycle.Event.INSTANCE.getClass();
                if (event == Lifecycle.Event.Companion.c(state)) {
                    copyOnWriteArrayList.add(menuProvider);
                    runnable.run();
                } else if (event == Lifecycle.Event.ON_DESTROY) {
                    menuHostHelper.c(menuProvider);
                } else if (event == Lifecycle.Event.Companion.a(state)) {
                    copyOnWriteArrayList.remove(menuProvider);
                    runnable.run();
                }
                break;
        }
    }
}
