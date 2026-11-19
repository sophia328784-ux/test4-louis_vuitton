package com.sightcall.pratik.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import com.sightcall.core.experiences.SightCall;
import com.sightcall.core.experiences.SightCallUnknownUrlException;
import com.sightcall.pratik.logs.Logger;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/sightcall/pratik/utils/Utils;", "", "<init>", "()V", "Companion", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Utils {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tJ&\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u000eJ$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0007¨\u0006\u001a"}, d2 = {"Lcom/sightcall/pratik/utils/Utils$Companion;", "", "<init>", "()V", "extractHap", "", "env", "hapPath", "startDebugFromApp", "", "actualClick", "calculateDragDistance", "", "initialX", "", "initialY", "finalX", "finalY", "registerReceiverCompat", "", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "receiver", "Landroid/content/BroadcastReceiver;", "filter", "Landroid/content/IntentFilter;", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final double calculateDragDistance(float initialX, float initialY, float finalX, float finalY) {
            float f2 = finalX - initialX;
            float f3 = finalY - initialY;
            return Math.sqrt((f3 * f3) + (f2 * f2));
        }

        public final String extractHap(String env, String hapPath) {
            String strG;
            boolean z = true;
            boolean z2 = env == null || StringsKt.w(env);
            if (hapPath != null && !StringsKt.w(hapPath)) {
                z = false;
            }
            if (z2 && z) {
                return null;
            }
            if (z2) {
                strG = tr.g("/", hapPath);
            } else {
                strG = z ? tr.g("/", env) : fc.i("/", env, "/", hapPath);
            }
            return new Regex("^/+").replace(strG, "/");
        }

        public final void registerReceiverCompat(Context context, BroadcastReceiver receiver, IntentFilter filter) {
            context.getClass();
            if (Build.VERSION.SDK_INT >= 33) {
                context.registerReceiver(receiver, filter, 4);
            } else {
                context.registerReceiver(receiver, filter);
            }
        }

        public final int startDebugFromApp(int actualClick) {
            if (actualClick < 5) {
                return actualClick + 1;
            }
            try {
                SightCall sightCall = SightCall.INSTANCE;
                Uri uri = Uri.parse("debug://sightcall");
                uri.getClass();
                SightCall.start$default(sightCall, uri, null, 2, null);
            } catch (SightCallUnknownUrlException unused) {
                Logger.INSTANCE.getTag();
            }
            return 1;
        }

        private Companion() {
        }
    }
}
