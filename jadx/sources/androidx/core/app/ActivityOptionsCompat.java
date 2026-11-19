package androidx.core.app;

import android.R;
import android.app.ActivityOptions;
import android.content.Context;
import android.os.Bundle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public abstract class ActivityOptionsCompat {

    public static class ActivityOptionsCompatImpl extends ActivityOptionsCompat {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ActivityOptions f11872a;

        public ActivityOptionsCompatImpl(ActivityOptions activityOptions) {
            this.f11872a = activityOptions;
        }

        @Override // androidx.core.app.ActivityOptionsCompat
        public final Bundle b() {
            return this.f11872a.toBundle();
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface BackgroundActivityStartMode {
    }

    public static ActivityOptionsCompat a(Context context) {
        return new ActivityOptionsCompatImpl(ActivityOptions.makeCustomAnimation(context, R.anim.fade_in, R.anim.fade_out));
    }

    public abstract Bundle b();
}
