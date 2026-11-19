package com.bumptech.glide.load.engine.cache;

import android.app.ActivityManager;
import android.content.Context;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes2.dex */
public final class MemorySizeCalculator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f24607a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f24608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f24609c;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f24610a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ActivityManager f24611b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final DisplayMetricsScreenDimensions f24612c;
        public final float d;

        public Builder(Context context) {
            this.d = 1.0f;
            this.f24610a = context;
            ActivityManager activityManager = (ActivityManager) context.getSystemService(ActionFloatingViewItem.f37018a);
            this.f24611b = activityManager;
            this.f24612c = new DisplayMetricsScreenDimensions(context.getResources().getDisplayMetrics());
            if (activityManager.isLowRamDevice()) {
                this.d = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
        }
    }

    public static final class DisplayMetricsScreenDimensions implements ScreenDimensions {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DisplayMetrics f24613a;

        public DisplayMetricsScreenDimensions(DisplayMetrics displayMetrics) {
            this.f24613a = displayMetrics;
        }
    }

    public interface ScreenDimensions {
    }

    public MemorySizeCalculator(Builder builder) {
        Context context = builder.f24610a;
        float f2 = builder.d;
        ActivityManager activityManager = builder.f24611b;
        int i2 = activityManager.isLowRamDevice() ? PKIFailureInfo.badSenderNonce : 4194304;
        this.f24609c = i2;
        int iRound = Math.round(activityManager.getMemoryClass() * 1048576 * (activityManager.isLowRamDevice() ? 0.33f : 0.4f));
        DisplayMetrics displayMetrics = builder.f24612c.f24613a;
        float f3 = displayMetrics.widthPixels * displayMetrics.heightPixels * 4;
        int iRound2 = Math.round(f3 * f2);
        int iRound3 = Math.round(f3 * 2.0f);
        int i3 = iRound - i2;
        if (iRound3 + iRound2 <= i3) {
            this.f24608b = iRound3;
            this.f24607a = iRound2;
        } else {
            float f4 = i3 / (f2 + 2.0f);
            this.f24608b = Math.round(2.0f * f4);
            this.f24607a = Math.round(f4 * f2);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            Formatter.formatFileSize(context, this.f24608b);
            Formatter.formatFileSize(context, this.f24607a);
            Formatter.formatFileSize(context, i2);
            Formatter.formatFileSize(context, iRound);
            activityManager.getMemoryClass();
            activityManager.isLowRamDevice();
        }
    }
}
