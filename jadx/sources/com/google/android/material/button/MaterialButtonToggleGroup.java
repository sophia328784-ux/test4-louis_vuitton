package com.google.android.material.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.RadioButton;
import android.widget.ToggleButton;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.StateListCornerSize;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.vuitton.android.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialButtonToggleGroup extends MaterialButtonGroup {
    public static final /* synthetic */ int s = 0;
    public final LinkedHashSet m;
    public boolean n;
    public boolean o;
    public boolean p;
    public final int q;
    public HashSet r;

    public interface OnButtonCheckedListener {
        void a();
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet, int i2) {
        super(MaterialThemeOverlay.b(context, attributeSet, i2, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup), attributeSet, i2);
        this.m = new LinkedHashSet();
        this.n = false;
        this.r = new HashSet();
        TypedArray typedArrayD = ThemeEnforcement.d(getContext(), attributeSet, R$styleable.y, i2, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup, new int[0]);
        setSingleSelection(typedArrayD.getBoolean(7, false));
        this.q = typedArrayD.getResourceId(2, -1);
        this.p = typedArrayD.getBoolean(4, false);
        if (this.g == null) {
            this.g = StateListCornerSize.b(new AbsoluteCornerSize(Call.Parameters.DEFAULT_CAMERA_ZOOM));
        }
        setEnabled(typedArrayD.getBoolean(0, true));
        typedArrayD.recycle();
        setImportantForAccessibility(1);
    }

    private String getChildrenA11yClassName() {
        return (this.o ? RadioButton.class : ToggleButton.class).getName();
    }

    private int getVisibleButtonCount() {
        int i2 = 0;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            if ((getChildAt(i3) instanceof MaterialButton) && getChildAt(i3).getVisibility() != 8) {
                i2++;
            }
        }
        return i2;
    }

    private void setupButtonChild(MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setA11yClassName(getChildrenA11yClassName());
    }

    @Override // com.google.android.material.button.MaterialButtonGroup, android.view.ViewGroup
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof MaterialButton) {
            super.addView(view, i2, layoutParams);
            MaterialButton materialButton = (MaterialButton) view;
            setupButtonChild(materialButton);
            f(materialButton.getId(), materialButton.m);
            ViewCompat.t(materialButton, new AccessibilityDelegateCompat() { // from class: com.google.android.material.button.MaterialButtonToggleGroup.1
                @Override // androidx.core.view.AccessibilityDelegateCompat
                public final void d(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                    this.f12143b.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat.f12267a);
                    int i3 = MaterialButtonToggleGroup.s;
                    int i4 = -1;
                    if (view2 instanceof MaterialButton) {
                        int i5 = 0;
                        int i6 = 0;
                        while (true) {
                            MaterialButtonToggleGroup materialButtonToggleGroup = MaterialButtonToggleGroup.this;
                            if (i5 >= materialButtonToggleGroup.getChildCount()) {
                                break;
                            }
                            if (materialButtonToggleGroup.getChildAt(i5) == view2) {
                                i4 = i6;
                                break;
                            }
                            if ((materialButtonToggleGroup.getChildAt(i5) instanceof MaterialButton) && materialButtonToggleGroup.getChildAt(i5).getVisibility() != 8) {
                                i6++;
                            }
                            i5++;
                        }
                    }
                    accessibilityNodeInfoCompat.k(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(0, 1, ((MaterialButton) view2).m, i4, 1));
                }
            });
        }
    }

    public final void f(int i2, boolean z) {
        if (i2 == -1) {
            return;
        }
        HashSet hashSet = new HashSet(this.r);
        if (z && !hashSet.contains(Integer.valueOf(i2))) {
            if (this.o && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i2));
        } else {
            if (z || !hashSet.contains(Integer.valueOf(i2))) {
                return;
            }
            if (!this.p || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i2));
            }
        }
        g(hashSet);
    }

    public final void g(Set set) {
        HashSet hashSet = this.r;
        this.r = new HashSet(set);
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            int id = ((MaterialButton) getChildAt(i2)).getId();
            boolean zContains = set.contains(Integer.valueOf(id));
            View viewFindViewById = findViewById(id);
            if (viewFindViewById instanceof MaterialButton) {
                this.n = true;
                ((MaterialButton) viewFindViewById).setChecked(zContains);
                this.n = false;
            }
            if (hashSet.contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                set.contains(Integer.valueOf(id));
                Iterator it = this.m.iterator();
                while (it.hasNext()) {
                    ((OnButtonCheckedListener) it.next()).a();
                }
            }
        }
        invalidate();
    }

    public int getCheckedButtonId() {
        if (!this.o || this.r.isEmpty()) {
            return -1;
        }
        return ((Integer) this.r.iterator().next()).intValue();
    }

    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            int id = ((MaterialButton) getChildAt(i2)).getId();
            if (this.r.contains(Integer.valueOf(id))) {
                arrayList.add(Integer.valueOf(id));
            }
        }
        return arrayList;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i2 = this.q;
        if (i2 != -1) {
            g(Collections.singleton(Integer.valueOf(i2)));
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        new AccessibilityNodeInfoCompat(accessibilityNodeInfo).j(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(1, getVisibleButtonCount(), this.o ? 1 : 2));
    }

    public void setSelectionRequired(boolean z) {
        this.p = z;
    }

    public void setSingleSelection(boolean z) {
        if (this.o != z) {
            this.o = z;
            g(new HashSet());
        }
        String childrenA11yClassName = getChildrenA11yClassName();
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            ((MaterialButton) getChildAt(i2)).setA11yClassName(childrenA11yClassName);
        }
    }

    public void setSingleSelection(int i2) {
        setSingleSelection(getResources().getBoolean(i2));
    }

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialButtonToggleGroupStyle);
    }

    public MaterialButtonToggleGroup(Context context) {
        this(context, null);
    }
}
