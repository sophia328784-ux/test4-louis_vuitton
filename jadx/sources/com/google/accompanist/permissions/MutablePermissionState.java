package com.google.accompanist.permissions;

import android.app.Activity;
import android.content.Context;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import com.batch.android.BatchPermissionActivity;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/google/accompanist/permissions/MutablePermissionState;", "Lcom/google/accompanist/permissions/PermissionState;", "", BatchPermissionActivity.EXTRA_PERMISSION, "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroid/app/Activity;", ActionFloatingViewItem.f37018a, "<init>", "(Ljava/lang/String;Landroid/content/Context;Landroid/app/Activity;)V", "permissions_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MutablePermissionState implements PermissionState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27769a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f27770b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Activity f27771c;
    public final MutableState d;

    public MutablePermissionState(String str, Context context, Activity activity) {
        str.getClass();
        context.getClass();
        activity.getClass();
        this.f27769a = str;
        this.f27770b = context;
        this.f27771c = activity;
        this.d = SnapshotStateKt.g(a());
    }

    public final PermissionStatus a() {
        Context context = this.f27770b;
        context.getClass();
        String str = this.f27769a;
        str.getClass();
        if (ContextCompat.checkSelfPermission(context, str) == 0) {
            return PermissionStatus.Granted.f27777a;
        }
        Activity activity = this.f27771c;
        activity.getClass();
        return new PermissionStatus.Denied(ActivityCompat.shouldShowRequestPermissionRationale(activity, str));
    }
}
