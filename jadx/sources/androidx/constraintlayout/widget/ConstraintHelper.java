package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.constraintlayout.core.widgets.HelperWidget;
import com.batch.android.s.b;
import java.util.Arrays;
import java.util.HashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public abstract class ConstraintHelper extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f11717b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f11718c;
    public final Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public HelperWidget f11719e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f11720f;
    public String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public View[] f11721h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final HashMap f11722i;

    public ConstraintHelper(Context context) {
        super(context);
        this.f11717b = new int[32];
        this.f11721h = null;
        this.f11722i = new HashMap();
        this.d = context;
        h(null);
    }

    public final void a(String str) {
        String strTrim;
        int iG;
        if (str.length() == 0 || this.d == null || (iG = g((strTrim = str.trim()))) == 0) {
            return;
        }
        this.f11722i.put(Integer.valueOf(iG), strTrim);
        b(iG);
    }

    public final void b(int i2) {
        if (i2 == getId()) {
            return;
        }
        int i3 = this.f11718c + 1;
        int[] iArr = this.f11717b;
        if (i3 > iArr.length) {
            this.f11717b = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.f11717b;
        int i4 = this.f11718c;
        iArr2[i4] = i2;
        this.f11718c = i4 + 1;
    }

    public final void c(String str) {
        if (str.length() == 0 || this.d == null) {
            return;
        }
        String strTrim = str.trim();
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (constraintLayout == null) {
            return;
        }
        int childCount = constraintLayout.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = constraintLayout.getChildAt(i2);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if ((layoutParams instanceof ConstraintLayout.LayoutParams) && strTrim.equals(((ConstraintLayout.LayoutParams) layoutParams).Y) && childAt.getId() != -1) {
                b(childAt.getId());
            }
        }
    }

    public final void d(ConstraintLayout constraintLayout) {
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i2 = 0; i2 < this.f11718c; i2++) {
            View viewC = constraintLayout.c(this.f11717b[i2]);
            if (viewC != null) {
                viewC.setVisibility(visibility);
                if (elevation > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    viewC.setTranslationZ(viewC.getTranslationZ() + elevation);
                }
            }
        }
    }

    public void e(ConstraintLayout constraintLayout) {
    }

    public final int f(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        String resourceEntryName;
        if (str != null && (resources = this.d.getResources()) != null) {
            int childCount = constraintLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = constraintLayout.getChildAt(i2);
                if (childAt.getId() != -1) {
                    try {
                        resourceEntryName = resources.getResourceEntryName(childAt.getId());
                    } catch (Resources.NotFoundException unused) {
                        resourceEntryName = null;
                    }
                    if (str.equals(resourceEntryName)) {
                        return childAt.getId();
                    }
                }
            }
        }
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0038  */
    public final int g(String str) {
        int iF;
        HashMap map;
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (!isInEditMode() || constraintLayout == null) {
            iF = 0;
        } else {
            Object obj = (str == null || (map = constraintLayout.n) == null || !map.containsKey(str)) ? null : constraintLayout.n.get(str);
            if (obj instanceof Integer) {
                iF = ((Integer) obj).intValue();
            } else {
                iF = 0;
            }
        }
        if (iF == 0 && constraintLayout != null) {
            iF = f(constraintLayout, str);
        }
        if (iF == 0) {
            try {
                iF = R$id.class.getField(str).getInt(null);
            } catch (Exception unused) {
            }
        }
        if (iF != 0) {
            return iF;
        }
        Context context = this.d;
        return context.getResources().getIdentifier(str, b.a.f24015b, context.getPackageName());
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.f11717b, this.f11718c);
    }

    public void h(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.f11819b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i2);
                if (index == 35) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f11720f = string;
                    setIds(string);
                } else if (index == 36) {
                    String string2 = typedArrayObtainStyledAttributes.getString(index);
                    this.g = string2;
                    setReferenceTags(string2);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void i(ConstraintSet.Constraint constraint, HelperWidget helperWidget, Constraints.LayoutParams layoutParams, SparseArray sparseArray) {
        ConstraintSet.Layout layout = constraint.f11771e;
        int[] iArr = layout.j0;
        int i2 = 0;
        if (iArr != null) {
            setReferencedIds(iArr);
        } else {
            String str = layout.k0;
            if (str != null) {
                if (str.length() > 0) {
                    String[] strArrSplit = layout.k0.split(",");
                    int[] iArrCopyOf = new int[strArrSplit.length];
                    int i3 = 0;
                    for (String str2 : strArrSplit) {
                        int iG = g(str2.trim());
                        if (iG != 0) {
                            iArrCopyOf[i3] = iG;
                            i3++;
                        }
                    }
                    if (i3 != strArrSplit.length) {
                        iArrCopyOf = Arrays.copyOf(iArrCopyOf, i3);
                    }
                    layout.j0 = iArrCopyOf;
                } else {
                    layout.j0 = null;
                }
            }
        }
        helperWidget.b();
        if (layout.j0 == null) {
            return;
        }
        while (true) {
            int[] iArr2 = layout.j0;
            if (i2 >= iArr2.length) {
                return;
            }
            ConstraintWidget constraintWidget = (ConstraintWidget) sparseArray.get(iArr2[i2]);
            if (constraintWidget != null) {
                helperWidget.a(constraintWidget);
            }
            i2++;
        }
    }

    public void j(ConstraintWidget constraintWidget, boolean z) {
    }

    public final void k() {
        if (this.f11719e == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            ((ConstraintLayout.LayoutParams) layoutParams).q0 = this.f11719e;
        }
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f11720f;
        if (str != null) {
            setIds(str);
        }
        String str2 = this.g;
        if (str2 != null) {
            setReferenceTags(str2);
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        setMeasuredDimension(0, 0);
    }

    public void setIds(String str) {
        this.f11720f = str;
        if (str == null) {
            return;
        }
        int i2 = 0;
        this.f11718c = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i2);
            if (iIndexOf == -1) {
                a(str.substring(i2));
                return;
            } else {
                a(str.substring(i2, iIndexOf));
                i2 = iIndexOf + 1;
            }
        }
    }

    public void setReferenceTags(String str) {
        this.g = str;
        if (str == null) {
            return;
        }
        int i2 = 0;
        this.f11718c = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i2);
            if (iIndexOf == -1) {
                c(str.substring(i2));
                return;
            } else {
                c(str.substring(i2, iIndexOf));
                i2 = iIndexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f11720f = null;
        this.f11718c = 0;
        for (int i2 : iArr) {
            b(i2);
        }
    }

    @Override // android.view.View
    public final void setTag(int i2, Object obj) {
        super.setTag(i2, obj);
        if (obj == null && this.f11720f == null) {
            b(i2);
        }
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f11717b = new int[32];
        this.f11721h = null;
        this.f11722i = new HashMap();
        this.d = context;
        h(attributeSet);
    }

    public ConstraintHelper(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f11717b = new int[32];
        this.f11721h = null;
        this.f11722i = new HashMap();
        this.d = context;
        h(attributeSet);
    }
}
