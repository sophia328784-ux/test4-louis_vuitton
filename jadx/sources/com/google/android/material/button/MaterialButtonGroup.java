package com.google.android.material.button;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.StateListCornerSize;
import com.google.android.material.shape.StateListShapeAppearanceModel;
import com.google.android.material.shape.StateListSizeChange;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.vuitton.android.R;
import defpackage.xm;
import java.io.IOException;
import java.util.ArrayList;
import java.util.TreeMap;
import net.rtccloud.sdk.Call;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialButtonGroup extends LinearLayout {
    public static final /* synthetic */ int l = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f32403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f32404c;
    public final PressedStateTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final xm f32405e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Integer[] f32406f;
    public StateListCornerSize g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public StateListShapeAppearanceModel f32407h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f32408i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public StateListSizeChange f32409j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f32410k;

    public class PressedStateTracker implements MaterialButton.OnPressedChangeListener {
        public PressedStateTracker() {
        }

        @Override // com.google.android.material.button.MaterialButton.OnPressedChangeListener
        public final void a() {
            MaterialButtonGroup.this.invalidate();
        }
    }

    public MaterialButtonGroup(Context context, AttributeSet attributeSet, int i2) {
        StateListCornerSize stateListCornerSizeB;
        int next;
        StateListSizeChange stateListSizeChange;
        int next2;
        super(MaterialThemeOverlay.b(context, attributeSet, i2, R.style.Widget_Material3_MaterialButtonGroup), attributeSet, i2);
        this.f32403b = new ArrayList();
        this.f32404c = new ArrayList();
        this.d = new PressedStateTracker();
        this.f32405e = new xm(this, 1);
        this.f32410k = true;
        Context context2 = getContext();
        TypedArray typedArrayD = ThemeEnforcement.d(context2, attributeSet, R$styleable.x, i2, R.style.Widget_Material3_MaterialButtonGroup, new int[0]);
        if (typedArrayD.hasValue(2)) {
            int resourceId = typedArrayD.getResourceId(2, 0);
            if (resourceId != 0 && context2.getResources().getResourceTypeName(resourceId).equals("xml")) {
                try {
                    XmlResourceParser xml = context2.getResources().getXml(resourceId);
                    try {
                        stateListSizeChange = new StateListSizeChange();
                        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                        do {
                            next2 = xml.next();
                            if (next2 == 2) {
                                break;
                            }
                        } while (next2 != 1);
                        if (next2 != 2) {
                            throw new XmlPullParserException("No start tag found");
                        }
                        if (xml.getName().equals("selector")) {
                            stateListSizeChange.a(context2, xml, attributeSetAsAttributeSet, context2.getTheme());
                        }
                        xml.close();
                    } catch (Throwable th) {
                        if (xml == null) {
                            throw th;
                        }
                        try {
                            xml.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                } catch (Resources.NotFoundException | IOException | XmlPullParserException unused) {
                    stateListSizeChange = null;
                }
            } else {
                stateListSizeChange = null;
            }
            this.f32409j = stateListSizeChange;
        }
        if (typedArrayD.hasValue(4)) {
            StateListShapeAppearanceModel stateListShapeAppearanceModelB = StateListShapeAppearanceModel.b(context2, typedArrayD, 4);
            this.f32407h = stateListShapeAppearanceModelB;
            if (stateListShapeAppearanceModelB == null) {
                StateListShapeAppearanceModel.Builder builder = new StateListShapeAppearanceModel.Builder(ShapeAppearanceModel.a(context2, typedArrayD.getResourceId(4, 0), typedArrayD.getResourceId(5, 0)).a());
                this.f32407h = builder.f33016a != 0 ? new StateListShapeAppearanceModel(builder) : null;
            }
        }
        if (typedArrayD.hasValue(3)) {
            AbsoluteCornerSize absoluteCornerSize = new AbsoluteCornerSize(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            int resourceId2 = typedArrayD.getResourceId(3, 0);
            if (resourceId2 != 0 && context2.getResources().getResourceTypeName(resourceId2).equals("xml")) {
                try {
                    XmlResourceParser xml2 = context2.getResources().getXml(resourceId2);
                    try {
                        StateListCornerSize stateListCornerSize = new StateListCornerSize();
                        AttributeSet attributeSetAsAttributeSet2 = Xml.asAttributeSet(xml2);
                        do {
                            next = xml2.next();
                            if (next == 2) {
                                break;
                            }
                        } while (next != 1);
                        if (next != 2) {
                            throw new XmlPullParserException("No start tag found");
                        }
                        if (xml2.getName().equals("selector")) {
                            stateListCornerSize.d(context2, xml2, attributeSetAsAttributeSet2, context2.getTheme());
                        }
                        xml2.close();
                        stateListCornerSizeB = stateListCornerSize;
                    } catch (Throwable th3) {
                        if (xml2 == null) {
                            throw th3;
                        }
                        try {
                            xml2.close();
                            throw th3;
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                            throw th3;
                        }
                    }
                } catch (Resources.NotFoundException | IOException | XmlPullParserException unused2) {
                    stateListCornerSizeB = StateListCornerSize.b(absoluteCornerSize);
                }
            } else {
                stateListCornerSizeB = StateListCornerSize.b(ShapeAppearanceModel.e(typedArrayD, 3, absoluteCornerSize));
            }
            this.g = stateListCornerSizeB;
        }
        this.f32408i = typedArrayD.getDimensionPixelSize(1, 0);
        setChildrenDrawingOrderEnabled(true);
        setEnabled(typedArrayD.getBoolean(0, true));
        typedArrayD.recycle();
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            if (c(i2)) {
                return i2;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (c(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(View.generateViewId());
        }
    }

    public final void a() {
        int iMin;
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i2 = firstVisibleChildIndex + 1; i2 < getChildCount(); i2++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i2);
            MaterialButton materialButton2 = (MaterialButton) getChildAt(i2 - 1);
            if (this.f32408i <= 0) {
                iMin = Math.min(materialButton.getStrokeWidth(), materialButton2.getStrokeWidth());
                materialButton.setShouldDrawSurfaceColorStroke(true);
                materialButton2.setShouldDrawSurfaceColorStroke(true);
            } else {
                materialButton.setShouldDrawSurfaceColorStroke(false);
                materialButton2.setShouldDrawSurfaceColorStroke(false);
                iMin = 0;
            }
            ViewGroup.LayoutParams layoutParams = materialButton.getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
            if (getOrientation() == 0) {
                layoutParams2.setMarginEnd(0);
                layoutParams2.setMarginStart(this.f32408i - iMin);
                layoutParams2.topMargin = 0;
            } else {
                layoutParams2.bottomMargin = 0;
                layoutParams2.topMargin = this.f32408i - iMin;
                layoutParams2.setMarginStart(0);
            }
            materialButton.setLayoutParams(layoutParams2);
        }
        if (getChildCount() == 0 || firstVisibleChildIndex == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) ((MaterialButton) getChildAt(firstVisibleChildIndex)).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams3.topMargin = 0;
            layoutParams3.bottomMargin = 0;
        } else {
            layoutParams3.setMarginEnd(0);
            layoutParams3.setMarginStart(0);
            layoutParams3.leftMargin = 0;
            layoutParams3.rightMargin = 0;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof MaterialButton) {
            d();
            this.f32410k = true;
            super.addView(view, i2, layoutParams);
            MaterialButton materialButton = (MaterialButton) view;
            setGeneratedIdIfNeeded(materialButton);
            materialButton.setOnPressedChangeListenerInternal(this.d);
            this.f32403b.add(materialButton.getShapeAppearanceModel());
            this.f32404c.add(materialButton.getStateListShapeAppearanceModel());
            materialButton.setEnabled(isEnabled());
        }
    }

    public final void b() {
        MaterialButton materialButton;
        MaterialButton materialButton2;
        float fMax;
        if (this.f32409j == null || getChildCount() == 0) {
            return;
        }
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        int iMin = Integer.MAX_VALUE;
        for (int i2 = firstVisibleChildIndex; i2 <= lastVisibleChildIndex; i2++) {
            if (c(i2)) {
                int iMin2 = 0;
                if (c(i2) && this.f32409j != null) {
                    MaterialButton materialButton3 = (MaterialButton) getChildAt(i2);
                    StateListSizeChange stateListSizeChange = this.f32409j;
                    int width = materialButton3.getWidth();
                    int i3 = -width;
                    for (int i4 = 0; i4 < stateListSizeChange.f33022a; i4++) {
                        StateListSizeChange.SizeChangeAmount sizeChangeAmount = stateListSizeChange.d[i4].f33025a;
                        StateListSizeChange.SizeChangeType sizeChangeType = sizeChangeAmount.f33026a;
                        float f2 = sizeChangeAmount.f33027b;
                        if (sizeChangeType == StateListSizeChange.SizeChangeType.PIXELS) {
                            fMax = Math.max(i3, f2);
                        } else {
                            if (sizeChangeType == StateListSizeChange.SizeChangeType.PERCENT) {
                                fMax = Math.max(i3, width * f2);
                            }
                        }
                        i3 = (int) fMax;
                    }
                    int iMax = Math.max(0, i3);
                    int i5 = i2 - 1;
                    while (true) {
                        materialButton = null;
                        if (i5 < 0) {
                            materialButton2 = null;
                            break;
                        } else {
                            if (c(i5)) {
                                materialButton2 = (MaterialButton) getChildAt(i5);
                                break;
                            }
                            i5--;
                        }
                    }
                    int allowedWidthDecrease = materialButton2 == null ? 0 : materialButton2.getAllowedWidthDecrease();
                    int childCount = getChildCount();
                    for (int i6 = i2 + 1; i6 < childCount; i6++) {
                        if (c(i6)) {
                            materialButton = (MaterialButton) getChildAt(i6);
                            break;
                        }
                    }
                    iMin2 = Math.min(iMax, allowedWidthDecrease + (materialButton != null ? materialButton.getAllowedWidthDecrease() : 0));
                }
                if (i2 != firstVisibleChildIndex && i2 != lastVisibleChildIndex) {
                    iMin2 /= 2;
                }
                iMin = Math.min(iMin, iMin2);
            }
        }
        int i7 = firstVisibleChildIndex;
        while (i7 <= lastVisibleChildIndex) {
            if (c(i7)) {
                ((MaterialButton) getChildAt(i7)).setSizeChange(this.f32409j);
                ((MaterialButton) getChildAt(i7)).setWidthChangeMax((i7 == firstVisibleChildIndex || i7 == lastVisibleChildIndex) ? iMin : iMin * 2);
            }
            i7++;
        }
    }

    public final boolean c(int i2) {
        return getChildAt(i2).getVisibility() != 8;
    }

    public final void d() {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i2);
            LinearLayout.LayoutParams layoutParams = materialButton.t;
            if (layoutParams != null) {
                materialButton.setLayoutParams(layoutParams);
                materialButton.t = null;
                materialButton.q = -1.0f;
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.f32405e);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            treeMap.put((MaterialButton) getChildAt(i2), Integer.valueOf(i2));
        }
        this.f32406f = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    public final void e() {
        int i2;
        if (!(this.g == null && this.f32407h == null) && this.f32410k) {
            this.f32410k = false;
            int childCount = getChildCount();
            int firstVisibleChildIndex = getFirstVisibleChildIndex();
            int lastVisibleChildIndex = getLastVisibleChildIndex();
            int i3 = 0;
            while (i3 < childCount) {
                MaterialButton materialButton = (MaterialButton) getChildAt(i3);
                if (materialButton.getVisibility() != 8) {
                    boolean z = i3 == firstVisibleChildIndex;
                    boolean z2 = i3 == lastVisibleChildIndex;
                    StateListShapeAppearanceModel stateListShapeAppearanceModel = this.f32407h;
                    if (stateListShapeAppearanceModel == null || (!z && !z2)) {
                        stateListShapeAppearanceModel = (StateListShapeAppearanceModel) this.f32404c.get(i3);
                    }
                    StateListShapeAppearanceModel.Builder builder = stateListShapeAppearanceModel == null ? new StateListShapeAppearanceModel.Builder((ShapeAppearanceModel) this.f32403b.get(i3)) : new StateListShapeAppearanceModel.Builder(stateListShapeAppearanceModel);
                    boolean z3 = getOrientation() == 0;
                    boolean z4 = getLayoutDirection() == 1;
                    if (z3) {
                        i2 = z ? 5 : 0;
                        if (z2) {
                            i2 |= 10;
                        }
                        if (z4) {
                            i2 = ((i2 & 5) << 1) | ((i2 & 10) >> 1);
                        }
                    } else {
                        i2 = z ? 3 : 0;
                        if (z2) {
                            i2 |= 12;
                        }
                    }
                    int i4 = ~i2;
                    StateListCornerSize stateListCornerSize = this.g;
                    if ((i4 | 1) == i4) {
                        builder.f33019e = stateListCornerSize;
                    }
                    if ((i4 | 2) == i4) {
                        builder.f33020f = stateListCornerSize;
                    }
                    if ((i4 | 4) == i4) {
                        builder.g = stateListCornerSize;
                    }
                    if ((i4 | 8) == i4) {
                        builder.f33021h = stateListCornerSize;
                    }
                    StateListShapeAppearanceModel stateListShapeAppearanceModel2 = builder.f33016a == 0 ? null : new StateListShapeAppearanceModel(builder);
                    if (stateListShapeAppearanceModel2.d()) {
                        materialButton.setStateListShapeAppearanceModel(stateListShapeAppearanceModel2);
                    } else {
                        materialButton.setShapeAppearanceModel(stateListShapeAppearanceModel2.c());
                    }
                }
                i3++;
            }
        }
    }

    public StateListSizeChange getButtonSizeChange() {
        return this.f32409j;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i2, int i3) {
        Integer[] numArr = this.f32406f;
        return (numArr == null || i3 >= numArr.length) ? i3 : numArr[i3].intValue();
    }

    public CornerSize getInnerCornerSize() {
        return this.g.f33008b;
    }

    public StateListCornerSize getInnerCornerSizeStateList() {
        return this.g;
    }

    public ShapeAppearanceModel getShapeAppearance() {
        StateListShapeAppearanceModel stateListShapeAppearanceModel = this.f32407h;
        if (stateListShapeAppearanceModel == null) {
            return null;
        }
        return stateListShapeAppearanceModel.c();
    }

    public int getSpacing() {
        return this.f32408i;
    }

    public StateListShapeAppearanceModel getStateListShapeAppearance() {
        return this.f32407h;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (z) {
            d();
            b();
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        e();
        a();
        super.onMeasure(i2, i3);
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.f32403b.remove(iIndexOfChild);
            this.f32404c.remove(iIndexOfChild);
        }
        this.f32410k = true;
        e();
        d();
        a();
    }

    public void setButtonSizeChange(StateListSizeChange stateListSizeChange) {
        if (this.f32409j != stateListSizeChange) {
            this.f32409j = stateListSizeChange;
            b();
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            ((MaterialButton) getChildAt(i2)).setEnabled(z);
        }
    }

    public void setInnerCornerSize(CornerSize cornerSize) {
        this.g = StateListCornerSize.b(cornerSize);
        this.f32410k = true;
        e();
        invalidate();
    }

    public void setInnerCornerSizeStateList(StateListCornerSize stateListCornerSize) {
        this.g = stateListCornerSize;
        this.f32410k = true;
        e();
        invalidate();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i2) {
        if (getOrientation() != i2) {
            this.f32410k = true;
        }
        super.setOrientation(i2);
    }

    public void setShapeAppearance(ShapeAppearanceModel shapeAppearanceModel) {
        StateListShapeAppearanceModel.Builder builder = new StateListShapeAppearanceModel.Builder(shapeAppearanceModel);
        this.f32407h = builder.f33016a == 0 ? null : new StateListShapeAppearanceModel(builder);
        this.f32410k = true;
        e();
        invalidate();
    }

    public void setSpacing(int i2) {
        this.f32408i = i2;
        invalidate();
        requestLayout();
    }

    public void setStateListShapeAppearance(StateListShapeAppearanceModel stateListShapeAppearanceModel) {
        this.f32407h = stateListShapeAppearanceModel;
        this.f32410k = true;
        e();
        invalidate();
    }

    public MaterialButtonGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialButtonGroupStyle);
    }

    public MaterialButtonGroup(Context context) {
        this(context, null);
    }
}
