package com.vuitton.android.presentation.helper;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import androidx.activity.result.ActivityResultLauncher;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.foundation.logger.Logger;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/helper/NavigationHelper;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Lcom/vuitton/foundation/logger/Logger;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NavigationHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f51518a;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/helper/NavigationHelper$Companion;", "", "", "TAG", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public NavigationHelper(Logger logger) {
        logger.getClass();
        this.f51518a = logger;
    }

    public static /* synthetic */ boolean b(NavigationHelper navigationHelper, Intent intent, FragmentActivity fragmentActivity, ActivityResultLauncher activityResultLauncher, int i2) {
        if ((i2 & 4) != 0) {
            activityResultLauncher = null;
        }
        return navigationHelper.a(intent, fragmentActivity, activityResultLauncher, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3 */
    public final boolean a(Intent intent, FragmentActivity fragmentActivity, ActivityResultLauncher activityResultLauncher, Bundle bundle) {
        fragmentActivity.getClass();
        if (intent == null) {
            return false;
        }
        try {
            if (activityResultLauncher != null) {
                activityResultLauncher.a(intent);
                return true;
            }
            fragmentActivity.startActivity(intent, bundle);
            this = 1;
            return true;
        } catch (ActivityNotFoundException e2) {
            this.f51518a.c("NavigationHelper", "Activity not found for intent: " + intent.getComponent(), e2);
            return false;
        }
    }
}
