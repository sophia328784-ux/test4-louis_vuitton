package com.vuitton.android.presentation.utils;

import android.content.Context;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.vuitton.android.R;
import com.vuitton.android.presentation.compose.components.LVLiveCountdownKt;
import com.vuitton.android.presentation.compose.components.LiveEventState;
import defpackage.cj;
import defpackage.n00;
import java.time.Instant;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/utils/AccessibilityUtils;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AccessibilityUtils {
    public static void a(Context context, String str) {
        str.getClass();
        context.getClass();
        Object systemService = context.getSystemService("accessibility");
        AccessibilityManager accessibilityManager = systemService instanceof AccessibilityManager ? (AccessibilityManager) systemService : null;
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(16384);
            accessibilityEventObtain.getText().add(str);
            accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain);
        }
    }

    public static String b(Context context, Instant instant) {
        context.getClass();
        instant.getClass();
        LiveEventState liveEventStateC = LVLiveCountdownKt.c(instant.getEpochSecond() - (System.currentTimeMillis() / 1000));
        String str = liveEventStateC.f51016a;
        String string = context.getString(R.string.wall_event_label_days);
        String str2 = liveEventStateC.f51017b;
        String string2 = context.getString(R.string.wall_event_label_hours);
        String str3 = liveEventStateC.f51018c;
        String string3 = context.getString(R.string.wall_event_label_minutes);
        String str4 = liveEventStateC.d;
        String string4 = context.getString(R.string.wall_event_label_seconds);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(" ");
        sb.append(string);
        sb.append(" ");
        sb.append(str2);
        cj.C(sb, " ", string2, " ", str3);
        cj.C(sb, " ", string3, " ", str4);
        return n00.r(" ", string4, sb);
    }
}
