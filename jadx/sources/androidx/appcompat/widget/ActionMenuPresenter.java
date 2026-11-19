package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.view.ActionBarPolicy;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.BaseMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPopup;
import androidx.appcompat.view.menu.MenuPopupHelper;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.core.view.ActionProvider;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.vuitton.android.R;
import defpackage.md;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
class ActionMenuPresenter extends BaseMenuPresenter implements ActionProvider.SubUiVisibilityListener {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public OverflowMenuButton f1084j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Drawable f1085k;
    public boolean l;
    public boolean m;
    public boolean n;
    public int o;
    public int p;
    public int q;
    public boolean r;
    public final SparseBooleanArray s;
    public OverflowPopup t;
    public ActionButtonSubmenu u;
    public OpenOverflowRunnable v;
    public ActionMenuPopupCallback w;
    public final PopupPresenterCallback x;

    public class ActionButtonSubmenu extends MenuPopupHelper {
        public ActionButtonSubmenu(Context context, SubMenuBuilder subMenuBuilder, View view) {
            super(context, subMenuBuilder, view, false, R.attr.actionOverflowMenuStyle);
            if ((subMenuBuilder.A.x & 32) != 32) {
                View view2 = ActionMenuPresenter.this.f1084j;
                this.f1038f = view2 == null ? (View) ActionMenuPresenter.this.f965i : view2;
            }
            PopupPresenterCallback popupPresenterCallback = ActionMenuPresenter.this.x;
            this.f1040i = popupPresenterCallback;
            MenuPopup menuPopup = this.f1041j;
            if (menuPopup != null) {
                menuPopup.d(popupPresenterCallback);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        public final void c() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            actionMenuPresenter.u = null;
            actionMenuPresenter.getClass();
            super.c();
        }
    }

    public class ActionMenuPopupCallback extends ActionMenuItemView.PopupCallback {
        public ActionMenuPopupCallback() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.PopupCallback
        public final ShowableListMenu a() {
            ActionButtonSubmenu actionButtonSubmenu = ActionMenuPresenter.this.u;
            if (actionButtonSubmenu != null) {
                return actionButtonSubmenu.a();
            }
            return null;
        }
    }

    public class OpenOverflowRunnable implements Runnable {
        private OverflowPopup mPopup;

        public OpenOverflowRunnable(OverflowPopup overflowPopup) {
            this.mPopup = overflowPopup;
        }

        @Override // java.lang.Runnable
        public void run() {
            MenuBuilder.Callback callback;
            MenuBuilder menuBuilder = ActionMenuPresenter.this.d;
            if (menuBuilder != null && (callback = menuBuilder.f1007e) != null) {
                callback.b(menuBuilder);
            }
            View view = (View) ActionMenuPresenter.this.f965i;
            if (view != null && view.getWindowToken() != null) {
                OverflowPopup overflowPopup = this.mPopup;
                if (overflowPopup.b()) {
                    ActionMenuPresenter.this.t = this.mPopup;
                } else if (overflowPopup.f1038f != null) {
                    overflowPopup.e(0, 0, false, false);
                    ActionMenuPresenter.this.t = this.mPopup;
                }
            }
            ActionMenuPresenter.this.v = null;
        }
    }

    public class OverflowMenuButton extends AppCompatImageView implements ActionMenuView.ActionMenuChildView {
        public OverflowMenuButton(Context context) {
            super(context, null, R.attr.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            TooltipCompat.Api26Impl.a(this, getContentDescription());
            setOnTouchListener(new ForwardingListener(this) { // from class: androidx.appcompat.widget.ActionMenuPresenter.OverflowMenuButton.1
                @Override // androidx.appcompat.widget.ForwardingListener
                public final ShowableListMenu b() {
                    OverflowPopup overflowPopup = ActionMenuPresenter.this.t;
                    if (overflowPopup == null) {
                        return null;
                    }
                    return overflowPopup.a();
                }

                @Override // androidx.appcompat.widget.ForwardingListener
                public final boolean c() {
                    ActionMenuPresenter.this.o();
                    return true;
                }

                @Override // androidx.appcompat.widget.ForwardingListener
                public final boolean d() {
                    ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
                    if (actionMenuPresenter.v != null) {
                        return false;
                    }
                    actionMenuPresenter.m();
                    return true;
                }
            });
        }

        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        public final boolean a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.ActionMenuChildView
        public final boolean b() {
            return false;
        }

        @Override // android.view.View
        public final boolean performClick() {
            if (super.performClick()) {
                SensorsDataAutoTrackHelper.trackViewOnClick(this);
                return true;
            }
            playSoundEffect(0);
            ActionMenuPresenter.this.o();
            SensorsDataAutoTrackHelper.trackViewOnClick(this);
            return true;
        }

        @Override // android.widget.ImageView
        public final boolean setFrame(int i2, int i3, int i4, int i5) {
            boolean frame = super.setFrame(i2, i3, i4, i5);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int iMax = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                background.setHotspotBounds(paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
            }
            return frame;
        }
    }

    public class OverflowPopup extends MenuPopupHelper {
        public OverflowPopup(Context context, MenuBuilder menuBuilder, View view, boolean z) {
            super(context, menuBuilder, view, z, R.attr.actionOverflowMenuStyle);
            this.g = 8388613;
            PopupPresenterCallback popupPresenterCallback = ActionMenuPresenter.this.x;
            this.f1040i = popupPresenterCallback;
            MenuPopup menuPopup = this.f1041j;
            if (menuPopup != null) {
                menuPopup.d(popupPresenterCallback);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPopupHelper
        public final void c() {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            MenuBuilder menuBuilder = actionMenuPresenter.d;
            if (menuBuilder != null) {
                menuBuilder.c(true);
            }
            actionMenuPresenter.t = null;
            super.c();
        }
    }

    public class PopupPresenterCallback implements MenuPresenter.Callback {
        public PopupPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final void c(MenuBuilder menuBuilder, boolean z) {
            if (menuBuilder instanceof SubMenuBuilder) {
                ((SubMenuBuilder) menuBuilder).z.k().c(false);
            }
            MenuPresenter.Callback callback = ActionMenuPresenter.this.f963f;
            if (callback != null) {
                callback.c(menuBuilder, z);
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final boolean d(MenuBuilder menuBuilder) {
            ActionMenuPresenter actionMenuPresenter = ActionMenuPresenter.this;
            if (menuBuilder == actionMenuPresenter.d) {
                return false;
            }
            ((SubMenuBuilder) menuBuilder).A.getClass();
            MenuPresenter.Callback callback = actionMenuPresenter.f963f;
            if (callback != null) {
                return callback.d(menuBuilder);
            }
            return false;
        }
    }

    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1090b;

        /* JADX INFO: renamed from: androidx.appcompat.widget.ActionMenuPresenter$SavedState$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                SavedState savedState = new SavedState();
                savedState.f1090b = parcel.readInt();
                return savedState;
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i2) {
                return new SavedState[i2];
            }
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeInt(this.f1090b);
        }
    }

    public ActionMenuPresenter(Context context) {
        super(context, R.layout.abc_action_menu_layout, R.layout.abc_action_menu_item_layout);
        this.s = new SparseBooleanArray();
        this.x = new PopupPresenterCallback();
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public final void a(MenuItemImpl menuItemImpl, MenuView.ItemView itemView) {
        itemView.c(menuItemImpl);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) itemView;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f965i);
        if (this.w == null) {
            this.w = new ActionMenuPopupCallback();
        }
        actionMenuItemView.setPopupCallback(this.w);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public final boolean b(ViewGroup viewGroup, int i2) {
        if (viewGroup.getChildAt(i2) == this.f1084j) {
            return false;
        }
        viewGroup.removeViewAt(i2);
        return true;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public final void c(MenuBuilder menuBuilder, boolean z) {
        m();
        ActionButtonSubmenu actionButtonSubmenu = this.u;
        if (actionButtonSubmenu != null && actionButtonSubmenu.b()) {
            actionButtonSubmenu.f1041j.dismiss();
        }
        super.c(menuBuilder, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public final boolean f(SubMenuBuilder subMenuBuilder) {
        boolean z;
        if (subMenuBuilder.hasVisibleItems()) {
            SubMenuBuilder subMenuBuilder2 = subMenuBuilder;
            while (true) {
                MenuBuilder menuBuilder = subMenuBuilder2.z;
                if (menuBuilder == this.d) {
                    break;
                }
                subMenuBuilder2 = (SubMenuBuilder) menuBuilder;
            }
            MenuItemImpl menuItemImpl = subMenuBuilder2.A;
            ViewGroup viewGroup = (ViewGroup) this.f965i;
            View view = null;
            view = null;
            if (viewGroup != null) {
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = viewGroup.getChildAt(i2);
                    if ((childAt instanceof MenuView.ItemView) && ((MenuView.ItemView) childAt).getItemData() == menuItemImpl) {
                        view = childAt;
                        break;
                    }
                }
            }
            if (view != null) {
                subMenuBuilder.A.getClass();
                int size = subMenuBuilder.f1008f.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size) {
                        z = false;
                        break;
                    }
                    MenuItem item = subMenuBuilder.getItem(i3);
                    if (item.isVisible() && item.getIcon() != null) {
                        z = true;
                        break;
                    }
                    i3++;
                }
                ActionButtonSubmenu actionButtonSubmenu = new ActionButtonSubmenu(this.f961c, subMenuBuilder, view);
                this.u = actionButtonSubmenu;
                actionButtonSubmenu.d(z);
                ActionButtonSubmenu actionButtonSubmenu2 = this.u;
                if (!actionButtonSubmenu2.b()) {
                    if (actionButtonSubmenu2.f1038f == null) {
                        md.k("MenuPopupHelper cannot be used without an anchor");
                        return false;
                    }
                    actionButtonSubmenu2.e(0, 0, false, false);
                }
                super.f(subMenuBuilder);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public final void h(boolean z) {
        ArrayList arrayList;
        super.h(z);
        ((View) this.f965i).requestLayout();
        MenuBuilder menuBuilder = this.d;
        boolean z2 = false;
        if (menuBuilder != null) {
            menuBuilder.i();
            ArrayList arrayList2 = menuBuilder.f1010i;
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                ActionProvider actionProvider = ((MenuItemImpl) arrayList2.get(i2)).A;
            }
        }
        MenuBuilder menuBuilder2 = this.d;
        if (menuBuilder2 != null) {
            menuBuilder2.i();
            arrayList = menuBuilder2.f1011j;
        } else {
            arrayList = null;
        }
        if (this.m && arrayList != null) {
            int size2 = arrayList.size();
            if (size2 == 1) {
                z2 = !((MenuItemImpl) arrayList.get(0)).C;
            } else if (size2 > 0) {
                z2 = true;
            }
        }
        OverflowMenuButton overflowMenuButton = this.f1084j;
        if (z2) {
            if (overflowMenuButton == null) {
                this.f1084j = new OverflowMenuButton(this.f960b);
            }
            ViewGroup viewGroup = (ViewGroup) this.f1084j.getParent();
            if (viewGroup != this.f965i) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f1084j);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f965i;
                OverflowMenuButton overflowMenuButton2 = this.f1084j;
                actionMenuView.getClass();
                ActionMenuView.LayoutParams layoutParams = new ActionMenuView.LayoutParams(-2, -2);
                ((LinearLayout.LayoutParams) layoutParams).gravity = 16;
                layoutParams.f1091a = true;
                actionMenuView.addView(overflowMenuButton2, layoutParams);
            }
        } else if (overflowMenuButton != null) {
            Object parent = overflowMenuButton.getParent();
            Object obj = this.f965i;
            if (parent == obj) {
                ((ViewGroup) obj).removeView(this.f1084j);
            }
        }
        ((ActionMenuView) this.f965i).setOverflowReserved(this.m);
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public final boolean i() {
        int size;
        ArrayList arrayListL;
        int i2;
        boolean z;
        ActionMenuPresenter actionMenuPresenter = this;
        MenuBuilder menuBuilder = actionMenuPresenter.d;
        if (menuBuilder != null) {
            arrayListL = menuBuilder.l();
            size = arrayListL.size();
        } else {
            size = 0;
            arrayListL = null;
        }
        int i3 = actionMenuPresenter.q;
        int i4 = actionMenuPresenter.p;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) actionMenuPresenter.f965i;
        int i5 = 0;
        boolean z2 = false;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i2 = 2;
            z = true;
            if (i5 >= size) {
                break;
            }
            MenuItemImpl menuItemImpl = (MenuItemImpl) arrayListL.get(i5);
            int i8 = menuItemImpl.y;
            if ((i8 & 2) == 2) {
                i6++;
            } else if ((i8 & 1) == 1) {
                i7++;
            } else {
                z2 = true;
            }
            if (actionMenuPresenter.r && menuItemImpl.C) {
                i3 = 0;
            }
            i5++;
        }
        if (actionMenuPresenter.m && (z2 || i7 + i6 > i3)) {
            i3--;
        }
        int i9 = i3 - i6;
        SparseBooleanArray sparseBooleanArray = actionMenuPresenter.s;
        sparseBooleanArray.clear();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            MenuItemImpl menuItemImpl2 = (MenuItemImpl) arrayListL.get(i10);
            int i12 = menuItemImpl2.y;
            boolean z3 = (i12 & 2) == i2 ? z : false;
            int i13 = menuItemImpl2.f1016b;
            if (z3) {
                View viewK = actionMenuPresenter.k(menuItemImpl2, null, viewGroup);
                viewK.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredWidth = viewK.getMeasuredWidth();
                i4 -= measuredWidth;
                if (i11 == 0) {
                    i11 = measuredWidth;
                }
                if (i13 != 0) {
                    sparseBooleanArray.put(i13, z);
                }
                menuItemImpl2.f(z);
            } else {
                if ((i12 & 1) == z) {
                    boolean z4 = sparseBooleanArray.get(i13);
                    boolean z5 = ((i9 > 0 || z4) && i4 > 0) ? z : false;
                    if (z5) {
                        View viewK2 = actionMenuPresenter.k(menuItemImpl2, null, viewGroup);
                        viewK2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                        int measuredWidth2 = viewK2.getMeasuredWidth();
                        i4 -= measuredWidth2;
                        if (i11 == 0) {
                            i11 = measuredWidth2;
                        }
                        z5 &= i4 + i11 > 0;
                    }
                    if (z5 && i13 != 0) {
                        sparseBooleanArray.put(i13, true);
                    } else if (z4) {
                        sparseBooleanArray.put(i13, false);
                        for (int i14 = 0; i14 < i10; i14++) {
                            MenuItemImpl menuItemImpl3 = (MenuItemImpl) arrayListL.get(i14);
                            if (menuItemImpl3.f1016b == i13) {
                                if ((menuItemImpl3.x & 32) == 32) {
                                    i9++;
                                }
                                menuItemImpl3.f(false);
                            }
                        }
                    }
                    if (z5) {
                        i9--;
                    }
                    menuItemImpl2.f(z5);
                } else {
                    menuItemImpl2.f(false);
                }
                i10++;
                i2 = 2;
                actionMenuPresenter = this;
                z = true;
            }
            i10++;
            i2 = 2;
            actionMenuPresenter = this;
            z = true;
        }
        return z;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter, androidx.appcompat.view.menu.MenuPresenter
    public final void j(Context context, MenuBuilder menuBuilder) {
        super.j(context, menuBuilder);
        Resources resources = context.getResources();
        ActionBarPolicy actionBarPolicyA = ActionBarPolicy.a(context);
        if (!this.n) {
            this.m = true;
        }
        this.o = actionBarPolicyA.f900a.getResources().getDisplayMetrics().widthPixels / 2;
        this.q = actionBarPolicyA.b();
        int measuredWidth = this.o;
        if (this.m) {
            if (this.f1084j == null) {
                OverflowMenuButton overflowMenuButton = new OverflowMenuButton(this.f960b);
                this.f1084j = overflowMenuButton;
                if (this.l) {
                    overflowMenuButton.setImageDrawable(this.f1085k);
                    this.f1085k = null;
                    this.l = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f1084j.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.f1084j.getMeasuredWidth();
        } else {
            this.f1084j = null;
        }
        this.p = measuredWidth;
        float f2 = resources.getDisplayMetrics().density;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public final View k(MenuItemImpl menuItemImpl, View view, ViewGroup viewGroup) {
        View actionView = menuItemImpl.getActionView();
        if (actionView == null || menuItemImpl.e()) {
            actionView = super.k(menuItemImpl, view, viewGroup);
        }
        actionView.setVisibility(menuItemImpl.C ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        ((ActionMenuView) viewGroup).getClass();
        if (!(layoutParams instanceof ActionMenuView.LayoutParams)) {
            actionView.setLayoutParams(ActionMenuView.j(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.BaseMenuPresenter
    public final boolean l(MenuItemImpl menuItemImpl) {
        return (menuItemImpl.x & 32) == 32;
    }

    public final boolean m() {
        Object obj;
        OpenOverflowRunnable openOverflowRunnable = this.v;
        if (openOverflowRunnable != null && (obj = this.f965i) != null) {
            ((View) obj).removeCallbacks(openOverflowRunnable);
            this.v = null;
            return true;
        }
        OverflowPopup overflowPopup = this.t;
        if (overflowPopup == null) {
            return false;
        }
        if (overflowPopup.b()) {
            overflowPopup.f1041j.dismiss();
        }
        return true;
    }

    public final boolean n() {
        OverflowPopup overflowPopup = this.t;
        return overflowPopup != null && overflowPopup.b();
    }

    public final boolean o() {
        MenuBuilder menuBuilder;
        if (!this.m || n() || (menuBuilder = this.d) == null || this.f965i == null || this.v != null) {
            return false;
        }
        menuBuilder.i();
        if (menuBuilder.f1011j.isEmpty()) {
            return false;
        }
        OpenOverflowRunnable openOverflowRunnable = new OpenOverflowRunnable(new OverflowPopup(this.f961c, this.d, this.f1084j, true));
        this.v = openOverflowRunnable;
        ((View) this.f965i).post(openOverflowRunnable);
        return true;
    }
}
