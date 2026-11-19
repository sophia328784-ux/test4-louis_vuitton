package androidx.browser.customtabs;

import android.app.ActivityOptions;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.text.TextUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class CustomTabsIntent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Intent f1377a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Bundle f1378b;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ActivityHeightResizeBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ActivitySideSheetDecorationType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ActivitySideSheetPosition {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ActivitySideSheetRoundedCornersPosition {
    }

    public static class Api34Impl {
        public static void a(ActivityOptions activityOptions) {
            activityOptions.setShareIdentityEnabled(false);
        }
    }

    public static class Api36Impl {
        public static void a(ActivityOptions activityOptions, boolean z) {
            activityOptions.setAllowPassThroughOnTouchOutside(z);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface CloseButtonPosition {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ColorScheme {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ContentTargetType {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OpenInBrowserState {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ShareState {
    }

    public CustomTabsIntent(Intent intent, Bundle bundle) {
        this.f1377a = intent;
        this.f1378b = bundle;
    }

    public static final class Builder {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ActivityOptions f1381c;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Intent f1379a = new Intent("android.intent.action.VIEW");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CustomTabColorSchemeParams$Builder f1380b = new CustomTabColorSchemeParams$Builder();
        public final boolean d = true;

        public Builder() {
        }

        public final CustomTabsIntent a() {
            Intent intent = this.f1379a;
            if (!intent.hasExtra("android.support.customtabs.extra.SESSION")) {
                Bundle bundle = new Bundle();
                bundle.putBinder("android.support.customtabs.extra.SESSION", null);
                intent.putExtras(bundle);
            }
            intent.putExtra("android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS", this.d);
            CustomTabColorSchemeParams$Builder customTabColorSchemeParams$Builder = this.f1380b;
            Integer num = customTabColorSchemeParams$Builder.f1374a;
            Integer num2 = customTabColorSchemeParams$Builder.f1375b;
            Bundle bundle2 = new Bundle();
            if (num != null) {
                bundle2.putInt("android.support.customtabs.extra.TOOLBAR_COLOR", num.intValue());
            }
            if (num2 != null) {
                bundle2.putInt("androidx.browser.customtabs.extra.NAVIGATION_BAR_COLOR", num2.intValue());
            }
            intent.putExtras(bundle2);
            intent.putExtra("androidx.browser.customtabs.extra.SHARE_STATE", 0);
            LocaleList adjustedDefault = LocaleList.getAdjustedDefault();
            String languageTag = adjustedDefault.size() > 0 ? adjustedDefault.get(0).toLanguageTag() : null;
            if (!TextUtils.isEmpty(languageTag)) {
                Bundle bundleExtra = intent.hasExtra("com.android.browser.headers") ? intent.getBundleExtra("com.android.browser.headers") : new Bundle();
                if (!bundleExtra.containsKey("Accept-Language")) {
                    bundleExtra.putString("Accept-Language", languageTag);
                    intent.putExtra("com.android.browser.headers", bundleExtra);
                }
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 34) {
                if (this.f1381c == null) {
                    this.f1381c = ActivityOptions.makeBasic();
                }
                Api34Impl.a(this.f1381c);
            }
            if (i2 >= 36) {
                if (this.f1381c == null) {
                    this.f1381c = ActivityOptions.makeBasic();
                }
                Api36Impl.a(this.f1381c, !intent.getBooleanExtra("androidx.browser.customtabs.extra.DISABLE_BACKGROUND_INTERACTION", false));
            }
            ActivityOptions activityOptions = this.f1381c;
            return new CustomTabsIntent(intent, activityOptions != null ? activityOptions.toBundle() : null);
        }

        public Builder(CustomTabsSession customTabsSession) {
        }
    }
}
