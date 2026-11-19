package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13379b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f13380c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SpecialEffectsController.Effect f13381e;

    public /* synthetic */ a(Object obj, Object obj2, SpecialEffectsController.Effect effect, int i2) {
        this.f13379b = i2;
        this.f13380c = obj;
        this.d = obj2;
        this.f13381e = effect;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f13379b;
        SpecialEffectsController.Effect effect = this.f13381e;
        Object obj = this.d;
        Object obj2 = this.f13380c;
        switch (i2) {
            case 0:
                ViewGroup viewGroup = (ViewGroup) obj2;
                DefaultSpecialEffectsController.AnimationEffect animationEffect = (DefaultSpecialEffectsController.AnimationEffect) effect;
                viewGroup.getClass();
                viewGroup.endViewTransition((View) obj);
                animationEffect.f13190c.f13203a.c(animationEffect);
                break;
            default:
                DefaultSpecialEffectsController.TransitionEffect transitionEffect = (DefaultSpecialEffectsController.TransitionEffect) effect;
                FragmentTransition.a(((SpecialEffectsController.Operation) obj2).f13369c, ((SpecialEffectsController.Operation) obj).f13369c, transitionEffect.o, transitionEffect.n);
                break;
        }
    }
}
