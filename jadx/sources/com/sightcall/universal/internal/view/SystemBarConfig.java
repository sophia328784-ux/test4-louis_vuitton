package com.sightcall.universal.internal.view;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.ViewConfiguration;
import com.linkplay.medialib.ContentTree;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes3.dex */
public class SystemBarConfig {
    private static final String NAV_BAR_HEIGHT_LANDSCAPE_RES_NAME = "navigation_bar_height_landscape";
    private static final String NAV_BAR_HEIGHT_RES_NAME = "navigation_bar_height";
    private static final String NAV_BAR_WIDTH_RES_NAME = "navigation_bar_width";
    private static final String SHOW_NAV_BAR_RES_NAME = "config_showNavigationBar";
    private static final String STATUS_BAR_HEIGHT_RES_NAME = "status_bar_height";
    private static String sNavBarOverride;
    private final int mActionBarHeight;
    private final boolean mHasNavigationBar;
    private final boolean mInPortrait;
    private final int mNavigationBarHeight;
    private final int mNavigationBarWidth;
    private final float mSmallestWidthDp;
    private final int mStatusBarHeight;
    private final boolean mTranslucentNavBar;
    private final boolean mTranslucentStatusBar;

    static {
        try {
            Method declaredMethod = Class.forName("android.os.SystemProperties").getDeclaredMethod("get", String.class);
            declaredMethod.setAccessible(true);
            sNavBarOverride = (String) declaredMethod.invoke(null, "qemu.hw.mainkeys");
        } catch (Throwable unused) {
            sNavBarOverride = null;
        }
    }

    public SystemBarConfig(Activity activity, boolean z, boolean z2) {
        Resources resources = activity.getResources();
        this.mInPortrait = resources.getConfiguration().orientation == 1;
        this.mSmallestWidthDp = getSmallestWidthDp(activity);
        this.mStatusBarHeight = getInternalDimensionSize(resources, STATUS_BAR_HEIGHT_RES_NAME);
        this.mActionBarHeight = getActionBarHeight(activity);
        int navigationBarHeight = getNavigationBarHeight(activity);
        this.mNavigationBarHeight = navigationBarHeight;
        this.mNavigationBarWidth = getNavigationBarWidth(activity);
        this.mHasNavigationBar = navigationBarHeight > 0;
        this.mTranslucentStatusBar = z;
        this.mTranslucentNavBar = z2;
    }

    private int getActionBarHeight(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true);
        return TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics());
    }

    private int getInternalDimensionSize(Resources resources, String str) {
        int identifier = resources.getIdentifier(str, "dimen", ReferenceApiV3ConstKt.OS_NAME);
        if (identifier > 0) {
            return resources.getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private int getNavigationBarHeight(Context context) {
        Resources resources = context.getResources();
        if (hasNavBar(context)) {
            return getInternalDimensionSize(resources, this.mInPortrait ? NAV_BAR_HEIGHT_RES_NAME : NAV_BAR_HEIGHT_LANDSCAPE_RES_NAME);
        }
        return 0;
    }

    private int getNavigationBarWidth(Context context) {
        Resources resources = context.getResources();
        if (hasNavBar(context)) {
            return getInternalDimensionSize(resources, NAV_BAR_WIDTH_RES_NAME);
        }
        return 0;
    }

    private float getSmallestWidthDp(Activity activity) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getRealMetrics(displayMetrics);
        float f2 = displayMetrics.widthPixels;
        float f3 = displayMetrics.density;
        return Math.min(f2 / f3, displayMetrics.heightPixels / f3);
    }

    private boolean hasNavBar(Context context) {
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier(SHOW_NAV_BAR_RES_NAME, "bool", ReferenceApiV3ConstKt.OS_NAME);
        if (identifier == 0) {
            return !ViewConfiguration.get(context).hasPermanentMenuKey();
        }
        boolean z = resources.getBoolean(identifier);
        if ("1".equals(sNavBarOverride)) {
            return false;
        }
        if (ContentTree.ROOT_ID.equals(sNavBarOverride)) {
            return true;
        }
        return z;
    }

    public int getPixelInsetBottom() {
        if (this.mTranslucentNavBar && isNavigationAtBottom()) {
            return this.mNavigationBarHeight;
        }
        return 0;
    }

    public int getPixelInsetRight() {
        if (!this.mTranslucentNavBar || isNavigationAtBottom()) {
            return 0;
        }
        return this.mNavigationBarWidth;
    }

    public int getPixelInsetTop(boolean z) {
        return (this.mTranslucentStatusBar ? this.mStatusBarHeight : 0) + (z ? this.mActionBarHeight : 0);
    }

    public int getStatusBarHeight() {
        return this.mStatusBarHeight;
    }

    public boolean hasNavigtionBar() {
        return this.mHasNavigationBar;
    }

    public boolean isNavigationAtBottom() {
        return this.mSmallestWidthDp >= 600.0f || this.mInPortrait;
    }

    public int getNavigationBarWidth() {
        return this.mNavigationBarWidth;
    }

    public int getNavigationBarHeight() {
        return this.mNavigationBarHeight;
    }

    public int getActionBarHeight() {
        return this.mActionBarHeight;
    }
}
