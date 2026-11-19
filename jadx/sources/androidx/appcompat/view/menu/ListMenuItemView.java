package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.appcompat.widget.TintTypedArray;

/* JADX INFO: loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements MenuView.ItemView, AbsListView.SelectionBoundsAdjuster {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MenuItemImpl f984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ImageView f985c;
    public RadioButton d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TextView f986e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CheckBox f987f;
    public TextView g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ImageView f988h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ImageView f989i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public LinearLayout f990j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Drawable f991k;
    public final int l;
    public final Context m;
    public boolean n;
    public final Drawable o;
    public final boolean p;
    public LayoutInflater q;
    public boolean r;

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet);
        TintTypedArray tintTypedArrayE = TintTypedArray.e(i2, 0, getContext(), attributeSet, R$styleable.s);
        this.f991k = tintTypedArrayE.b(5);
        TypedArray typedArray = tintTypedArrayE.f1313b;
        this.l = typedArray.getResourceId(1, -1);
        this.n = typedArray.getBoolean(7, false);
        this.m = context;
        this.o = tintTypedArrayE.b(8);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{R.attr.divider}, com.vuitton.android.R.attr.dropDownListViewStyle, 0);
        this.p = typedArrayObtainStyledAttributes.hasValue(0);
        tintTypedArrayE.g();
        typedArrayObtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.q == null) {
            this.q = LayoutInflater.from(getContext());
        }
        return this.q;
    }

    private void setSubMenuArrowVisible(boolean z) {
        ImageView imageView = this.f988h;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public final void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f989i;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f989i.getLayoutParams();
        rect.top = this.f989i.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0035  */
    /* JADX WARN: Code duplicated, block: B:25:0x0053  */
    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public final void c(MenuItemImpl menuItemImpl) {
        boolean z;
        int i2;
        String string;
        this.f984b = menuItemImpl;
        boolean zIsVisible = menuItemImpl.isVisible();
        MenuBuilder menuBuilder = menuItemImpl.n;
        setVisibility(zIsVisible ? 0 : 8);
        setTitle(menuItemImpl.f1018e);
        setCheckable(menuItemImpl.isCheckable());
        if (menuBuilder.o()) {
            if ((menuBuilder.n() ? menuItemImpl.f1022j : menuItemImpl.f1020h) != 0) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        menuBuilder.n();
        if (z) {
            MenuItemImpl menuItemImpl2 = this.f984b;
            MenuBuilder menuBuilder2 = menuItemImpl2.n;
            if (menuBuilder2.o()) {
                i2 = (menuBuilder2.n() ? menuItemImpl2.f1022j : menuItemImpl2.f1020h) == 0 ? 8 : 0;
            }
        }
        if (i2 == 0) {
            TextView textView = this.g;
            MenuItemImpl menuItemImpl3 = this.f984b;
            MenuBuilder menuBuilder3 = menuItemImpl3.n;
            Context context = menuBuilder3.f1004a;
            char c2 = menuBuilder3.n() ? menuItemImpl3.f1022j : menuItemImpl3.f1020h;
            if (c2 == 0) {
                string = "";
            } else {
                Resources resources = context.getResources();
                StringBuilder sb = new StringBuilder();
                if (ViewConfiguration.get(context).hasPermanentMenuKey()) {
                    sb.append(resources.getString(com.vuitton.android.R.string.abc_prepend_shortcut_label));
                }
                int i3 = menuBuilder3.n() ? menuItemImpl3.f1023k : menuItemImpl3.f1021i;
                MenuItemImpl.c(i3, 65536, resources.getString(com.vuitton.android.R.string.abc_menu_meta_shortcut_label), sb);
                MenuItemImpl.c(i3, 4096, resources.getString(com.vuitton.android.R.string.abc_menu_ctrl_shortcut_label), sb);
                MenuItemImpl.c(i3, 2, resources.getString(com.vuitton.android.R.string.abc_menu_alt_shortcut_label), sb);
                MenuItemImpl.c(i3, 1, resources.getString(com.vuitton.android.R.string.abc_menu_shift_shortcut_label), sb);
                MenuItemImpl.c(i3, 4, resources.getString(com.vuitton.android.R.string.abc_menu_sym_shortcut_label), sb);
                MenuItemImpl.c(i3, 8, resources.getString(com.vuitton.android.R.string.abc_menu_function_shortcut_label), sb);
                if (c2 == '\b') {
                    sb.append(resources.getString(com.vuitton.android.R.string.abc_menu_delete_shortcut_label));
                } else if (c2 == '\n') {
                    sb.append(resources.getString(com.vuitton.android.R.string.abc_menu_enter_shortcut_label));
                } else if (c2 != ' ') {
                    sb.append(c2);
                } else {
                    sb.append(resources.getString(com.vuitton.android.R.string.abc_menu_space_shortcut_label));
                }
                string = sb.toString();
            }
            textView.setText(string);
        }
        if (this.g.getVisibility() != i2) {
            this.g.setVisibility(i2);
        }
        setIcon(menuItemImpl.getIcon());
        setEnabled(menuItemImpl.isEnabled());
        setSubMenuArrowVisible(menuItemImpl.hasSubMenu());
        setContentDescription(menuItemImpl.q);
    }

    @Override // androidx.appcompat.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.f984b;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        setBackground(this.f991k);
        TextView textView = (TextView) findViewById(com.vuitton.android.R.id.title);
        this.f986e = textView;
        int i2 = this.l;
        if (i2 != -1) {
            textView.setTextAppearance(this.m, i2);
        }
        this.g = (TextView) findViewById(com.vuitton.android.R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(com.vuitton.android.R.id.submenuarrow);
        this.f988h = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.o);
        }
        this.f989i = (ImageView) findViewById(com.vuitton.android.R.id.group_divider);
        this.f990j = (LinearLayout) findViewById(com.vuitton.android.R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i2, int i3) {
        if (this.f985c != null && this.n) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f985c.getLayoutParams();
            int i4 = layoutParams.height;
            if (i4 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i4;
            }
        }
        super.onMeasure(i2, i3);
    }

    public void setCheckable(boolean z) {
        CompoundButton compoundButton;
        View view;
        if (!z && this.d == null && this.f987f == null) {
            return;
        }
        if ((this.f984b.x & 4) != 0) {
            if (this.d == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(com.vuitton.android.R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.d = radioButton;
                LinearLayout linearLayout = this.f990j;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.d;
            view = this.f987f;
        } else {
            if (this.f987f == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(com.vuitton.android.R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f987f = checkBox;
                LinearLayout linearLayout2 = this.f990j;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f987f;
            view = this.d;
        }
        if (z) {
            compoundButton.setChecked(this.f984b.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.f987f;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.d;
        if (radioButton2 != null) {
            radioButton2.setVisibility(8);
        }
    }

    public void setChecked(boolean z) {
        CompoundButton compoundButton;
        if ((this.f984b.x & 4) != 0) {
            if (this.d == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(com.vuitton.android.R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.d = radioButton;
                LinearLayout linearLayout = this.f990j;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.d;
        } else {
            if (this.f987f == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(com.vuitton.android.R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f987f = checkBox;
                LinearLayout linearLayout2 = this.f990j;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f987f;
        }
        compoundButton.setChecked(z);
    }

    public void setForceShowIcon(boolean z) {
        this.r = z;
        this.n = z;
    }

    public void setGroupDividerEnabled(boolean z) {
        ImageView imageView = this.f989i;
        if (imageView != null) {
            imageView.setVisibility((this.p || !z) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        MenuBuilder menuBuilder = this.f984b.n;
        boolean z = this.r;
        if (z || this.n) {
            ImageView imageView = this.f985c;
            if (imageView == null && drawable == null && !this.n) {
                return;
            }
            if (imageView == null) {
                ImageView imageView2 = (ImageView) getInflater().inflate(com.vuitton.android.R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.f985c = imageView2;
                LinearLayout linearLayout = this.f990j;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable == null && !this.n) {
                this.f985c.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.f985c;
            if (!z) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.f985c.getVisibility() != 0) {
                this.f985c.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        TextView textView = this.f986e;
        if (charSequence == null) {
            if (textView.getVisibility() != 8) {
                this.f986e.setVisibility(8);
            }
        } else {
            textView.setText(charSequence);
            if (this.f986e.getVisibility() != 0) {
                this.f986e.setVisibility(0);
            }
        }
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.vuitton.android.R.attr.listMenuViewStyle);
    }
}
