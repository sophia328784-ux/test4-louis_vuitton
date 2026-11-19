package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.CheckableGroup;
import com.google.android.material.internal.FlowLayout;
import com.google.android.material.internal.MaterialCheckable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.vuitton.android.R;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class ChipGroup extends FlowLayout {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f32493f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public OnCheckedStateChangeListener f32494h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CheckableGroup f32495i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f32496j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final PassThroughHierarchyChangeListener f32497k;

    /* JADX INFO: renamed from: com.google.android.material.chip.ChipGroup$1, reason: invalid class name */
    public class AnonymousClass1 implements CheckableGroup.OnCheckedStateChangeListener {
        public AnonymousClass1() {
        }

        @Override // com.google.android.material.internal.CheckableGroup.OnCheckedStateChangeListener
        public final void a() {
            ChipGroup chipGroup = ChipGroup.this;
            OnCheckedStateChangeListener onCheckedStateChangeListener = chipGroup.f32494h;
            if (onCheckedStateChangeListener != null) {
                chipGroup.f32495i.c(chipGroup);
                onCheckedStateChangeListener.a(chipGroup);
            }
        }
    }

    @Deprecated
    public interface OnCheckedChangeListener {
        void a();
    }

    public interface OnCheckedStateChangeListener {
        void a(ChipGroup chipGroup);
    }

    public class PassThroughHierarchyChangeListener implements ViewGroup.OnHierarchyChangeListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ViewGroup.OnHierarchyChangeListener f32501b;

        public PassThroughHierarchyChangeListener() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewAdded(View view, View view2) {
            ChipGroup chipGroup = ChipGroup.this;
            if (view == chipGroup && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    view2.setId(View.generateViewId());
                }
                chipGroup.f32495i.a((Chip) view2);
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f32501b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public final void onChildViewRemoved(View view, View view2) {
            ChipGroup chipGroup = ChipGroup.this;
            if (view == chipGroup && (view2 instanceof Chip)) {
                CheckableGroup checkableGroup = chipGroup.f32495i;
                Chip chip = (Chip) view2;
                checkableGroup.getClass();
                chip.setInternalOnCheckedChangeListener(null);
                checkableGroup.f32685a.remove(Integer.valueOf(chip.getId()));
                checkableGroup.f32686b.remove(Integer.valueOf(chip.getId()));
            }
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = this.f32501b;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public ChipGroup(Context context, AttributeSet attributeSet, int i2) {
        super(MaterialThemeOverlay.b(context, attributeSet, i2, R.style.Widget_MaterialComponents_ChipGroup), attributeSet, i2);
        CheckableGroup checkableGroup = new CheckableGroup();
        this.f32495i = checkableGroup;
        PassThroughHierarchyChangeListener passThroughHierarchyChangeListener = new PassThroughHierarchyChangeListener();
        this.f32497k = passThroughHierarchyChangeListener;
        TypedArray typedArrayD = ThemeEnforcement.d(getContext(), attributeSet, R$styleable.f32224i, i2, R.style.Widget_MaterialComponents_ChipGroup, new int[0]);
        int dimensionPixelOffset = typedArrayD.getDimensionPixelOffset(1, 0);
        setChipSpacingHorizontal(typedArrayD.getDimensionPixelOffset(2, dimensionPixelOffset));
        setChipSpacingVertical(typedArrayD.getDimensionPixelOffset(3, dimensionPixelOffset));
        setSingleLine(typedArrayD.getBoolean(5, false));
        setSingleSelection(typedArrayD.getBoolean(6, false));
        setSelectionRequired(typedArrayD.getBoolean(4, false));
        this.f32496j = typedArrayD.getResourceId(0, -1);
        typedArrayD.recycle();
        checkableGroup.f32687c = new AnonymousClass1();
        super.setOnHierarchyChangeListener(passThroughHierarchyChangeListener);
        setImportantForAccessibility(1);
    }

    private int getVisibleChipCount() {
        int i2 = 0;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            if ((getChildAt(i3) instanceof Chip) && getChildAt(i3).getVisibility() == 0) {
                i2++;
            }
        }
        return i2;
    }

    @Override // com.google.android.material.internal.FlowLayout
    public final boolean a() {
        return this.d;
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof LayoutParams);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public int getCheckedChipId() {
        return this.f32495i.d();
    }

    public List<Integer> getCheckedChipIds() {
        return this.f32495i.c(this);
    }

    public int getChipSpacingHorizontal() {
        return this.f32493f;
    }

    public int getChipSpacingVertical() {
        return this.g;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        CheckableGroup.OnCheckedStateChangeListener onCheckedStateChangeListener;
        super.onFinishInflate();
        int i2 = this.f32496j;
        if (i2 != -1) {
            CheckableGroup checkableGroup = this.f32495i;
            MaterialCheckable materialCheckable = (MaterialCheckable) checkableGroup.f32685a.get(Integer.valueOf(i2));
            if (materialCheckable == null || !checkableGroup.b(materialCheckable) || (onCheckedStateChangeListener = checkableGroup.f32687c) == null) {
                return;
            }
            new HashSet(checkableGroup.f32686b);
            ((AnonymousClass1) onCheckedStateChangeListener).a();
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        new AccessibilityNodeInfoCompat(accessibilityNodeInfo).j(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(getRowCount(), this.d ? getVisibleChipCount() : -1, this.f32495i.d ? 1 : 2));
    }

    public void setChipSpacing(int i2) {
        setChipSpacingHorizontal(i2);
        setChipSpacingVertical(i2);
    }

    public void setChipSpacingHorizontal(int i2) {
        if (this.f32493f != i2) {
            this.f32493f = i2;
            setItemSpacing(i2);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(int i2) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i2));
    }

    public void setChipSpacingResource(int i2) {
        setChipSpacing(getResources().getDimensionPixelOffset(i2));
    }

    public void setChipSpacingVertical(int i2) {
        if (this.g != i2) {
            this.g = i2;
            setLineSpacing(i2);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(int i2) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i2));
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i2) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    @Deprecated
    public void setOnCheckedChangeListener(final OnCheckedChangeListener onCheckedChangeListener) {
        if (onCheckedChangeListener == null) {
            setOnCheckedStateChangeListener(null);
        } else {
            setOnCheckedStateChangeListener(new OnCheckedStateChangeListener() { // from class: com.google.android.material.chip.ChipGroup.2
                @Override // com.google.android.material.chip.ChipGroup.OnCheckedStateChangeListener
                public final void a(ChipGroup chipGroup) {
                    ChipGroup chipGroup2 = ChipGroup.this;
                    if (chipGroup2.f32495i.d) {
                        chipGroup2.getCheckedChipId();
                        onCheckedChangeListener.a();
                    }
                }
            });
        }
    }

    public void setOnCheckedStateChangeListener(OnCheckedStateChangeListener onCheckedStateChangeListener) {
        this.f32494h = onCheckedStateChangeListener;
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f32497k.f32501b = onHierarchyChangeListener;
    }

    public void setSelectionRequired(boolean z) {
        this.f32495i.f32688e = z;
    }

    @Deprecated
    public void setShowDividerHorizontal(int i2) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i2) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    public void setSingleLine(int i2) {
        setSingleLine(getResources().getBoolean(i2));
    }

    public void setSingleSelection(boolean z) {
        CheckableGroup.OnCheckedStateChangeListener onCheckedStateChangeListener;
        CheckableGroup checkableGroup = this.f32495i;
        boolean z2 = checkableGroup.d;
        HashSet hashSet = checkableGroup.f32686b;
        if (z2 != z) {
            checkableGroup.d = z;
            boolean zIsEmpty = hashSet.isEmpty();
            Iterator it = checkableGroup.f32685a.values().iterator();
            while (it.hasNext()) {
                checkableGroup.e((MaterialCheckable) it.next(), false);
            }
            if (zIsEmpty || (onCheckedStateChangeListener = checkableGroup.f32687c) == null) {
                return;
            }
            new HashSet(hashSet);
            ((AnonymousClass1) onCheckedStateChangeListener).a();
        }
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // com.google.android.material.internal.FlowLayout
    public void setSingleLine(boolean z) {
        super.setSingleLine(z);
    }

    public void setSingleSelection(int i2) {
        setSingleSelection(getResources().getBoolean(i2));
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.chipGroupStyle);
    }

    public ChipGroup(Context context) {
        this(context, null);
    }
}
