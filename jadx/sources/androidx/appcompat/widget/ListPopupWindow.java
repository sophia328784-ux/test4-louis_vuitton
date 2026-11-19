package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.ShowableListMenu;
import com.dynatrace.android.callback.Callback;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes.dex */
public class ListPopupWindow implements ShowableListMenu {
    public final PopupWindow A;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f1242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ListAdapter f1243c;
    public DropDownListView d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1244e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1245f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f1246h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f1247i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1248j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f1249k;
    public boolean l;
    public int m;
    public final int n;
    public DataSetObserver o;
    public View p;
    public AdapterView.OnItemClickListener q;
    public AdapterView.OnItemSelectedListener r;
    public final ResizePopupRunnable s;
    public final PopupTouchInterceptor t;
    public final PopupScrollListener u;
    public final ListSelectorHider v;
    public final Handler w;
    public final Rect x;
    public Rect y;
    public boolean z;

    public static class Api24Impl {
        public static int a(PopupWindow popupWindow, View view, int i2, boolean z) {
            return popupWindow.getMaxAvailableHeight(view, i2, z);
        }
    }

    public static class Api29Impl {
        public static void a(PopupWindow popupWindow, Rect rect) {
            popupWindow.setEpicenterBounds(rect);
        }

        public static void b(PopupWindow popupWindow, boolean z) {
            popupWindow.setIsClippedToScreen(z);
        }
    }

    public class ListSelectorHider implements Runnable {
        public ListSelectorHider() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DropDownListView dropDownListView = ListPopupWindow.this.d;
            if (dropDownListView != null) {
                dropDownListView.setListSelectionHidden(true);
                dropDownListView.requestLayout();
            }
        }
    }

    public class PopupDataSetObserver extends DataSetObserver {
        public PopupDataSetObserver() {
        }

        @Override // android.database.DataSetObserver
        public final void onChanged() {
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (listPopupWindow.A.isShowing()) {
                listPopupWindow.a();
            }
        }

        @Override // android.database.DataSetObserver
        public final void onInvalidated() {
            ListPopupWindow.this.dismiss();
        }
    }

    public class PopupScrollListener implements AbsListView.OnScrollListener {
        public PopupScrollListener() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i2, int i3, int i4) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i2) {
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            ResizePopupRunnable resizePopupRunnable = listPopupWindow.s;
            PopupWindow popupWindow = listPopupWindow.A;
            if (i2 != 1 || popupWindow.getInputMethodMode() == 2 || popupWindow.getContentView() == null) {
                return;
            }
            listPopupWindow.w.removeCallbacks(resizePopupRunnable);
            resizePopupRunnable.run();
        }
    }

    public class PopupTouchInterceptor implements View.OnTouchListener {
        public PopupTouchInterceptor() {
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            ResizePopupRunnable resizePopupRunnable = listPopupWindow.s;
            Handler handler = listPopupWindow.w;
            PopupWindow popupWindow = listPopupWindow.A;
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && popupWindow != null && popupWindow.isShowing() && x >= 0 && x < popupWindow.getWidth() && y >= 0 && y < popupWindow.getHeight()) {
                handler.postDelayed(resizePopupRunnable, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            handler.removeCallbacks(resizePopupRunnable);
            return false;
        }
    }

    public class ResizePopupRunnable implements Runnable {
        public ResizePopupRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DropDownListView dropDownListView = ListPopupWindow.this.d;
            if (dropDownListView == null || !dropDownListView.isAttachedToWindow() || ListPopupWindow.this.d.getCount() <= ListPopupWindow.this.d.getChildCount()) {
                return;
            }
            int childCount = ListPopupWindow.this.d.getChildCount();
            ListPopupWindow listPopupWindow = ListPopupWindow.this;
            if (childCount <= listPopupWindow.n) {
                listPopupWindow.A.setInputMethodMode(2);
                ListPopupWindow.this.a();
            }
        }
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i2, int i3) {
        this.f1244e = -2;
        this.f1245f = -2;
        this.f1247i = 1002;
        this.m = 0;
        this.n = Integer.MAX_VALUE;
        this.s = new ResizePopupRunnable();
        this.t = new PopupTouchInterceptor();
        this.u = new PopupScrollListener();
        this.v = new ListSelectorHider();
        this.x = new Rect();
        this.f1242b = context;
        this.w = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.p, i2, i3);
        this.g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.f1246h = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f1248j = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        AppCompatPopupWindow appCompatPopupWindow = new AppCompatPopupWindow(context, attributeSet, i2, i3);
        this.A = appCompatPopupWindow;
        appCompatPopupWindow.setInputMethodMode(1);
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void a() {
        int i2;
        int iMakeMeasureSpec;
        int paddingBottom;
        DropDownListView dropDownListView;
        DropDownListView dropDownListView2 = this.d;
        Context context = this.f1242b;
        PopupWindow popupWindow = this.A;
        if (dropDownListView2 == null) {
            new Runnable() { // from class: androidx.appcompat.widget.ListPopupWindow.2
                @Override // java.lang.Runnable
                public void run() {
                    View view = ListPopupWindow.this.p;
                    if (view == null || view.getWindowToken() == null) {
                        return;
                    }
                    ListPopupWindow.this.a();
                }
            };
            DropDownListView dropDownListViewE = e(context, !this.z);
            this.d = dropDownListViewE;
            dropDownListViewE.setAdapter(this.f1243c);
            this.d.setOnItemClickListener(this.q);
            this.d.setFocusable(true);
            this.d.setFocusableInTouchMode(true);
            this.d.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: androidx.appcompat.widget.ListPopupWindow.3
                @Override // android.widget.AdapterView.OnItemSelectedListener
                public final void onItemSelected(AdapterView adapterView, View view, int i3, long j2) {
                    Callback.s(view);
                    if (i3 != -1) {
                        try {
                            DropDownListView dropDownListView3 = ListPopupWindow.this.d;
                            if (dropDownListView3 != null) {
                                dropDownListView3.setListSelectionHidden(false);
                            }
                        } finally {
                            Callback.t();
                        }
                    }
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public final void onNothingSelected(AdapterView adapterView) {
                }
            });
            this.d.setOnScrollListener(this.u);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.r;
            if (onItemSelectedListener != null) {
                this.d.setOnItemSelectedListener(onItemSelectedListener);
            }
            popupWindow.setContentView(this.d);
        }
        Drawable background = popupWindow.getBackground();
        Rect rect = this.x;
        if (background != null) {
            background.getPadding(rect);
            int i3 = rect.top;
            i2 = rect.bottom + i3;
            if (!this.f1248j) {
                this.f1246h = -i3;
            }
        } else {
            rect.setEmpty();
            i2 = 0;
        }
        int iA = Api24Impl.a(popupWindow, this.p, this.f1246h, popupWindow.getInputMethodMode() == 2);
        int i4 = this.f1244e;
        if (i4 == -1) {
            paddingBottom = iA + i2;
        } else {
            int i5 = this.f1245f;
            if (i5 != -2) {
                iMakeMeasureSpec = i5 != -1 ? View.MeasureSpec.makeMeasureSpec(i5, 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824);
            } else {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE);
            }
            int iA2 = this.d.a(iMakeMeasureSpec, iA);
            paddingBottom = iA2 + (iA2 > 0 ? this.d.getPaddingBottom() + this.d.getPaddingTop() + i2 : 0);
        }
        boolean z = popupWindow.getInputMethodMode() == 2;
        popupWindow.setWindowLayoutType(this.f1247i);
        if (popupWindow.isShowing()) {
            if (this.p.isAttachedToWindow()) {
                int width = this.f1245f;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = this.p.getWidth();
                }
                if (i4 == -1) {
                    i4 = z ? paddingBottom : -1;
                    int i6 = this.f1245f;
                    if (z) {
                        popupWindow.setWidth(i6 == -1 ? -1 : 0);
                        popupWindow.setHeight(0);
                    } else {
                        popupWindow.setWidth(i6 == -1 ? -1 : 0);
                        popupWindow.setHeight(-1);
                    }
                } else if (i4 == -2) {
                    i4 = paddingBottom;
                }
                popupWindow.setOutsideTouchable(true);
                int i7 = width;
                View view = this.p;
                int i8 = this.g;
                int i9 = this.f1246h;
                int i10 = i7 < 0 ? -1 : i7;
                if (i4 < 0) {
                    i4 = -1;
                }
                popupWindow.update(view, i8, i9, i10, i4);
                return;
            }
            return;
        }
        int width2 = this.f1245f;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = this.p.getWidth();
        }
        if (i4 == -1) {
            i4 = -1;
        } else if (i4 == -2) {
            i4 = paddingBottom;
        }
        popupWindow.setWidth(width2);
        popupWindow.setHeight(i4);
        Api29Impl.b(popupWindow, true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setTouchInterceptor(this.t);
        if (this.l) {
            popupWindow.setOverlapAnchor(this.f1249k);
        }
        Api29Impl.a(popupWindow, this.y);
        popupWindow.showAsDropDown(this.p, this.g, this.f1246h, this.m);
        this.d.setSelection(-1);
        if ((!this.z || this.d.isInTouchMode()) && (dropDownListView = this.d) != null) {
            dropDownListView.setListSelectionHidden(true);
            dropDownListView.requestLayout();
        }
        if (this.z) {
            return;
        }
        this.w.post(this.v);
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final boolean b() {
        return this.A.isShowing();
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final void dismiss() {
        PopupWindow popupWindow = this.A;
        popupWindow.dismiss();
        popupWindow.setContentView(null);
        this.d = null;
        this.w.removeCallbacks(this.s);
    }

    public DropDownListView e(Context context, boolean z) {
        return new DropDownListView(context, z);
    }

    public final void f(int i2) {
        Drawable background = this.A.getBackground();
        if (background == null) {
            this.f1245f = i2;
            return;
        }
        Rect rect = this.x;
        background.getPadding(rect);
        this.f1245f = rect.left + rect.right + i2;
    }

    public final void g(Drawable drawable) {
        this.A.setBackgroundDrawable(drawable);
    }

    public final int h() {
        return this.g;
    }

    public final void i(int i2) {
        this.g = i2;
    }

    public final Drawable k() {
        return this.A.getBackground();
    }

    public final void m(int i2) {
        this.f1246h = i2;
        this.f1248j = true;
    }

    public final int p() {
        if (this.f1248j) {
            return this.f1246h;
        }
        return 0;
    }

    public void q(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.o;
        if (dataSetObserver == null) {
            this.o = new PopupDataSetObserver();
        } else {
            ListAdapter listAdapter2 = this.f1243c;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f1243c = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.o);
        }
        DropDownListView dropDownListView = this.d;
        if (dropDownListView != null) {
            dropDownListView.setAdapter(this.f1243c);
        }
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public final ListView r() {
        return this.d;
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, 0);
    }

    public ListPopupWindow(Context context) {
        this(context, null, R.attr.listPopupWindowStyle);
    }
}
