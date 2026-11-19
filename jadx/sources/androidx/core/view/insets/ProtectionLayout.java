package androidx.core.view.insets;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.core.graphics.Insets;
import com.vuitton.android.R;
import defpackage.md;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ProtectionLayout extends FrameLayout {
    public static final Object d = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f12304b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ProtectionGroup f12305c;

    public ProtectionLayout(Context context, List<Protection> list) {
        super(context);
        this.f12304b = new ArrayList();
        setProtections(list);
    }

    private SystemBarStateMonitor getOrInstallSystemBarStateMonitor() {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        Object tag = viewGroup.getTag(R.id.tag_system_bar_state_monitor);
        if (tag instanceof SystemBarStateMonitor) {
            return (SystemBarStateMonitor) tag;
        }
        SystemBarStateMonitor systemBarStateMonitor = new SystemBarStateMonitor(viewGroup);
        viewGroup.setTag(R.id.tag_system_bar_state_monitor, systemBarStateMonitor);
        return systemBarStateMonitor;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x009f  */
    /* JADX WARN: Code duplicated, block: B:27:0x00b1 A[LOOP:0: B:7:0x0028->B:27:0x00b1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:32:0x00ba A[SYNTHETIC] */
    public final void a() {
        int i2;
        int i3;
        int i4;
        final FrameLayout.LayoutParams layoutParams;
        final View view;
        Protection.Attributes.Callback callback;
        ArrayList arrayList = this.f12304b;
        if (arrayList.isEmpty()) {
            b();
            return;
        }
        SystemBarStateMonitor orInstallSystemBarStateMonitor = getOrInstallSystemBarStateMonitor();
        b();
        this.f12305c = new ProtectionGroup(orInstallSystemBarStateMonitor, arrayList);
        int childCount = getChildCount();
        int size = this.f12305c.f12299a.size();
        for (int i5 = 0; i5 < size; i5++) {
            Protection protection = (Protection) this.f12305c.f12299a.get(i5);
            Context context = getContext();
            int i6 = i5 + childCount;
            Protection.Attributes attributes = protection.f12289b;
            int i7 = protection.f12288a;
            int i8 = -1;
            if (i7 != 1) {
                if (i7 == 2) {
                    i4 = attributes.f12293b;
                    i3 = 48;
                } else if (i7 == 4) {
                    i2 = attributes.f12292a;
                    i3 = 5;
                } else if (i7 != 8) {
                    md.n(pq0.k(i7, "Unexpected side: "));
                    return;
                } else {
                    i4 = attributes.f12293b;
                    i3 = 80;
                }
                layoutParams = new FrameLayout.LayoutParams(i8, i4, i3);
                Insets insets = attributes.f12294c;
                layoutParams.leftMargin = insets.f12054a;
                layoutParams.topMargin = insets.f12055b;
                layoutParams.rightMargin = insets.f12056c;
                layoutParams.bottomMargin = insets.d;
                view = new View(context);
                view.setTag(d);
                view.setTranslationX(attributes.f12296f);
                view.setTranslationY(attributes.g);
                view.setAlpha(attributes.f12297h);
                view.setVisibility(attributes.d ? 0 : 8);
                view.setBackground(attributes.f12295e);
                callback = new Protection.Attributes.Callback() { // from class: androidx.core.view.insets.ProtectionLayout.1
                    @Override // androidx.core.view.insets.Protection.Attributes.Callback
                    public final void a(ColorDrawable colorDrawable) {
                        view.setBackground(colorDrawable);
                    }

                    @Override // androidx.core.view.insets.Protection.Attributes.Callback
                    public final void b(int i9) {
                        FrameLayout.LayoutParams layoutParams2 = layoutParams;
                        layoutParams2.height = i9;
                        view.setLayoutParams(layoutParams2);
                    }

                    @Override // androidx.core.view.insets.Protection.Attributes.Callback
                    public final void c(boolean z) {
                        view.setVisibility(z ? 0 : 8);
                    }

                    @Override // androidx.core.view.insets.Protection.Attributes.Callback
                    public final void d(Insets insets2) {
                        int i9 = insets2.f12054a;
                        FrameLayout.LayoutParams layoutParams2 = layoutParams;
                        layoutParams2.leftMargin = i9;
                        layoutParams2.topMargin = insets2.f12055b;
                        layoutParams2.rightMargin = insets2.f12056c;
                        layoutParams2.bottomMargin = insets2.d;
                        view.setLayoutParams(layoutParams2);
                    }

                    @Override // androidx.core.view.insets.Protection.Attributes.Callback
                    public final void e(float f2) {
                        view.setAlpha(f2);
                    }

                    @Override // androidx.core.view.insets.Protection.Attributes.Callback
                    public final void f(int i9) {
                        FrameLayout.LayoutParams layoutParams2 = layoutParams;
                        layoutParams2.width = i9;
                        view.setLayoutParams(layoutParams2);
                    }

                    @Override // androidx.core.view.insets.Protection.Attributes.Callback
                    public final void g(float f2) {
                        view.setTranslationX(f2);
                    }

                    @Override // androidx.core.view.insets.Protection.Attributes.Callback
                    public final void h(float f2) {
                        view.setTranslationY(f2);
                    }
                };
                if (attributes.f12298i == null) {
                    md.k("Trying to overwrite the existing callback. Did you send one protection to multiple ProtectionLayouts?");
                    return;
                } else {
                    attributes.f12298i = callback;
                    addView(view, i6, layoutParams);
                }
            } else {
                i2 = attributes.f12292a;
                i3 = 3;
            }
            i8 = i2;
            i4 = -1;
            layoutParams = new FrameLayout.LayoutParams(i8, i4, i3);
            Insets insets2 = attributes.f12294c;
            layoutParams.leftMargin = insets2.f12054a;
            layoutParams.topMargin = insets2.f12055b;
            layoutParams.rightMargin = insets2.f12056c;
            layoutParams.bottomMargin = insets2.d;
            view = new View(context);
            view.setTag(d);
            view.setTranslationX(attributes.f12296f);
            view.setTranslationY(attributes.g);
            view.setAlpha(attributes.f12297h);
            view.setVisibility(attributes.d ? 0 : 8);
            view.setBackground(attributes.f12295e);
            callback = new Protection.Attributes.Callback() { // from class: androidx.core.view.insets.ProtectionLayout.1
                @Override // androidx.core.view.insets.Protection.Attributes.Callback
                public final void a(ColorDrawable colorDrawable) {
                    view.setBackground(colorDrawable);
                }

                @Override // androidx.core.view.insets.Protection.Attributes.Callback
                public final void b(int i9) {
                    FrameLayout.LayoutParams layoutParams2 = layoutParams;
                    layoutParams2.height = i9;
                    view.setLayoutParams(layoutParams2);
                }

                @Override // androidx.core.view.insets.Protection.Attributes.Callback
                public final void c(boolean z) {
                    view.setVisibility(z ? 0 : 8);
                }

                @Override // androidx.core.view.insets.Protection.Attributes.Callback
                public final void d(Insets insets3) {
                    int i9 = insets3.f12054a;
                    FrameLayout.LayoutParams layoutParams2 = layoutParams;
                    layoutParams2.leftMargin = i9;
                    layoutParams2.topMargin = insets3.f12055b;
                    layoutParams2.rightMargin = insets3.f12056c;
                    layoutParams2.bottomMargin = insets3.d;
                    view.setLayoutParams(layoutParams2);
                }

                @Override // androidx.core.view.insets.Protection.Attributes.Callback
                public final void e(float f2) {
                    view.setAlpha(f2);
                }

                @Override // androidx.core.view.insets.Protection.Attributes.Callback
                public final void f(int i9) {
                    FrameLayout.LayoutParams layoutParams2 = layoutParams;
                    layoutParams2.width = i9;
                    view.setLayoutParams(layoutParams2);
                }

                @Override // androidx.core.view.insets.Protection.Attributes.Callback
                public final void g(float f2) {
                    view.setTranslationX(f2);
                }

                @Override // androidx.core.view.insets.Protection.Attributes.Callback
                public final void h(float f2) {
                    view.setTranslationY(f2);
                }
            };
            if (attributes.f12298i == null) {
                md.k("Trying to overwrite the existing callback. Did you send one protection to multiple ProtectionLayouts?");
                return;
            } else {
                attributes.f12298i = callback;
                addView(view, i6, layoutParams);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (view != null && view.getTag() != d) {
            ProtectionGroup protectionGroup = this.f12305c;
            int childCount = getChildCount() - (protectionGroup != null ? protectionGroup.f12299a.size() : 0);
            if (i2 > childCount || i2 < 0) {
                i2 = childCount;
            }
        }
        super.addView(view, i2, layoutParams);
    }

    public final void b() {
        ProtectionGroup protectionGroup;
        if (this.f12305c != null) {
            removeViews(getChildCount() - this.f12305c.f12299a.size(), this.f12305c.f12299a.size());
            int size = this.f12305c.f12299a.size();
            int i2 = 0;
            while (true) {
                protectionGroup = this.f12305c;
                if (i2 >= size) {
                    break;
                }
                ((Protection) protectionGroup.f12299a.get(i2)).f12289b.f12298i = null;
                i2++;
            }
            ArrayList arrayList = protectionGroup.f12299a;
            if (!protectionGroup.f12303f) {
                protectionGroup.f12303f = true;
                protectionGroup.f12300b.f12309b.remove(protectionGroup);
                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                    ((Protection) arrayList.get(size2)).f12291e = null;
                }
                arrayList.clear();
            }
            this.f12305c = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
        requestApplyInsets();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b();
        ViewGroup viewGroup = (ViewGroup) getRootView();
        Object tag = viewGroup.getTag(R.id.tag_system_bar_state_monitor);
        if (tag instanceof SystemBarStateMonitor) {
            final SystemBarStateMonitor systemBarStateMonitor = (SystemBarStateMonitor) tag;
            if (systemBarStateMonitor.f12309b.isEmpty()) {
                systemBarStateMonitor.f12308a.post(new Runnable() { // from class: androidx.core.view.insets.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        View view = systemBarStateMonitor.f12308a;
                        ViewParent parent = view.getParent();
                        if (parent instanceof ViewGroup) {
                            ((ViewGroup) parent).removeView(view);
                        }
                    }
                });
                viewGroup.setTag(R.id.tag_system_bar_state_monitor, null);
            }
        }
    }

    public void setProtections(List<Protection> list) {
        ArrayList arrayList = this.f12304b;
        arrayList.clear();
        arrayList.addAll(list);
        if (isAttachedToWindow()) {
            a();
            requestApplyInsets();
        }
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ProtectionLayout(Context context, AttributeSet attributeSet, int i2, int i3) {
        super(context, attributeSet, i2, i3);
        this.f12304b = new ArrayList();
    }

    public ProtectionLayout(Context context) {
        super(context);
        this.f12304b = new ArrayList();
    }
}
