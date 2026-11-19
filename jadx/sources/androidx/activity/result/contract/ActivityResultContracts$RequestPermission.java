package androidx.activity.result.contract;

import android.content.Context;
import android.content.Intent;
import androidx.core.content.ContextCompat;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"androidx/activity/result/contract/ActivityResultContracts$RequestPermission", "Landroidx/activity/result/contract/ActivityResultContract;", "", "", "<init>", "()V", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ActivityResultContracts$RequestPermission extends ActivityResultContract<String, Boolean> {
    @Override // androidx.activity.result.contract.ActivityResultContract
    public final Intent a(Context context, Object obj) {
        String str = (String) obj;
        str.getClass();
        ActivityResultContracts$RequestMultiplePermissions.f775a.getClass();
        Intent intentPutExtra = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", new String[]{str});
        intentPutExtra.getClass();
        return intentPutExtra;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    public final ActivityResultContract.SynchronousResult b(Context context, Object obj) {
        String str = (String) obj;
        str.getClass();
        if (ContextCompat.checkSelfPermission(context, str) == 0) {
            return new ActivityResultContract.SynchronousResult(Boolean.TRUE);
        }
        return null;
    }

    @Override // androidx.activity.result.contract.ActivityResultContract
    public final Object c(int i2, Intent intent) {
        if (intent == null || i2 != -1) {
            return Boolean.FALSE;
        }
        int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
        boolean z = false;
        if (intArrayExtra != null) {
            for (int i3 : intArrayExtra) {
                if (i3 == 0) {
                    z = true;
                    break;
                }
            }
        }
        return Boolean.valueOf(z);
    }
}
