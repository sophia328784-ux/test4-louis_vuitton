package androidx.activity.result;

import androidx.activity.result.contract.ActivityResultContract;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import defpackage.lc0;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"androidx/activity/result/ActivityResultRegistry$register$3", "Landroidx/activity/result/ActivityResultLauncher;", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ActivityResultRegistry$register$3 extends ActivityResultLauncher<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ActivityResultRegistry f746a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f747b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ActivityResultContract f748c;

    public ActivityResultRegistry$register$3(ActivityResultRegistry activityResultRegistry, String str, ActivityResultContract activityResultContract) {
        this.f746a = activityResultRegistry;
        this.f747b = str;
        this.f748c = activityResultContract;
    }

    @Override // androidx.activity.result.ActivityResultLauncher
    public final void a(Object obj) {
        ActivityResultRegistry activityResultRegistry = this.f746a;
        ArrayList arrayList = activityResultRegistry.d;
        LinkedHashMap linkedHashMap = activityResultRegistry.f735b;
        String str = this.f747b;
        Object obj2 = linkedHashMap.get(str);
        ActivityResultContract activityResultContract = this.f748c;
        if (obj2 == null) {
            lc0.k(activityResultContract, " and input ", obj, ". You must ensure the ActivityResultLauncher is registered before calling launch().", "Attempting to launch an unregistered ActivityResultLauncher with contract ");
            return;
        }
        int iIntValue = ((Number) obj2).intValue();
        arrayList.add(str);
        try {
            activityResultRegistry.c(iIntValue, activityResultContract, obj);
        } catch (Exception e2) {
            arrayList.remove(str);
            throw e2;
        }
    }

    public final void b() {
        this.f746a.g(this.f747b);
    }
}
