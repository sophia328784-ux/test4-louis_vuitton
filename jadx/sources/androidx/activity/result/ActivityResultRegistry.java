package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.core.os.BundleCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import defpackage.lc0;
import defpackage.v;
import defpackage.zy0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.sequences.SequencesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\b&\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007"}, d2 = {"Landroidx/activity/result/ActivityResultRegistry;", "", "<init>", "()V", "CallbackAndContract", "LifecycleContainer", "Companion", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class ActivityResultRegistry {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f733h = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f734a = new LinkedHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f735b = new LinkedHashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f736c = new LinkedHashMap();
    public final ArrayList d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final transient LinkedHashMap f737e = new LinkedHashMap();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinkedHashMap f738f = new LinkedHashMap();
    public final Bundle g = new Bundle();

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B'\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0010\u0010\u0006\u001a\f\u0012\u0002\b\u0003\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/activity/result/ActivityResultRegistry$CallbackAndContract;", "O", "", "Landroidx/activity/result/ActivityResultCallback;", "callback", "Landroidx/activity/result/contract/ActivityResultContract;", "contract", "<init>", "(Landroidx/activity/result/ActivityResultCallback;Landroidx/activity/result/contract/ActivityResultContract;)V", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class CallbackAndContract<O> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ActivityResultCallback f739a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ActivityResultContract f740b;

        public CallbackAndContract(ActivityResultCallback<O> activityResultCallback, ActivityResultContract<?, O> activityResultContract) {
            activityResultCallback.getClass();
            activityResultContract.getClass();
            this.f739a = activityResultCallback;
            this.f740b = activityResultContract;
        }
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/activity/result/ActivityResultRegistry$Companion;", "", "", "KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", "Ljava/lang/String;", "KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", "KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", "KEY_COMPONENT_ACTIVITY_PENDING_RESULTS", "LOG_TAG", "", "INITIAL_REQUEST_CODE_VALUE", "I", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/activity/result/ActivityResultRegistry$LifecycleContainer;", "", "Landroidx/lifecycle/Lifecycle;", "lifecycle", "<init>", "(Landroidx/lifecycle/Lifecycle;)V", ActionFloatingViewItem.f37018a}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class LifecycleContainer {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Lifecycle f741a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f742b;

        public LifecycleContainer(Lifecycle lifecycle) {
            lifecycle.getClass();
            this.f741a = lifecycle;
            this.f742b = new ArrayList();
        }
    }

    static {
        new Companion(null);
    }

    public final void a(int i2, Object obj) {
        String str = (String) this.f734a.get(Integer.valueOf(i2));
        if (str == null) {
            return;
        }
        CallbackAndContract callbackAndContract = (CallbackAndContract) this.f737e.get(str);
        if ((callbackAndContract != null ? callbackAndContract.f739a : null) == null) {
            this.g.remove(str);
            this.f738f.put(str, obj);
            return;
        }
        ActivityResultCallback activityResultCallback = callbackAndContract.f739a;
        activityResultCallback.getClass();
        if (this.d.remove(str)) {
            activityResultCallback.b(obj);
        }
    }

    public final boolean b(int i2, int i3, Intent intent) {
        String str = (String) this.f734a.get(Integer.valueOf(i2));
        if (str == null) {
            return false;
        }
        CallbackAndContract callbackAndContract = (CallbackAndContract) this.f737e.get(str);
        if ((callbackAndContract != null ? callbackAndContract.f739a : null) != null) {
            ArrayList arrayList = this.d;
            if (arrayList.contains(str)) {
                callbackAndContract.f739a.b(callbackAndContract.f740b.c(i3, intent));
                arrayList.remove(str);
                return true;
            }
        }
        this.f738f.remove(str);
        this.g.putParcelable(str, new ActivityResult(i3, intent));
        return true;
    }

    public abstract void c(int i2, ActivityResultContract activityResultContract, Object obj);

    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.activity.result.ActivityResultRegistry$register$2] */
    public final ActivityResultRegistry$register$2 d(final String str, LifecycleOwner lifecycleOwner, final ActivityResultContract activityResultContract, final ActivityResultCallback activityResultCallback) {
        str.getClass();
        lifecycleOwner.getClass();
        activityResultContract.getClass();
        activityResultCallback.getClass();
        Lifecycle lifecycle = lifecycleOwner.getF13561b();
        if (lifecycle.getF13454i().a(Lifecycle.State.STARTED)) {
            StringBuilder sb = new StringBuilder("LifecycleOwner ");
            sb.append(lifecycleOwner);
            Lifecycle.State stateB = lifecycle.getF13454i();
            sb.append(" is attempting to register while current state is ");
            sb.append(stateB);
            sb.append(". LifecycleOwners must call register before they are STARTED.");
            throw new IllegalStateException(sb.toString().toString());
        }
        f(str);
        LinkedHashMap linkedHashMap = this.f736c;
        LifecycleContainer lifecycleContainer = (LifecycleContainer) linkedHashMap.get(str);
        if (lifecycleContainer == null) {
            lifecycleContainer = new LifecycleContainer(lifecycle);
        }
        LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.activity.result.a
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                int i2 = ActivityResultRegistry.f733h;
                Lifecycle.Event event2 = Lifecycle.Event.ON_START;
                ActivityResultRegistry activityResultRegistry = this.f761b;
                String str2 = str;
                if (event2 != event) {
                    if (Lifecycle.Event.ON_STOP == event) {
                        activityResultRegistry.f737e.remove(str2);
                        return;
                    } else {
                        if (Lifecycle.Event.ON_DESTROY == event) {
                            activityResultRegistry.g(str2);
                            return;
                        }
                        return;
                    }
                }
                LinkedHashMap linkedHashMap2 = activityResultRegistry.f737e;
                Bundle bundle = activityResultRegistry.g;
                LinkedHashMap linkedHashMap3 = activityResultRegistry.f738f;
                ActivityResultCallback activityResultCallback2 = activityResultCallback;
                ActivityResultContract activityResultContract2 = activityResultContract;
                linkedHashMap2.put(str2, new ActivityResultRegistry.CallbackAndContract(activityResultCallback2, activityResultContract2));
                if (linkedHashMap3.containsKey(str2)) {
                    Object obj = linkedHashMap3.get(str2);
                    linkedHashMap3.remove(str2);
                    activityResultCallback2.b(obj);
                }
                ActivityResult activityResult = (ActivityResult) BundleCompat.a(bundle, str2, ActivityResult.class);
                if (activityResult != null) {
                    bundle.remove(str2);
                    activityResultCallback2.b(activityResultContract2.c(activityResult.f731b, activityResult.f732c));
                }
            }
        };
        lifecycleContainer.f741a.a(lifecycleEventObserver);
        lifecycleContainer.f742b.add(lifecycleEventObserver);
        linkedHashMap.put(str, lifecycleContainer);
        return new ActivityResultLauncher<Object>() { // from class: androidx.activity.result.ActivityResultRegistry$register$2
            @Override // androidx.activity.result.ActivityResultLauncher
            public final void a(Object obj) throws Exception {
                ActivityResultRegistry activityResultRegistry = this.f743a;
                LinkedHashMap linkedHashMap2 = activityResultRegistry.f735b;
                ArrayList arrayList = activityResultRegistry.d;
                String str2 = str;
                Object obj2 = linkedHashMap2.get(str2);
                ActivityResultContract activityResultContract2 = activityResultContract;
                if (obj2 == null) {
                    lc0.k(activityResultContract2, " and input ", obj, ". You must ensure the ActivityResultLauncher is registered before calling launch().", "Attempting to launch an unregistered ActivityResultLauncher with contract ");
                    return;
                }
                int iIntValue = ((Number) obj2).intValue();
                arrayList.add(str2);
                try {
                    activityResultRegistry.c(iIntValue, activityResultContract2, obj);
                } catch (Exception e2) {
                    arrayList.remove(str2);
                    throw e2;
                }
            }
        };
    }

    public final ActivityResultRegistry$register$3 e(String str, ActivityResultContract activityResultContract, ActivityResultCallback activityResultCallback) {
        str.getClass();
        f(str);
        this.f737e.put(str, new CallbackAndContract(activityResultCallback, activityResultContract));
        LinkedHashMap linkedHashMap = this.f738f;
        if (linkedHashMap.containsKey(str)) {
            Object obj = linkedHashMap.get(str);
            linkedHashMap.remove(str);
            activityResultCallback.b(obj);
        }
        Bundle bundle = this.g;
        ActivityResult activityResult = (ActivityResult) BundleCompat.a(bundle, str, ActivityResult.class);
        if (activityResult != null) {
            bundle.remove(str);
            activityResultCallback.b(activityResultContract.c(activityResult.f731b, activityResult.f732c));
        }
        return new ActivityResultRegistry$register$3(this, str, activityResultContract);
    }

    public final void f(String str) {
        LinkedHashMap linkedHashMap = this.f735b;
        if (((Integer) linkedHashMap.get(str)) != null) {
            return;
        }
        for (Number number : SequencesKt.l(new v(18))) {
            Integer numValueOf = Integer.valueOf(number.intValue());
            LinkedHashMap linkedHashMap2 = this.f734a;
            if (!linkedHashMap2.containsKey(numValueOf)) {
                int iIntValue = number.intValue();
                linkedHashMap2.put(Integer.valueOf(iIntValue), str);
                linkedHashMap.put(str, Integer.valueOf(iIntValue));
                return;
            }
        }
        zy0.c("Sequence contains no element matching the predicate.");
    }

    public final void g(String str) {
        Integer num;
        str.getClass();
        if (!this.d.contains(str) && (num = (Integer) this.f735b.remove(str)) != null) {
            this.f734a.remove(num);
        }
        this.f737e.remove(str);
        LinkedHashMap linkedHashMap = this.f738f;
        if (linkedHashMap.containsKey(str)) {
            Objects.toString(linkedHashMap.get(str));
            linkedHashMap.remove(str);
        }
        Bundle bundle = this.g;
        if (bundle.containsKey(str)) {
            Objects.toString((ActivityResult) BundleCompat.a(bundle, str, ActivityResult.class));
            bundle.remove(str);
        }
        LinkedHashMap linkedHashMap2 = this.f736c;
        LifecycleContainer lifecycleContainer = (LifecycleContainer) linkedHashMap2.get(str);
        if (lifecycleContainer != null) {
            ArrayList arrayList = lifecycleContainer.f742b;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                lifecycleContainer.f741a.d((LifecycleEventObserver) it.next());
            }
            arrayList.clear();
            linkedHashMap2.remove(str);
        }
    }
}
