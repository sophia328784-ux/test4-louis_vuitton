package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.R$styleable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.view.StandaloneActionMode;
import androidx.appcompat.view.SupportActionModeWrapper;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.view.WindowCallbackWrapper;
import androidx.appcompat.view.menu.ListMenuPresenter;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.AppCompatCheckedTextView;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatMultiAutoCompleteTextView;
import androidx.appcompat.widget.AppCompatRatingBar;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.AppCompatToggleButton;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.DecorContentParent;
import androidx.appcompat.widget.TintTypedArray;
import androidx.appcompat.widget.VectorEnabledTintResources;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.appcompat.widget.ViewUtils;
import androidx.collection.SimpleArrayMap;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NavUtils;
import androidx.core.content.ContextCompat;
import androidx.core.content.PermissionChecker;
import androidx.core.os.LocaleListCompat;
import androidx.core.view.KeyEventDispatcher$Component;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewPropertyAnimatorCompat;
import androidx.core.view.ViewPropertyAnimatorListenerAdapter;
import androidx.core.view.WindowInsetsCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import defpackage.md;
import defpackage.x1;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Calendar;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
class AppCompatDelegateImpl extends AppCompatDelegate implements MenuBuilder.Callback, LayoutInflater.Factory2 {
    public static final SimpleArrayMap i1 = new SimpleArrayMap();
    public static final int[] j1 = {R.attr.windowBackground};
    public static final boolean k1 = !"robolectric".equals(Build.FINGERPRINT);
    public boolean A;
    public ViewGroup B;
    public TextView C;
    public View D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public boolean L;
    public PanelFeatureState[] M;
    public PanelFeatureState N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public boolean R;
    public Configuration S;
    public final int T;
    public int V;
    public int W;
    public boolean X;
    public AutoTimeNightModeManager Y;
    public AutoBatteryNightModeManager Z;
    public boolean c1;
    public Rect d1;
    public Rect e1;
    public AppCompatViewInflater f1;
    public OnBackInvokedDispatcher g1;
    public boolean h0;
    public OnBackInvokedCallback h1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Object f825k;
    public final Context l;
    public Window m;
    public AppCompatWindowCallback n;
    public final AppCompatCallback o;
    public ActionBar p;
    public SupportMenuInflater q;
    public CharSequence r;
    public DecorContentParent s;
    public ActionMenuPresenterCallback t;
    public int t0;
    public PanelMenuPresenterCallback u;
    public ActionMode v;
    public ActionBarContextView w;
    public PopupWindow x;
    public Runnable y;
    public ViewPropertyAnimatorCompat z = null;
    public final Runnable b1 = new Runnable() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.2
        @Override // java.lang.Runnable
        public void run() {
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl.t0 & 1) != 0) {
                appCompatDelegateImpl.z(0);
            }
            AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
            if ((appCompatDelegateImpl2.t0 & 4096) != 0) {
                appCompatDelegateImpl2.z(108);
            }
            AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
            appCompatDelegateImpl3.h0 = false;
            appCompatDelegateImpl3.t0 = 0;
        }
    };

    public class ActionBarDrawableToggleImpl implements ActionBarDrawerToggle$Delegate {
    }

    public interface ActionBarMenuCallback {
        void a(int i2);

        View onCreatePanelView(int i2);
    }

    public final class ActionMenuPresenterCallback implements MenuPresenter.Callback {
        public ActionMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final void c(MenuBuilder menuBuilder, boolean z) {
            AppCompatDelegateImpl.this.v(menuBuilder);
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final boolean d(MenuBuilder menuBuilder) {
            Window.Callback callback = AppCompatDelegateImpl.this.m.getCallback();
            if (callback == null) {
                return true;
            }
            callback.onMenuOpened(108, menuBuilder);
            return true;
        }
    }

    public class ActionModeCallbackWrapperV9 implements ActionMode.Callback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ActionMode.Callback f831a;

        public ActionModeCallbackWrapperV9(ActionMode.Callback callback) {
            this.f831a = callback;
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final void a(ActionMode actionMode) {
            this.f831a.a(actionMode);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (appCompatDelegateImpl.x != null) {
                appCompatDelegateImpl.m.getDecorView().removeCallbacks(appCompatDelegateImpl.y);
            }
            if (appCompatDelegateImpl.w != null) {
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = appCompatDelegateImpl.z;
                if (viewPropertyAnimatorCompat != null) {
                    viewPropertyAnimatorCompat.b();
                }
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompatB = ViewCompat.b(appCompatDelegateImpl.w);
                viewPropertyAnimatorCompatB.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                appCompatDelegateImpl.z = viewPropertyAnimatorCompatB;
                viewPropertyAnimatorCompatB.d(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.ActionModeCallbackWrapperV9.1
                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                    public final void a() {
                        AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                        appCompatDelegateImpl2.w.setVisibility(8);
                        PopupWindow popupWindow = appCompatDelegateImpl2.x;
                        if (popupWindow != null) {
                            popupWindow.dismiss();
                        } else if (appCompatDelegateImpl2.w.getParent() instanceof View) {
                            View view = (View) appCompatDelegateImpl2.w.getParent();
                            WeakHashMap weakHashMap = ViewCompat.f12200a;
                            view.requestApplyInsets();
                        }
                        appCompatDelegateImpl2.w.g();
                        appCompatDelegateImpl2.z.d(null);
                        appCompatDelegateImpl2.z = null;
                        ViewGroup viewGroup = appCompatDelegateImpl2.B;
                        WeakHashMap weakHashMap2 = ViewCompat.f12200a;
                        viewGroup.requestApplyInsets();
                    }
                });
            }
            AppCompatCallback appCompatCallback = appCompatDelegateImpl.o;
            if (appCompatCallback != null) {
                appCompatCallback.onSupportActionModeFinished(appCompatDelegateImpl.v);
            }
            appCompatDelegateImpl.v = null;
            ViewGroup viewGroup = appCompatDelegateImpl.B;
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            viewGroup.requestApplyInsets();
            appCompatDelegateImpl.M();
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final boolean b(ActionMode actionMode, Menu menu) {
            return this.f831a.b(actionMode, menu);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final boolean c(ActionMode actionMode, MenuItem menuItem) {
            return this.f831a.c(actionMode, menuItem);
        }

        @Override // androidx.appcompat.view.ActionMode.Callback
        public final boolean d(ActionMode actionMode, Menu menu) {
            ViewGroup viewGroup = AppCompatDelegateImpl.this.B;
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            viewGroup.requestApplyInsets();
            return this.f831a.d(actionMode, menu);
        }
    }

    public static class Api21Impl {
        public static boolean a(PowerManager powerManager) {
            return powerManager.isPowerSaveMode();
        }

        public static String b(Locale locale) {
            return locale.toLanguageTag();
        }
    }

    public static class Api24Impl {
        public static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (locales.equals(locales2)) {
                return;
            }
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }

        public static LocaleListCompat b(Configuration configuration) {
            return LocaleListCompat.a(configuration.getLocales().toLanguageTags());
        }

        public static void c(LocaleListCompat localeListCompat) {
            LocaleList.setDefault(LocaleList.forLanguageTags(localeListCompat.e()));
        }

        public static void d(Configuration configuration, LocaleListCompat localeListCompat) {
            configuration.setLocales(LocaleList.forLanguageTags(localeListCompat.e()));
        }
    }

    public static class Api33Impl {
        public static OnBackInvokedDispatcher a(Activity activity) {
            return activity.getOnBackInvokedDispatcher();
        }

        public static OnBackInvokedCallback b(Object obj, final AppCompatDelegateImpl appCompatDelegateImpl) {
            Objects.requireNonNull(appCompatDelegateImpl);
            OnBackInvokedCallback onBackInvokedCallback = new OnBackInvokedCallback() { // from class: androidx.appcompat.app.c
                public final void onBackInvoked() {
                    appCompatDelegateImpl.H();
                }
            };
            x1.h(obj).registerOnBackInvokedCallback(1000000, onBackInvokedCallback);
            return onBackInvokedCallback;
        }

        public static void c(Object obj, Object obj2) {
            x1.h(obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
        }
    }

    public class AutoBatteryNightModeManager extends AutoNightModeManager {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final PowerManager f837c;

        public AutoBatteryNightModeManager(Context context) {
            super();
            this.f837c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public final IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public final int c() {
            return Api21Impl.a(this.f837c) ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public final void d() {
            AppCompatDelegateImpl.this.r(true, true);
        }
    }

    public abstract class AutoNightModeManager {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public BroadcastReceiver f838a;

        public AutoNightModeManager() {
        }

        public final void a() {
            BroadcastReceiver broadcastReceiver = this.f838a;
            if (broadcastReceiver != null) {
                try {
                    AppCompatDelegateImpl.this.l.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.f838a = null;
            }
        }

        public abstract IntentFilter b();

        public abstract int c();

        public abstract void d();

        public final void e() {
            a();
            IntentFilter intentFilterB = b();
            if (intentFilterB.countActions() == 0) {
                return;
            }
            if (this.f838a == null) {
                this.f838a = new BroadcastReceiver() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager.1
                    @Override // android.content.BroadcastReceiver
                    public final void onReceive(Context context, Intent intent) {
                        AutoNightModeManager.this.d();
                    }
                };
            }
            AppCompatDelegateImpl.this.l.registerReceiver(this.f838a, intentFilterB);
        }
    }

    public class AutoTimeNightModeManager extends AutoNightModeManager {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final TwilightManager f841c;

        public AutoTimeNightModeManager(TwilightManager twilightManager) {
            super();
            this.f841c = twilightManager;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public final IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        /* JADX WARN: Code duplicated, block: B:12:0x002f  */
        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public final int c() {
            Location lastKnownLocation;
            boolean z;
            long j2;
            TwilightManager twilightManager = this.f841c;
            TwilightManager.TwilightState twilightState = twilightManager.f874c;
            LocationManager locationManager = twilightManager.f873b;
            if (twilightState.f876b > System.currentTimeMillis()) {
                z = twilightState.f875a;
            } else {
                Context context = twilightManager.f872a;
                Location lastKnownLocation2 = null;
                if (PermissionChecker.b(context, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                    try {
                        if (locationManager.isProviderEnabled("network")) {
                            lastKnownLocation = locationManager.getLastKnownLocation("network");
                        } else {
                            lastKnownLocation = null;
                        }
                    } catch (Exception unused) {
                    }
                } else {
                    lastKnownLocation = null;
                }
                if (PermissionChecker.b(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                    try {
                        if (locationManager.isProviderEnabled("gps")) {
                            lastKnownLocation2 = locationManager.getLastKnownLocation("gps");
                        }
                    } catch (Exception unused2) {
                    }
                }
                if (lastKnownLocation2 == null || lastKnownLocation == null ? lastKnownLocation2 != null : lastKnownLocation2.getTime() > lastKnownLocation.getTime()) {
                    lastKnownLocation = lastKnownLocation2;
                }
                z = false;
                if (lastKnownLocation != null) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (TwilightCalculator.d == null) {
                        TwilightCalculator.d = new TwilightCalculator();
                    }
                    TwilightCalculator twilightCalculator = TwilightCalculator.d;
                    twilightCalculator.a(jCurrentTimeMillis - 86400000, lastKnownLocation.getLatitude(), lastKnownLocation.getLongitude());
                    twilightCalculator.a(jCurrentTimeMillis, lastKnownLocation.getLatitude(), lastKnownLocation.getLongitude());
                    z = twilightCalculator.f871c == 1;
                    long j3 = twilightCalculator.f870b;
                    long j4 = twilightCalculator.f869a;
                    twilightCalculator.a(jCurrentTimeMillis + 86400000, lastKnownLocation.getLatitude(), lastKnownLocation.getLongitude());
                    long j5 = twilightCalculator.f870b;
                    if (j3 == -1 || j4 == -1) {
                        j2 = jCurrentTimeMillis + 43200000;
                    } else {
                        if (jCurrentTimeMillis <= j4) {
                            j5 = jCurrentTimeMillis > j3 ? j4 : j3;
                        }
                        j2 = j5 + 60000;
                    }
                    twilightState.f875a = z;
                    twilightState.f876b = j2;
                } else {
                    int i2 = Calendar.getInstance().get(11);
                    if (i2 < 6 || i2 >= 22) {
                        z = true;
                    }
                }
            }
            return z ? 2 : 1;
        }

        @Override // androidx.appcompat.app.AppCompatDelegateImpl.AutoNightModeManager
        public final void d() {
            AppCompatDelegateImpl.this.r(true, true);
        }
    }

    public class ListMenuDecorView extends ContentFrameLayout {
        public ListMenuDecorView(Context context) {
            super(context);
        }

        @Override // android.view.ViewGroup, android.view.View
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return AppCompatDelegateImpl.this.y(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() == 0) {
                int x = (int) motionEvent.getX();
                int y = (int) motionEvent.getY();
                if (x < -5 || y < -5 || x > getWidth() + 5 || y > getHeight() + 5) {
                    AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                    appCompatDelegateImpl.w(appCompatDelegateImpl.D(0), true);
                    return true;
                }
            }
            return super.onInterceptTouchEvent(motionEvent);
        }

        @Override // android.view.View
        public final void setBackgroundResource(int i2) {
            setBackgroundDrawable(AppCompatResources.a(getContext(), i2));
        }
    }

    public final class PanelMenuPresenterCallback implements MenuPresenter.Callback {
        public PanelMenuPresenterCallback() {
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final void c(MenuBuilder menuBuilder, boolean z) {
            PanelFeatureState panelFeatureState;
            MenuBuilder menuBuilderK = menuBuilder.k();
            int i2 = 0;
            boolean z2 = menuBuilderK != menuBuilder;
            if (z2) {
                menuBuilder = menuBuilderK;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            PanelFeatureState[] panelFeatureStateArr = appCompatDelegateImpl.M;
            int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
            while (true) {
                if (i2 < length) {
                    panelFeatureState = panelFeatureStateArr[i2];
                    if (panelFeatureState != null && panelFeatureState.f848h == menuBuilder) {
                        break;
                    } else {
                        i2++;
                    }
                } else {
                    panelFeatureState = null;
                    break;
                }
            }
            if (panelFeatureState != null) {
                if (!z2) {
                    appCompatDelegateImpl.w(panelFeatureState, z);
                } else {
                    appCompatDelegateImpl.u(panelFeatureState.f843a, panelFeatureState, menuBuilderK);
                    appCompatDelegateImpl.w(panelFeatureState, true);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.MenuPresenter.Callback
        public final boolean d(MenuBuilder menuBuilder) {
            Window.Callback callback;
            if (menuBuilder != menuBuilder.k()) {
                return true;
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (!appCompatDelegateImpl.G || (callback = appCompatDelegateImpl.m.getCallback()) == null || appCompatDelegateImpl.R) {
                return true;
            }
            callback.onMenuOpened(108, menuBuilder);
            return true;
        }
    }

    public AppCompatDelegateImpl(Context context, Window window, AppCompatCallback appCompatCallback, Object obj) {
        AppCompatActivity appCompatActivity = null;
        this.T = -100;
        this.l = context;
        this.o = appCompatCallback;
        this.f825k = obj;
        if (obj instanceof Dialog) {
            while (context != null) {
                if (!(context instanceof AppCompatActivity)) {
                    if (!(context instanceof ContextWrapper)) {
                        break;
                    } else {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                } else {
                    appCompatActivity = (AppCompatActivity) context;
                    break;
                }
            }
            if (appCompatActivity != null) {
                this.T = ((AppCompatDelegateImpl) appCompatActivity.getDelegate()).T;
            }
        }
        if (this.T == -100) {
            String name = this.f825k.getClass().getName();
            SimpleArrayMap simpleArrayMap = i1;
            Integer num = (Integer) simpleArrayMap.get(name);
            if (num != null) {
                this.T = num.intValue();
                simpleArrayMap.remove(this.f825k.getClass().getName());
            }
        }
        if (window != null) {
            s(window);
        }
        AppCompatDrawableManager.d();
    }

    public static LocaleListCompat t(Context context) {
        LocaleListCompat localeListCompat;
        LocaleListCompat localeListCompatF;
        if (Build.VERSION.SDK_INT >= 33 || (localeListCompat = AppCompatDelegate.d) == null) {
            return null;
        }
        LocaleListCompat localeListCompatB = Api24Impl.b(context.getApplicationContext().getResources().getConfiguration());
        if (localeListCompat.c()) {
            localeListCompatF = LocaleListCompat.f12082b;
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            int i2 = 0;
            while (i2 < localeListCompatB.d() + localeListCompat.d()) {
                Locale localeB = i2 < localeListCompat.d() ? localeListCompat.b(i2) : localeListCompatB.b(i2 - localeListCompat.d());
                if (localeB != null) {
                    linkedHashSet.add(localeB);
                }
                i2++;
            }
            localeListCompatF = LocaleListCompat.f(new LocaleList((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()])));
        }
        return localeListCompatF.c() ? localeListCompatB : localeListCompatF;
    }

    public static Configuration x(Context context, int i2, LocaleListCompat localeListCompat, Configuration configuration, boolean z) {
        int i3;
        if (i2 == 1) {
            i3 = 16;
        } else if (i2 != 2) {
            i3 = z ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
        } else {
            i3 = 32;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i3 | (configuration2.uiMode & (-49));
        if (localeListCompat != null) {
            Api24Impl.d(configuration2, localeListCompat);
        }
        return configuration2;
    }

    public final void A() {
        ViewGroup viewGroup;
        if (this.A) {
            return;
        }
        Context context = this.l;
        int[] iArr = R$styleable.f783j;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!typedArrayObtainStyledAttributes.hasValue(117)) {
            typedArrayObtainStyledAttributes.recycle();
            md.k("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
            return;
        }
        if (typedArrayObtainStyledAttributes.getBoolean(126, false)) {
            j(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(117, false)) {
            j(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(118, false)) {
            j(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(119, false)) {
            j(10);
        }
        this.J = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        B();
        this.m.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        if (this.K) {
            viewGroup = this.I ? (ViewGroup) layoutInflaterFrom.inflate(com.vuitton.android.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(com.vuitton.android.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.J) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(com.vuitton.android.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.H = false;
            this.G = false;
        } else if (this.G) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(com.vuitton.android.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new ContextThemeWrapper(context, typedValue.resourceId) : context).inflate(com.vuitton.android.R.layout.abc_screen_toolbar, (ViewGroup) null);
            DecorContentParent decorContentParent = (DecorContentParent) viewGroup.findViewById(com.vuitton.android.R.id.decor_content_parent);
            this.s = decorContentParent;
            decorContentParent.setWindowCallback(this.m.getCallback());
            if (this.H) {
                this.s.i(109);
            }
            if (this.E) {
                this.s.i(2);
            }
            if (this.F) {
                this.s.i(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            StringBuilder sb = new StringBuilder("AppCompat does not support the current theme features: { windowActionBar: ");
            sb.append(this.G);
            sb.append(", windowActionBarOverlay: ");
            sb.append(this.H);
            sb.append(", android:windowIsFloating: ");
            sb.append(this.J);
            sb.append(", windowActionModeOverlay: ");
            sb.append(this.I);
            sb.append(", windowNoTitle: ");
            md.n(defpackage.a.p(sb, this.K, " }"));
            return;
        }
        ViewCompat.x(viewGroup, new OnApplyWindowInsetsListener() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.3
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                boolean z;
                boolean z2;
                int iJ = windowInsetsCompat.j();
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                Context context2 = appCompatDelegateImpl.l;
                int iJ2 = windowInsetsCompat.j();
                ActionBarContextView actionBarContextView = appCompatDelegateImpl.w;
                if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
                    z = false;
                } else {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) appCompatDelegateImpl.w.getLayoutParams();
                    boolean z3 = true;
                    if (appCompatDelegateImpl.w.isShown()) {
                        if (appCompatDelegateImpl.d1 == null) {
                            appCompatDelegateImpl.d1 = new Rect();
                            appCompatDelegateImpl.e1 = new Rect();
                        }
                        Rect rect = appCompatDelegateImpl.d1;
                        Rect rect2 = appCompatDelegateImpl.e1;
                        rect.set(windowInsetsCompat.h(), windowInsetsCompat.j(), windowInsetsCompat.i(), windowInsetsCompat.g());
                        ViewUtils.a(appCompatDelegateImpl.B, rect, rect2);
                        int i2 = rect.top;
                        int i3 = rect.left;
                        int i4 = rect.right;
                        WindowInsetsCompat windowInsetsCompatJ = ViewCompat.j(appCompatDelegateImpl.B);
                        int iH = windowInsetsCompatJ == null ? 0 : windowInsetsCompatJ.h();
                        int i5 = windowInsetsCompatJ == null ? 0 : windowInsetsCompatJ.i();
                        if (marginLayoutParams.topMargin == i2 && marginLayoutParams.leftMargin == i3 && marginLayoutParams.rightMargin == i4) {
                            z2 = false;
                        } else {
                            marginLayoutParams.topMargin = i2;
                            marginLayoutParams.leftMargin = i3;
                            marginLayoutParams.rightMargin = i4;
                            z2 = true;
                        }
                        if (i2 <= 0 || appCompatDelegateImpl.D != null) {
                            View view2 = appCompatDelegateImpl.D;
                            if (view2 != null) {
                                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                                int i6 = marginLayoutParams2.height;
                                int i7 = marginLayoutParams.topMargin;
                                if (i6 != i7 || marginLayoutParams2.leftMargin != iH || marginLayoutParams2.rightMargin != i5) {
                                    marginLayoutParams2.height = i7;
                                    marginLayoutParams2.leftMargin = iH;
                                    marginLayoutParams2.rightMargin = i5;
                                    appCompatDelegateImpl.D.setLayoutParams(marginLayoutParams2);
                                }
                            }
                        } else {
                            View view3 = new View(context2);
                            appCompatDelegateImpl.D = view3;
                            view3.setVisibility(8);
                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                            layoutParams.leftMargin = iH;
                            layoutParams.rightMargin = i5;
                            appCompatDelegateImpl.B.addView(appCompatDelegateImpl.D, -1, layoutParams);
                        }
                        View view4 = appCompatDelegateImpl.D;
                        z3 = view4 != null;
                        if (z3 && view4.getVisibility() != 0) {
                            View view5 = appCompatDelegateImpl.D;
                            view5.setBackgroundColor((view5.getWindowSystemUiVisibility() & 8192) != 0 ? ContextCompat.getColor(context2, com.vuitton.android.R.color.abc_decor_view_status_guard_light) : ContextCompat.getColor(context2, com.vuitton.android.R.color.abc_decor_view_status_guard));
                        }
                        if (!appCompatDelegateImpl.I && z3) {
                            iJ2 = 0;
                        }
                        z = z3;
                        z3 = z2;
                    } else if (marginLayoutParams.topMargin != 0) {
                        marginLayoutParams.topMargin = 0;
                        z = false;
                    } else {
                        z = false;
                        z3 = false;
                    }
                    if (z3) {
                        appCompatDelegateImpl.w.setLayoutParams(marginLayoutParams);
                    }
                }
                View view6 = appCompatDelegateImpl.D;
                if (view6 != null) {
                    view6.setVisibility(z ? 0 : 8);
                }
                return ViewCompat.o(view, iJ != iJ2 ? windowInsetsCompat.p(windowInsetsCompat.h(), iJ2, windowInsetsCompat.i(), windowInsetsCompat.g()) : windowInsetsCompat);
            }
        });
        if (this.s == null) {
            this.C = (TextView) viewGroup.findViewById(com.vuitton.android.R.id.title);
        }
        try {
            Method method = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", null);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            method.invoke(viewGroup, null);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(com.vuitton.android.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.m.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.m.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new ContentFrameLayout.OnAttachListener() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.5
            @Override // androidx.appcompat.widget.ContentFrameLayout.OnAttachListener
            public final void onDetachedFromWindow() {
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                DecorContentParent decorContentParent2 = appCompatDelegateImpl.s;
                if (decorContentParent2 != null) {
                    decorContentParent2.l();
                }
                if (appCompatDelegateImpl.x != null) {
                    appCompatDelegateImpl.m.getDecorView().removeCallbacks(appCompatDelegateImpl.y);
                    if (appCompatDelegateImpl.x.isShowing()) {
                        try {
                            appCompatDelegateImpl.x.dismiss();
                        } catch (IllegalArgumentException unused2) {
                        }
                    }
                    appCompatDelegateImpl.x = null;
                }
                ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = appCompatDelegateImpl.z;
                if (viewPropertyAnimatorCompat != null) {
                    viewPropertyAnimatorCompat.b();
                }
                MenuBuilder menuBuilder = appCompatDelegateImpl.D(0).f848h;
                if (menuBuilder != null) {
                    menuBuilder.c(true);
                }
            }
        });
        this.B = viewGroup;
        Object obj = this.f825k;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.r;
        if (!TextUtils.isEmpty(title)) {
            DecorContentParent decorContentParent2 = this.s;
            if (decorContentParent2 != null) {
                decorContentParent2.setWindowTitle(title);
            } else {
                ActionBar actionBar = this.p;
                if (actionBar != null) {
                    actionBar.setWindowTitle(title);
                } else {
                    TextView textView = this.C;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.B.findViewById(R.id.content);
        View decorView = this.m.getDecorView();
        contentFrameLayout2.f1207h.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        if (contentFrameLayout2.isLaidOut()) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(iArr);
        typedArrayObtainStyledAttributes2.getValue(124, contentFrameLayout2.getMinWidthMajor());
        typedArrayObtainStyledAttributes2.getValue(125, contentFrameLayout2.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes2.hasValue(122)) {
            typedArrayObtainStyledAttributes2.getValue(122, contentFrameLayout2.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(123)) {
            typedArrayObtainStyledAttributes2.getValue(123, contentFrameLayout2.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(120)) {
            typedArrayObtainStyledAttributes2.getValue(120, contentFrameLayout2.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(121)) {
            typedArrayObtainStyledAttributes2.getValue(121, contentFrameLayout2.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.A = true;
        PanelFeatureState panelFeatureStateD = D(0);
        if (this.R || panelFeatureStateD.f848h != null) {
            return;
        }
        F(108);
    }

    public final void B() {
        if (this.m == null) {
            Object obj = this.f825k;
            if (obj instanceof Activity) {
                s(((Activity) obj).getWindow());
            }
        }
        if (this.m != null) {
            return;
        }
        md.k("We have not been given a Window");
    }

    public final AutoNightModeManager C(Context context) {
        if (this.Y == null) {
            if (TwilightManager.d == null) {
                Context applicationContext = context.getApplicationContext();
                TwilightManager.d = new TwilightManager(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.Y = new AutoTimeNightModeManager(TwilightManager.d);
        }
        return this.Y;
    }

    public final PanelFeatureState D(int i2) {
        PanelFeatureState[] panelFeatureStateArr = this.M;
        if (panelFeatureStateArr == null || panelFeatureStateArr.length <= i2) {
            PanelFeatureState[] panelFeatureStateArr2 = new PanelFeatureState[i2 + 1];
            if (panelFeatureStateArr != null) {
                System.arraycopy(panelFeatureStateArr, 0, panelFeatureStateArr2, 0, panelFeatureStateArr.length);
            }
            this.M = panelFeatureStateArr2;
            panelFeatureStateArr = panelFeatureStateArr2;
        }
        PanelFeatureState panelFeatureState = panelFeatureStateArr[i2];
        if (panelFeatureState != null) {
            return panelFeatureState;
        }
        PanelFeatureState panelFeatureState2 = new PanelFeatureState();
        panelFeatureState2.f843a = i2;
        panelFeatureState2.n = false;
        panelFeatureStateArr[i2] = panelFeatureState2;
        return panelFeatureState2;
    }

    public final void E() {
        A();
        if (this.G && this.p == null) {
            Object obj = this.f825k;
            if (obj instanceof Activity) {
                this.p = new WindowDecorActionBar((Activity) obj, this.H);
            } else if (obj instanceof Dialog) {
                this.p = new WindowDecorActionBar((Dialog) obj);
            }
            ActionBar actionBar = this.p;
            if (actionBar != null) {
                actionBar.setDefaultDisplayHomeAsUpEnabled(this.c1);
            }
        }
    }

    public final void F(int i2) {
        this.t0 = (1 << i2) | this.t0;
        if (this.h0) {
            return;
        }
        View decorView = this.m.getDecorView();
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        decorView.postOnAnimation(this.b1);
        this.h0 = true;
    }

    public final int G(int i2, Context context) {
        if (i2 != -100) {
            if (i2 != -1) {
                if (i2 != 0) {
                    if (i2 != 1 && i2 != 2) {
                        if (i2 != 3) {
                            md.k("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                            return 0;
                        }
                        if (this.Z == null) {
                            this.Z = new AutoBatteryNightModeManager(context);
                        }
                        return this.Z.c();
                    }
                } else if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return C(context).c();
                }
            }
            return i2;
        }
        return -1;
    }

    public final boolean H() {
        boolean z = this.O;
        this.O = false;
        PanelFeatureState panelFeatureStateD = D(0);
        if (!panelFeatureStateD.m) {
            ActionMode actionMode = this.v;
            if (actionMode != null) {
                actionMode.c();
                return true;
            }
            E();
            ActionBar actionBar = this.p;
            if (actionBar == null || !actionBar.collapseActionView()) {
                return false;
            }
        } else if (!z) {
            w(panelFeatureStateD, true);
            return true;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:91:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:96:? A[RETURN, SYNTHETIC] */
    public final void I(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        int i2;
        ViewGroup.LayoutParams layoutParams;
        boolean z = panelFeatureState.m;
        int i3 = panelFeatureState.f843a;
        if (z || this.R) {
            return;
        }
        Context context = this.l;
        if (i3 == 0 && (context.getResources().getConfiguration().screenLayout & 15) == 4) {
            return;
        }
        Window.Callback callback = this.m.getCallback();
        if (callback != null && !callback.onMenuOpened(i3, panelFeatureState.f848h)) {
            w(panelFeatureState, true);
            return;
        }
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager != null && K(panelFeatureState, keyEvent)) {
            ViewGroup viewGroup = panelFeatureState.f846e;
            if (viewGroup != null && !panelFeatureState.n) {
                View view = panelFeatureState.g;
                if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                    i2 = -1;
                }
                panelFeatureState.l = false;
                WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(i2, -2, 0, 0, 1002, 8519680, -3);
                layoutParams2.gravity = panelFeatureState.f845c;
                layoutParams2.windowAnimations = panelFeatureState.d;
                windowManager.addView(panelFeatureState.f846e, layoutParams2);
                panelFeatureState.m = true;
                if (i3 == 0) {
                    M();
                }
            }
            if (viewGroup == null) {
                E();
                ActionBar actionBar = this.p;
                Context themedContext = actionBar != null ? actionBar.getThemedContext() : null;
                if (themedContext != null) {
                    context = themedContext;
                }
                TypedValue typedValue = new TypedValue();
                Resources.Theme themeNewTheme = context.getResources().newTheme();
                themeNewTheme.setTo(context.getTheme());
                themeNewTheme.resolveAttribute(com.vuitton.android.R.attr.actionBarPopupTheme, typedValue, true);
                int i4 = typedValue.resourceId;
                if (i4 != 0) {
                    themeNewTheme.applyStyle(i4, true);
                }
                themeNewTheme.resolveAttribute(com.vuitton.android.R.attr.panelMenuListTheme, typedValue, true);
                int i5 = typedValue.resourceId;
                if (i5 != 0) {
                    themeNewTheme.applyStyle(i5, true);
                } else {
                    themeNewTheme.applyStyle(com.vuitton.android.R.style.Theme_AppCompat_CompactMenu, true);
                }
                ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
                contextThemeWrapper.getTheme().setTo(themeNewTheme);
                panelFeatureState.f850j = contextThemeWrapper;
                TypedArray typedArrayObtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(R$styleable.f783j);
                panelFeatureState.f844b = typedArrayObtainStyledAttributes.getResourceId(86, 0);
                panelFeatureState.d = typedArrayObtainStyledAttributes.getResourceId(1, 0);
                typedArrayObtainStyledAttributes.recycle();
                panelFeatureState.f846e = new ListMenuDecorView(panelFeatureState.f850j);
                panelFeatureState.f845c = 81;
            } else if (panelFeatureState.n && viewGroup.getChildCount() > 0) {
                panelFeatureState.f846e.removeAllViews();
            }
            View view2 = panelFeatureState.g;
            if (view2 == null) {
                if (panelFeatureState.f848h != null) {
                    if (this.u == null) {
                        this.u = new PanelMenuPresenterCallback();
                    }
                    PanelMenuPresenterCallback panelMenuPresenterCallback = this.u;
                    if (panelFeatureState.f849i == null) {
                        ListMenuPresenter listMenuPresenter = new ListMenuPresenter(panelFeatureState.f850j, com.vuitton.android.R.layout.abc_list_menu_item_layout);
                        panelFeatureState.f849i = listMenuPresenter;
                        listMenuPresenter.f996h = panelMenuPresenterCallback;
                        MenuBuilder menuBuilder = panelFeatureState.f848h;
                        menuBuilder.b(listMenuPresenter, menuBuilder.f1004a);
                    }
                    View view3 = (View) panelFeatureState.f849i.b(panelFeatureState.f846e);
                    panelFeatureState.f847f = view3;
                    if (view3 != null) {
                    }
                }
                panelFeatureState.n = true;
                return;
            }
            panelFeatureState.f847f = view2;
            if (panelFeatureState.f847f != null && (panelFeatureState.g != null || panelFeatureState.f849i.a().getCount() > 0)) {
                ViewGroup.LayoutParams layoutParams3 = panelFeatureState.f847f.getLayoutParams();
                if (layoutParams3 == null) {
                    layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
                }
                panelFeatureState.f846e.setBackgroundResource(panelFeatureState.f844b);
                ViewParent parent = panelFeatureState.f847f.getParent();
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(panelFeatureState.f847f);
                }
                panelFeatureState.f846e.addView(panelFeatureState.f847f, layoutParams3);
                if (!panelFeatureState.f847f.hasFocus()) {
                    panelFeatureState.f847f.requestFocus();
                }
            }
            panelFeatureState.n = true;
            return;
            i2 = -2;
            panelFeatureState.l = false;
            WindowManager.LayoutParams layoutParams4 = new WindowManager.LayoutParams(i2, -2, 0, 0, 1002, 8519680, -3);
            layoutParams4.gravity = panelFeatureState.f845c;
            layoutParams4.windowAnimations = panelFeatureState.d;
            windowManager.addView(panelFeatureState.f846e, layoutParams4);
            panelFeatureState.m = true;
            if (i3 == 0) {
                M();
            }
        }
    }

    public final boolean J(PanelFeatureState panelFeatureState, int i2, KeyEvent keyEvent) {
        MenuBuilder menuBuilder;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((panelFeatureState.f851k || K(panelFeatureState, keyEvent)) && (menuBuilder = panelFeatureState.f848h) != null) {
            return menuBuilder.performShortcut(i2, keyEvent, 1);
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:62:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:67:0x00da  */
    /* JADX WARN: Code duplicated, block: B:71:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:74:0x00fa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:82:0x010f  */
    public final boolean K(PanelFeatureState panelFeatureState, KeyEvent keyEvent) {
        MenuBuilder menuBuilder;
        DecorContentParent decorContentParent;
        DecorContentParent decorContentParent2;
        Resources.Theme themeNewTheme;
        DecorContentParent decorContentParent3;
        DecorContentParent decorContentParent4;
        if (!this.R) {
            boolean z = panelFeatureState.f851k;
            int i2 = panelFeatureState.f843a;
            if (z) {
                return true;
            }
            PanelFeatureState panelFeatureState2 = this.N;
            if (panelFeatureState2 != null && panelFeatureState2 != panelFeatureState) {
                w(panelFeatureState2, false);
            }
            Window.Callback callback = this.m.getCallback();
            if (callback != null) {
                panelFeatureState.g = callback.onCreatePanelView(i2);
            }
            boolean z2 = i2 == 0 || i2 == 108;
            if (z2 && (decorContentParent4 = this.s) != null) {
                decorContentParent4.f();
            }
            if (panelFeatureState.g == null && (!z2 || !(this.p instanceof ToolbarActionBar))) {
                MenuBuilder menuBuilder2 = panelFeatureState.f848h;
                if (menuBuilder2 == null || panelFeatureState.o) {
                    if (menuBuilder2 == null) {
                        Context context = this.l;
                        if ((i2 == 0 || i2 == 108) && this.s != null) {
                            TypedValue typedValue = new TypedValue();
                            Resources.Theme theme = context.getTheme();
                            theme.resolveAttribute(com.vuitton.android.R.attr.actionBarTheme, typedValue, true);
                            if (typedValue.resourceId != 0) {
                                themeNewTheme = context.getResources().newTheme();
                                themeNewTheme.setTo(theme);
                                themeNewTheme.applyStyle(typedValue.resourceId, true);
                                themeNewTheme.resolveAttribute(com.vuitton.android.R.attr.actionBarWidgetTheme, typedValue, true);
                            } else {
                                theme.resolveAttribute(com.vuitton.android.R.attr.actionBarWidgetTheme, typedValue, true);
                                themeNewTheme = null;
                            }
                            if (typedValue.resourceId != 0) {
                                if (themeNewTheme == null) {
                                    themeNewTheme = context.getResources().newTheme();
                                    themeNewTheme.setTo(theme);
                                }
                                themeNewTheme.applyStyle(typedValue.resourceId, true);
                            }
                            if (themeNewTheme != null) {
                                ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
                                contextThemeWrapper.getTheme().setTo(themeNewTheme);
                                context = contextThemeWrapper;
                            }
                        }
                        MenuBuilder menuBuilder3 = new MenuBuilder(context);
                        menuBuilder3.f1007e = this;
                        MenuBuilder menuBuilder4 = panelFeatureState.f848h;
                        if (menuBuilder3 != menuBuilder4) {
                            if (menuBuilder4 != null) {
                                menuBuilder4.r(panelFeatureState.f849i);
                            }
                            panelFeatureState.f848h = menuBuilder3;
                            ListMenuPresenter listMenuPresenter = panelFeatureState.f849i;
                            if (listMenuPresenter != null) {
                                menuBuilder3.b(listMenuPresenter, menuBuilder3.f1004a);
                            }
                        }
                        if (panelFeatureState.f848h != null) {
                            if (z2 && (decorContentParent2 = this.s) != null) {
                                if (this.t == null) {
                                    this.t = new ActionMenuPresenterCallback();
                                }
                                decorContentParent2.d(panelFeatureState.f848h, this.t);
                            }
                            panelFeatureState.f848h.w();
                            if (callback.onCreatePanelMenu(i2, panelFeatureState.f848h)) {
                                panelFeatureState.o = false;
                            } else {
                                menuBuilder = panelFeatureState.f848h;
                                if (menuBuilder != null) {
                                    if (menuBuilder != null) {
                                        menuBuilder.r(panelFeatureState.f849i);
                                    }
                                    panelFeatureState.f848h = null;
                                }
                                if (z2 && (decorContentParent = this.s) != null) {
                                    decorContentParent.d(null, this.t);
                                }
                            }
                        }
                    } else {
                        if (z2) {
                            if (this.t == null) {
                                this.t = new ActionMenuPresenterCallback();
                            }
                            decorContentParent2.d(panelFeatureState.f848h, this.t);
                        }
                        panelFeatureState.f848h.w();
                        if (callback.onCreatePanelMenu(i2, panelFeatureState.f848h)) {
                            menuBuilder = panelFeatureState.f848h;
                            if (menuBuilder != null) {
                                if (menuBuilder != null) {
                                    menuBuilder.r(panelFeatureState.f849i);
                                }
                                panelFeatureState.f848h = null;
                            }
                            if (z2) {
                                decorContentParent.d(null, this.t);
                            }
                        } else {
                            panelFeatureState.o = false;
                        }
                    }
                }
                panelFeatureState.f848h.w();
                Bundle bundle = panelFeatureState.p;
                if (bundle != null) {
                    panelFeatureState.f848h.s(bundle);
                    panelFeatureState.p = null;
                }
                if (!callback.onPreparePanel(0, panelFeatureState.g, panelFeatureState.f848h)) {
                    if (z2 && (decorContentParent3 = this.s) != null) {
                        decorContentParent3.d(null, this.t);
                    }
                    panelFeatureState.f848h.v();
                    return false;
                }
                panelFeatureState.f848h.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
                panelFeatureState.f848h.v();
            }
            panelFeatureState.f851k = true;
            panelFeatureState.l = false;
            this.N = panelFeatureState;
            return true;
        }
        return false;
    }

    public final void L() {
        if (this.A) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final void M() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z = false;
            if (this.g1 != null && (D(0).m || this.v != null)) {
                z = true;
            }
            if (z && this.h1 == null) {
                this.h1 = Api33Impl.b(this.g1, this);
            } else {
                if (z || (onBackInvokedCallback = this.h1) == null) {
                    return;
                }
                Api33Impl.c(this.g1, onBackInvokedCallback);
                this.h1 = null;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x002a  */
    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public final boolean a(MenuBuilder menuBuilder, MenuItem menuItem) {
        PanelFeatureState panelFeatureState;
        Window.Callback callback = this.m.getCallback();
        if (callback != null && !this.R) {
            MenuBuilder menuBuilderK = menuBuilder.k();
            PanelFeatureState[] panelFeatureStateArr = this.M;
            int length = panelFeatureStateArr != null ? panelFeatureStateArr.length : 0;
            for (int i2 = 0; i2 < length; i2++) {
                panelFeatureState = panelFeatureStateArr[i2];
                if (panelFeatureState != null && panelFeatureState.f848h == menuBuilderK) {
                    if (panelFeatureState != null) {
                        return callback.onMenuItemSelected(panelFeatureState.f843a, menuItem);
                    }
                }
            }
            panelFeatureState = null;
            if (panelFeatureState != null) {
                return callback.onMenuItemSelected(panelFeatureState.f843a, menuItem);
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public final void b(MenuBuilder menuBuilder) {
        DecorContentParent decorContentParent = this.s;
        if (decorContentParent == null || !decorContentParent.a() || (ViewConfiguration.get(this.l).hasPermanentMenuKey() && !this.s.h())) {
            PanelFeatureState panelFeatureStateD = D(0);
            panelFeatureStateD.n = true;
            w(panelFeatureStateD, false);
            I(panelFeatureStateD, null);
            return;
        }
        Window.Callback callback = this.m.getCallback();
        if (this.s.e()) {
            this.s.b();
            if (this.R) {
                return;
            }
            callback.onPanelClosed(108, D(0).f848h);
            return;
        }
        if (callback == null || this.R) {
            return;
        }
        if (this.h0 && (1 & this.t0) != 0) {
            View decorView = this.m.getDecorView();
            Runnable runnable = this.b1;
            decorView.removeCallbacks(runnable);
            runnable.run();
        }
        PanelFeatureState panelFeatureStateD2 = D(0);
        MenuBuilder menuBuilder2 = panelFeatureStateD2.f848h;
        if (menuBuilder2 == null || panelFeatureStateD2.o || !callback.onPreparePanel(0, panelFeatureStateD2.g, menuBuilder2)) {
            return;
        }
        callback.onMenuOpened(108, panelFeatureStateD2.f848h);
        this.s.c();
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void e() {
        if (this.p != null) {
            E();
            if (this.p.invalidateOptionsMenu()) {
                return;
            }
            F(0);
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void g() {
        String strC;
        this.P = true;
        r(false, true);
        B();
        Object obj = this.f825k;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    strC = NavUtils.c(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e2) {
                    throw new IllegalArgumentException(e2);
                }
            } catch (IllegalArgumentException unused) {
                strC = null;
            }
            if (strC != null) {
                ActionBar actionBar = this.p;
                if (actionBar == null) {
                    this.c1 = true;
                } else {
                    actionBar.setDefaultDisplayHomeAsUpEnabled(true);
                }
            }
            synchronized (AppCompatDelegate.f820i) {
                AppCompatDelegate.i(this);
                AppCompatDelegate.f819h.add(new WeakReference(this));
            }
        }
        this.S = new Configuration(this.l.getResources().getConfiguration());
        this.Q = true;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004d  */
    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void h() {
        if (this.f825k instanceof Activity) {
            synchronized (AppCompatDelegate.f820i) {
                AppCompatDelegate.i(this);
            }
        }
        if (this.h0) {
            this.m.getDecorView().removeCallbacks(this.b1);
        }
        this.R = true;
        if (this.T != -100) {
            Object obj = this.f825k;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                i1.put(this.f825k.getClass().getName(), Integer.valueOf(this.T));
            } else {
                i1.remove(this.f825k.getClass().getName());
            }
        } else {
            i1.remove(this.f825k.getClass().getName());
        }
        ActionBar actionBar = this.p;
        if (actionBar != null) {
            actionBar.onDestroy();
        }
        AutoTimeNightModeManager autoTimeNightModeManager = this.Y;
        if (autoTimeNightModeManager != null) {
            autoTimeNightModeManager.a();
        }
        AutoBatteryNightModeManager autoBatteryNightModeManager = this.Z;
        if (autoBatteryNightModeManager != null) {
            autoBatteryNightModeManager.a();
        }
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final boolean j(int i2) {
        if (i2 == 8) {
            i2 = 108;
        } else if (i2 == 9) {
            i2 = 109;
        }
        if (this.K && i2 == 108) {
            return false;
        }
        if (this.G && i2 == 1) {
            this.G = false;
        }
        if (i2 == 1) {
            L();
            this.K = true;
            return true;
        }
        if (i2 == 2) {
            L();
            this.E = true;
            return true;
        }
        if (i2 == 5) {
            L();
            this.F = true;
            return true;
        }
        if (i2 == 10) {
            L();
            this.I = true;
            return true;
        }
        if (i2 == 108) {
            L();
            this.G = true;
            return true;
        }
        if (i2 != 109) {
            return this.m.requestFeature(i2);
        }
        L();
        this.H = true;
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void l(int i2) {
        A();
        ViewGroup viewGroup = (ViewGroup) this.B.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.l).inflate(i2, viewGroup);
        this.n.a(this.m.getCallback());
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void m(View view) {
        A();
        ViewGroup viewGroup = (ViewGroup) this.B.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.n.a(this.m.getCallback());
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void n(View view, ViewGroup.LayoutParams layoutParams) {
        A();
        ViewGroup viewGroup = (ViewGroup) this.B.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.n.a(this.m.getCallback());
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final void o(CharSequence charSequence) {
        this.r = charSequence;
        DecorContentParent decorContentParent = this.s;
        if (decorContentParent != null) {
            decorContentParent.setWindowTitle(charSequence);
            return;
        }
        ActionBar actionBar = this.p;
        if (actionBar != null) {
            actionBar.setWindowTitle(charSequence);
            return;
        }
        TextView textView = this.C;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View appCompatRatingBar;
        View view2 = null;
        if (this.f1 == null) {
            int[] iArr = R$styleable.f783j;
            Context context2 = this.l;
            TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(iArr);
            String string = typedArrayObtainStyledAttributes.getString(116);
            typedArrayObtainStyledAttributes.recycle();
            if (string == null) {
                this.f1 = new AppCompatViewInflater();
            } else {
                try {
                    this.f1 = (AppCompatViewInflater) context2.getClassLoader().loadClass(string).getDeclaredConstructor(null).newInstance(null);
                } catch (Throwable unused) {
                    this.f1 = new AppCompatViewInflater();
                }
            }
        }
        AppCompatViewInflater appCompatViewInflater = this.f1;
        int i2 = VectorEnabledTintResources.f1344c;
        appCompatViewInflater.getClass();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R$styleable.A, 0, 0);
        byte b2 = 4;
        int resourceId = typedArrayObtainStyledAttributes2.getResourceId(4, 0);
        typedArrayObtainStyledAttributes2.recycle();
        Context contextThemeWrapper = (resourceId == 0 || ((context instanceof ContextThemeWrapper) && ((ContextThemeWrapper) context).f904a == resourceId)) ? context : new ContextThemeWrapper(context, resourceId);
        str.getClass();
        switch (str.hashCode()) {
            case -1946472170:
                b2 = !str.equals("RatingBar") ? (byte) -1 : (byte) 0;
                break;
            case -1455429095:
                b2 = !str.equals("CheckedTextView") ? (byte) -1 : (byte) 1;
                break;
            case -1346021293:
                b2 = !str.equals("MultiAutoCompleteTextView") ? (byte) -1 : (byte) 2;
                break;
            case -938935918:
                b2 = !str.equals("TextView") ? (byte) -1 : (byte) 3;
                break;
            case -937446323:
                if (!str.equals("ImageButton")) {
                    b2 = -1;
                }
                break;
            case -658531749:
                b2 = !str.equals("SeekBar") ? (byte) -1 : (byte) 5;
                break;
            case -339785223:
                b2 = !str.equals("Spinner") ? (byte) -1 : (byte) 6;
                break;
            case 776382189:
                b2 = !str.equals("RadioButton") ? (byte) -1 : (byte) 7;
                break;
            case 799298502:
                b2 = !str.equals("ToggleButton") ? (byte) -1 : (byte) 8;
                break;
            case 1125864064:
                b2 = !str.equals("ImageView") ? (byte) -1 : (byte) 9;
                break;
            case 1413872058:
                b2 = !str.equals("AutoCompleteTextView") ? (byte) -1 : (byte) 10;
                break;
            case 1601505219:
                b2 = !str.equals("CheckBox") ? (byte) -1 : (byte) 11;
                break;
            case 1666676343:
                b2 = !str.equals("EditText") ? (byte) -1 : (byte) 12;
                break;
            case 2001146706:
                b2 = !str.equals("Button") ? (byte) -1 : (byte) 13;
                break;
            default:
                b2 = -1;
                break;
        }
        switch (b2) {
            case 0:
                appCompatRatingBar = new AppCompatRatingBar(contextThemeWrapper, attributeSet);
                break;
            case 1:
                appCompatRatingBar = new AppCompatCheckedTextView(contextThemeWrapper, attributeSet);
                break;
            case 2:
                appCompatRatingBar = new AppCompatMultiAutoCompleteTextView(contextThemeWrapper, attributeSet);
                break;
            case 3:
                appCompatRatingBar = appCompatViewInflater.e(contextThemeWrapper, attributeSet);
                break;
            case 4:
                appCompatRatingBar = new AppCompatImageButton(contextThemeWrapper, attributeSet);
                break;
            case 5:
                appCompatRatingBar = new AppCompatSeekBar(contextThemeWrapper, attributeSet);
                break;
            case 6:
                appCompatRatingBar = new AppCompatSpinner(contextThemeWrapper, attributeSet);
                break;
            case 7:
                appCompatRatingBar = appCompatViewInflater.d(contextThemeWrapper, attributeSet);
                break;
            case 8:
                appCompatRatingBar = new AppCompatToggleButton(contextThemeWrapper, attributeSet);
                break;
            case 9:
                appCompatRatingBar = new AppCompatImageView(contextThemeWrapper, attributeSet);
                break;
            case 10:
                appCompatRatingBar = appCompatViewInflater.a(contextThemeWrapper, attributeSet);
                break;
            case 11:
                appCompatRatingBar = appCompatViewInflater.c(contextThemeWrapper, attributeSet);
                break;
            case 12:
                appCompatRatingBar = new AppCompatEditText(contextThemeWrapper, attributeSet);
                break;
            case 13:
                appCompatRatingBar = appCompatViewInflater.b(contextThemeWrapper, attributeSet);
                break;
            default:
                appCompatRatingBar = null;
                break;
        }
        if (appCompatRatingBar == null && context != contextThemeWrapper) {
            Object[] objArr = appCompatViewInflater.f858a;
            if (str.equals("view")) {
                str = attributeSet.getAttributeValue(null, "class");
            }
            try {
                objArr[0] = contextThemeWrapper;
                objArr[1] = attributeSet;
                if (-1 == str.indexOf(46)) {
                    int i3 = 0;
                    while (true) {
                        String[] strArr = AppCompatViewInflater.d;
                        if (i3 < 3) {
                            View viewF = appCompatViewInflater.f(contextThemeWrapper, str, strArr[i3]);
                            if (viewF != null) {
                                objArr[0] = null;
                                objArr[1] = null;
                                view2 = viewF;
                            } else {
                                i3++;
                            }
                        } else {
                            objArr[0] = null;
                            objArr[1] = null;
                        }
                    }
                } else {
                    View viewF2 = appCompatViewInflater.f(contextThemeWrapper, str, null);
                    objArr[0] = null;
                    objArr[1] = null;
                    view2 = viewF2;
                }
            } catch (Exception unused2) {
                objArr[0] = null;
                objArr[1] = null;
            } catch (Throwable th) {
                objArr[0] = null;
                objArr[1] = null;
                throw th;
            }
            appCompatRatingBar = view2;
        }
        if (appCompatRatingBar != null) {
            Context context3 = appCompatRatingBar.getContext();
            if ((context3 instanceof ContextWrapper) && appCompatRatingBar.hasOnClickListeners()) {
                TypedArray typedArrayObtainStyledAttributes3 = context3.obtainStyledAttributes(attributeSet, AppCompatViewInflater.f856c);
                String string2 = typedArrayObtainStyledAttributes3.getString(0);
                if (string2 != null) {
                    appCompatRatingBar.setOnClickListener(new AppCompatViewInflater.DeclaredOnClickListener(appCompatRatingBar, string2));
                }
                typedArrayObtainStyledAttributes3.recycle();
            }
        }
        return appCompatRatingBar;
    }

    @Override // androidx.appcompat.app.AppCompatDelegate
    public final ActionMode p(ActionMode.Callback callback) {
        ActionMode actionModeOnWindowStartingSupportActionMode;
        ViewGroup viewGroup;
        if (callback == null) {
            md.n("ActionMode callback can not be null.");
            return null;
        }
        ActionMode actionMode = this.v;
        if (actionMode != null) {
            actionMode.c();
        }
        ActionModeCallbackWrapperV9 actionModeCallbackWrapperV9 = new ActionModeCallbackWrapperV9(callback);
        E();
        ActionBar actionBar = this.p;
        AppCompatCallback appCompatCallback = this.o;
        if (actionBar != null) {
            ActionMode actionModeStartActionMode = actionBar.startActionMode(actionModeCallbackWrapperV9);
            this.v = actionModeStartActionMode;
            if (actionModeStartActionMode != null && appCompatCallback != null) {
                appCompatCallback.onSupportActionModeStarted(actionModeStartActionMode);
            }
        }
        if (this.v == null) {
            ViewPropertyAnimatorCompat viewPropertyAnimatorCompat = this.z;
            if (viewPropertyAnimatorCompat != null) {
                viewPropertyAnimatorCompat.b();
            }
            ActionMode actionMode2 = this.v;
            if (actionMode2 != null) {
                actionMode2.c();
            }
            if (appCompatCallback == null || this.R) {
                actionModeOnWindowStartingSupportActionMode = null;
            } else {
                try {
                    actionModeOnWindowStartingSupportActionMode = appCompatCallback.onWindowStartingSupportActionMode(actionModeCallbackWrapperV9);
                } catch (AbstractMethodError unused) {
                    actionModeOnWindowStartingSupportActionMode = null;
                }
            }
            if (actionModeOnWindowStartingSupportActionMode != null) {
                this.v = actionModeOnWindowStartingSupportActionMode;
            } else {
                if (this.w == null) {
                    boolean z = this.J;
                    Context context = this.l;
                    if (z) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme = context.getTheme();
                        theme.resolveAttribute(com.vuitton.android.R.attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            Resources.Theme themeNewTheme = context.getResources().newTheme();
                            themeNewTheme.setTo(theme);
                            themeNewTheme.applyStyle(typedValue.resourceId, true);
                            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, 0);
                            contextThemeWrapper.getTheme().setTo(themeNewTheme);
                            context = contextThemeWrapper;
                        }
                        this.w = new ActionBarContextView(context);
                        PopupWindow popupWindow = new PopupWindow(context, (AttributeSet) null, com.vuitton.android.R.attr.actionModePopupWindowStyle);
                        this.x = popupWindow;
                        popupWindow.setWindowLayoutType(2);
                        this.x.setContentView(this.w);
                        this.x.setWidth(-1);
                        context.getTheme().resolveAttribute(com.vuitton.android.R.attr.actionBarSize, typedValue, true);
                        this.w.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                        this.x.setHeight(-2);
                        this.y = new Runnable() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.6
                            @Override // java.lang.Runnable
                            public void run() {
                                ViewGroup viewGroup2;
                                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                                appCompatDelegateImpl.x.showAtLocation(appCompatDelegateImpl.w, 55, 0, 0);
                                ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = AppCompatDelegateImpl.this.z;
                                if (viewPropertyAnimatorCompat2 != null) {
                                    viewPropertyAnimatorCompat2.b();
                                }
                                AppCompatDelegateImpl appCompatDelegateImpl2 = AppCompatDelegateImpl.this;
                                boolean z2 = appCompatDelegateImpl2.A && (viewGroup2 = appCompatDelegateImpl2.B) != null && viewGroup2.isLaidOut();
                                AppCompatDelegateImpl appCompatDelegateImpl3 = AppCompatDelegateImpl.this;
                                if (!z2) {
                                    appCompatDelegateImpl3.w.setAlpha(1.0f);
                                    AppCompatDelegateImpl.this.w.setVisibility(0);
                                    return;
                                }
                                appCompatDelegateImpl3.w.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                AppCompatDelegateImpl appCompatDelegateImpl4 = AppCompatDelegateImpl.this;
                                ViewPropertyAnimatorCompat viewPropertyAnimatorCompatB = ViewCompat.b(appCompatDelegateImpl4.w);
                                viewPropertyAnimatorCompatB.a(1.0f);
                                appCompatDelegateImpl4.z = viewPropertyAnimatorCompatB;
                                AppCompatDelegateImpl.this.z.d(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.6.1
                                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                                    public final void a() {
                                        AnonymousClass6 anonymousClass6 = AnonymousClass6.this;
                                        AppCompatDelegateImpl.this.w.setAlpha(1.0f);
                                        AppCompatDelegateImpl.this.z.d(null);
                                        AppCompatDelegateImpl.this.z = null;
                                    }

                                    @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                                    public final void c() {
                                        AppCompatDelegateImpl.this.w.setVisibility(0);
                                    }
                                });
                            }
                        };
                    } else {
                        ViewStubCompat viewStubCompat = (ViewStubCompat) this.B.findViewById(com.vuitton.android.R.id.action_mode_bar_stub);
                        if (viewStubCompat != null) {
                            E();
                            ActionBar actionBar2 = this.p;
                            Context themedContext = actionBar2 != null ? actionBar2.getThemedContext() : null;
                            if (themedContext != null) {
                                context = themedContext;
                            }
                            viewStubCompat.setLayoutInflater(LayoutInflater.from(context));
                            this.w = (ActionBarContextView) viewStubCompat.a();
                        }
                    }
                }
                if (this.w != null) {
                    ViewPropertyAnimatorCompat viewPropertyAnimatorCompat2 = this.z;
                    if (viewPropertyAnimatorCompat2 != null) {
                        viewPropertyAnimatorCompat2.b();
                    }
                    this.w.g();
                    StandaloneActionMode standaloneActionMode = new StandaloneActionMode(this.w.getContext(), this.w, actionModeCallbackWrapperV9, this.x == null);
                    if (actionModeCallbackWrapperV9.f831a.b(standaloneActionMode, standaloneActionMode.f911i)) {
                        standaloneActionMode.i();
                        this.w.e(standaloneActionMode);
                        this.v = standaloneActionMode;
                        boolean z2 = this.A && (viewGroup = this.B) != null && viewGroup.isLaidOut();
                        ActionBarContextView actionBarContextView = this.w;
                        if (z2) {
                            actionBarContextView.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            ViewPropertyAnimatorCompat viewPropertyAnimatorCompatB = ViewCompat.b(this.w);
                            viewPropertyAnimatorCompatB.a(1.0f);
                            this.z = viewPropertyAnimatorCompatB;
                            viewPropertyAnimatorCompatB.d(new ViewPropertyAnimatorListenerAdapter() { // from class: androidx.appcompat.app.AppCompatDelegateImpl.7
                                @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                                public final void a() {
                                    AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                                    appCompatDelegateImpl.w.setAlpha(1.0f);
                                    appCompatDelegateImpl.z.d(null);
                                    appCompatDelegateImpl.z = null;
                                }

                                @Override // androidx.core.view.ViewPropertyAnimatorListenerAdapter, androidx.core.view.ViewPropertyAnimatorListener
                                public final void c() {
                                    AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                                    appCompatDelegateImpl.w.setVisibility(0);
                                    if (appCompatDelegateImpl.w.getParent() instanceof View) {
                                        View view = (View) appCompatDelegateImpl.w.getParent();
                                        WeakHashMap weakHashMap = ViewCompat.f12200a;
                                        view.requestApplyInsets();
                                    }
                                }
                            });
                        } else {
                            actionBarContextView.setAlpha(1.0f);
                            this.w.setVisibility(0);
                            if (this.w.getParent() instanceof View) {
                                View view = (View) this.w.getParent();
                                WeakHashMap weakHashMap = ViewCompat.f12200a;
                                view.requestApplyInsets();
                            }
                        }
                        if (this.x != null) {
                            this.m.getDecorView().post(this.y);
                        }
                    } else {
                        this.v = null;
                    }
                }
            }
            ActionMode actionMode3 = this.v;
            if (actionMode3 != null && appCompatCallback != null) {
                appCompatCallback.onSupportActionModeStarted(actionMode3);
            }
            M();
            this.v = this.v;
        }
        M();
        return this.v;
    }

    /* JADX WARN: Code duplicated, block: B:62:0x00d4  */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean r(boolean z, boolean z2) {
        int i2;
        boolean z3;
        if (this.R) {
            return false;
        }
        int i3 = this.T;
        if (i3 == -100) {
            i3 = AppCompatDelegate.f816c;
        }
        Context context = this.l;
        int iG = G(i3, context);
        LocaleListCompat localeListCompatT = Build.VERSION.SDK_INT < 33 ? t(context) : null;
        if (!z2 && localeListCompatT != null) {
            localeListCompatT = Api24Impl.b(context.getResources().getConfiguration());
        }
        Configuration configurationX = x(context, iG, localeListCompatT, null, false);
        boolean z4 = this.X;
        boolean z5 = true;
        Object obj = this.f825k;
        if (z4 || !(obj instanceof Activity)) {
            this.X = true;
            i2 = this.W;
        } else {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                i2 = 0;
            } else {
                try {
                    ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(context, obj.getClass()), 269221888);
                    if (activityInfo != null) {
                        this.W = activityInfo.configChanges;
                    }
                } catch (PackageManager.NameNotFoundException unused) {
                    this.W = 0;
                }
                this.X = true;
                i2 = this.W;
            }
        }
        Configuration configuration = this.S;
        if (configuration == null) {
            configuration = context.getResources().getConfiguration();
        }
        int i4 = configuration.uiMode & 48;
        int i5 = configurationX.uiMode & 48;
        LocaleListCompat localeListCompatB = Api24Impl.b(configuration);
        LocaleListCompat localeListCompatB2 = localeListCompatT == null ? null : Api24Impl.b(configurationX);
        int i6 = i4 != i5 ? 512 : 0;
        if (localeListCompatB2 != null && !localeListCompatB.equals(localeListCompatB2)) {
            i6 |= 8196;
        }
        if (((~i2) & i6) != 0 && z && this.P && ((k1 || this.Q) && (obj instanceof Activity))) {
            Activity activity = (Activity) obj;
            if (activity.isChild()) {
                z3 = false;
            } else {
                if (Build.VERSION.SDK_INT >= 31 && (i6 & 8192) != 0) {
                    activity.getWindow().getDecorView().setLayoutDirection(configurationX.getLayoutDirection());
                }
                ActivityCompat.recreate(activity);
                z3 = true;
            }
        } else {
            z3 = false;
        }
        if (z3 || i6 == 0) {
            z5 = z3;
        } else {
            boolean z6 = (i6 & i2) == i6;
            Resources resources = context.getResources();
            Configuration configuration2 = new Configuration(resources.getConfiguration());
            configuration2.uiMode = (resources.getConfiguration().uiMode & (-49)) | i5;
            if (localeListCompatB2 != null) {
                Api24Impl.d(configuration2, localeListCompatB2);
            }
            resources.updateConfiguration(configuration2, null);
            int i7 = this.V;
            if (i7 != 0) {
                context.setTheme(i7);
                context.getTheme().applyStyle(this.V, true);
            }
            if (z6 && (obj instanceof Activity)) {
                Activity activity2 = (Activity) obj;
                if (activity2 instanceof LifecycleOwner) {
                    if (((LifecycleOwner) activity2).getD().getF13454i().a(Lifecycle.State.CREATED)) {
                        activity2.onConfigurationChanged(configuration2);
                    }
                } else if (this.Q && !this.R) {
                    activity2.onConfigurationChanged(configuration2);
                }
            }
        }
        if (z5 && (obj instanceof AppCompatActivity)) {
            if ((i6 & 512) != 0) {
                ((AppCompatActivity) obj).onNightModeChanged(iG);
            }
            if ((i6 & 4) != 0) {
                ((AppCompatActivity) obj).onLocalesChanged(localeListCompatT);
            }
        }
        if (localeListCompatB2 != null) {
            Api24Impl.c(Api24Impl.b(context.getResources().getConfiguration()));
        }
        if (i3 == 0) {
            C(context).e();
        } else {
            AutoTimeNightModeManager autoTimeNightModeManager = this.Y;
            if (autoTimeNightModeManager != null) {
                autoTimeNightModeManager.a();
            }
        }
        AutoBatteryNightModeManager autoBatteryNightModeManager = this.Z;
        if (i3 == 3) {
            if (autoBatteryNightModeManager == null) {
                this.Z = new AutoBatteryNightModeManager(context);
            }
            this.Z.e();
        } else if (autoBatteryNightModeManager != null) {
            autoBatteryNightModeManager.a();
        }
        return z5;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005a  */
    public final void s(Window window) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        OnBackInvokedCallback onBackInvokedCallback;
        if (this.m != null) {
            md.k("AppCompat has already installed itself into the Window");
            return;
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof AppCompatWindowCallback) {
            md.k("AppCompat has already installed itself into the Window");
            return;
        }
        AppCompatWindowCallback appCompatWindowCallback = new AppCompatWindowCallback(callback);
        this.n = appCompatWindowCallback;
        window.setCallback(appCompatWindowCallback);
        TintTypedArray tintTypedArrayF = TintTypedArray.f(this.l, null, j1);
        Drawable drawableC = tintTypedArrayF.c(0);
        if (drawableC != null) {
            window.setBackgroundDrawable(drawableC);
        }
        tintTypedArrayF.g();
        this.m = window;
        if (Build.VERSION.SDK_INT < 33 || (onBackInvokedDispatcher = this.g1) != null) {
            return;
        }
        if (onBackInvokedDispatcher != null && (onBackInvokedCallback = this.h1) != null) {
            Api33Impl.c(onBackInvokedDispatcher, onBackInvokedCallback);
            this.h1 = null;
        }
        Object obj = this.f825k;
        if (obj instanceof Activity) {
            Activity activity = (Activity) obj;
            if (activity.getWindow() != null) {
                this.g1 = Api33Impl.a(activity);
            } else {
                this.g1 = null;
            }
        } else {
            this.g1 = null;
        }
        M();
    }

    public final void u(int i2, PanelFeatureState panelFeatureState, MenuBuilder menuBuilder) {
        if (menuBuilder == null) {
            if (panelFeatureState == null && i2 >= 0) {
                PanelFeatureState[] panelFeatureStateArr = this.M;
                if (i2 < panelFeatureStateArr.length) {
                    panelFeatureState = panelFeatureStateArr[i2];
                }
            }
            if (panelFeatureState != null) {
                menuBuilder = panelFeatureState.f848h;
            }
        }
        if ((panelFeatureState == null || panelFeatureState.m) && !this.R) {
            AppCompatWindowCallback appCompatWindowCallback = this.n;
            Window.Callback callback = this.m.getCallback();
            appCompatWindowCallback.getClass();
            try {
                appCompatWindowCallback.f836f = true;
                callback.onPanelClosed(i2, menuBuilder);
            } finally {
                appCompatWindowCallback.f836f = false;
            }
        }
    }

    public final void v(MenuBuilder menuBuilder) {
        if (this.L) {
            return;
        }
        this.L = true;
        this.s.l();
        Window.Callback callback = this.m.getCallback();
        if (callback != null && !this.R) {
            callback.onPanelClosed(108, menuBuilder);
        }
        this.L = false;
    }

    public final void w(PanelFeatureState panelFeatureState, boolean z) {
        ViewGroup viewGroup;
        DecorContentParent decorContentParent;
        if (z && panelFeatureState.f843a == 0 && (decorContentParent = this.s) != null && decorContentParent.e()) {
            v(panelFeatureState.f848h);
            return;
        }
        WindowManager windowManager = (WindowManager) this.l.getSystemService("window");
        if (windowManager != null && panelFeatureState.m && (viewGroup = panelFeatureState.f846e) != null) {
            windowManager.removeView(viewGroup);
            if (z) {
                u(panelFeatureState.f843a, panelFeatureState, null);
            }
        }
        panelFeatureState.f851k = false;
        panelFeatureState.l = false;
        panelFeatureState.m = false;
        panelFeatureState.f847f = null;
        panelFeatureState.n = true;
        if (this.N == panelFeatureState) {
            this.N = null;
        }
        if (panelFeatureState.f843a == 0) {
            M();
        }
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0039  */
    /* JADX WARN: Code duplicated, block: B:21:0x0044 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:22:0x0046 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:24:0x004a  */
    /* JADX WARN: Code duplicated, block: B:26:0x0050  */
    /* JADX WARN: Code duplicated, block: B:28:0x0058  */
    /* JADX WARN: Code duplicated, block: B:30:0x005c  */
    /* JADX WARN: Code duplicated, block: B:33:0x0065  */
    /* JADX WARN: Code duplicated, block: B:36:0x0069 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:37:0x006b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:39:0x006f  */
    /* JADX WARN: Code duplicated, block: B:42:0x0075  */
    /* JADX WARN: Code duplicated, block: B:56:0x00af  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:69:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:70:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:76:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:79:0x00f0 A[RETURN] */
    public final boolean y(KeyEvent keyEvent) {
        int keyCode;
        PanelFeatureState panelFeatureStateD;
        DecorContentParent decorContentParent;
        boolean z;
        boolean zB;
        boolean zK;
        AudioManager audioManager;
        PanelFeatureState panelFeatureStateD2;
        Object obj = this.f825k;
        if (((obj instanceof KeyEventDispatcher$Component) || (obj instanceof AppCompatDialog)) && this.m.getDecorView() != null) {
            WeakHashMap weakHashMap = ViewCompat.f12200a;
        }
        if (keyEvent.getKeyCode() == 82) {
            AppCompatWindowCallback appCompatWindowCallback = this.n;
            Window.Callback callback = this.m.getCallback();
            appCompatWindowCallback.getClass();
            try {
                appCompatWindowCallback.f835e = true;
                boolean zDispatchKeyEvent = callback.dispatchKeyEvent(keyEvent);
                appCompatWindowCallback.f835e = false;
                if (!zDispatchKeyEvent) {
                    keyCode = keyEvent.getKeyCode();
                    if (keyEvent.getAction() == 0) {
                        if (keyCode != 4) {
                            this.O = (keyEvent.getFlags() & 128) != 0;
                            return false;
                        }
                        if (keyCode == 82) {
                            if (keyEvent.getRepeatCount() == 0) {
                                panelFeatureStateD2 = D(0);
                                if (!panelFeatureStateD2.m) {
                                    K(panelFeatureStateD2, keyEvent);
                                    return true;
                                }
                            }
                        }
                        return false;
                    }
                    if (keyCode != 4) {
                        if (keyCode == 82) {
                            if (this.v == null) {
                                panelFeatureStateD = D(0);
                                decorContentParent = this.s;
                                Context context = this.l;
                                if (decorContentParent != null || !decorContentParent.a() || ViewConfiguration.get(context).hasPermanentMenuKey()) {
                                    z = panelFeatureStateD.m;
                                    if (!z || panelFeatureStateD.l) {
                                        w(panelFeatureStateD, true);
                                        zB = z;
                                    } else if (panelFeatureStateD.f851k) {
                                        if (panelFeatureStateD.o) {
                                            panelFeatureStateD.f851k = false;
                                            zK = K(panelFeatureStateD, keyEvent);
                                        } else {
                                            zK = true;
                                        }
                                        if (zK) {
                                            I(panelFeatureStateD, keyEvent);
                                            zB = true;
                                        } else {
                                            zB = false;
                                        }
                                    } else {
                                        zB = false;
                                    }
                                } else if (this.s.e()) {
                                    zB = this.s.b();
                                } else if (this.R || !K(panelFeatureStateD, keyEvent)) {
                                    zB = false;
                                } else {
                                    zB = this.s.c();
                                }
                                if (zB && (audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio")) != null) {
                                    audioManager.playSoundEffect(0);
                                    return true;
                                }
                            }
                        }
                        return false;
                    }
                    if (H()) {
                        return false;
                    }
                }
            } catch (Throwable th) {
                appCompatWindowCallback.f835e = false;
                throw th;
            }
        } else {
            keyCode = keyEvent.getKeyCode();
            if (keyEvent.getAction() == 0) {
                if (keyCode != 4) {
                    this.O = (keyEvent.getFlags() & 128) != 0;
                    return false;
                }
                if (keyCode == 82) {
                    if (keyEvent.getRepeatCount() == 0) {
                        panelFeatureStateD2 = D(0);
                        if (!panelFeatureStateD2.m) {
                            K(panelFeatureStateD2, keyEvent);
                            return true;
                        }
                    }
                }
                return false;
            }
            if (keyCode != 4) {
                if (keyCode == 82) {
                    if (this.v == null) {
                        panelFeatureStateD = D(0);
                        decorContentParent = this.s;
                        Context context2 = this.l;
                        if (decorContentParent != null) {
                            z = panelFeatureStateD.m;
                            if (z) {
                                w(panelFeatureStateD, true);
                                zB = z;
                            } else {
                                w(panelFeatureStateD, true);
                                zB = z;
                            }
                        } else {
                            z = panelFeatureStateD.m;
                            if (z) {
                                w(panelFeatureStateD, true);
                                zB = z;
                            } else {
                                w(panelFeatureStateD, true);
                                zB = z;
                            }
                        }
                        if (zB) {
                            audioManager.playSoundEffect(0);
                            return true;
                        }
                    }
                }
                return false;
            }
            if (H()) {
                return false;
            }
        }
        return true;
    }

    public final void z(int i2) {
        PanelFeatureState panelFeatureStateD = D(i2);
        if (panelFeatureStateD.f848h != null) {
            Bundle bundle = new Bundle();
            panelFeatureStateD.f848h.t(bundle);
            if (bundle.size() > 0) {
                panelFeatureStateD.p = bundle;
            }
            panelFeatureStateD.f848h.w();
            panelFeatureStateD.f848h.clear();
        }
        panelFeatureStateD.o = true;
        panelFeatureStateD.n = true;
        if ((i2 == 108 || i2 == 0) && this.s != null) {
            PanelFeatureState panelFeatureStateD2 = D(0);
            panelFeatureStateD2.f851k = false;
            K(panelFeatureStateD2, null);
        }
    }

    public static final class PanelFeatureState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f843a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f844b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f845c;
        public int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public ViewGroup f846e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f847f;
        public View g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public MenuBuilder f848h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ListMenuPresenter f849i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public ContextThemeWrapper f850j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f851k;
        public boolean l;
        public boolean m;
        public boolean n;
        public boolean o;
        public Bundle p;

        public static class SavedState implements Parcelable {
            public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f852b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f853c;
            public Bundle d;

            public static SavedState a(Parcel parcel, ClassLoader classLoader) {
                SavedState savedState = new SavedState();
                savedState.f852b = parcel.readInt();
                boolean z = parcel.readInt() == 1;
                savedState.f853c = z;
                if (z) {
                    savedState.d = parcel.readBundle(classLoader);
                }
                return savedState;
            }

            @Override // android.os.Parcelable
            public final int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public final void writeToParcel(Parcel parcel, int i2) {
                parcel.writeInt(this.f852b);
                parcel.writeInt(this.f853c ? 1 : 0);
                if (this.f853c) {
                    parcel.writeBundle(this.d);
                }
            }

            /* JADX INFO: renamed from: androidx.appcompat.app.AppCompatDelegateImpl$PanelFeatureState$SavedState$1, reason: invalid class name */
            public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
                @Override // android.os.Parcelable.Creator
                public final Object createFromParcel(Parcel parcel) {
                    return SavedState.a(parcel, null);
                }

                @Override // android.os.Parcelable.Creator
                public final Object[] newArray(int i2) {
                    return new SavedState[i2];
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return SavedState.a(parcel, classLoader);
                }
            }
        }
    }

    public class AppCompatWindowCallback extends WindowCallbackWrapper {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ActionBarMenuCallback f834c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f835e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f836f;

        public AppCompatWindowCallback(Window.Callback callback) {
            super(callback);
        }

        public final void a(Window.Callback callback) {
            try {
                this.d = true;
                callback.onContentChanged();
            } finally {
                this.d = false;
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            boolean z = this.f835e;
            Window.Callback callback = this.f941b;
            if (z) {
                return callback.dispatchKeyEvent(keyEvent);
            }
            return AppCompatDelegateImpl.this.y(keyEvent) || callback.dispatchKeyEvent(keyEvent);
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            if (!this.f941b.dispatchKeyShortcutEvent(keyEvent)) {
                int keyCode = keyEvent.getKeyCode();
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                appCompatDelegateImpl.E();
                ActionBar actionBar = appCompatDelegateImpl.p;
                if (actionBar == null || !actionBar.onKeyShortcut(keyCode, keyEvent)) {
                    PanelFeatureState panelFeatureState = appCompatDelegateImpl.N;
                    if (panelFeatureState == null || !appCompatDelegateImpl.J(panelFeatureState, keyEvent.getKeyCode(), keyEvent)) {
                        if (appCompatDelegateImpl.N == null) {
                            PanelFeatureState panelFeatureStateD = appCompatDelegateImpl.D(0);
                            appCompatDelegateImpl.K(panelFeatureStateD, keyEvent);
                            boolean zJ = appCompatDelegateImpl.J(panelFeatureStateD, keyEvent.getKeyCode(), keyEvent);
                            panelFeatureStateD.f851k = false;
                            if (zJ) {
                            }
                        }
                        return false;
                    }
                    PanelFeatureState panelFeatureState2 = appCompatDelegateImpl.N;
                    if (panelFeatureState2 != null) {
                        panelFeatureState2.l = true;
                        return true;
                    }
                }
            }
            return true;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final void onContentChanged() {
            if (this.d) {
                this.f941b.onContentChanged();
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final boolean onCreatePanelMenu(int i2, Menu menu) {
            if (i2 != 0 || (menu instanceof MenuBuilder)) {
                return this.f941b.onCreatePanelMenu(i2, menu);
            }
            return false;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final View onCreatePanelView(int i2) {
            View viewOnCreatePanelView;
            ActionBarMenuCallback actionBarMenuCallback = this.f834c;
            return (actionBarMenuCallback == null || (viewOnCreatePanelView = actionBarMenuCallback.onCreatePanelView(i2)) == null) ? this.f941b.onCreatePanelView(i2) : viewOnCreatePanelView;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final boolean onMenuOpened(int i2, Menu menu) {
            super.onMenuOpened(i2, menu);
            if (i2 == 108) {
                AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
                appCompatDelegateImpl.E();
                ActionBar actionBar = appCompatDelegateImpl.p;
                if (actionBar != null) {
                    actionBar.dispatchMenuVisibilityChanged(true);
                }
            }
            return true;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final void onPanelClosed(int i2, Menu menu) {
            if (this.f836f) {
                this.f941b.onPanelClosed(i2, menu);
                return;
            }
            super.onPanelClosed(i2, menu);
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            if (i2 == 108) {
                appCompatDelegateImpl.E();
                ActionBar actionBar = appCompatDelegateImpl.p;
                if (actionBar != null) {
                    actionBar.dispatchMenuVisibilityChanged(false);
                    return;
                }
                return;
            }
            if (i2 == 0) {
                PanelFeatureState panelFeatureStateD = appCompatDelegateImpl.D(i2);
                if (panelFeatureStateD.m) {
                    appCompatDelegateImpl.w(panelFeatureStateD, false);
                }
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final boolean onPreparePanel(int i2, View view, Menu menu) {
            MenuBuilder menuBuilder = menu instanceof MenuBuilder ? (MenuBuilder) menu : null;
            if (i2 == 0 && menuBuilder == null) {
                return false;
            }
            if (menuBuilder != null) {
                menuBuilder.x = true;
            }
            ActionBarMenuCallback actionBarMenuCallback = this.f834c;
            if (actionBarMenuCallback != null) {
                actionBarMenuCallback.a(i2);
            }
            boolean zOnPreparePanel = this.f941b.onPreparePanel(i2, view, menu);
            if (menuBuilder != null) {
                menuBuilder.x = false;
            }
            return zOnPreparePanel;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final void onProvideKeyboardShortcuts(List list, Menu menu, int i2) {
            MenuBuilder menuBuilder = AppCompatDelegateImpl.this.D(0).f848h;
            if (menuBuilder != null) {
                super.onProvideKeyboardShortcuts(list, menuBuilder, i2);
            } else {
                super.onProvideKeyboardShortcuts(list, menu, i2);
            }
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final android.view.ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback callback, int i2) {
            if (i2 != 0) {
                return super.onWindowStartingActionMode(callback, i2);
            }
            AppCompatDelegateImpl appCompatDelegateImpl = AppCompatDelegateImpl.this;
            SupportActionModeWrapper.CallbackWrapper callbackWrapper = new SupportActionModeWrapper.CallbackWrapper(appCompatDelegateImpl.l, callback);
            ActionMode actionModeP = appCompatDelegateImpl.p(callbackWrapper);
            if (actionModeP != null) {
                return callbackWrapper.e(actionModeP);
            }
            return null;
        }

        @Override // androidx.appcompat.view.WindowCallbackWrapper, android.view.Window.Callback
        public final android.view.ActionMode onWindowStartingActionMode(android.view.ActionMode.Callback callback) {
            return null;
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
