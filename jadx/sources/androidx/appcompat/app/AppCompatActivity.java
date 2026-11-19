package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.VectorEnabledTintResources;
import androidx.collection.LongSparseArray;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NavUtils;
import androidx.core.app.TaskStackBuilder;
import androidx.core.os.LocaleListCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.savedstate.SavedStateRegistry;
import defpackage.md;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class AppCompatActivity extends FragmentActivity implements AppCompatCallback, TaskStackBuilder.SupportParentable, ActionBarDrawerToggle$DelegateProvider {
    private static final String DELEGATE_TAG = "androidx:appcompat";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f812h = 0;
    private AppCompatDelegate mDelegate;
    private Resources mResources;

    public AppCompatActivity() {
        getSavedStateRegistry().c(DELEGATE_TAG, new SavedStateRegistry.SavedStateProvider() { // from class: androidx.appcompat.app.AppCompatActivity.1
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public final Bundle saveState() {
                Bundle bundle = new Bundle();
                AppCompatActivity.this.getDelegate().getClass();
                return bundle;
            }
        });
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: androidx.appcompat.app.AppCompatActivity.2
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public final void a(Context context) {
                AppCompatActivity appCompatActivity = AppCompatActivity.this;
                AppCompatDelegate delegate = appCompatActivity.getDelegate();
                AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) delegate;
                LayoutInflater layoutInflaterFrom = LayoutInflater.from(appCompatDelegateImpl.l);
                if (layoutInflaterFrom.getFactory() == null) {
                    layoutInflaterFrom.setFactory2(appCompatDelegateImpl);
                } else {
                    layoutInflaterFrom.getFactory2();
                }
                appCompatActivity.getSavedStateRegistry().a(AppCompatActivity.DELEGATE_TAG);
                delegate.g();
            }
        });
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        appCompatDelegateImpl.A();
        ((ViewGroup) appCompatDelegateImpl.B.findViewById(R.id.content)).addView(view, layoutParams);
        appCompatDelegateImpl.n.a(appCompatDelegateImpl.m.getCallback());
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0039  */
    /* JADX WARN: Code duplicated, block: B:19:0x0045  */
    /* JADX WARN: Code duplicated, block: B:22:0x004b  */
    /* JADX WARN: Code duplicated, block: B:24:0x0074  */
    /* JADX WARN: Code duplicated, block: B:27:0x0083  */
    /* JADX WARN: Code duplicated, block: B:29:0x008b  */
    /* JADX WARN: Code duplicated, block: B:32:0x0093  */
    /* JADX WARN: Code duplicated, block: B:35:0x009b  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:41:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:47:0x00be  */
    /* JADX WARN: Code duplicated, block: B:50:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:53:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:56:0x00da  */
    /* JADX WARN: Code duplicated, block: B:59:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:62:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:65:0x0107  */
    /* JADX WARN: Code duplicated, block: B:68:0x0116  */
    /* JADX WARN: Code duplicated, block: B:71:0x0125  */
    /* JADX WARN: Code duplicated, block: B:74:0x0134  */
    /* JADX WARN: Code duplicated, block: B:77:0x0143  */
    /* JADX WARN: Code duplicated, block: B:80:0x014e  */
    /* JADX WARN: Code duplicated, block: B:83:0x0156  */
    /* JADX WARN: Code duplicated, block: B:86:0x015e  */
    /* JADX WARN: Code duplicated, block: B:89:0x0166  */
    /* JADX WARN: Code duplicated, block: B:93:0x017d  */
    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        Configuration configuration;
        Configuration configuration2;
        ContextThemeWrapper contextThemeWrapper;
        float f2;
        float f3;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        int i40;
        int i41;
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        appCompatDelegateImpl.P = true;
        int i42 = appCompatDelegateImpl.T;
        if (i42 == -100) {
            i42 = AppCompatDelegate.f816c;
        }
        int iG = appCompatDelegateImpl.G(i42, context);
        if (AppCompatDelegate.f(context)) {
            AppCompatDelegate.q(context);
        }
        LocaleListCompat localeListCompatT = AppCompatDelegateImpl.t(context);
        Configuration configuration3 = null;
        if (context instanceof android.view.ContextThemeWrapper) {
            try {
                ((android.view.ContextThemeWrapper) context).applyOverrideConfiguration(AppCompatDelegateImpl.x(context, iG, localeListCompatT, null, false));
            } catch (IllegalStateException unused) {
                if (context instanceof ContextThemeWrapper) {
                    try {
                        ((ContextThemeWrapper) context).a(AppCompatDelegateImpl.x(context, iG, localeListCompatT, null, false));
                    } catch (IllegalStateException unused2) {
                        if (AppCompatDelegateImpl.k1) {
                            Configuration configuration4 = new Configuration();
                            configuration4.uiMode = -1;
                            configuration4.fontScale = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                            configuration = context.createConfigurationContext(configuration4).getResources().getConfiguration();
                            configuration2 = context.getResources().getConfiguration();
                            configuration.uiMode = configuration2.uiMode;
                            if (!configuration.equals(configuration2)) {
                                configuration3 = new Configuration();
                                configuration3.fontScale = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                if (configuration.diff(configuration2) != 0) {
                                    f2 = configuration.fontScale;
                                    f3 = configuration2.fontScale;
                                    if (f2 != f3) {
                                        configuration3.fontScale = f3;
                                    }
                                    i2 = configuration.mcc;
                                    i3 = configuration2.mcc;
                                    if (i2 != i3) {
                                        configuration3.mcc = i3;
                                    }
                                    i4 = configuration.mnc;
                                    i5 = configuration2.mnc;
                                    if (i4 != i5) {
                                        configuration3.mnc = i5;
                                    }
                                    AppCompatDelegateImpl.Api24Impl.a(configuration, configuration2, configuration3);
                                    i6 = configuration.touchscreen;
                                    i7 = configuration2.touchscreen;
                                    if (i6 != i7) {
                                        configuration3.touchscreen = i7;
                                    }
                                    i8 = configuration.keyboard;
                                    i9 = configuration2.keyboard;
                                    if (i8 != i9) {
                                        configuration3.keyboard = i9;
                                    }
                                    i10 = configuration.keyboardHidden;
                                    i11 = configuration2.keyboardHidden;
                                    if (i10 != i11) {
                                        configuration3.keyboardHidden = i11;
                                    }
                                    i12 = configuration.navigation;
                                    i13 = configuration2.navigation;
                                    if (i12 != i13) {
                                        configuration3.navigation = i13;
                                    }
                                    i14 = configuration.navigationHidden;
                                    i15 = configuration2.navigationHidden;
                                    if (i14 != i15) {
                                        configuration3.navigationHidden = i15;
                                    }
                                    i16 = configuration.orientation;
                                    i17 = configuration2.orientation;
                                    if (i16 != i17) {
                                        configuration3.orientation = i17;
                                    }
                                    i18 = configuration.screenLayout & 15;
                                    i19 = configuration2.screenLayout & 15;
                                    if (i18 != i19) {
                                        configuration3.screenLayout |= i19;
                                    }
                                    i20 = configuration.screenLayout & 192;
                                    i21 = configuration2.screenLayout & 192;
                                    if (i20 != i21) {
                                        configuration3.screenLayout |= i21;
                                    }
                                    i22 = configuration.screenLayout & 48;
                                    i23 = configuration2.screenLayout & 48;
                                    if (i22 != i23) {
                                        configuration3.screenLayout |= i23;
                                    }
                                    i24 = configuration.screenLayout & 768;
                                    i25 = configuration2.screenLayout & 768;
                                    if (i24 != i25) {
                                        configuration3.screenLayout |= i25;
                                    }
                                    i26 = configuration.colorMode & 3;
                                    i27 = configuration2.colorMode & 3;
                                    if (i26 != i27) {
                                        configuration3.colorMode |= i27;
                                    }
                                    i28 = configuration.colorMode & 12;
                                    i29 = configuration2.colorMode & 12;
                                    if (i28 != i29) {
                                        configuration3.colorMode |= i29;
                                    }
                                    i30 = configuration.uiMode & 15;
                                    i31 = configuration2.uiMode & 15;
                                    if (i30 != i31) {
                                        configuration3.uiMode |= i31;
                                    }
                                    i32 = configuration.uiMode & 48;
                                    i33 = configuration2.uiMode & 48;
                                    if (i32 != i33) {
                                        configuration3.uiMode |= i33;
                                    }
                                    i34 = configuration.screenWidthDp;
                                    i35 = configuration2.screenWidthDp;
                                    if (i34 != i35) {
                                        configuration3.screenWidthDp = i35;
                                    }
                                    i36 = configuration.screenHeightDp;
                                    i37 = configuration2.screenHeightDp;
                                    if (i36 != i37) {
                                        configuration3.screenHeightDp = i37;
                                    }
                                    i38 = configuration.smallestScreenWidthDp;
                                    i39 = configuration2.smallestScreenWidthDp;
                                    if (i38 != i39) {
                                        configuration3.smallestScreenWidthDp = i39;
                                    }
                                    i40 = configuration.densityDpi;
                                    i41 = configuration2.densityDpi;
                                    if (i40 != i41) {
                                        configuration3.densityDpi = i41;
                                    }
                                }
                            }
                            Configuration configurationX = AppCompatDelegateImpl.x(context, iG, localeListCompatT, configuration3, true);
                            contextThemeWrapper = new ContextThemeWrapper(context, com.vuitton.android.R.style.Theme_AppCompat_Empty);
                            contextThemeWrapper.a(configurationX);
                            try {
                                if (context.getTheme() != null) {
                                    contextThemeWrapper.getTheme().rebase();
                                }
                            } catch (NullPointerException unused3) {
                            }
                            context = contextThemeWrapper;
                        }
                    }
                } else if (AppCompatDelegateImpl.k1) {
                    Configuration configuration5 = new Configuration();
                    configuration5.uiMode = -1;
                    configuration5.fontScale = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    configuration = context.createConfigurationContext(configuration5).getResources().getConfiguration();
                    configuration2 = context.getResources().getConfiguration();
                    configuration.uiMode = configuration2.uiMode;
                    if (!configuration.equals(configuration2)) {
                        configuration3 = new Configuration();
                        configuration3.fontScale = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        if (configuration.diff(configuration2) != 0) {
                            f2 = configuration.fontScale;
                            f3 = configuration2.fontScale;
                            if (f2 != f3) {
                                configuration3.fontScale = f3;
                            }
                            i2 = configuration.mcc;
                            i3 = configuration2.mcc;
                            if (i2 != i3) {
                                configuration3.mcc = i3;
                            }
                            i4 = configuration.mnc;
                            i5 = configuration2.mnc;
                            if (i4 != i5) {
                                configuration3.mnc = i5;
                            }
                            AppCompatDelegateImpl.Api24Impl.a(configuration, configuration2, configuration3);
                            i6 = configuration.touchscreen;
                            i7 = configuration2.touchscreen;
                            if (i6 != i7) {
                                configuration3.touchscreen = i7;
                            }
                            i8 = configuration.keyboard;
                            i9 = configuration2.keyboard;
                            if (i8 != i9) {
                                configuration3.keyboard = i9;
                            }
                            i10 = configuration.keyboardHidden;
                            i11 = configuration2.keyboardHidden;
                            if (i10 != i11) {
                                configuration3.keyboardHidden = i11;
                            }
                            i12 = configuration.navigation;
                            i13 = configuration2.navigation;
                            if (i12 != i13) {
                                configuration3.navigation = i13;
                            }
                            i14 = configuration.navigationHidden;
                            i15 = configuration2.navigationHidden;
                            if (i14 != i15) {
                                configuration3.navigationHidden = i15;
                            }
                            i16 = configuration.orientation;
                            i17 = configuration2.orientation;
                            if (i16 != i17) {
                                configuration3.orientation = i17;
                            }
                            i18 = configuration.screenLayout & 15;
                            i19 = configuration2.screenLayout & 15;
                            if (i18 != i19) {
                                configuration3.screenLayout |= i19;
                            }
                            i20 = configuration.screenLayout & 192;
                            i21 = configuration2.screenLayout & 192;
                            if (i20 != i21) {
                                configuration3.screenLayout |= i21;
                            }
                            i22 = configuration.screenLayout & 48;
                            i23 = configuration2.screenLayout & 48;
                            if (i22 != i23) {
                                configuration3.screenLayout |= i23;
                            }
                            i24 = configuration.screenLayout & 768;
                            i25 = configuration2.screenLayout & 768;
                            if (i24 != i25) {
                                configuration3.screenLayout |= i25;
                            }
                            i26 = configuration.colorMode & 3;
                            i27 = configuration2.colorMode & 3;
                            if (i26 != i27) {
                                configuration3.colorMode |= i27;
                            }
                            i28 = configuration.colorMode & 12;
                            i29 = configuration2.colorMode & 12;
                            if (i28 != i29) {
                                configuration3.colorMode |= i29;
                            }
                            i30 = configuration.uiMode & 15;
                            i31 = configuration2.uiMode & 15;
                            if (i30 != i31) {
                                configuration3.uiMode |= i31;
                            }
                            i32 = configuration.uiMode & 48;
                            i33 = configuration2.uiMode & 48;
                            if (i32 != i33) {
                                configuration3.uiMode |= i33;
                            }
                            i34 = configuration.screenWidthDp;
                            i35 = configuration2.screenWidthDp;
                            if (i34 != i35) {
                                configuration3.screenWidthDp = i35;
                            }
                            i36 = configuration.screenHeightDp;
                            i37 = configuration2.screenHeightDp;
                            if (i36 != i37) {
                                configuration3.screenHeightDp = i37;
                            }
                            i38 = configuration.smallestScreenWidthDp;
                            i39 = configuration2.smallestScreenWidthDp;
                            if (i38 != i39) {
                                configuration3.smallestScreenWidthDp = i39;
                            }
                            i40 = configuration.densityDpi;
                            i41 = configuration2.densityDpi;
                            if (i40 != i41) {
                                configuration3.densityDpi = i41;
                            }
                        }
                    }
                    Configuration configurationX2 = AppCompatDelegateImpl.x(context, iG, localeListCompatT, configuration3, true);
                    contextThemeWrapper = new ContextThemeWrapper(context, com.vuitton.android.R.style.Theme_AppCompat_Empty);
                    contextThemeWrapper.a(configurationX2);
                    if (context.getTheme() != null) {
                        contextThemeWrapper.getTheme().rebase();
                    }
                    context = contextThemeWrapper;
                }
            }
        } else if (context instanceof ContextThemeWrapper) {
            ((ContextThemeWrapper) context).a(AppCompatDelegateImpl.x(context, iG, localeListCompatT, null, false));
        } else if (AppCompatDelegateImpl.k1) {
            Configuration configuration6 = new Configuration();
            configuration6.uiMode = -1;
            configuration6.fontScale = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            configuration = context.createConfigurationContext(configuration6).getResources().getConfiguration();
            configuration2 = context.getResources().getConfiguration();
            configuration.uiMode = configuration2.uiMode;
            if (!configuration.equals(configuration2)) {
                configuration3 = new Configuration();
                configuration3.fontScale = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                if (configuration.diff(configuration2) != 0) {
                    f2 = configuration.fontScale;
                    f3 = configuration2.fontScale;
                    if (f2 != f3) {
                        configuration3.fontScale = f3;
                    }
                    i2 = configuration.mcc;
                    i3 = configuration2.mcc;
                    if (i2 != i3) {
                        configuration3.mcc = i3;
                    }
                    i4 = configuration.mnc;
                    i5 = configuration2.mnc;
                    if (i4 != i5) {
                        configuration3.mnc = i5;
                    }
                    AppCompatDelegateImpl.Api24Impl.a(configuration, configuration2, configuration3);
                    i6 = configuration.touchscreen;
                    i7 = configuration2.touchscreen;
                    if (i6 != i7) {
                        configuration3.touchscreen = i7;
                    }
                    i8 = configuration.keyboard;
                    i9 = configuration2.keyboard;
                    if (i8 != i9) {
                        configuration3.keyboard = i9;
                    }
                    i10 = configuration.keyboardHidden;
                    i11 = configuration2.keyboardHidden;
                    if (i10 != i11) {
                        configuration3.keyboardHidden = i11;
                    }
                    i12 = configuration.navigation;
                    i13 = configuration2.navigation;
                    if (i12 != i13) {
                        configuration3.navigation = i13;
                    }
                    i14 = configuration.navigationHidden;
                    i15 = configuration2.navigationHidden;
                    if (i14 != i15) {
                        configuration3.navigationHidden = i15;
                    }
                    i16 = configuration.orientation;
                    i17 = configuration2.orientation;
                    if (i16 != i17) {
                        configuration3.orientation = i17;
                    }
                    i18 = configuration.screenLayout & 15;
                    i19 = configuration2.screenLayout & 15;
                    if (i18 != i19) {
                        configuration3.screenLayout |= i19;
                    }
                    i20 = configuration.screenLayout & 192;
                    i21 = configuration2.screenLayout & 192;
                    if (i20 != i21) {
                        configuration3.screenLayout |= i21;
                    }
                    i22 = configuration.screenLayout & 48;
                    i23 = configuration2.screenLayout & 48;
                    if (i22 != i23) {
                        configuration3.screenLayout |= i23;
                    }
                    i24 = configuration.screenLayout & 768;
                    i25 = configuration2.screenLayout & 768;
                    if (i24 != i25) {
                        configuration3.screenLayout |= i25;
                    }
                    i26 = configuration.colorMode & 3;
                    i27 = configuration2.colorMode & 3;
                    if (i26 != i27) {
                        configuration3.colorMode |= i27;
                    }
                    i28 = configuration.colorMode & 12;
                    i29 = configuration2.colorMode & 12;
                    if (i28 != i29) {
                        configuration3.colorMode |= i29;
                    }
                    i30 = configuration.uiMode & 15;
                    i31 = configuration2.uiMode & 15;
                    if (i30 != i31) {
                        configuration3.uiMode |= i31;
                    }
                    i32 = configuration.uiMode & 48;
                    i33 = configuration2.uiMode & 48;
                    if (i32 != i33) {
                        configuration3.uiMode |= i33;
                    }
                    i34 = configuration.screenWidthDp;
                    i35 = configuration2.screenWidthDp;
                    if (i34 != i35) {
                        configuration3.screenWidthDp = i35;
                    }
                    i36 = configuration.screenHeightDp;
                    i37 = configuration2.screenHeightDp;
                    if (i36 != i37) {
                        configuration3.screenHeightDp = i37;
                    }
                    i38 = configuration.smallestScreenWidthDp;
                    i39 = configuration2.smallestScreenWidthDp;
                    if (i38 != i39) {
                        configuration3.smallestScreenWidthDp = i39;
                    }
                    i40 = configuration.densityDpi;
                    i41 = configuration2.densityDpi;
                    if (i40 != i41) {
                        configuration3.densityDpi = i41;
                    }
                }
            }
            Configuration configurationX3 = AppCompatDelegateImpl.x(context, iG, localeListCompatT, configuration3, true);
            contextThemeWrapper = new ContextThemeWrapper(context, com.vuitton.android.R.style.Theme_AppCompat_Empty);
            contextThemeWrapper.a(configurationX3);
            if (context.getTheme() != null) {
                contextThemeWrapper.getTheme().rebase();
            }
            context = contextThemeWrapper;
        }
        super.attachBaseContext(context);
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        ActionBar supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.closeOptionsMenu()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        ActionBar supportActionBar = getSupportActionBar();
        if (keyCode == 82 && supportActionBar != null && supportActionBar.onMenuKeyEvent(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i2) {
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        appCompatDelegateImpl.A();
        return (T) appCompatDelegateImpl.m.findViewById(i2);
    }

    public AppCompatDelegate getDelegate() {
        if (this.mDelegate == null) {
            AppCompatDelegate.SerialExecutor serialExecutor = AppCompatDelegate.f815b;
            this.mDelegate = new AppCompatDelegateImpl(this, null, this, this);
        }
        return this.mDelegate;
    }

    public ActionBarDrawerToggle$Delegate getDrawerToggleDelegate() {
        ((AppCompatDelegateImpl) getDelegate()).getClass();
        return new AppCompatDelegateImpl.ActionBarDrawableToggleImpl();
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        if (appCompatDelegateImpl.q == null) {
            appCompatDelegateImpl.E();
            ActionBar actionBar = appCompatDelegateImpl.p;
            appCompatDelegateImpl.q = new SupportMenuInflater(actionBar != null ? actionBar.getThemedContext() : appCompatDelegateImpl.l);
        }
        return appCompatDelegateImpl.q;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        Resources resources = this.mResources;
        if (resources == null) {
            int i2 = VectorEnabledTintResources.f1344c;
        }
        return resources == null ? super.getResources() : resources;
    }

    public ActionBar getSupportActionBar() {
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        appCompatDelegateImpl.E();
        return appCompatDelegateImpl.p;
    }

    @Override // androidx.core.app.TaskStackBuilder.SupportParentable
    public Intent getSupportParentActivityIntent() {
        return NavUtils.b(this);
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        getDelegate().e();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        if (appCompatDelegateImpl.G && appCompatDelegateImpl.A) {
            appCompatDelegateImpl.E();
            ActionBar actionBar = appCompatDelegateImpl.p;
            if (actionBar != null) {
                actionBar.onConfigurationChanged(configuration);
            }
        }
        AppCompatDrawableManager appCompatDrawableManagerA = AppCompatDrawableManager.a();
        Context context = appCompatDelegateImpl.l;
        synchronized (appCompatDrawableManagerA) {
            ResourceManagerInternal resourceManagerInternal = appCompatDrawableManagerA.f1124a;
            synchronized (resourceManagerInternal) {
                LongSparseArray longSparseArray = (LongSparseArray) resourceManagerInternal.f1257b.get(context);
                if (longSparseArray != null) {
                    longSparseArray.a();
                }
            }
        }
        appCompatDelegateImpl.S = new Configuration(appCompatDelegateImpl.l.getResources().getConfiguration());
        appCompatDelegateImpl.r(false, false);
        if (this.mResources != null) {
            this.mResources.updateConfiguration(super.getResources().getConfiguration(), super.getResources().getDisplayMetrics());
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        onSupportContentChanged();
    }

    public void onCreateSupportNavigateUpTaskStack(TaskStackBuilder taskStackBuilder) {
        taskStackBuilder.getClass();
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            supportParentActivityIntent = NavUtils.b(this);
        }
        if (supportParentActivityIntent != null) {
            ComponentName component = supportParentActivityIntent.getComponent();
            if (component == null) {
                component = supportParentActivityIntent.resolveActivity(taskStackBuilder.f12007c.getPackageManager());
            }
            taskStackBuilder.a(component);
            taskStackBuilder.f12006b.add(supportParentActivityIntent);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        getDelegate().h();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        return super.onKeyDown(i2, keyEvent);
    }

    public void onLocalesChanged(LocaleListCompat localeListCompat) {
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i2, MenuItem menuItem) {
        if (super.onMenuItemSelected(i2, menuItem)) {
            return true;
        }
        ActionBar supportActionBar = getSupportActionBar();
        if (menuItem.getItemId() != 16908332 || supportActionBar == null || (supportActionBar.getDisplayOptions() & 4) == 0) {
            return false;
        }
        return onSupportNavigateUp();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i2, Menu menu) {
        return super.onMenuOpened(i2, menu);
    }

    public void onNightModeChanged(int i2) {
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i2, Menu menu) {
        super.onPanelClosed(i2, menu);
    }

    @Override // android.app.Activity
    public void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((AppCompatDelegateImpl) getDelegate()).A();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        appCompatDelegateImpl.E();
        ActionBar actionBar = appCompatDelegateImpl.p;
        if (actionBar != null) {
            actionBar.setShowHideAnimationEnabled(true);
        }
    }

    public void onPrepareSupportNavigateUpTaskStack(TaskStackBuilder taskStackBuilder) {
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        ((AppCompatDelegateImpl) getDelegate()).r(true, false);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        appCompatDelegateImpl.E();
        ActionBar actionBar = appCompatDelegateImpl.p;
        if (actionBar != null) {
            actionBar.setShowHideAnimationEnabled(false);
        }
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    public void onSupportActionModeFinished(ActionMode actionMode) {
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    public void onSupportActionModeStarted(ActionMode actionMode) {
    }

    @Deprecated
    public void onSupportContentChanged() {
    }

    public boolean onSupportNavigateUp() {
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            return false;
        }
        if (!supportShouldUpRecreateTask(supportParentActivityIntent)) {
            supportNavigateUpTo(supportParentActivityIntent);
            return true;
        }
        TaskStackBuilder taskStackBuilder = new TaskStackBuilder(this);
        onCreateSupportNavigateUpTaskStack(taskStackBuilder);
        onPrepareSupportNavigateUpTaskStack(taskStackBuilder);
        taskStackBuilder.f();
        try {
            ActivityCompat.finishAffinity(this);
            return true;
        } catch (IllegalStateException unused) {
            finish();
            return true;
        }
    }

    @Override // android.app.Activity
    public void onTitleChanged(CharSequence charSequence, int i2) {
        super.onTitleChanged(charSequence, i2);
        getDelegate().o(charSequence);
    }

    @Override // androidx.appcompat.app.AppCompatCallback
    public ActionMode onWindowStartingSupportActionMode(ActionMode.Callback callback) {
        return null;
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        ActionBar supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.openOptionsMenu()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i2) {
        initializeViewTreeOwners();
        getDelegate().l(i2);
    }

    public void setSupportActionBar(Toolbar toolbar) {
        AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) getDelegate();
        if (appCompatDelegateImpl.f825k instanceof Activity) {
            appCompatDelegateImpl.E();
            ActionBar actionBar = appCompatDelegateImpl.p;
            if (actionBar instanceof WindowDecorActionBar) {
                md.k("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
                return;
            }
            appCompatDelegateImpl.q = null;
            if (actionBar != null) {
                actionBar.onDestroy();
            }
            appCompatDelegateImpl.p = null;
            if (toolbar != null) {
                Object obj = appCompatDelegateImpl.f825k;
                ToolbarActionBar toolbarActionBar = new ToolbarActionBar(toolbar, obj instanceof Activity ? ((Activity) obj).getTitle() : appCompatDelegateImpl.r, appCompatDelegateImpl.n);
                appCompatDelegateImpl.p = toolbarActionBar;
                appCompatDelegateImpl.n.f834c = toolbarActionBar.mMenuCallback;
                toolbar.setBackInvokedCallbackEnabled(true);
            } else {
                appCompatDelegateImpl.n.f834c = null;
            }
            appCompatDelegateImpl.e();
        }
    }

    @Deprecated
    public void setSupportProgress(int i2) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminate(boolean z) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminateVisibility(boolean z) {
    }

    @Deprecated
    public void setSupportProgressBarVisibility(boolean z) {
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i2) {
        super.setTheme(i2);
        ((AppCompatDelegateImpl) getDelegate()).V = i2;
    }

    public ActionMode startSupportActionMode(ActionMode.Callback callback) {
        return getDelegate().p(callback);
    }

    @Override // androidx.fragment.app.FragmentActivity
    public void supportInvalidateOptionsMenu() {
        getDelegate().e();
    }

    public void supportNavigateUpTo(Intent intent) {
        navigateUpTo(intent);
    }

    public boolean supportRequestWindowFeature(int i2) {
        return getDelegate().j(i2);
    }

    public boolean supportShouldUpRecreateTask(Intent intent) {
        return shouldUpRecreateTask(intent);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        initializeViewTreeOwners();
        getDelegate().m(view);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        getDelegate().n(view, layoutParams);
    }

    public AppCompatActivity(int i2) {
        super(i2);
        getSavedStateRegistry().c(DELEGATE_TAG, new SavedStateRegistry.SavedStateProvider() { // from class: androidx.appcompat.app.AppCompatActivity.1
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public final Bundle saveState() {
                Bundle bundle = new Bundle();
                AppCompatActivity.this.getDelegate().getClass();
                return bundle;
            }
        });
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: androidx.appcompat.app.AppCompatActivity.2
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public final void a(Context context) {
                AppCompatActivity appCompatActivity = AppCompatActivity.this;
                AppCompatDelegate delegate = appCompatActivity.getDelegate();
                AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) delegate;
                LayoutInflater layoutInflaterFrom = LayoutInflater.from(appCompatDelegateImpl.l);
                if (layoutInflaterFrom.getFactory() == null) {
                    layoutInflaterFrom.setFactory2(appCompatDelegateImpl);
                } else {
                    layoutInflaterFrom.getFactory2();
                }
                appCompatActivity.getSavedStateRegistry().a(AppCompatActivity.DELEGATE_TAG);
                delegate.g();
            }
        });
    }
}
