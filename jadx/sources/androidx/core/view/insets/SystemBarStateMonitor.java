package androidx.core.view.insets;

import android.content.res.Configuration;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class SystemBarStateMonitor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f12308a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f12309b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Insets f12310c;
    public Insets d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12311e;

    public interface Callback {
        void a();

        void b(int i2, Insets insets, RectF rectF);

        void c();

        void d(Insets insets, Insets insets2);

        void e(int i2);
    }

    public SystemBarStateMonitor(final ViewGroup viewGroup) {
        View childAt;
        Insets insets = Insets.f12053e;
        this.f12310c = insets;
        this.d = insets;
        Drawable background = viewGroup.getBackground();
        this.f12311e = background instanceof ColorDrawable ? ((ColorDrawable) background).getColor() : 0;
        final View view = new View(viewGroup.getContext()) { // from class: androidx.core.view.insets.SystemBarStateMonitor.1
            @Override // android.view.View
            public final void onConfigurationChanged(Configuration configuration) {
                SystemBarStateMonitor systemBarStateMonitor = SystemBarStateMonitor.this;
                ArrayList arrayList = systemBarStateMonitor.f12309b;
                Drawable background2 = viewGroup.getBackground();
                int color = background2 instanceof ColorDrawable ? ((ColorDrawable) background2).getColor() : 0;
                if (systemBarStateMonitor.f12311e != color) {
                    systemBarStateMonitor.f12311e = color;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        ((Callback) arrayList.get(size)).e(color);
                    }
                }
            }
        };
        this.f12308a = view;
        view.setVisibility(8);
        view.setWillNotDraw(true);
        ViewCompat.x(view, new OnApplyWindowInsetsListener() { // from class: androidx.core.view.insets.a
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                SystemBarStateMonitor systemBarStateMonitor = this.f12318b;
                ArrayList arrayList = systemBarStateMonitor.f12309b;
                Insets insetsB = Insets.b(windowInsetsCompat.e(519), windowInsetsCompat.e(64));
                Insets insetsB2 = Insets.b(windowInsetsCompat.f(519), windowInsetsCompat.f(64));
                if (!insetsB.equals(systemBarStateMonitor.f12310c) || !insetsB2.equals(systemBarStateMonitor.d)) {
                    systemBarStateMonitor.f12310c = insetsB;
                    systemBarStateMonitor.d = insetsB2;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        ((SystemBarStateMonitor.Callback) arrayList.get(size)).d(insetsB, insetsB2);
                    }
                }
                return windowInsetsCompat;
            }
        });
        ViewCompat.A(view, new WindowInsetsAnimationCompat.Callback() { // from class: androidx.core.view.insets.SystemBarStateMonitor.2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final HashMap f12314b = new HashMap();

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public final void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
                ArrayList arrayList = SystemBarStateMonitor.this.f12309b;
                if ((windowInsetsAnimationCompat.f() & 519) != 0) {
                    this.f12314b.remove(windowInsetsAnimationCompat);
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        ((Callback) arrayList.get(size)).a();
                    }
                }
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public final void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
                ArrayList arrayList = SystemBarStateMonitor.this.f12309b;
                if ((windowInsetsAnimationCompat.f() & 519) != 0) {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        ((Callback) arrayList.get(size)).c();
                    }
                }
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public final WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
                ArrayList arrayList = SystemBarStateMonitor.this.f12309b;
                RectF rectF = new RectF(1.0f, 1.0f, 1.0f, 1.0f);
                int i2 = 0;
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) list.get(size);
                    Integer num = (Integer) this.f12314b.get(windowInsetsAnimationCompat);
                    if (num != null) {
                        int iIntValue = num.intValue();
                        float fA = windowInsetsAnimationCompat.a();
                        if ((iIntValue & 1) != 0) {
                            rectF.left = fA;
                        }
                        if ((iIntValue & 2) != 0) {
                            rectF.top = fA;
                        }
                        if ((iIntValue & 4) != 0) {
                            rectF.right = fA;
                        }
                        if ((iIntValue & 8) != 0) {
                            rectF.bottom = fA;
                        }
                        i2 |= iIntValue;
                    }
                }
                Insets insetsB = Insets.b(windowInsetsCompat.e(519), windowInsetsCompat.e(64));
                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                    ((Callback) arrayList.get(size2)).b(i2, insetsB, rectF);
                }
                return windowInsetsCompat;
            }

            @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
            public final WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
                if ((windowInsetsAnimationCompat.f() & 519) != 0) {
                    Insets insets2 = boundsCompat.f12224b;
                    Insets insets3 = boundsCompat.f12223a;
                    int i2 = insets2.f12054a != insets3.f12054a ? 1 : 0;
                    if (insets2.f12055b != insets3.f12055b) {
                        i2 |= 2;
                    }
                    if (insets2.f12056c != insets3.f12056c) {
                        i2 |= 4;
                    }
                    if (insets2.d != insets3.d) {
                        i2 |= 8;
                    }
                    this.f12314b.put(windowInsetsAnimationCompat, Integer.valueOf(i2));
                }
                return boundsCompat;
            }
        });
        int childCount = viewGroup.getChildCount() - 1;
        while (true) {
            if (childCount < 0) {
                childAt = null;
                break;
            }
            childAt = viewGroup.getChildAt(childCount);
            if (childAt.isAttachedToWindow() != viewGroup.isAttachedToWindow()) {
                break;
            } else {
                childCount--;
            }
        }
        if (childAt == null) {
            viewGroup.addView(view, 0);
        } else {
            childAt.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.core.view.insets.SystemBarStateMonitor.3
                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewAttachedToWindow(View view2) {
                    viewGroup.addView(view, 0);
                    view2.removeOnAttachStateChangeListener(this);
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewDetachedFromWindow(View view2) {
                    viewGroup.addView(view, 0);
                    view2.removeOnAttachStateChangeListener(this);
                }
            });
        }
    }
}
