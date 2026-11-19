package androidx.appcompat.view;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListener;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class ViewPropertyAnimatorCompatSet {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Interpolator f935c;
    public ViewPropertyAnimatorListener d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f936e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f934b = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ViewPropertyAnimatorListenerAdapter f937f = new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.view.ViewPropertyAnimatorCompatSet.1

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f938a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f939b = 0;

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public final void a() {
            int i2 = this.f939b + 1;
            this.f939b = i2;
            ViewPropertyAnimatorCompatSet viewPropertyAnimatorCompatSet = ViewPropertyAnimatorCompatSet.this;
            if (i2 == viewPropertyAnimatorCompatSet.f933a.size()) {
                ViewPropertyAnimatorListener viewPropertyAnimatorListener = viewPropertyAnimatorCompatSet.d;
                if (viewPropertyAnimatorListener != null) {
                    viewPropertyAnimatorListener.a();
                }
                this.f939b = 0;
                this.f938a = false;
                viewPropertyAnimatorCompatSet.f936e = false;
            }
        }

        @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
        public final void c() {
            if (this.f938a) {
                return;
            }
            this.f938a = true;
            ViewPropertyAnimatorListener viewPropertyAnimatorListener = ViewPropertyAnimatorCompatSet.this.d;
            if (viewPropertyAnimatorListener != null) {
                viewPropertyAnimatorListener.c();
            }
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f933a = new ArrayList();

    public final void a() {
        if (this.f936e) {
            Iterator it = this.f933a.iterator();
            while (it.hasNext()) {
                ((ViewPropertyAnimatorCompat) it.next()).b();
            }
            this.f936e = false;
        }
    }

    public final void b() {
        View view;
        if (this.f936e) {
            return;
        }
        for (ViewPropertyAnimatorCompat viewPropertyAnimatorCompat : this.f933a) {
            long j2 = this.f934b;
            if (j2 >= 0) {
                viewPropertyAnimatorCompat.c(j2);
            }
            Interpolator interpolator = this.f935c;
            if (interpolator != null && (view = (View) viewPropertyAnimatorCompat.f12219a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.d != null) {
                viewPropertyAnimatorCompat.d(this.f937f);
            }
            View view2 = (View) viewPropertyAnimatorCompat.f12219a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.f936e = true;
    }
}
