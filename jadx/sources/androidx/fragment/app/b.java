package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f13383c;
    public final /* synthetic */ DefaultSpecialEffectsController.TransitionEffect d;

    public /* synthetic */ b(DefaultSpecialEffectsController.TransitionEffect transitionEffect, ViewGroup viewGroup) {
        this.f13382b = 2;
        this.d = transitionEffect;
        this.f13383c = viewGroup;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f13382b;
        Object obj = this.f13383c;
        DefaultSpecialEffectsController.TransitionEffect transitionEffect = this.d;
        switch (i2) {
            case 0:
                SpecialEffectsController.Operation operation = (SpecialEffectsController.Operation) obj;
                if (FragmentManager.O(2)) {
                    Objects.toString(operation);
                }
                operation.c(transitionEffect);
                break;
            case 1:
                SpecialEffectsController.Operation operation2 = (SpecialEffectsController.Operation) obj;
                if (FragmentManager.O(2)) {
                    Objects.toString(operation2);
                }
                operation2.c(transitionEffect);
                break;
            default:
                ViewGroup viewGroup = (ViewGroup) obj;
                viewGroup.getClass();
                Iterator it = transitionEffect.f13204c.iterator();
                while (it.hasNext()) {
                    SpecialEffectsController.Operation operation3 = ((DefaultSpecialEffectsController.TransitionInfo) it.next()).f13203a;
                    View view = operation3.f13369c.getView();
                    if (view != null) {
                        operation3.f13367a.a(view, viewGroup);
                    }
                }
                break;
        }
    }

    public /* synthetic */ b(SpecialEffectsController.Operation operation, DefaultSpecialEffectsController.TransitionEffect transitionEffect, int i2) {
        this.f13382b = i2;
        this.f13383c = operation;
        this.d = transitionEffect;
    }
}
