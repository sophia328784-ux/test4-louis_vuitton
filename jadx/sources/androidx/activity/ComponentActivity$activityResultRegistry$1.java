package androidx.activity;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.core.app.ActivityCompat;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import defpackage.q6;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/activity/ComponentActivity$activityResultRegistry$1", "Landroidx/activity/result/ActivityResultRegistry;", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ComponentActivity$activityResultRegistry$1 extends ActivityResultRegistry {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f659j = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ ComponentActivity f660i;

    public ComponentActivity$activityResultRegistry$1(ComponentActivity componentActivity) {
        this.f660i = componentActivity;
    }

    @Override // androidx.activity.result.ActivityResultRegistry
    public final void c(int i2, ActivityResultContract activityResultContract, Object obj) {
        Bundle bundleExtra;
        int i3;
        activityResultContract.getClass();
        ComponentActivity componentActivity = this.f660i;
        ActivityResultContract.SynchronousResult synchronousResultB = activityResultContract.b(componentActivity, obj);
        if (synchronousResultB != null) {
            new Handler(Looper.getMainLooper()).post(new q6(this, i2, synchronousResultB, 3));
            return;
        }
        Intent intentA = activityResultContract.a(componentActivity, obj);
        if (intentA.getExtras() != null) {
            Bundle extras = intentA.getExtras();
            extras.getClass();
            if (extras.getClassLoader() == null) {
                intentA.setExtrasClassLoader(componentActivity.getClassLoader());
            }
        }
        if (intentA.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
            bundleExtra = intentA.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            intentA.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
        } else {
            bundleExtra = null;
        }
        Bundle bundle = bundleExtra;
        if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(intentA.getAction())) {
            String[] stringArrayExtra = intentA.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            if (stringArrayExtra == null) {
                stringArrayExtra = new String[0];
            }
            ActivityCompat.requestPermissions(componentActivity, stringArrayExtra, i2);
            return;
        }
        if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(intentA.getAction())) {
            ActivityCompat.startActivityForResult(componentActivity, intentA, i2, bundle);
            return;
        }
        IntentSenderRequest intentSenderRequest = (IntentSenderRequest) intentA.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
        try {
            intentSenderRequest.getClass();
            i3 = i2;
            try {
                ActivityCompat.startIntentSenderForResult(componentActivity, intentSenderRequest.f749b, i3, intentSenderRequest.f750c, intentSenderRequest.d, intentSenderRequest.f751e, 0, bundle);
            } catch (IntentSender.SendIntentException e2) {
                e = e2;
                new Handler(Looper.getMainLooper()).post(new q6(this, i3, e, 4));
            }
        } catch (IntentSender.SendIntentException e3) {
            e = e3;
            i3 = i2;
        }
    }
}
