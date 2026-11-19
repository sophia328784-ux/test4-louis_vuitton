package androidx.appcompat.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.R$styleable;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.internal.view.SupportMenu;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.view.ActionProvider;
import com.dynatrace.android.callback.Callback;
import defpackage.md;
import defpackage.pq0;
import defpackage.v7;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class SupportMenuInflater extends MenuInflater {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Class[] f917e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Class[] f918f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f919a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f920b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f921c;
    public Object d;

    public static class InflatedOnMenuItemClickListener implements MenuItem.OnMenuItemClickListener {
        public static final Class[] d = {MenuItem.class};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f922b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Method f923c;

        public InflatedOnMenuItemClickListener(Object obj, String str) {
            this.f922b = obj;
            Class<?> cls = obj.getClass();
            try {
                this.f923c = cls.getMethod(str, d);
            } catch (Exception e2) {
                StringBuilder sbR = pq0.r("Couldn't resolve menu item onClick handler ", str, " in class ");
                sbR.append(cls.getName());
                InflateException inflateException = new InflateException(sbR.toString());
                inflateException.initCause(e2);
                throw inflateException;
            }
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            Method method = this.f923c;
            Callback.u(menuItem);
            try {
                try {
                    Class<?> returnType = method.getReturnType();
                    Class<?> cls = Boolean.TYPE;
                    Object obj = this.f922b;
                    if (returnType == cls) {
                        boolean zBooleanValue = ((Boolean) method.invoke(obj, menuItem)).booleanValue();
                        Callback.v();
                        return zBooleanValue;
                    }
                    method.invoke(obj, menuItem);
                    Callback.v();
                    return true;
                } catch (Exception e2) {
                    throw new RuntimeException(e2);
                }
            } catch (Throwable th) {
                Callback.v();
                throw th;
            }
        }
    }

    public class MenuState {
        public CharSequence A;
        public CharSequence B;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Menu f924a;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f929h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f930i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f931j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public CharSequence f932k;
        public CharSequence l;
        public int m;
        public char n;
        public int o;
        public char p;
        public int q;
        public int r;
        public boolean s;
        public boolean t;
        public boolean u;
        public int v;
        public int w;
        public String x;
        public String y;
        public ActionProvider z;
        public ColorStateList C = null;
        public PorterDuff.Mode D = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f925b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f926c = 0;
        public int d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f927e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f928f = true;
        public boolean g = true;

        public MenuState(Menu menu) {
            this.f924a = menu;
        }

        public final Object a(String str, Class[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, SupportMenuInflater.this.f921c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return constructor.newInstance(objArr);
            } catch (Exception unused) {
                return null;
            }
        }

        public final void b(MenuItem menuItem) {
            boolean z = false;
            menuItem.setChecked(this.s).setVisible(this.t).setEnabled(this.u).setCheckable(this.r >= 1).setTitleCondensed(this.l).setIcon(this.m);
            int i2 = this.v;
            if (i2 >= 0) {
                menuItem.setShowAsAction(i2);
            }
            String str = this.y;
            SupportMenuInflater supportMenuInflater = SupportMenuInflater.this;
            if (str != null) {
                if (supportMenuInflater.f921c.isRestricted()) {
                    md.k("The android:onClick attribute cannot be used within a restricted context");
                    return;
                } else {
                    if (supportMenuInflater.d == null) {
                        supportMenuInflater.d = SupportMenuInflater.a(supportMenuInflater.f921c);
                    }
                    menuItem.setOnMenuItemClickListener(new InflatedOnMenuItemClickListener(supportMenuInflater.d, this.y));
                }
            }
            if (this.r >= 2) {
                if (menuItem instanceof MenuItemImpl) {
                    MenuItemImpl menuItemImpl = (MenuItemImpl) menuItem;
                    menuItemImpl.x = (menuItemImpl.x & (-5)) | 4;
                } else if (menuItem instanceof MenuItemWrapperICS) {
                    MenuItemWrapperICS menuItemWrapperICS = (MenuItemWrapperICS) menuItem;
                    SupportMenuItem supportMenuItem = menuItemWrapperICS.d;
                    try {
                        if (menuItemWrapperICS.f1025e == null) {
                            menuItemWrapperICS.f1025e = supportMenuItem.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                        }
                        menuItemWrapperICS.f1025e.invoke(supportMenuItem, Boolean.TRUE);
                    } catch (Exception unused) {
                    }
                }
            }
            String str2 = this.x;
            if (str2 != null) {
                menuItem.setActionView((View) a(str2, SupportMenuInflater.f917e, supportMenuInflater.f919a));
                z = true;
            }
            int i3 = this.w;
            if (i3 > 0 && !z) {
                menuItem.setActionView(i3);
            }
            ActionProvider actionProvider = this.z;
            if (actionProvider != null && (menuItem instanceof SupportMenuItem)) {
                ((SupportMenuItem) menuItem).b(actionProvider);
            }
            CharSequence charSequence = this.A;
            boolean z2 = menuItem instanceof SupportMenuItem;
            if (z2) {
                ((SupportMenuItem) menuItem).setContentDescription(charSequence);
            } else {
                menuItem.setContentDescription(charSequence);
            }
            CharSequence charSequence2 = this.B;
            if (z2) {
                ((SupportMenuItem) menuItem).setTooltipText(charSequence2);
            } else {
                menuItem.setTooltipText(charSequence2);
            }
            char c2 = this.n;
            int i4 = this.o;
            if (z2) {
                ((SupportMenuItem) menuItem).setAlphabeticShortcut(c2, i4);
            } else {
                menuItem.setAlphabeticShortcut(c2, i4);
            }
            char c3 = this.p;
            int i5 = this.q;
            if (z2) {
                ((SupportMenuItem) menuItem).setNumericShortcut(c3, i5);
            } else {
                menuItem.setNumericShortcut(c3, i5);
            }
            PorterDuff.Mode mode = this.D;
            if (mode != null) {
                if (z2) {
                    ((SupportMenuItem) menuItem).setIconTintMode(mode);
                } else {
                    menuItem.setIconTintMode(mode);
                }
            }
            ColorStateList colorStateList = this.C;
            if (colorStateList != null) {
                if (z2) {
                    ((SupportMenuItem) menuItem).setIconTintList(colorStateList);
                } else {
                    menuItem.setIconTintList(colorStateList);
                }
            }
        }
    }

    static {
        Class[] clsArr = {Context.class};
        f917e = clsArr;
        f918f = clsArr;
    }

    public SupportMenuInflater(Context context) {
        super(context);
        this.f921c = context;
        Object[] objArr = {context};
        this.f919a = objArr;
        this.f920b = objArr;
    }

    public static Object a(Object obj) {
        return (!(obj instanceof Activity) && (obj instanceof ContextWrapper)) ? a(((ContextWrapper) obj).getBaseContext()) : obj;
    }

    public final void b(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) throws XmlPullParserException, IOException {
        int i2;
        boolean z;
        ColorStateList colorStateList;
        MenuState menuState = new MenuState(menu);
        int eventType = xmlPullParser.getEventType();
        do {
            i2 = 2;
            z = true;
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("menu")) {
                    eventType = xmlPullParser.next();
                    break;
                } else {
                    v7.h("Expecting menu, got ".concat(name));
                    return;
                }
            }
            eventType = xmlPullParser.next();
        } while (eventType != 1);
        boolean z2 = false;
        boolean z3 = false;
        String str = null;
        while (!z2) {
            if (eventType == z) {
                v7.h("Unexpected end of document");
                return;
            }
            Menu menu2 = menuState.f924a;
            if (eventType == i2) {
                if (!z3) {
                    String name2 = xmlPullParser.getName();
                    boolean zEquals = name2.equals("group");
                    SupportMenuInflater supportMenuInflater = SupportMenuInflater.this;
                    if (zEquals) {
                        TypedArray typedArrayObtainStyledAttributes = supportMenuInflater.f921c.obtainStyledAttributes(attributeSet, R$styleable.q);
                        menuState.f925b = typedArrayObtainStyledAttributes.getResourceId(z ? 1 : 0, 0);
                        menuState.f926c = typedArrayObtainStyledAttributes.getInt(3, 0);
                        menuState.d = typedArrayObtainStyledAttributes.getInt(4, 0);
                        menuState.f927e = typedArrayObtainStyledAttributes.getInt(5, 0);
                        menuState.f928f = typedArrayObtainStyledAttributes.getBoolean(2, z);
                        menuState.g = typedArrayObtainStyledAttributes.getBoolean(0, z);
                        typedArrayObtainStyledAttributes.recycle();
                    } else if (name2.equals("item")) {
                        TintTypedArray tintTypedArrayF = TintTypedArray.f(supportMenuInflater.f921c, attributeSet, R$styleable.r);
                        TypedArray typedArray = tintTypedArrayF.f1313b;
                        menuState.f930i = typedArray.getResourceId(2, 0);
                        menuState.f931j = (typedArray.getInt(6, menuState.d) & 65535) | (typedArray.getInt(5, menuState.f926c) & (-65536));
                        menuState.f932k = typedArray.getText(7);
                        menuState.l = typedArray.getText(8);
                        menuState.m = typedArray.getResourceId(0, 0);
                        String string = typedArray.getString(9);
                        menuState.n = string == null ? (char) 0 : string.charAt(0);
                        menuState.o = typedArray.getInt(16, 4096);
                        String string2 = typedArray.getString(10);
                        menuState.p = string2 == null ? (char) 0 : string2.charAt(0);
                        menuState.q = typedArray.getInt(20, 4096);
                        if (typedArray.hasValue(11)) {
                            menuState.r = typedArray.getBoolean(11, false) ? 1 : 0;
                        } else {
                            menuState.r = menuState.f927e;
                        }
                        menuState.s = typedArray.getBoolean(3, false);
                        menuState.t = typedArray.getBoolean(4, menuState.f928f);
                        menuState.u = typedArray.getBoolean(1, menuState.g);
                        menuState.v = typedArray.getInt(21, -1);
                        menuState.y = typedArray.getString(12);
                        menuState.w = typedArray.getResourceId(13, 0);
                        menuState.x = typedArray.getString(15);
                        String string3 = typedArray.getString(14);
                        if (string3 != null && menuState.w == 0 && menuState.x == null) {
                            menuState.z = (ActionProvider) menuState.a(string3, f918f, supportMenuInflater.f920b);
                        } else {
                            menuState.z = null;
                        }
                        menuState.A = typedArray.getText(17);
                        menuState.B = typedArray.getText(22);
                        if (typedArray.hasValue(19)) {
                            menuState.D = DrawableUtils.c(typedArray.getInt(19, -1), menuState.D);
                            colorStateList = null;
                        } else {
                            colorStateList = null;
                            menuState.D = null;
                        }
                        if (typedArray.hasValue(18)) {
                            menuState.C = tintTypedArrayF.a(18);
                        } else {
                            menuState.C = colorStateList;
                        }
                        tintTypedArrayF.g();
                        menuState.f929h = false;
                        xmlPullParser = xmlPullParser;
                        z = true;
                    } else if (name2.equals("menu")) {
                        z = true;
                        menuState.f929h = true;
                        SubMenu subMenuAddSubMenu = menu2.addSubMenu(menuState.f925b, menuState.f930i, menuState.f931j, menuState.f932k);
                        menuState.b(subMenuAddSubMenu.getItem());
                        xmlPullParser = xmlPullParser;
                        b(xmlPullParser, attributeSet, subMenuAddSubMenu);
                    } else {
                        xmlPullParser = xmlPullParser;
                        z = true;
                        str = name2;
                        z3 = true;
                    }
                }
                z2 = z2;
            } else if (eventType != 3) {
                z2 = z2;
            } else {
                String name3 = xmlPullParser.getName();
                if (z3 && name3.equals(str)) {
                    xmlPullParser = xmlPullParser;
                    z3 = false;
                    str = null;
                } else {
                    if (name3.equals("group")) {
                        menuState.f925b = 0;
                        menuState.f926c = 0;
                        menuState.d = 0;
                        menuState.f927e = 0;
                        menuState.f928f = z;
                        menuState.g = z;
                    } else if (name3.equals("item")) {
                        if (!menuState.f929h) {
                            ActionProvider actionProvider = menuState.z;
                            if (actionProvider == null || !actionProvider.a()) {
                                menuState.f929h = z;
                                menuState.b(menu2.add(menuState.f925b, menuState.f930i, menuState.f931j, menuState.f932k));
                            } else {
                                menuState.f929h = z;
                                menuState.b(menu2.addSubMenu(menuState.f925b, menuState.f930i, menuState.f931j, menuState.f932k).getItem());
                            }
                        }
                    } else if (name3.equals("menu")) {
                        z2 = z ? 1 : 0;
                    }
                    z2 = z2;
                }
            }
            eventType = xmlPullParser.next();
            i2 = 2;
            z2 = z2;
            z3 = z3;
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i2, Menu menu) {
        if (!(menu instanceof SupportMenu)) {
            super.inflate(i2, menu);
            return;
        }
        XmlResourceParser layout = null;
        boolean z = false;
        try {
            try {
                layout = this.f921c.getResources().getLayout(i2);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(layout);
                if (menu instanceof MenuBuilder) {
                    MenuBuilder menuBuilder = (MenuBuilder) menu;
                    if (!menuBuilder.p) {
                        menuBuilder.w();
                        z = true;
                    }
                }
                b(layout, attributeSetAsAttributeSet, menu);
                if (z) {
                    ((MenuBuilder) menu).v();
                }
                layout.close();
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            } catch (XmlPullParserException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } catch (Throwable th) {
            if (z) {
                ((MenuBuilder) menu).v();
            }
            if (layout != null) {
                layout.close();
            }
            throw th;
        }
    }
}
