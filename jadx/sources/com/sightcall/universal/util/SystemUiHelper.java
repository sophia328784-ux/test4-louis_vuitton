package com.sightcall.universal.util;

import android.app.ActionBar;
import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes3.dex */
public final class SystemUiHelper {
    public static final int FLAG_IMMERSIVE_STICKY = 2;
    public static final int FLAG_LAYOUT_IN_SCREEN_OLDER_DEVICES = 1;
    public static final int LEVEL_HIDE_STATUS_BAR = 1;
    public static final int LEVEL_IMMERSIVE = 3;
    public static final int LEVEL_LEAN_BACK = 2;
    public static final int LEVEL_LOW_PROFILE = 0;
    private final Handler mHandler;
    private final Runnable mHideRunnable;
    private final SystemUiHelperImpl mImpl;

    public interface OnVisibilityChangeListener {
        void onVisibilityChange(boolean z);
    }

    public static class SystemUiHelperImpl implements View.OnSystemUiVisibilityChangeListener {
        final Activity mActivity;
        final View mDecorView;
        final int mFlags;
        boolean mIsShowing = true;
        final int mLevel;
        final OnVisibilityChangeListener mOnVisibilityChangeListener;

        public SystemUiHelperImpl(Activity activity, int i2, int i3, OnVisibilityChangeListener onVisibilityChangeListener) {
            this.mActivity = activity;
            this.mLevel = i2;
            this.mFlags = i3;
            this.mOnVisibilityChangeListener = onVisibilityChangeListener;
            View decorView = activity.getWindow().getDecorView();
            this.mDecorView = decorView;
            decorView.setOnSystemUiVisibilityChangeListener(this);
        }

        public int createHideFlags() {
            int i2 = this.mLevel;
            int i3 = i2 >= 2 ? 3 : 1;
            if (i2 >= 1) {
                i3 = i2 >= 2 ? i3 | 1796 : i3 | 1284;
            }
            if (i2 == 3) {
                return ((this.mFlags & 2) != 0 ? 4096 : 2048) | i3;
            }
            return i3;
        }

        public int createShowFlags() {
            int i2 = this.mLevel;
            if (i2 < 1) {
                return 0;
            }
            if (i2 >= 2) {
                return 1792;
            }
            return Sink.Video.MAX_DIMENSION_HIGH;
        }

        public int createTestFlags() {
            return this.mLevel >= 2 ? 2 : 1;
        }

        public void hide() {
            this.mDecorView.setSystemUiVisibility(createHideFlags());
        }

        public boolean isShowing() {
            return this.mIsShowing;
        }

        public void onSystemUiHidden() {
            ActionBar actionBar;
            if (this.mLevel == 0 && (actionBar = this.mActivity.getActionBar()) != null) {
                actionBar.hide();
            }
            setIsShowing(false);
        }

        public void onSystemUiShown() {
            ActionBar actionBar;
            if (this.mLevel == 0 && (actionBar = this.mActivity.getActionBar()) != null) {
                actionBar.show();
            }
            setIsShowing(true);
        }

        @Override // android.view.View.OnSystemUiVisibilityChangeListener
        public final void onSystemUiVisibilityChange(int i2) {
            if ((i2 & createTestFlags()) != 0) {
                onSystemUiHidden();
            } else {
                onSystemUiShown();
            }
        }

        public void setIsShowing(boolean z) {
            this.mIsShowing = z;
            OnVisibilityChangeListener onVisibilityChangeListener = this.mOnVisibilityChangeListener;
            if (onVisibilityChangeListener != null) {
                onVisibilityChangeListener.onVisibilityChange(z);
            }
        }

        public void show() {
            this.mDecorView.setSystemUiVisibility(createShowFlags());
        }
    }

    public SystemUiHelper(Activity activity, int i2, int i3, OnVisibilityChangeListener onVisibilityChangeListener) {
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mHideRunnable = new HideRunnable(this, 0);
        this.mImpl = new SystemUiHelperImpl(activity, i2, i3, onVisibilityChangeListener);
    }

    public void delayHide(long j2) {
        removeQueuedRunnables();
        this.mHandler.postDelayed(this.mHideRunnable, j2);
    }

    public void hide() {
        removeQueuedRunnables();
        this.mImpl.hide();
    }

    public boolean isShowing() {
        return this.mImpl.isShowing();
    }

    public void removeQueuedRunnables() {
        this.mHandler.removeCallbacks(this.mHideRunnable);
    }

    public void show() {
        removeQueuedRunnables();
        this.mImpl.show();
    }

    public void toggle() {
        boolean zIsShowing = this.mImpl.isShowing();
        SystemUiHelperImpl systemUiHelperImpl = this.mImpl;
        if (zIsShowing) {
            systemUiHelperImpl.hide();
        } else {
            systemUiHelperImpl.show();
        }
    }

    public class HideRunnable implements Runnable {
        private HideRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SystemUiHelper.this.hide();
        }

        public /* synthetic */ HideRunnable(SystemUiHelper systemUiHelper, int i2) {
            this();
        }
    }

    public SystemUiHelper(Activity activity, int i2, int i3) {
        this(activity, i2, i3, null);
    }
}
