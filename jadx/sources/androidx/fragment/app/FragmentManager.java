package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.BackEventCompat;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistry$register$3;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.activity.result.IntentSenderRequest;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.activity.result.contract.ActivityResultContracts$RequestMultiplePermissions;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.core.app.MultiWindowModeChangedInfo;
import androidx.core.app.OnMultiWindowModeChangedProvider;
import androidx.core.app.OnPictureInPictureModeChangedProvider;
import androidx.core.app.PictureInPictureModeChangedInfo;
import androidx.core.content.OnConfigurationChangedProvider;
import androidx.core.content.OnTrimMemoryProvider;
import androidx.core.util.Consumer;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuProvider;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import com.vuitton.android.R;
import defpackage.b21;
import defpackage.cj;
import defpackage.d21;
import defpackage.dn;
import defpackage.et;
import defpackage.fc;
import defpackage.k00;
import defpackage.md;
import defpackage.n00;
import defpackage.pq0;
import defpackage.tr;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes.dex */
public abstract class FragmentManager implements FragmentResultOwner {
    public Fragment A;
    public ActivityResultRegistry$register$3 D;
    public ActivityResultRegistry$register$3 E;
    public ActivityResultRegistry$register$3 F;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public boolean L;
    public ArrayList M;
    public ArrayList N;
    public ArrayList O;
    public FragmentManagerViewModel P;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f13265b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ArrayList f13267e;
    public OnBackPressedDispatcher g;
    public final k00 r;
    public final k00 s;
    public final k00 t;
    public final k00 u;
    public FragmentHostCallback x;
    public FragmentContainer y;
    public Fragment z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f13264a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FragmentStore f13266c = new FragmentStore();
    public ArrayList d = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FragmentLayoutInflaterFactory f13268f = new FragmentLayoutInflaterFactory(this);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public BackStackRecord f13269h = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f13270i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final OnBackPressedCallback f13271j = new OnBackPressedCallback() { // from class: androidx.fragment.app.FragmentManager.1
        @Override // androidx.activity.OnBackPressedCallback
        public final void a() {
            boolean zO = FragmentManager.O(3);
            FragmentManager fragmentManager = FragmentManager.this;
            if (zO) {
                Objects.toString(fragmentManager);
            }
            if (FragmentManager.O(3)) {
                Objects.toString(fragmentManager.f13269h);
            }
            BackStackRecord backStackRecord = fragmentManager.f13269h;
            if (backStackRecord != null) {
                backStackRecord.s = false;
                backStackRecord.s();
                BackStackRecord backStackRecord2 = fragmentManager.f13269h;
                et etVar = new et(fragmentManager, 11);
                if (backStackRecord2.q == null) {
                    backStackRecord2.q = new ArrayList();
                }
                backStackRecord2.q.add(etVar);
                fragmentManager.f13269h.e();
                fragmentManager.f13270i = true;
                fragmentManager.B(true);
                fragmentManager.H();
                fragmentManager.f13270i = false;
                fragmentManager.f13269h = null;
            }
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void b() {
            boolean zO = FragmentManager.O(3);
            FragmentManager fragmentManager = FragmentManager.this;
            if (zO) {
                Objects.toString(fragmentManager);
            }
            OnBackPressedCallback onBackPressedCallback = fragmentManager.f13271j;
            ArrayList<OnBackStackChangedListener> arrayList = fragmentManager.o;
            fragmentManager.f13270i = true;
            fragmentManager.B(true);
            fragmentManager.f13270i = false;
            if (fragmentManager.f13269h == null) {
                if (onBackPressedCallback.f671b) {
                    FragmentManager.O(3);
                    fragmentManager.X();
                    return;
                } else {
                    FragmentManager.O(3);
                    fragmentManager.g.c().a();
                    return;
                }
            }
            if (!arrayList.isEmpty()) {
                LinkedHashSet linkedHashSet = new LinkedHashSet(FragmentManager.I(fragmentManager.f13269h));
                for (OnBackStackChangedListener onBackStackChangedListener : arrayList) {
                    Iterator it = linkedHashSet.iterator();
                    while (it.hasNext()) {
                        onBackStackChangedListener.a((Fragment) it.next(), true);
                    }
                }
            }
            Iterator it2 = fragmentManager.f13269h.f13328a.iterator();
            while (it2.hasNext()) {
                Fragment fragment = ((FragmentTransaction.Op) it2.next()).f13338b;
                if (fragment != null) {
                    fragment.mTransitioning = false;
                }
            }
            for (SpecialEffectsController specialEffectsController : fragmentManager.h(new ArrayList(Collections.singletonList(fragmentManager.f13269h)), 0, 1)) {
                specialEffectsController.getClass();
                FragmentManager.O(3);
                ArrayList arrayList2 = specialEffectsController.f13362c;
                specialEffectsController.l(arrayList2);
                specialEffectsController.c(arrayList2);
            }
            Iterator it3 = fragmentManager.f13269h.f13328a.iterator();
            while (it3.hasNext()) {
                Fragment fragment2 = ((FragmentTransaction.Op) it3.next()).f13338b;
                if (fragment2 != null && fragment2.mContainer == null) {
                    fragmentManager.i(fragment2).i();
                }
            }
            fragmentManager.f13269h = null;
            fragmentManager.o0();
            if (FragmentManager.O(3)) {
                boolean z = onBackPressedCallback.f671b;
                fragmentManager.toString();
            }
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void c(BackEventCompat backEventCompat) {
            boolean zO = FragmentManager.O(2);
            FragmentManager fragmentManager = FragmentManager.this;
            if (zO) {
                Objects.toString(fragmentManager);
            }
            if (fragmentManager.f13269h != null) {
                for (SpecialEffectsController specialEffectsController : fragmentManager.h(new ArrayList(Collections.singletonList(fragmentManager.f13269h)), 0, 1)) {
                    specialEffectsController.getClass();
                    FragmentManager.O(2);
                    ArrayList arrayList = specialEffectsController.f13362c;
                    ArrayList arrayList2 = new ArrayList();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        CollectionsKt.j(arrayList2, ((SpecialEffectsController.Operation) it.next()).f13375k);
                    }
                    List listY0 = CollectionsKt.y0(CollectionsKt.B0(arrayList2));
                    int size = listY0.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        ((SpecialEffectsController.Effect) listY0.get(i2)).d(backEventCompat, specialEffectsController.f13360a);
                    }
                }
                Iterator it2 = fragmentManager.o.iterator();
                while (it2.hasNext()) {
                    ((OnBackStackChangedListener) it2.next()).getClass();
                }
            }
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void d(BackEventCompat backEventCompat) {
            boolean zO = FragmentManager.O(3);
            FragmentManager fragmentManager = FragmentManager.this;
            if (zO) {
                Objects.toString(fragmentManager);
            }
            fragmentManager.y();
            fragmentManager.z(fragmentManager.new PrepareBackStackTransitionState(), false);
        }
    };

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AtomicInteger f13272k = new AtomicInteger();
    public final Map l = Collections.synchronizedMap(new HashMap());
    public final Map m = Collections.synchronizedMap(new HashMap());
    public final Map n = Collections.synchronizedMap(new HashMap());
    public final ArrayList o = new ArrayList();
    public final FragmentLifecycleCallbacksDispatcher p = new FragmentLifecycleCallbacksDispatcher(this);
    public final CopyOnWriteArrayList q = new CopyOnWriteArrayList();
    public final MenuProvider v = new MenuProvider() { // from class: androidx.fragment.app.FragmentManager.2
        @Override // androidx.core.view.MenuProvider
        public final void a(Menu menu) {
            FragmentManager.this.s(menu);
        }

        @Override // androidx.core.view.MenuProvider
        public final void b(Menu menu) {
            FragmentManager.this.v(menu);
        }

        @Override // androidx.core.view.MenuProvider
        public final boolean c(MenuItem menuItem) {
            return FragmentManager.this.r(menuItem);
        }

        @Override // androidx.core.view.MenuProvider
        public final void d(Menu menu, MenuInflater menuInflater) {
            FragmentManager.this.m(menu, menuInflater);
        }
    };
    public int w = -1;
    public final FragmentFactory B = new FragmentFactory() { // from class: androidx.fragment.app.FragmentManager.3
        @Override // androidx.fragment.app.FragmentFactory
        public final Fragment a(ClassLoader classLoader, String str) {
            return Fragment.instantiate(FragmentManager.this.x.f13255c, str, null);
        }
    };
    public final AnonymousClass4 C = new AnonymousClass4();
    public ArrayDeque G = new ArrayDeque();
    public final Runnable Q = new Runnable() { // from class: androidx.fragment.app.FragmentManager.5
        @Override // java.lang.Runnable
        public void run() {
            FragmentManager.this.B(true);
        }
    };

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentManager$4, reason: invalid class name */
    public class AnonymousClass4 implements SpecialEffectsControllerFactory {
        @Override // androidx.fragment.app.SpecialEffectsControllerFactory
        public final DefaultSpecialEffectsController a(ViewGroup viewGroup) {
            return new DefaultSpecialEffectsController(viewGroup);
        }
    }

    public interface BackStackEntry {
    }

    public static class FragmentIntentSenderContract extends ActivityResultContract<IntentSenderRequest, ActivityResult> {
        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Intent a(Context context, Object obj) {
            Bundle bundleExtra;
            IntentSenderRequest intentSenderRequest = (IntentSenderRequest) obj;
            Intent intent = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
            Intent intent2 = intentSenderRequest.f750c;
            if (intent2 != null && (bundleExtra = intent2.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                intent2.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                if (intent2.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                    IntentSenderRequest.Builder builder = new IntentSenderRequest.Builder(intentSenderRequest.f749b);
                    builder.f753b = null;
                    int i2 = intentSenderRequest.f751e;
                    int i3 = intentSenderRequest.d;
                    builder.d = i2;
                    builder.f754c = i3;
                    intentSenderRequest = new IntentSenderRequest(builder.f752a, builder.f753b, builder.f754c, builder.d);
                }
            }
            intent.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", intentSenderRequest);
            if (FragmentManager.O(2)) {
                intent.toString();
            }
            return intent;
        }

        @Override // androidx.activity.result.contract.ActivityResultContract
        public final Object c(int i2, Intent intent) {
            return new ActivityResult(i2, intent);
        }
    }

    public static abstract class FragmentLifecycleCallbacks {
        @Deprecated
        public void onFragmentActivityCreated(FragmentManager fragmentManager, Fragment fragment, Bundle bundle) {
        }

        public void onFragmentAttached(FragmentManager fragmentManager, Fragment fragment, Context context) {
        }

        public void onFragmentCreated(FragmentManager fragmentManager, Fragment fragment, Bundle bundle) {
        }

        public void onFragmentDestroyed(FragmentManager fragmentManager, Fragment fragment) {
        }

        public void onFragmentDetached(FragmentManager fragmentManager, Fragment fragment) {
        }

        public void onFragmentPaused(FragmentManager fragmentManager, Fragment fragment) {
        }

        public void onFragmentPreAttached(FragmentManager fragmentManager, Fragment fragment, Context context) {
        }

        public void onFragmentPreCreated(FragmentManager fragmentManager, Fragment fragment, Bundle bundle) {
        }

        public void onFragmentResumed(FragmentManager fragmentManager, Fragment fragment) {
        }

        public void onFragmentSaveInstanceState(FragmentManager fragmentManager, Fragment fragment, Bundle bundle) {
        }

        public void onFragmentStarted(FragmentManager fragmentManager, Fragment fragment) {
        }

        public void onFragmentStopped(FragmentManager fragmentManager, Fragment fragment) {
        }

        public void onFragmentViewCreated(FragmentManager fragmentManager, Fragment fragment, View view, Bundle bundle) {
        }

        public void onFragmentViewDestroyed(FragmentManager fragmentManager, Fragment fragment) {
        }
    }

    public static class LaunchedFragmentInfo implements Parcelable {
        public static final Parcelable.Creator<LaunchedFragmentInfo> CREATOR = new AnonymousClass1();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f13282b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f13283c;

        /* JADX INFO: renamed from: androidx.fragment.app.FragmentManager$LaunchedFragmentInfo$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.Creator<LaunchedFragmentInfo> {
            @Override // android.os.Parcelable.Creator
            public final LaunchedFragmentInfo createFromParcel(Parcel parcel) {
                LaunchedFragmentInfo launchedFragmentInfo = new LaunchedFragmentInfo();
                launchedFragmentInfo.f13282b = parcel.readString();
                launchedFragmentInfo.f13283c = parcel.readInt();
                return launchedFragmentInfo;
            }

            @Override // android.os.Parcelable.Creator
            public final LaunchedFragmentInfo[] newArray(int i2) {
                return new LaunchedFragmentInfo[i2];
            }
        }

        public LaunchedFragmentInfo(String str, int i2) {
            this.f13282b = str;
            this.f13283c = i2;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.writeString(this.f13282b);
            parcel.writeInt(this.f13283c);
        }
    }

    public static class LifecycleAwareResultListener implements FragmentResultListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Lifecycle f13284b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final FragmentResultListener f13285c;
        public final LifecycleEventObserver d;

        public LifecycleAwareResultListener(Lifecycle lifecycle, FragmentResultListener fragmentResultListener, LifecycleEventObserver lifecycleEventObserver) {
            this.f13284b = lifecycle;
            this.f13285c = fragmentResultListener;
            this.d = lifecycleEventObserver;
        }

        @Override // androidx.fragment.app.FragmentResultListener
        public final void a(String str, Bundle bundle) {
            this.f13285c.a(str, bundle);
        }
    }

    public interface OnBackStackChangedListener {
        default void a(Fragment fragment, boolean z) {
        }

        default void b(Fragment fragment, boolean z) {
        }

        void onBackStackChanged();
    }

    public interface OpGenerator {
        boolean a(ArrayList arrayList, ArrayList arrayList2);
    }

    public class PopBackStackState implements OpGenerator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f13286a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f13287b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f13288c;

        public PopBackStackState(String str, int i2, int i3) {
            this.f13286a = str;
            this.f13287b = i2;
            this.f13288c = i3;
        }

        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
            Fragment fragment = FragmentManager.this.A;
            if (fragment != null && this.f13287b < 0 && this.f13286a == null && fragment.getChildFragmentManager().Y(-1, 0)) {
                return false;
            }
            return FragmentManager.this.Z(arrayList, arrayList2, this.f13286a, this.f13287b, this.f13288c);
        }
    }

    public class PrepareBackStackTransitionState implements OpGenerator {
        public PrepareBackStackTransitionState() {
        }

        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
            ArrayList arrayList3;
            ArrayList arrayList4;
            boolean Z;
            FragmentManager fragmentManager = FragmentManager.this;
            ArrayList<OnBackStackChangedListener> arrayList5 = fragmentManager.o;
            if (FragmentManager.O(2)) {
                Objects.toString(fragmentManager.f13264a);
            }
            if (fragmentManager.d.isEmpty()) {
                Z = false;
                arrayList3 = arrayList;
                arrayList4 = arrayList2;
            } else {
                BackStackRecord backStackRecord = (BackStackRecord) cj.c(1, fragmentManager.d);
                fragmentManager.f13269h = backStackRecord;
                Iterator it = backStackRecord.f13328a.iterator();
                while (it.hasNext()) {
                    Fragment fragment = ((FragmentTransaction.Op) it.next()).f13338b;
                    if (fragment != null) {
                        fragment.mTransitioning = true;
                    }
                }
                arrayList3 = arrayList;
                arrayList4 = arrayList2;
                Z = fragmentManager.Z(arrayList3, arrayList4, null, -1, 0);
            }
            if (!arrayList5.isEmpty() && arrayList3.size() > 0) {
                boolean zBooleanValue = ((Boolean) arrayList4.get(arrayList3.size() - 1)).booleanValue();
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                Iterator it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    linkedHashSet.addAll(FragmentManager.I((BackStackRecord) it2.next()));
                }
                for (OnBackStackChangedListener onBackStackChangedListener : arrayList5) {
                    Iterator it3 = linkedHashSet.iterator();
                    while (it3.hasNext()) {
                        onBackStackChangedListener.b((Fragment) it3.next(), zBooleanValue);
                    }
                }
            }
            return Z;
        }
    }

    public class RestoreBackStackState implements OpGenerator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f13290a;

        public RestoreBackStackState(String str) {
            this.f13290a = str;
        }

        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        public final boolean a(ArrayList arrayList, ArrayList arrayList2) {
            FragmentManager fragmentManager = FragmentManager.this;
            BackStackState backStackState = (BackStackState) fragmentManager.l.remove(this.f13290a);
            boolean z = false;
            if (backStackState == null) {
                return false;
            }
            HashMap map = new HashMap();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                BackStackRecord backStackRecord = (BackStackRecord) it.next();
                if (backStackRecord.u) {
                    Iterator it2 = backStackRecord.f13328a.iterator();
                    while (it2.hasNext()) {
                        Fragment fragment = ((FragmentTransaction.Op) it2.next()).f13338b;
                        if (fragment != null) {
                            map.put(fragment.mWho, fragment);
                        }
                    }
                }
            }
            ArrayList<String> arrayList3 = backStackState.f13187b;
            HashMap map2 = new HashMap(arrayList3.size());
            for (String str : arrayList3) {
                Fragment fragment2 = (Fragment) map.get(str);
                if (fragment2 != null) {
                    map2.put(fragment2.mWho, fragment2);
                } else {
                    Bundle bundleI = fragmentManager.f13266c.i(str, null);
                    if (bundleI != null) {
                        ClassLoader classLoader = fragmentManager.x.f13255c.getClassLoader();
                        Fragment fragmentA = ((FragmentState) bundleI.getParcelable("state")).a(fragmentManager.L(), classLoader);
                        fragmentA.mSavedFragmentState = bundleI;
                        if (bundleI.getBundle("savedInstanceState") == null) {
                            fragmentA.mSavedFragmentState.putBundle("savedInstanceState", new Bundle());
                        }
                        Bundle bundle = bundleI.getBundle("arguments");
                        if (bundle != null) {
                            bundle.setClassLoader(classLoader);
                        }
                        fragmentA.setArguments(bundle);
                        map2.put(fragmentA.mWho, fragmentA);
                    }
                }
            }
            ArrayList arrayList4 = new ArrayList();
            for (BackStackRecordState backStackRecordState : backStackState.f13188c) {
                ArrayList arrayList5 = backStackRecordState.f13180c;
                BackStackRecord backStackRecord2 = new BackStackRecord(fragmentManager);
                backStackRecordState.a(backStackRecord2);
                for (int i2 = 0; i2 < arrayList5.size(); i2++) {
                    String str2 = (String) arrayList5.get(i2);
                    if (str2 != null) {
                        Fragment fragment3 = (Fragment) map2.get(str2);
                        if (fragment3 == null) {
                            md.k(tr.l(new StringBuilder("Restoring FragmentTransaction "), backStackRecordState.g, " failed due to missing saved state for Fragment (", str2, ")"));
                            return false;
                        }
                        ((FragmentTransaction.Op) backStackRecord2.f13328a.get(i2)).f13338b = fragment3;
                    }
                }
                arrayList4.add(backStackRecord2);
            }
            Iterator it3 = arrayList4.iterator();
            while (it3.hasNext()) {
                ((BackStackRecord) it3.next()).a(arrayList, arrayList2);
                z = true;
            }
            return z;
        }
    }

    public class SaveBackStackState implements OpGenerator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f13292a;

        public SaveBackStackState(String str) {
            this.f13292a = str;
        }

        /* JADX WARN: Code duplicated, block: B:36:0x00a4  */
        @Override // androidx.fragment.app.FragmentManager.OpGenerator
        public final boolean a(ArrayList arrayList, ArrayList arrayList2) throws Throwable {
            Throwable th;
            int i2;
            int i3;
            FragmentManager fragmentManager = FragmentManager.this;
            String str = this.f13292a;
            int iE = fragmentManager.E(-1, str, true);
            if (iE < 0) {
                return false;
            }
            int i4 = iE;
            while (true) {
                Throwable th2 = null;
                if (i4 >= fragmentManager.d.size()) {
                    HashSet hashSet = new HashSet();
                    int i5 = iE;
                    while (i5 < fragmentManager.d.size()) {
                        BackStackRecord backStackRecord = (BackStackRecord) fragmentManager.d.get(i5);
                        HashSet hashSet2 = new HashSet();
                        HashSet hashSet3 = new HashSet();
                        for (FragmentTransaction.Op op : backStackRecord.f13328a) {
                            Fragment fragment = op.f13338b;
                            if (fragment != null) {
                                if (!op.f13339c || (i3 = op.f13337a) == 1 || i3 == 2) {
                                    th = th2;
                                } else {
                                    th = th2;
                                    if (i3 == 8) {
                                    }
                                    i2 = op.f13337a;
                                    if (i2 != 1 || i2 == 2) {
                                        hashSet3.add(fragment);
                                    }
                                    th2 = th;
                                }
                                hashSet.add(fragment);
                                hashSet2.add(fragment);
                                i2 = op.f13337a;
                                if (i2 != 1) {
                                    hashSet3.add(fragment);
                                } else {
                                    hashSet3.add(fragment);
                                }
                                th2 = th;
                            }
                        }
                        Throwable th3 = th2;
                        hashSet2.removeAll(hashSet3);
                        if (!hashSet2.isEmpty()) {
                            StringBuilder sbR = pq0.r("saveBackStack(\"", str, "\") must be self contained and not reference fragments from non-saved FragmentTransactions. Found reference to fragment");
                            sbR.append(hashSet2.size() == 1 ? " " + hashSet2.iterator().next() : "s " + hashSet2);
                            sbR.append(" in ");
                            sbR.append(backStackRecord);
                            sbR.append(" that were previously added to the FragmentManager through a separate FragmentTransaction.");
                            fragmentManager.n0(new IllegalArgumentException(sbR.toString()));
                            throw th3;
                        }
                        i5++;
                        th2 = th3;
                    }
                    Throwable th4 = th2;
                    ArrayDeque arrayDeque = new ArrayDeque(hashSet);
                    while (!arrayDeque.isEmpty()) {
                        Fragment fragment2 = (Fragment) arrayDeque.removeFirst();
                        if (fragment2.mRetainInstance) {
                            StringBuilder sbR2 = pq0.r("saveBackStack(\"", str, "\") must not contain retained fragments. Found ");
                            sbR2.append(hashSet.contains(fragment2) ? "direct reference to retained " : "retained child ");
                            sbR2.append("fragment ");
                            sbR2.append(fragment2);
                            fragmentManager.n0(new IllegalArgumentException(sbR2.toString()));
                            throw th4;
                        }
                        for (Fragment fragment3 : fragment2.mChildFragmentManager.f13266c.e()) {
                            if (fragment3 != null) {
                                arrayDeque.addLast(fragment3);
                            }
                        }
                    }
                    ArrayList arrayList3 = new ArrayList();
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        arrayList3.add(((Fragment) it.next()).mWho);
                    }
                    ArrayList arrayList4 = new ArrayList(fragmentManager.d.size() - iE);
                    for (int i6 = iE; i6 < fragmentManager.d.size(); i6++) {
                        arrayList4.add(th4);
                    }
                    BackStackState backStackState = new BackStackState(arrayList3, arrayList4);
                    for (int size = fragmentManager.d.size() - 1; size >= iE; size--) {
                        BackStackRecord backStackRecord2 = (BackStackRecord) fragmentManager.d.remove(size);
                        BackStackRecord backStackRecord3 = new BackStackRecord(backStackRecord2);
                        backStackRecord3.s();
                        arrayList4.set(size - iE, new BackStackRecordState(backStackRecord3));
                        backStackRecord2.u = true;
                        arrayList.add(backStackRecord2);
                        arrayList2.add(Boolean.TRUE);
                    }
                    fragmentManager.l.put(str, backStackState);
                    return true;
                }
                BackStackRecord backStackRecord4 = (BackStackRecord) fragmentManager.d.get(i4);
                if (!backStackRecord4.p) {
                    fragmentManager.n0(new IllegalArgumentException("saveBackStack(\"" + str + "\") included FragmentTransactions must use setReorderingAllowed(true) to ensure that the back stack can be restored as an atomic operation. Found " + backStackRecord4 + " that did not use setReorderingAllowed(true)."));
                    throw null;
                }
                i4++;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v17, types: [k00] */
    /* JADX WARN: Type inference failed for: r0v18, types: [k00] */
    /* JADX WARN: Type inference failed for: r0v19, types: [k00] */
    /* JADX WARN: Type inference failed for: r0v20, types: [k00] */
    public FragmentManager() {
        final int i2 = 0;
        this.r = new Consumer(this) { // from class: k00

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ FragmentManager f71511b;

            {
                this.f71511b = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i3 = i2;
                FragmentManager fragmentManager = this.f71511b;
                switch (i3) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        if (fragmentManager.Q()) {
                            fragmentManager.k(false, configuration);
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (fragmentManager.Q() && num.intValue() == 80) {
                            fragmentManager.o(false);
                            break;
                        }
                        break;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        if (fragmentManager.Q()) {
                            fragmentManager.p(multiWindowModeChangedInfo.f11875a, false);
                        }
                        break;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        if (fragmentManager.Q()) {
                            fragmentManager.u(pictureInPictureModeChangedInfo.f11978a, false);
                        }
                        break;
                }
            }
        };
        final int i3 = 1;
        this.s = new Consumer(this) { // from class: k00

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ FragmentManager f71511b;

            {
                this.f71511b = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i4 = i3;
                FragmentManager fragmentManager = this.f71511b;
                switch (i4) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        if (fragmentManager.Q()) {
                            fragmentManager.k(false, configuration);
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (fragmentManager.Q() && num.intValue() == 80) {
                            fragmentManager.o(false);
                            break;
                        }
                        break;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        if (fragmentManager.Q()) {
                            fragmentManager.p(multiWindowModeChangedInfo.f11875a, false);
                        }
                        break;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        if (fragmentManager.Q()) {
                            fragmentManager.u(pictureInPictureModeChangedInfo.f11978a, false);
                        }
                        break;
                }
            }
        };
        final int i4 = 2;
        this.t = new Consumer(this) { // from class: k00

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ FragmentManager f71511b;

            {
                this.f71511b = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i5 = i4;
                FragmentManager fragmentManager = this.f71511b;
                switch (i5) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        if (fragmentManager.Q()) {
                            fragmentManager.k(false, configuration);
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (fragmentManager.Q() && num.intValue() == 80) {
                            fragmentManager.o(false);
                            break;
                        }
                        break;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        if (fragmentManager.Q()) {
                            fragmentManager.p(multiWindowModeChangedInfo.f11875a, false);
                        }
                        break;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        if (fragmentManager.Q()) {
                            fragmentManager.u(pictureInPictureModeChangedInfo.f11978a, false);
                        }
                        break;
                }
            }
        };
        final int i5 = 3;
        this.u = new Consumer(this) { // from class: k00

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ FragmentManager f71511b;

            {
                this.f71511b = this;
            }

            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                int i6 = i5;
                FragmentManager fragmentManager = this.f71511b;
                switch (i6) {
                    case 0:
                        Configuration configuration = (Configuration) obj;
                        if (fragmentManager.Q()) {
                            fragmentManager.k(false, configuration);
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (fragmentManager.Q() && num.intValue() == 80) {
                            fragmentManager.o(false);
                            break;
                        }
                        break;
                    case 2:
                        MultiWindowModeChangedInfo multiWindowModeChangedInfo = (MultiWindowModeChangedInfo) obj;
                        if (fragmentManager.Q()) {
                            fragmentManager.p(multiWindowModeChangedInfo.f11875a, false);
                        }
                        break;
                    default:
                        PictureInPictureModeChangedInfo pictureInPictureModeChangedInfo = (PictureInPictureModeChangedInfo) obj;
                        if (fragmentManager.Q()) {
                            fragmentManager.u(pictureInPictureModeChangedInfo.f11978a, false);
                        }
                        break;
                }
            }
        };
    }

    public static HashSet I(BackStackRecord backStackRecord) {
        HashSet hashSet = new HashSet();
        for (int i2 = 0; i2 < backStackRecord.f13328a.size(); i2++) {
            Fragment fragment = ((FragmentTransaction.Op) backStackRecord.f13328a.get(i2)).f13338b;
            if (fragment != null && backStackRecord.g) {
                hashSet.add(fragment);
            }
        }
        return hashSet;
    }

    public static boolean O(int i2) {
        return Log.isLoggable("FragmentManager", i2);
    }

    public static boolean P(Fragment fragment) {
        if (fragment.mHasMenu && fragment.mMenuVisible) {
            return true;
        }
        boolean zP = false;
        for (Fragment fragment2 : fragment.mChildFragmentManager.f13266c.e()) {
            if (fragment2 != null) {
                zP = P(fragment2);
            }
            if (zP) {
                return true;
            }
        }
        return false;
    }

    public static boolean R(Fragment fragment) {
        if (fragment == null) {
            return true;
        }
        FragmentManager fragmentManager = fragment.mFragmentManager;
        return fragment.equals(fragmentManager.A) && R(fragmentManager.z);
    }

    public final void A(boolean z) {
        if (this.f13265b) {
            md.k("FragmentManager is already executing transactions");
            return;
        }
        if (this.x == null) {
            if (this.K) {
                md.k("FragmentManager has been destroyed");
                return;
            } else {
                md.k("FragmentManager has not been attached to a host.");
                return;
            }
        }
        if (Looper.myLooper() != this.x.d.getLooper()) {
            md.k("Must be called from main thread of fragment host");
            return;
        }
        if (!z && S()) {
            md.k("Can not perform this action after onSaveInstanceState");
        } else if (this.M == null) {
            this.M = new ArrayList();
            this.N = new ArrayList();
        }
    }

    public final boolean B(boolean z) {
        boolean zA;
        ArrayList arrayList;
        BackStackRecord backStackRecord;
        A(z);
        if (!this.f13270i && (backStackRecord = this.f13269h) != null) {
            backStackRecord.s = false;
            backStackRecord.s();
            if (O(3)) {
                Objects.toString(this.f13269h);
                Objects.toString(this.f13264a);
            }
            this.f13269h.t(false, false);
            this.f13264a.add(0, this.f13269h);
            Iterator it = this.f13269h.f13328a.iterator();
            while (it.hasNext()) {
                Fragment fragment = ((FragmentTransaction.Op) it.next()).f13338b;
                if (fragment != null) {
                    fragment.mTransitioning = false;
                }
            }
            this.f13269h = null;
        }
        boolean z2 = false;
        while (true) {
            ArrayList arrayList2 = this.M;
            ArrayList arrayList3 = this.N;
            synchronized (this.f13264a) {
                if (this.f13264a.isEmpty()) {
                    zA = false;
                } else {
                    try {
                        int size = this.f13264a.size();
                        int i2 = 0;
                        zA = false;
                        while (true) {
                            arrayList = this.f13264a;
                            if (i2 >= size) {
                                break;
                            }
                            zA |= ((OpGenerator) arrayList.get(i2)).a(arrayList2, arrayList3);
                            i2++;
                            throw th;
                        }
                        arrayList.clear();
                        this.x.d.removeCallbacks(this.Q);
                    } catch (Throwable th) {
                        this.f13264a.clear();
                        this.x.d.removeCallbacks(this.Q);
                        throw th;
                    }
                }
            }
            if (!zA) {
                break;
            }
            this.f13265b = true;
            try {
                c0(this.M, this.N);
                e();
                z2 = true;
            } catch (Throwable th2) {
                e();
                throw th2;
            }
        }
        o0();
        if (this.L) {
            this.L = false;
            for (FragmentStateManager fragmentStateManager : this.f13266c.d()) {
                Fragment fragment2 = fragmentStateManager.f13315c;
                if (fragment2.mDeferStart) {
                    if (this.f13265b) {
                        this.L = true;
                    } else {
                        fragment2.mDeferStart = false;
                        fragmentStateManager.i();
                    }
                }
            }
        }
        this.f13266c.f13325b.values().removeAll(Collections.singleton(null));
        return z2;
    }

    public final void C(BackStackRecord backStackRecord, boolean z) {
        if (z && (this.x == null || this.K)) {
            return;
        }
        A(z);
        BackStackRecord backStackRecord2 = this.f13269h;
        if (backStackRecord2 != null) {
            backStackRecord2.s = false;
            backStackRecord2.s();
            if (O(3)) {
                Objects.toString(this.f13269h);
                Objects.toString(backStackRecord);
            }
            this.f13269h.t(false, false);
            this.f13269h.a(this.M, this.N);
            Iterator it = this.f13269h.f13328a.iterator();
            while (it.hasNext()) {
                Fragment fragment = ((FragmentTransaction.Op) it.next()).f13338b;
                if (fragment != null) {
                    fragment.mTransitioning = false;
                }
            }
            this.f13269h = null;
        }
        backStackRecord.a(this.M, this.N);
        this.f13265b = true;
        try {
            c0(this.M, this.N);
            e();
            o0();
            boolean z2 = this.L;
            FragmentStore fragmentStore = this.f13266c;
            if (z2) {
                this.L = false;
                for (FragmentStateManager fragmentStateManager : fragmentStore.d()) {
                    Fragment fragment2 = fragmentStateManager.f13315c;
                    if (fragment2.mDeferStart) {
                        if (this.f13265b) {
                            this.L = true;
                        } else {
                            fragment2.mDeferStart = false;
                            fragmentStateManager.i();
                        }
                    }
                }
            }
            fragmentStore.f13325b.values().removeAll(Collections.singleton(null));
        } catch (Throwable th) {
            e();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:109:0x0223 A[PHI: r15
      0x0223: PHI (r15v14 int) = (r15v13 int), (r15v16 int) binds: [B:101:0x0210, B:105:0x021a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:65:0x0173  */
    /* JADX WARN: Code duplicated, block: B:66:0x0179  */
    public final void D(ArrayList arrayList, ArrayList arrayList2, int i2, int i3) {
        int i4;
        boolean z;
        int i5;
        boolean z2;
        int i6;
        int i7;
        int i8 = i2;
        boolean z3 = ((BackStackRecord) arrayList.get(i8)).p;
        ArrayList arrayList3 = this.O;
        if (arrayList3 == null) {
            this.O = new ArrayList();
        } else {
            arrayList3.clear();
        }
        ArrayList arrayList4 = this.O;
        FragmentStore fragmentStore = this.f13266c;
        arrayList4.addAll(fragmentStore.f());
        Fragment fragment = this.A;
        int i9 = i8;
        boolean z4 = false;
        while (true) {
            int i10 = 1;
            if (i9 >= i3) {
                boolean z5 = z3;
                boolean z6 = z4;
                this.O.clear();
                if (!z5 && this.w >= 1) {
                    for (int i11 = i8; i11 < i3; i11++) {
                        Iterator it = ((BackStackRecord) arrayList.get(i11)).f13328a.iterator();
                        while (it.hasNext()) {
                            Fragment fragment2 = ((FragmentTransaction.Op) it.next()).f13338b;
                            if (fragment2 != null && fragment2.mFragmentManager != null) {
                                fragmentStore.g(i(fragment2));
                            }
                        }
                    }
                }
                int i12 = i8;
                while (i12 < i3) {
                    BackStackRecord backStackRecord = (BackStackRecord) arrayList.get(i12);
                    if (!((Boolean) arrayList2.get(i12)).booleanValue()) {
                        backStackRecord.r(1);
                        FragmentManager fragmentManager = backStackRecord.r;
                        ArrayList arrayList5 = backStackRecord.f13328a;
                        int size = arrayList5.size();
                        int i13 = 0;
                        while (i13 < size) {
                            FragmentTransaction.Op op = (FragmentTransaction.Op) arrayList5.get(i13);
                            Fragment fragment3 = op.f13338b;
                            if (fragment3 != null) {
                                fragment3.mBeingSaved = backStackRecord.u;
                                fragment3.setPopDirection(false);
                                fragment3.setNextTransition(backStackRecord.f13332f);
                                fragment3.setSharedElementNames(backStackRecord.n, backStackRecord.o);
                            }
                            switch (op.f13337a) {
                                case 1:
                                    i4 = i12;
                                    fragment3.setAnimations(op.d, op.f13340e, op.f13341f, op.g);
                                    fragmentManager.i0(fragment3, false);
                                    fragmentManager.a(fragment3);
                                    i13++;
                                    i12 = i4;
                                    break;
                                case 2:
                                default:
                                    md.g(op.f13337a, "Unknown cmd: ");
                                    break;
                                case 3:
                                    i4 = i12;
                                    fragment3.setAnimations(op.d, op.f13340e, op.f13341f, op.g);
                                    fragmentManager.b0(fragment3);
                                    i13++;
                                    i12 = i4;
                                    break;
                                case 4:
                                    i4 = i12;
                                    fragment3.setAnimations(op.d, op.f13340e, op.f13341f, op.g);
                                    fragmentManager.getClass();
                                    if (O(2)) {
                                        Objects.toString(fragment3);
                                    }
                                    if (!fragment3.mHidden) {
                                        fragment3.mHidden = true;
                                        fragment3.mHiddenChanged = !fragment3.mHiddenChanged;
                                        fragmentManager.m0(fragment3);
                                    }
                                    i13++;
                                    i12 = i4;
                                    break;
                                case 5:
                                    i4 = i12;
                                    fragment3.setAnimations(op.d, op.f13340e, op.f13341f, op.g);
                                    fragmentManager.i0(fragment3, false);
                                    if (O(2)) {
                                        Objects.toString(fragment3);
                                    }
                                    if (fragment3.mHidden) {
                                        fragment3.mHidden = false;
                                        fragment3.mHiddenChanged = !fragment3.mHiddenChanged;
                                    }
                                    i13++;
                                    i12 = i4;
                                    break;
                                case 6:
                                    i4 = i12;
                                    fragment3.setAnimations(op.d, op.f13340e, op.f13341f, op.g);
                                    fragmentManager.j(fragment3);
                                    i13++;
                                    i12 = i4;
                                    break;
                                case 7:
                                    i4 = i12;
                                    fragment3.setAnimations(op.d, op.f13340e, op.f13341f, op.g);
                                    fragmentManager.i0(fragment3, false);
                                    fragmentManager.c(fragment3);
                                    i13++;
                                    i12 = i4;
                                    break;
                                case 8:
                                    fragmentManager.l0(fragment3);
                                    i4 = i12;
                                    i13++;
                                    i12 = i4;
                                    break;
                                case 9:
                                    fragmentManager.l0(null);
                                    i4 = i12;
                                    i13++;
                                    i12 = i4;
                                    break;
                                case 10:
                                    fragmentManager.k0(fragment3, op.f13343i);
                                    i4 = i12;
                                    i13++;
                                    i12 = i4;
                                    break;
                            }
                            return;
                        }
                    }
                    backStackRecord.r(-1);
                    FragmentManager fragmentManager2 = backStackRecord.r;
                    ArrayList arrayList6 = backStackRecord.f13328a;
                    boolean z7 = true;
                    for (int size2 = arrayList6.size() - 1; size2 >= 0; size2--) {
                        FragmentTransaction.Op op2 = (FragmentTransaction.Op) arrayList6.get(size2);
                        Fragment fragment4 = op2.f13338b;
                        if (fragment4 != null) {
                            fragment4.mBeingSaved = backStackRecord.u;
                            fragment4.setPopDirection(z7);
                            int i14 = backStackRecord.f13332f;
                            int i15 = 8194;
                            int i16 = 4097;
                            if (i14 != 4097) {
                                if (i14 != 8194) {
                                    i15 = 4100;
                                    if (i14 != 8197) {
                                        i16 = 4099;
                                        if (i14 != 4099) {
                                            i15 = i14 != 4100 ? 0 : 8197;
                                        } else {
                                            i15 = i16;
                                        }
                                    }
                                } else {
                                    i15 = i16;
                                }
                            }
                            fragment4.setNextTransition(i15);
                            fragment4.setSharedElementNames(backStackRecord.o, backStackRecord.n);
                        }
                        switch (op2.f13337a) {
                            case 1:
                                fragment4.setAnimations(op2.d, op2.f13340e, op2.f13341f, op2.g);
                                z7 = true;
                                fragmentManager2.i0(fragment4, true);
                                fragmentManager2.b0(fragment4);
                                break;
                            case 2:
                            default:
                                md.g(op2.f13337a, "Unknown cmd: ");
                                break;
                            case 3:
                                fragment4.setAnimations(op2.d, op2.f13340e, op2.f13341f, op2.g);
                                fragmentManager2.a(fragment4);
                                z7 = true;
                                break;
                            case 4:
                                fragment4.setAnimations(op2.d, op2.f13340e, op2.f13341f, op2.g);
                                fragmentManager2.getClass();
                                if (O(2)) {
                                    Objects.toString(fragment4);
                                }
                                if (fragment4.mHidden) {
                                    fragment4.mHidden = false;
                                    fragment4.mHiddenChanged = !fragment4.mHiddenChanged;
                                }
                                z7 = true;
                                break;
                            case 5:
                                fragment4.setAnimations(op2.d, op2.f13340e, op2.f13341f, op2.g);
                                fragmentManager2.i0(fragment4, true);
                                if (O(2)) {
                                    Objects.toString(fragment4);
                                }
                                if (!fragment4.mHidden) {
                                    fragment4.mHidden = true;
                                    fragment4.mHiddenChanged = !fragment4.mHiddenChanged;
                                    fragmentManager2.m0(fragment4);
                                }
                                z7 = true;
                                break;
                            case 6:
                                fragment4.setAnimations(op2.d, op2.f13340e, op2.f13341f, op2.g);
                                fragmentManager2.c(fragment4);
                                z7 = true;
                                break;
                            case 7:
                                fragment4.setAnimations(op2.d, op2.f13340e, op2.f13341f, op2.g);
                                fragmentManager2.i0(fragment4, true);
                                fragmentManager2.j(fragment4);
                                z7 = true;
                                break;
                            case 8:
                                fragmentManager2.l0(null);
                                z7 = true;
                                break;
                            case 9:
                                fragmentManager2.l0(fragment4);
                                z7 = true;
                                break;
                            case 10:
                                fragmentManager2.k0(fragment4, op2.f13342h);
                                z7 = true;
                                break;
                        }
                        return;
                    }
                    i12++;
                }
                boolean zBooleanValue = ((Boolean) arrayList2.get(i3 - 1)).booleanValue();
                ArrayList<OnBackStackChangedListener> arrayList7 = this.o;
                if (z6 && !arrayList7.isEmpty()) {
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        linkedHashSet.addAll(I((BackStackRecord) it2.next()));
                    }
                    if (this.f13269h == null) {
                        for (OnBackStackChangedListener onBackStackChangedListener : arrayList7) {
                            Iterator it3 = linkedHashSet.iterator();
                            while (it3.hasNext()) {
                                onBackStackChangedListener.b((Fragment) it3.next(), zBooleanValue);
                            }
                        }
                        for (OnBackStackChangedListener onBackStackChangedListener2 : arrayList7) {
                            Iterator it4 = linkedHashSet.iterator();
                            while (it4.hasNext()) {
                                onBackStackChangedListener2.a((Fragment) it4.next(), zBooleanValue);
                            }
                        }
                    }
                }
                for (int i17 = i8; i17 < i3; i17++) {
                    BackStackRecord backStackRecord2 = (BackStackRecord) arrayList.get(i17);
                    if (zBooleanValue) {
                        for (int size3 = backStackRecord2.f13328a.size() - 1; size3 >= 0; size3--) {
                            Fragment fragment5 = ((FragmentTransaction.Op) backStackRecord2.f13328a.get(size3)).f13338b;
                            if (fragment5 != null) {
                                i(fragment5).i();
                            }
                        }
                    } else {
                        Iterator it5 = backStackRecord2.f13328a.iterator();
                        while (it5.hasNext()) {
                            Fragment fragment6 = ((FragmentTransaction.Op) it5.next()).f13338b;
                            if (fragment6 != null) {
                                i(fragment6).i();
                            }
                        }
                    }
                }
                T(this.w, true);
                for (SpecialEffectsController specialEffectsController : h(arrayList, i8, i3)) {
                    specialEffectsController.f13363e = zBooleanValue;
                    specialEffectsController.k();
                    specialEffectsController.e();
                }
                while (i8 < i3) {
                    BackStackRecord backStackRecord3 = (BackStackRecord) arrayList.get(i8);
                    if (((Boolean) arrayList2.get(i8)).booleanValue() && backStackRecord3.t >= 0) {
                        backStackRecord3.t = -1;
                    }
                    if (backStackRecord3.q != null) {
                        for (int i18 = 0; i18 < backStackRecord3.q.size(); i18++) {
                            ((Runnable) backStackRecord3.q.get(i18)).run();
                        }
                        backStackRecord3.q = null;
                    }
                    i8++;
                }
                if (z6) {
                    for (int i19 = 0; i19 < arrayList7.size(); i19++) {
                        ((OnBackStackChangedListener) arrayList7.get(i19)).onBackStackChanged();
                    }
                    return;
                }
                return;
            }
            BackStackRecord backStackRecord4 = (BackStackRecord) arrayList.get(i9);
            boolean zBooleanValue2 = ((Boolean) arrayList2.get(i9)).booleanValue();
            ArrayList arrayList8 = this.O;
            if (zBooleanValue2) {
                z = z3;
                i5 = i9;
                z2 = z4;
                int i20 = 1;
                ArrayList arrayList9 = backStackRecord4.f13328a;
                int size4 = arrayList9.size() - 1;
                while (size4 >= 0) {
                    FragmentTransaction.Op op3 = (FragmentTransaction.Op) arrayList9.get(size4);
                    int i21 = op3.f13337a;
                    if (i21 == i20) {
                        arrayList8.remove(op3.f13338b);
                    } else if (i21 != 3) {
                        switch (i21) {
                            case 6:
                                arrayList8.add(op3.f13338b);
                                break;
                            case 7:
                                arrayList8.remove(op3.f13338b);
                                break;
                            case 8:
                                fragment = null;
                                break;
                            case 9:
                                fragment = op3.f13338b;
                                break;
                            case 10:
                                op3.f13343i = op3.f13342h;
                                break;
                        }
                    } else {
                        arrayList8.add(op3.f13338b);
                    }
                    size4--;
                    i20 = 1;
                }
            } else {
                ArrayList arrayList10 = backStackRecord4.f13328a;
                int i22 = 0;
                while (i22 < arrayList10.size()) {
                    FragmentTransaction.Op op4 = (FragmentTransaction.Op) arrayList10.get(i22);
                    boolean z8 = z3;
                    int i23 = op4.f13337a;
                    if (i23 != i10) {
                        if (i23 != 2) {
                            if (i23 == 3 || i23 == 6) {
                                i9 = i9;
                                arrayList8.remove(op4.f13338b);
                                Fragment fragment7 = op4.f13338b;
                                if (fragment7 == fragment) {
                                    arrayList10.add(i22, new FragmentTransaction.Op(fragment7, 9));
                                    i22++;
                                    fragment = null;
                                }
                                i6 = 1;
                            } else if (i23 == 7) {
                                i6 = 1;
                            } else if (i23 != 8) {
                                i9 = i9;
                            } else {
                                i9 = i9;
                                arrayList10.add(i22, new FragmentTransaction.Op(9, fragment, 0));
                                op4.f13339c = true;
                                i22++;
                                fragment = op4.f13338b;
                            }
                            i6 = 1;
                        } else {
                            i9 = i9;
                            Fragment fragment8 = op4.f13338b;
                            int i24 = fragment8.mContainerId;
                            int size5 = arrayList8.size() - 1;
                            boolean z9 = false;
                            while (size5 >= 0) {
                                boolean z10 = z4;
                                Fragment fragment9 = (Fragment) arrayList8.get(size5);
                                int i25 = size5;
                                if (fragment9.mContainerId != i24) {
                                    i24 = i24;
                                } else if (fragment9 == fragment8) {
                                    i24 = i24;
                                    z9 = true;
                                } else {
                                    if (fragment9 == fragment) {
                                        i7 = 0;
                                        arrayList10.add(i22, new FragmentTransaction.Op(9, fragment9, 0));
                                        i22++;
                                        fragment = null;
                                    } else {
                                        i7 = 0;
                                    }
                                    FragmentTransaction.Op op5 = new FragmentTransaction.Op(3, fragment9, i7);
                                    op5.d = op4.d;
                                    op5.f13341f = op4.f13341f;
                                    op5.f13340e = op4.f13340e;
                                    op5.g = op4.g;
                                    arrayList10.add(i22, op5);
                                    arrayList8.remove(fragment9);
                                    i22++;
                                    fragment = fragment;
                                }
                                size5 = i25 - 1;
                                i24 = i24;
                                z4 = z10;
                            }
                            z4 = z4;
                            i6 = 1;
                            if (z9) {
                                arrayList10.remove(i22);
                                i22--;
                            } else {
                                op4.f13337a = 1;
                                op4.f13339c = true;
                                arrayList8.add(fragment8);
                            }
                        }
                        i22 += i6;
                        i10 = i6;
                        z3 = z8;
                        i9 = i9;
                        z4 = z4;
                    } else {
                        i6 = i10;
                    }
                    z4 = z4;
                    arrayList8.add(op4.f13338b);
                    i22 += i6;
                    i10 = i6;
                    z3 = z8;
                    i9 = i9;
                    z4 = z4;
                }
                z = z3;
                i5 = i9;
                z2 = z4;
            }
            z4 = z2 || backStackRecord4.g;
            i9 = i5 + 1;
            z3 = z;
        }
    }

    public final int E(int i2, String str, boolean z) {
        if (this.d.isEmpty()) {
            return -1;
        }
        if (str == null && i2 < 0) {
            if (z) {
                return 0;
            }
            return this.d.size() - 1;
        }
        int size = this.d.size() - 1;
        while (size >= 0) {
            BackStackRecord backStackRecord = (BackStackRecord) this.d.get(size);
            if ((str != null && str.equals(backStackRecord.f13334i)) || (i2 >= 0 && i2 == backStackRecord.t)) {
                break;
            }
            size--;
        }
        if (size < 0) {
            return size;
        }
        if (!z) {
            if (size == this.d.size() - 1) {
                return -1;
            }
            return size + 1;
        }
        while (size > 0) {
            BackStackRecord backStackRecord2 = (BackStackRecord) this.d.get(size - 1);
            if ((str == null || !str.equals(backStackRecord2.f13334i)) && (i2 < 0 || i2 != backStackRecord2.t)) {
                break;
            }
            size--;
        }
        return size;
    }

    public final Fragment F(int i2) {
        FragmentStore fragmentStore = this.f13266c;
        ArrayList arrayList = fragmentStore.f13324a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            Fragment fragment = (Fragment) arrayList.get(size);
            if (fragment != null && fragment.mFragmentId == i2) {
                return fragment;
            }
        }
        for (FragmentStateManager fragmentStateManager : fragmentStore.f13325b.values()) {
            if (fragmentStateManager != null) {
                Fragment fragment2 = fragmentStateManager.f13315c;
                if (fragment2.mFragmentId == i2) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public final Fragment G(String str) {
        FragmentStore fragmentStore = this.f13266c;
        ArrayList arrayList = fragmentStore.f13324a;
        if (str != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                Fragment fragment = (Fragment) arrayList.get(size);
                if (fragment != null && str.equals(fragment.mTag)) {
                    return fragment;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (FragmentStateManager fragmentStateManager : fragmentStore.f13325b.values()) {
            if (fragmentStateManager != null) {
                Fragment fragment2 = fragmentStateManager.f13315c;
                if (str.equals(fragment2.mTag)) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public final void H() {
        for (SpecialEffectsController specialEffectsController : g()) {
            if (specialEffectsController.f13364f) {
                O(2);
                specialEffectsController.f13364f = false;
                specialEffectsController.e();
            }
        }
    }

    public final int J() {
        return this.d.size() + (this.f13269h != null ? 1 : 0);
    }

    public final ViewGroup K(Fragment fragment) {
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (fragment.mContainerId <= 0 || !this.y.c()) {
            return null;
        }
        View viewB = this.y.b(fragment.mContainerId);
        if (viewB instanceof ViewGroup) {
            return (ViewGroup) viewB;
        }
        return null;
    }

    public final FragmentFactory L() {
        Fragment fragment = this.z;
        return fragment != null ? fragment.mFragmentManager.L() : this.B;
    }

    public final List M() {
        return this.f13266c.f();
    }

    public final SpecialEffectsControllerFactory N() {
        Fragment fragment = this.z;
        return fragment != null ? fragment.mFragmentManager.N() : this.C;
    }

    public final boolean Q() {
        Fragment fragment = this.z;
        if (fragment == null) {
            return true;
        }
        return fragment.isAdded() && this.z.getParentFragmentManager().Q();
    }

    public final boolean S() {
        return this.I || this.J;
    }

    public final void T(int i2, boolean z) {
        FragmentHostCallback fragmentHostCallback;
        if (this.x == null && i2 != -1) {
            md.k("No activity");
            return;
        }
        if (z || i2 != this.w) {
            this.w = i2;
            FragmentStore fragmentStore = this.f13266c;
            HashMap map = fragmentStore.f13325b;
            Iterator it = fragmentStore.f13324a.iterator();
            while (it.hasNext()) {
                FragmentStateManager fragmentStateManager = (FragmentStateManager) map.get(((Fragment) it.next()).mWho);
                if (fragmentStateManager != null) {
                    fragmentStateManager.i();
                }
            }
            for (FragmentStateManager fragmentStateManager2 : map.values()) {
                if (fragmentStateManager2 != null) {
                    fragmentStateManager2.i();
                    Fragment fragment = fragmentStateManager2.f13315c;
                    if (fragment.mRemoving && !fragment.isInBackStack()) {
                        if (fragment.mBeingSaved && !fragmentStore.f13326c.containsKey(fragment.mWho)) {
                            fragmentStore.i(fragment.mWho, fragmentStateManager2.l());
                        }
                        fragmentStore.h(fragmentStateManager2);
                    }
                }
            }
            for (FragmentStateManager fragmentStateManager3 : fragmentStore.d()) {
                Fragment fragment2 = fragmentStateManager3.f13315c;
                if (fragment2.mDeferStart) {
                    if (this.f13265b) {
                        this.L = true;
                    } else {
                        fragment2.mDeferStart = false;
                        fragmentStateManager3.i();
                    }
                }
            }
            if (this.H && (fragmentHostCallback = this.x) != null && this.w == 7) {
                fragmentHostCallback.h();
                this.H = false;
            }
        }
    }

    public final void U() {
        if (this.x == null) {
            return;
        }
        this.I = false;
        this.J = false;
        this.P.f13304f = false;
        for (Fragment fragment : this.f13266c.f()) {
            if (fragment != null) {
                fragment.noteStateNotSaved();
            }
        }
    }

    public final void V() {
        z(new PopBackStackState(null, -1, 0), false);
    }

    public final void W(String str) {
        z(new PopBackStackState(str, -1, 1), false);
    }

    public final boolean X() {
        return Y(-1, 0);
    }

    public final boolean Y(int i2, int i3) {
        B(false);
        A(true);
        Fragment fragment = this.A;
        if (fragment != null && i2 < 0 && fragment.getChildFragmentManager().X()) {
            return true;
        }
        boolean Z = Z(this.M, this.N, null, i2, i3);
        if (Z) {
            this.f13265b = true;
            try {
                c0(this.M, this.N);
                e();
            } catch (Throwable th) {
                e();
                throw th;
            }
        }
        o0();
        boolean z = this.L;
        FragmentStore fragmentStore = this.f13266c;
        if (z) {
            this.L = false;
            for (FragmentStateManager fragmentStateManager : fragmentStore.d()) {
                Fragment fragment2 = fragmentStateManager.f13315c;
                if (fragment2.mDeferStart) {
                    if (this.f13265b) {
                        this.L = true;
                    } else {
                        fragment2.mDeferStart = false;
                        fragmentStateManager.i();
                    }
                }
            }
        }
        fragmentStore.f13325b.values().removeAll(Collections.singleton(null));
        return Z;
    }

    public final boolean Z(ArrayList arrayList, ArrayList arrayList2, String str, int i2, int i3) {
        int iE = E(i2, str, (i3 & 1) != 0);
        if (iE < 0) {
            return false;
        }
        for (int size = this.d.size() - 1; size >= iE; size--) {
            arrayList.add((BackStackRecord) this.d.remove(size));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public final FragmentStateManager a(Fragment fragment) {
        String str = fragment.mPreviousWho;
        if (str != null) {
            FragmentStrictMode.d(fragment, str);
        }
        if (O(2)) {
            fragment.toString();
        }
        FragmentStateManager fragmentStateManagerI = i(fragment);
        fragment.mFragmentManager = this;
        FragmentStore fragmentStore = this.f13266c;
        fragmentStore.g(fragmentStateManagerI);
        if (!fragment.mDetached) {
            fragmentStore.a(fragment);
            fragment.mRemoving = false;
            if (fragment.mView == null) {
                fragment.mHiddenChanged = false;
            }
            if (P(fragment)) {
                this.H = true;
            }
        }
        return fragmentStateManagerI;
    }

    public final void a0(FragmentLifecycleCallbacks fragmentLifecycleCallbacks) {
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.p;
        fragmentLifecycleCallbacksDispatcher.getClass();
        fragmentLifecycleCallbacksDispatcher.f13261b.add(new FragmentLifecycleCallbacksDispatcher.FragmentLifecycleCallbacksHolder(fragmentLifecycleCallbacks, true));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(FragmentHostCallback fragmentHostCallback, FragmentContainer fragmentContainer, final Fragment fragment) {
        String strR;
        LifecycleOwner lifecycleOwner;
        if (this.x != null) {
            md.k("Already attached");
            return;
        }
        this.x = fragmentHostCallback;
        this.y = fragmentContainer;
        this.z = fragment;
        CopyOnWriteArrayList copyOnWriteArrayList = this.q;
        if (fragment != null) {
            copyOnWriteArrayList.add(new FragmentOnAttachListener() { // from class: androidx.fragment.app.FragmentManager.7
                @Override // androidx.fragment.app.FragmentOnAttachListener
                public final void a(FragmentManager fragmentManager, Fragment fragment2) {
                    fragment.onAttachFragment(fragment2);
                }
            });
        } else if (fragmentHostCallback instanceof FragmentOnAttachListener) {
            copyOnWriteArrayList.add((FragmentOnAttachListener) fragmentHostCallback);
        }
        if (this.z != null) {
            o0();
        }
        if (fragmentHostCallback instanceof OnBackPressedDispatcherOwner) {
            OnBackPressedDispatcherOwner onBackPressedDispatcherOwner = (OnBackPressedDispatcherOwner) fragmentHostCallback;
            OnBackPressedDispatcher onBackPressedDispatcher = onBackPressedDispatcherOwner.getOnBackPressedDispatcher();
            this.g = onBackPressedDispatcher;
            if (fragment != null) {
                lifecycleOwner = onBackPressedDispatcherOwner;
                lifecycleOwner = fragment;
            }
            lifecycleOwner = onBackPressedDispatcherOwner;
            onBackPressedDispatcher.b(this.f13271j, lifecycleOwner);
        }
        if (fragment != null) {
            FragmentManagerViewModel fragmentManagerViewModel = fragment.mFragmentManager.P;
            HashMap map = fragmentManagerViewModel.f13301b;
            FragmentManagerViewModel fragmentManagerViewModel2 = (FragmentManagerViewModel) map.get(fragment.mWho);
            if (fragmentManagerViewModel2 == null) {
                fragmentManagerViewModel2 = new FragmentManagerViewModel(fragmentManagerViewModel.d);
                map.put(fragment.mWho, fragmentManagerViewModel2);
            }
            this.P = fragmentManagerViewModel2;
        } else if (fragmentHostCallback instanceof ViewModelStoreOwner) {
            ViewModelStore viewModelStore = ((ViewModelStoreOwner) fragmentHostCallback).getViewModelStore();
            ViewModelProvider.Factory factory = FragmentManagerViewModel.g;
            this.P = (FragmentManagerViewModel) new ViewModelProvider(viewModelStore, FragmentManagerViewModel.g).a(Reflection.f71922a.b(FragmentManagerViewModel.class));
        } else {
            this.P = new FragmentManagerViewModel(false);
        }
        this.P.f13304f = S();
        this.f13266c.d = this.P;
        Object obj = this.x;
        if ((obj instanceof SavedStateRegistryOwner) && fragment == null) {
            SavedStateRegistry savedStateRegistry = ((SavedStateRegistryOwner) obj).getSavedStateRegistry();
            savedStateRegistry.c("android:support:fragments", new dn(this, 2));
            Bundle bundleA = savedStateRegistry.a("android:support:fragments");
            if (bundleA != null) {
                e0(bundleA);
            }
        }
        Object obj2 = this.x;
        if (obj2 instanceof ActivityResultRegistryOwner) {
            ActivityResultRegistry activityResultRegistry = ((ActivityResultRegistryOwner) obj2).getActivityResultRegistry();
            if (fragment != null) {
                strR = n00.r(fragment.mWho, ":", new StringBuilder());
            } else {
                strR = "";
            }
            String strConcat = "FragmentManager:".concat(strR);
            this.D = activityResultRegistry.e(strConcat.concat("StartActivityForResult"), new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback<ActivityResult>() { // from class: androidx.fragment.app.FragmentManager.8
                @Override // androidx.activity.result.ActivityResultCallback
                public final void b(Object obj3) {
                    ActivityResult activityResult = (ActivityResult) obj3;
                    FragmentManager fragmentManager = FragmentManager.this;
                    LaunchedFragmentInfo launchedFragmentInfo = (LaunchedFragmentInfo) fragmentManager.G.pollLast();
                    if (launchedFragmentInfo == null) {
                        toString();
                        return;
                    }
                    String str = launchedFragmentInfo.f13282b;
                    int i2 = launchedFragmentInfo.f13283c;
                    Fragment fragmentC = fragmentManager.f13266c.c(str);
                    if (fragmentC == null) {
                        return;
                    }
                    fragmentC.onActivityResult(i2, activityResult.f731b, activityResult.f732c);
                }
            });
            this.E = activityResultRegistry.e(strConcat.concat("StartIntentSenderForResult"), new FragmentIntentSenderContract(), new ActivityResultCallback<ActivityResult>() { // from class: androidx.fragment.app.FragmentManager.9
                @Override // androidx.activity.result.ActivityResultCallback
                public final void b(Object obj3) {
                    ActivityResult activityResult = (ActivityResult) obj3;
                    FragmentManager fragmentManager = FragmentManager.this;
                    LaunchedFragmentInfo launchedFragmentInfo = (LaunchedFragmentInfo) fragmentManager.G.pollFirst();
                    if (launchedFragmentInfo == null) {
                        toString();
                        return;
                    }
                    String str = launchedFragmentInfo.f13282b;
                    int i2 = launchedFragmentInfo.f13283c;
                    Fragment fragmentC = fragmentManager.f13266c.c(str);
                    if (fragmentC == null) {
                        return;
                    }
                    fragmentC.onActivityResult(i2, activityResult.f731b, activityResult.f732c);
                }
            });
            this.F = activityResultRegistry.e(strConcat.concat("RequestPermissions"), new ActivityResultContracts$RequestMultiplePermissions(), new ActivityResultCallback<Map<String, Boolean>>() { // from class: androidx.fragment.app.FragmentManager.10
                @Override // androidx.activity.result.ActivityResultCallback
                public final void b(Object obj3) {
                    Map map2 = (Map) obj3;
                    String[] strArr = (String[]) map2.keySet().toArray(new String[0]);
                    ArrayList arrayList = new ArrayList(map2.values());
                    int[] iArr = new int[arrayList.size()];
                    for (int i2 = 0; i2 < arrayList.size(); i2++) {
                        iArr[i2] = ((Boolean) arrayList.get(i2)).booleanValue() ? 0 : -1;
                    }
                    FragmentManager fragmentManager = FragmentManager.this;
                    LaunchedFragmentInfo launchedFragmentInfo = (LaunchedFragmentInfo) fragmentManager.G.pollFirst();
                    if (launchedFragmentInfo == null) {
                        toString();
                        return;
                    }
                    String str = launchedFragmentInfo.f13282b;
                    int i3 = launchedFragmentInfo.f13283c;
                    Fragment fragmentC = fragmentManager.f13266c.c(str);
                    if (fragmentC == null) {
                        return;
                    }
                    fragmentC.onRequestPermissionsResult(i3, strArr, iArr);
                }
            });
        }
        Object obj3 = this.x;
        if (obj3 instanceof OnConfigurationChangedProvider) {
            ((OnConfigurationChangedProvider) obj3).addOnConfigurationChangedListener(this.r);
        }
        Object obj4 = this.x;
        if (obj4 instanceof OnTrimMemoryProvider) {
            ((OnTrimMemoryProvider) obj4).addOnTrimMemoryListener(this.s);
        }
        Object obj5 = this.x;
        if (obj5 instanceof OnMultiWindowModeChangedProvider) {
            ((OnMultiWindowModeChangedProvider) obj5).addOnMultiWindowModeChangedListener(this.t);
        }
        Object obj6 = this.x;
        if (obj6 instanceof OnPictureInPictureModeChangedProvider) {
            ((OnPictureInPictureModeChangedProvider) obj6).addOnPictureInPictureModeChangedListener(this.u);
        }
        Object obj7 = this.x;
        if ((obj7 instanceof MenuHost) && fragment == null) {
            ((MenuHost) obj7).addMenuProvider(this.v);
        }
    }

    public final void b0(Fragment fragment) {
        if (O(2)) {
            Objects.toString(fragment);
        }
        boolean zIsInBackStack = fragment.isInBackStack();
        if (fragment.mDetached && zIsInBackStack) {
            return;
        }
        FragmentStore fragmentStore = this.f13266c;
        synchronized (fragmentStore.f13324a) {
            fragmentStore.f13324a.remove(fragment);
        }
        fragment.mAdded = false;
        if (P(fragment)) {
            this.H = true;
        }
        fragment.mRemoving = true;
        m0(fragment);
    }

    public final void c(Fragment fragment) {
        if (O(2)) {
            Objects.toString(fragment);
        }
        if (fragment.mDetached) {
            fragment.mDetached = false;
            if (fragment.mAdded) {
                return;
            }
            this.f13266c.a(fragment);
            if (O(2)) {
                fragment.toString();
            }
            if (P(fragment)) {
                this.H = true;
            }
        }
    }

    public final void c0(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            md.k("Internal error with the back stack records");
            return;
        }
        int size = arrayList.size();
        int i2 = 0;
        int i3 = 0;
        while (i2 < size) {
            if (!((BackStackRecord) arrayList.get(i2)).p) {
                if (i3 != i2) {
                    D(arrayList, arrayList2, i3, i2);
                }
                i3 = i2 + 1;
                if (((Boolean) arrayList2.get(i2)).booleanValue()) {
                    while (i3 < size && ((Boolean) arrayList2.get(i3)).booleanValue() && !((BackStackRecord) arrayList.get(i3)).p) {
                        i3++;
                    }
                }
                D(arrayList, arrayList2, i2, i3);
                i2 = i3 - 1;
            }
            i2++;
        }
        if (i3 != size) {
            D(arrayList, arrayList2, i3, size);
        }
    }

    public final FragmentTransaction d() {
        return new BackStackRecord(this);
    }

    public final void d0(String str) {
        z(new RestoreBackStackState(str), false);
    }

    public final void e() {
        this.f13265b = false;
        this.N.clear();
        this.M.clear();
    }

    public final void e0(Bundle bundle) {
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher;
        FragmentStateManager fragmentStateManager;
        Bundle bundle2;
        Bundle bundle3;
        for (String str : bundle.keySet()) {
            if (str.startsWith("result_") && (bundle3 = bundle.getBundle(str)) != null) {
                bundle3.setClassLoader(this.x.f13255c.getClassLoader());
                this.m.put(str.substring(7), bundle3);
            }
        }
        HashMap map = new HashMap();
        for (String str2 : bundle.keySet()) {
            if (str2.startsWith("fragment_") && (bundle2 = bundle.getBundle(str2)) != null) {
                bundle2.setClassLoader(this.x.f13255c.getClassLoader());
                map.put(str2.substring(9), bundle2);
            }
        }
        FragmentStore fragmentStore = this.f13266c;
        HashMap map2 = fragmentStore.f13326c;
        HashMap map3 = fragmentStore.f13325b;
        map2.clear();
        map2.putAll(map);
        FragmentManagerState fragmentManagerState = (FragmentManagerState) bundle.getParcelable("state");
        if (fragmentManagerState == null) {
            return;
        }
        map3.clear();
        Iterator it = fragmentManagerState.f13294b.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            fragmentLifecycleCallbacksDispatcher = this.p;
            if (!zHasNext) {
                break;
            }
            Bundle bundleI = fragmentStore.i((String) it.next(), null);
            if (bundleI != null) {
                Fragment fragment = (Fragment) this.P.f13300a.get(((FragmentState) bundleI.getParcelable("state")).f13306c);
                if (fragment != null) {
                    if (O(2)) {
                        fragment.toString();
                    }
                    fragmentStateManager = new FragmentStateManager(fragmentLifecycleCallbacksDispatcher, fragmentStore, fragment, bundleI);
                } else {
                    fragmentStateManager = new FragmentStateManager(this.p, this.f13266c, this.x.f13255c.getClassLoader(), L(), bundleI);
                }
                Fragment fragment2 = fragmentStateManager.f13315c;
                fragment2.mSavedFragmentState = bundleI;
                fragment2.mFragmentManager = this;
                if (O(2)) {
                    fragment2.toString();
                }
                fragmentStateManager.j(this.x.f13255c.getClassLoader());
                fragmentStore.g(fragmentStateManager);
                fragmentStateManager.f13316e = this.w;
            }
        }
        FragmentManagerViewModel fragmentManagerViewModel = this.P;
        fragmentManagerViewModel.getClass();
        for (Fragment fragment3 : new ArrayList(fragmentManagerViewModel.f13300a.values())) {
            if (map3.get(fragment3.mWho) == null) {
                if (O(2)) {
                    fragment3.toString();
                    Objects.toString(fragmentManagerState.f13294b);
                }
                this.P.Ac(fragment3);
                fragment3.mFragmentManager = this;
                FragmentStateManager fragmentStateManager2 = new FragmentStateManager(fragmentLifecycleCallbacksDispatcher, fragmentStore, fragment3);
                fragmentStateManager2.f13316e = 1;
                fragmentStateManager2.i();
                fragment3.mRemoving = true;
                fragmentStateManager2.i();
            }
        }
        ArrayList<String> arrayList = fragmentManagerState.f13295c;
        fragmentStore.f13324a.clear();
        if (arrayList != null) {
            for (String str3 : arrayList) {
                Fragment fragmentB = fragmentStore.b(str3);
                if (fragmentB == null) {
                    md.k(fc.h("No instantiated fragment for (", str3, ")"));
                    return;
                } else {
                    if (O(2)) {
                        fragmentB.toString();
                    }
                    fragmentStore.a(fragmentB);
                }
            }
        }
        if (fragmentManagerState.d != null) {
            this.d = new ArrayList(fragmentManagerState.d.length);
            int i2 = 0;
            while (true) {
                BackStackRecordState[] backStackRecordStateArr = fragmentManagerState.d;
                if (i2 >= backStackRecordStateArr.length) {
                    break;
                }
                BackStackRecordState backStackRecordState = backStackRecordStateArr[i2];
                ArrayList arrayList2 = backStackRecordState.f13180c;
                BackStackRecord backStackRecord = new BackStackRecord(this);
                backStackRecordState.a(backStackRecord);
                backStackRecord.t = backStackRecordState.f13183h;
                for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                    String str4 = (String) arrayList2.get(i3);
                    if (str4 != null) {
                        ((FragmentTransaction.Op) backStackRecord.f13328a.get(i3)).f13338b = fragmentStore.b(str4);
                    }
                }
                backStackRecord.r(1);
                if (O(2)) {
                    backStackRecord.toString();
                    PrintWriter printWriter = new PrintWriter(new LogWriter());
                    backStackRecord.u("  ", printWriter, false);
                    printWriter.close();
                }
                this.d.add(backStackRecord);
                i2++;
            }
        } else {
            this.d = new ArrayList();
        }
        this.f13272k.set(fragmentManagerState.f13296e);
        String str5 = fragmentManagerState.f13297f;
        if (str5 != null) {
            Fragment fragmentB2 = fragmentStore.b(str5);
            this.A = fragmentB2;
            t(fragmentB2);
        }
        ArrayList arrayList3 = fragmentManagerState.g;
        if (arrayList3 != null) {
            for (int i4 = 0; i4 < arrayList3.size(); i4++) {
                this.l.put((String) arrayList3.get(i4), (BackStackState) fragmentManagerState.f13298h.get(i4));
            }
        }
        this.G = new ArrayDeque(fragmentManagerState.f13299i);
    }

    public final void f() {
        LifecycleAwareResultListener lifecycleAwareResultListener = (LifecycleAwareResultListener) this.n.remove("TUTORIAL");
        if (lifecycleAwareResultListener != null) {
            lifecycleAwareResultListener.f13284b.d(lifecycleAwareResultListener.d);
        }
        O(2);
    }

    public final Bundle f0() {
        BackStackRecordState[] backStackRecordStateArr;
        ArrayList arrayList;
        Bundle bundle = new Bundle();
        H();
        y();
        B(true);
        this.I = true;
        this.P.f13304f = true;
        FragmentStore fragmentStore = this.f13266c;
        fragmentStore.getClass();
        HashMap map = fragmentStore.f13325b;
        ArrayList arrayList2 = new ArrayList(map.size());
        for (FragmentStateManager fragmentStateManager : map.values()) {
            if (fragmentStateManager != null) {
                Fragment fragment = fragmentStateManager.f13315c;
                fragmentStore.i(fragment.mWho, fragmentStateManager.l());
                arrayList2.add(fragment.mWho);
                if (O(2)) {
                    fragment.toString();
                    Objects.toString(fragment.mSavedFragmentState);
                }
            }
        }
        HashMap map2 = this.f13266c.f13326c;
        if (map2.isEmpty()) {
            O(2);
            return bundle;
        }
        FragmentStore fragmentStore2 = this.f13266c;
        synchronized (fragmentStore2.f13324a) {
            try {
                backStackRecordStateArr = null;
                if (fragmentStore2.f13324a.isEmpty()) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(fragmentStore2.f13324a.size());
                    for (Fragment fragment2 : fragmentStore2.f13324a) {
                        arrayList.add(fragment2.mWho);
                        if (O(2)) {
                            fragment2.toString();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int size = this.d.size();
        if (size > 0) {
            backStackRecordStateArr = new BackStackRecordState[size];
            for (int i2 = 0; i2 < size; i2++) {
                backStackRecordStateArr[i2] = new BackStackRecordState((BackStackRecord) this.d.get(i2));
                if (O(2)) {
                    Objects.toString(this.d.get(i2));
                }
            }
        }
        FragmentManagerState fragmentManagerState = new FragmentManagerState();
        fragmentManagerState.f13294b = arrayList2;
        fragmentManagerState.f13295c = arrayList;
        fragmentManagerState.d = backStackRecordStateArr;
        fragmentManagerState.f13296e = this.f13272k.get();
        Fragment fragment3 = this.A;
        if (fragment3 != null) {
            fragmentManagerState.f13297f = fragment3.mWho;
        }
        fragmentManagerState.g.addAll(this.l.keySet());
        fragmentManagerState.f13298h.addAll(this.l.values());
        fragmentManagerState.f13299i = new ArrayList(this.G);
        bundle.putParcelable("state", fragmentManagerState);
        for (String str : this.m.keySet()) {
            bundle.putBundle(tr.g("result_", str), (Bundle) this.m.get(str));
        }
        for (String str2 : map2.keySet()) {
            bundle.putBundle(tr.g("fragment_", str2), (Bundle) map2.get(str2));
        }
        return bundle;
    }

    public final HashSet g() {
        Object objA;
        HashSet hashSet = new HashSet();
        Iterator it = this.f13266c.d().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((FragmentStateManager) it.next()).f13315c.mContainer;
            if (viewGroup != null) {
                SpecialEffectsControllerFactory specialEffectsControllerFactoryN = N();
                SpecialEffectsController.g.getClass();
                specialEffectsControllerFactoryN.getClass();
                Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
                if (tag instanceof SpecialEffectsController) {
                    objA = (SpecialEffectsController) tag;
                } else {
                    objA = specialEffectsControllerFactoryN.a(viewGroup);
                    viewGroup.setTag(R.id.special_effects_controller_view_tag, objA);
                }
                hashSet.add(objA);
            }
        }
        return hashSet;
    }

    public final void g0(String str) {
        z(new SaveBackStackState(str), false);
    }

    public final HashSet h(ArrayList arrayList, int i2, int i3) {
        ViewGroup viewGroup;
        HashSet hashSet = new HashSet();
        while (i2 < i3) {
            Iterator it = ((BackStackRecord) arrayList.get(i2)).f13328a.iterator();
            while (it.hasNext()) {
                Fragment fragment = ((FragmentTransaction.Op) it.next()).f13338b;
                if (fragment != null && (viewGroup = fragment.mContainer) != null) {
                    hashSet.add(SpecialEffectsController.i(viewGroup, this));
                }
            }
            i2++;
        }
        return hashSet;
    }

    public final void h0() {
        synchronized (this.f13264a) {
            try {
                if (this.f13264a.size() == 1) {
                    this.x.d.removeCallbacks(this.Q);
                    this.x.d.post(this.Q);
                    o0();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final FragmentStateManager i(Fragment fragment) {
        String str = fragment.mWho;
        FragmentStore fragmentStore = this.f13266c;
        FragmentStateManager fragmentStateManager = (FragmentStateManager) fragmentStore.f13325b.get(str);
        if (fragmentStateManager != null) {
            return fragmentStateManager;
        }
        FragmentStateManager fragmentStateManager2 = new FragmentStateManager(this.p, fragmentStore, fragment);
        fragmentStateManager2.j(this.x.f13255c.getClassLoader());
        fragmentStateManager2.f13316e = this.w;
        return fragmentStateManager2;
    }

    public final void i0(Fragment fragment, boolean z) {
        ViewGroup viewGroupK = K(fragment);
        if (viewGroupK == null || !(viewGroupK instanceof FragmentContainerView)) {
            return;
        }
        ((FragmentContainerView) viewGroupK).setDrawDisappearingViewsLast(!z);
    }

    public final void j(Fragment fragment) {
        if (O(2)) {
            Objects.toString(fragment);
        }
        if (fragment.mDetached) {
            return;
        }
        fragment.mDetached = true;
        if (fragment.mAdded) {
            if (O(2)) {
                fragment.toString();
            }
            FragmentStore fragmentStore = this.f13266c;
            synchronized (fragmentStore.f13324a) {
                fragmentStore.f13324a.remove(fragment);
            }
            fragment.mAdded = false;
            if (P(fragment)) {
                this.H = true;
            }
            m0(fragment);
        }
    }

    public final void j0(final String str, LifecycleOwner lifecycleOwner, final FragmentResultListener fragmentResultListener) {
        final Lifecycle lifecycle = lifecycleOwner.getF13561b();
        if (lifecycle.getF13454i() == Lifecycle.State.DESTROYED) {
            return;
        }
        LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.fragment.app.FragmentManager.6
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner2, Lifecycle.Event event) {
                Bundle bundle;
                FragmentManager fragmentManager = FragmentManager.this;
                Map map = fragmentManager.m;
                Lifecycle.Event event2 = Lifecycle.Event.ON_START;
                String str2 = str;
                if (event == event2 && (bundle = (Bundle) map.get(str2)) != null) {
                    fragmentResultListener.a(str2, bundle);
                    map.remove(str2);
                    FragmentManager.O(2);
                }
                if (event == Lifecycle.Event.ON_DESTROY) {
                    lifecycle.d(this);
                    fragmentManager.n.remove(str2);
                }
            }
        };
        LifecycleAwareResultListener lifecycleAwareResultListener = (LifecycleAwareResultListener) this.n.put(str, new LifecycleAwareResultListener(lifecycle, fragmentResultListener, lifecycleEventObserver));
        if (lifecycleAwareResultListener != null) {
            lifecycleAwareResultListener.f13284b.d(lifecycleAwareResultListener.d);
        }
        if (O(2)) {
            lifecycle.toString();
            Objects.toString(fragmentResultListener);
        }
        lifecycle.a(lifecycleEventObserver);
    }

    public final void k(boolean z, Configuration configuration) {
        if (z && (this.x instanceof OnConfigurationChangedProvider)) {
            n0(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.f13266c.f()) {
            if (fragment != null) {
                fragment.performConfigurationChanged(configuration);
                if (z) {
                    fragment.mChildFragmentManager.k(true, configuration);
                }
            }
        }
    }

    public final void k0(Fragment fragment, Lifecycle.State state) {
        if (fragment.equals(this.f13266c.b(fragment.mWho)) && (fragment.mHost == null || fragment.mFragmentManager == this)) {
            fragment.mMaxState = state;
        } else {
            b21.s("Fragment ", fragment, " is not an active fragment of FragmentManager ", this);
        }
    }

    public final boolean l(MenuItem menuItem) {
        if (this.w < 1) {
            return false;
        }
        for (Fragment fragment : this.f13266c.f()) {
            if (fragment != null && fragment.performContextItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final void l0(Fragment fragment) {
        if (fragment != null) {
            if (!fragment.equals(this.f13266c.b(fragment.mWho)) || (fragment.mHost != null && fragment.mFragmentManager != this)) {
                b21.s("Fragment ", fragment, " is not an active fragment of FragmentManager ", this);
                return;
            }
        }
        Fragment fragment2 = this.A;
        this.A = fragment;
        t(fragment2);
        t(this.A);
    }

    public final boolean m(Menu menu, MenuInflater menuInflater) {
        if (this.w < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z = false;
        for (Fragment fragment : this.f13266c.f()) {
            if (fragment != null && fragment.isMenuVisible() && fragment.performCreateOptionsMenu(menu, menuInflater)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(fragment);
                z = true;
            }
        }
        if (this.f13267e != null) {
            for (int i2 = 0; i2 < this.f13267e.size(); i2++) {
                Fragment fragment2 = (Fragment) this.f13267e.get(i2);
                if (arrayList == null || !arrayList.contains(fragment2)) {
                    fragment2.onDestroyOptionsMenu();
                }
            }
        }
        this.f13267e = arrayList;
        return z;
    }

    public final void m0(Fragment fragment) {
        ViewGroup viewGroupK = K(fragment);
        if (viewGroupK != null) {
            if (fragment.getPopExitAnim() + fragment.getPopEnterAnim() + fragment.getExitAnim() + fragment.getEnterAnim() > 0) {
                if (viewGroupK.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    viewGroupK.setTag(R.id.visible_removing_fragment_view_tag, fragment);
                }
                ((Fragment) viewGroupK.getTag(R.id.visible_removing_fragment_view_tag)).setPopDirection(fragment.getPopDirection());
            }
        }
    }

    public final void n() {
        boolean zIsChangingConfigurations = true;
        this.K = true;
        B(true);
        y();
        FragmentHostCallback fragmentHostCallback = this.x;
        boolean z = fragmentHostCallback instanceof ViewModelStoreOwner;
        FragmentStore fragmentStore = this.f13266c;
        if (z) {
            zIsChangingConfigurations = fragmentStore.d.f13303e;
        } else {
            Context context = fragmentHostCallback.f13255c;
            if (context instanceof Activity) {
                zIsChangingConfigurations = true ^ ((Activity) context).isChangingConfigurations();
            }
        }
        if (zIsChangingConfigurations) {
            Iterator it = this.l.values().iterator();
            while (it.hasNext()) {
                for (String str : ((BackStackState) it.next()).f13187b) {
                    FragmentManagerViewModel fragmentManagerViewModel = fragmentStore.d;
                    fragmentManagerViewModel.getClass();
                    O(3);
                    fragmentManagerViewModel.zc(str, false);
                }
            }
        }
        w(-1);
        Object obj = this.x;
        if (obj instanceof OnTrimMemoryProvider) {
            ((OnTrimMemoryProvider) obj).removeOnTrimMemoryListener(this.s);
        }
        Object obj2 = this.x;
        if (obj2 instanceof OnConfigurationChangedProvider) {
            ((OnConfigurationChangedProvider) obj2).removeOnConfigurationChangedListener(this.r);
        }
        Object obj3 = this.x;
        if (obj3 instanceof OnMultiWindowModeChangedProvider) {
            ((OnMultiWindowModeChangedProvider) obj3).removeOnMultiWindowModeChangedListener(this.t);
        }
        Object obj4 = this.x;
        if (obj4 instanceof OnPictureInPictureModeChangedProvider) {
            ((OnPictureInPictureModeChangedProvider) obj4).removeOnPictureInPictureModeChangedListener(this.u);
        }
        Object obj5 = this.x;
        if ((obj5 instanceof MenuHost) && this.z == null) {
            ((MenuHost) obj5).removeMenuProvider(this.v);
        }
        this.x = null;
        this.y = null;
        this.z = null;
        if (this.g != null) {
            this.f13271j.e();
            this.g = null;
        }
        ActivityResultRegistry$register$3 activityResultRegistry$register$3 = this.D;
        if (activityResultRegistry$register$3 != null) {
            activityResultRegistry$register$3.b();
            this.E.b();
            this.F.b();
        }
    }

    public final void n0(RuntimeException runtimeException) {
        runtimeException.getMessage();
        PrintWriter printWriter = new PrintWriter(new LogWriter());
        FragmentHostCallback fragmentHostCallback = this.x;
        try {
            if (fragmentHostCallback != null) {
                fragmentHostCallback.d(printWriter, new String[0]);
            } else {
                x("  ", null, printWriter, new String[0]);
            }
            throw runtimeException;
        } catch (Exception unused) {
            throw runtimeException;
        }
    }

    public final void o(boolean z) {
        if (z && (this.x instanceof OnTrimMemoryProvider)) {
            n0(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
            throw null;
        }
        for (Fragment fragment : this.f13266c.f()) {
            if (fragment != null) {
                fragment.performLowMemory();
                if (z) {
                    fragment.mChildFragmentManager.o(true);
                }
            }
        }
    }

    public final void o0() {
        synchronized (this.f13264a) {
            try {
                if (!this.f13264a.isEmpty()) {
                    this.f13271j.f(true);
                    if (O(3)) {
                        toString();
                    }
                } else {
                    boolean z = J() > 0 && R(this.z);
                    if (O(3)) {
                        toString();
                    }
                    this.f13271j.f(z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void p(boolean z, boolean z2) {
        if (z2 && (this.x instanceof OnMultiWindowModeChangedProvider)) {
            n0(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.f13266c.f()) {
            if (fragment != null) {
                fragment.performMultiWindowModeChanged(z);
                if (z2) {
                    fragment.mChildFragmentManager.p(z, true);
                }
            }
        }
    }

    public final void q() {
        for (Fragment fragment : this.f13266c.e()) {
            if (fragment != null) {
                fragment.onHiddenChanged(fragment.isHidden());
                fragment.mChildFragmentManager.q();
            }
        }
    }

    public final boolean r(MenuItem menuItem) {
        if (this.w < 1) {
            return false;
        }
        for (Fragment fragment : this.f13266c.f()) {
            if (fragment != null && fragment.performOptionsItemSelected(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final void s(Menu menu) {
        if (this.w < 1) {
            return;
        }
        for (Fragment fragment : this.f13266c.f()) {
            if (fragment != null) {
                fragment.performOptionsMenuClosed(menu);
            }
        }
    }

    public final void t(Fragment fragment) {
        if (fragment != null) {
            if (fragment.equals(this.f13266c.b(fragment.mWho))) {
                fragment.performPrimaryNavigationFragmentChanged();
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        Fragment fragment = this.z;
        if (fragment != null) {
            sb.append(fragment.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.z)));
            sb.append("}");
        } else {
            FragmentHostCallback fragmentHostCallback = this.x;
            if (fragmentHostCallback != null) {
                sb.append(fragmentHostCallback.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.x)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public final void u(boolean z, boolean z2) {
        if (z2 && (this.x instanceof OnPictureInPictureModeChangedProvider)) {
            n0(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
            throw null;
        }
        for (Fragment fragment : this.f13266c.f()) {
            if (fragment != null) {
                fragment.performPictureInPictureModeChanged(z);
                if (z2) {
                    fragment.mChildFragmentManager.u(z, true);
                }
            }
        }
    }

    public final boolean v(Menu menu) {
        boolean z = false;
        if (this.w < 1) {
            return false;
        }
        for (Fragment fragment : this.f13266c.f()) {
            if (fragment != null && fragment.isMenuVisible() && fragment.performPrepareOptionsMenu(menu)) {
                z = true;
            }
        }
        return z;
    }

    public final void w(int i2) {
        try {
            this.f13265b = true;
            for (FragmentStateManager fragmentStateManager : this.f13266c.f13325b.values()) {
                if (fragmentStateManager != null) {
                    fragmentStateManager.f13316e = i2;
                }
            }
            T(i2, false);
            Iterator it = g().iterator();
            while (it.hasNext()) {
                ((SpecialEffectsController) it.next()).h();
            }
            this.f13265b = false;
            B(true);
        } catch (Throwable th) {
            this.f13265b = false;
            throw th;
        }
    }

    public final void x(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        String strJ = d21.j(str, "    ");
        FragmentStore fragmentStore = this.f13266c;
        ArrayList arrayList = fragmentStore.f13324a;
        String strJ2 = d21.j(str, "    ");
        HashMap map = fragmentStore.f13325b;
        if (!map.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (FragmentStateManager fragmentStateManager : map.values()) {
                printWriter.print(str);
                if (fragmentStateManager != null) {
                    Fragment fragment = fragmentStateManager.f13315c;
                    printWriter.println(fragment);
                    fragment.dump(strJ2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size2 = arrayList.size();
        if (size2 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size2; i2++) {
                Fragment fragment2 = (Fragment) arrayList.get(i2);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(fragment2.toString());
            }
        }
        ArrayList arrayList2 = this.f13267e;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i3 = 0; i3 < size; i3++) {
                Fragment fragment3 = (Fragment) this.f13267e.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(fragment3.toString());
            }
        }
        int size3 = this.d.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i4 = 0; i4 < size3; i4++) {
                BackStackRecord backStackRecord = (BackStackRecord) this.d.get(i4);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i4);
                printWriter.print(": ");
                printWriter.println(backStackRecord.toString());
                backStackRecord.u(strJ, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f13272k.get());
        synchronized (this.f13264a) {
            try {
                int size4 = this.f13264a.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i5 = 0; i5 < size4; i5++) {
                        Object obj = (OpGenerator) this.f13264a.get(i5);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i5);
                        printWriter.print(": ");
                        printWriter.println(obj);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.x);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.y);
        if (this.z != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.z);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.w);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.I);
        printWriter.print(" mStopped=");
        printWriter.print(this.J);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.K);
        if (this.H) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.H);
        }
    }

    public final void y() {
        Iterator it = g().iterator();
        while (it.hasNext()) {
            ((SpecialEffectsController) it.next()).h();
        }
    }

    public final void z(OpGenerator opGenerator, boolean z) {
        if (!z) {
            if (this.x == null) {
                if (this.K) {
                    md.k("FragmentManager has been destroyed");
                    return;
                } else {
                    md.k("FragmentManager has not been attached to a host.");
                    return;
                }
            }
            if (S()) {
                md.k("Can not perform this action after onSaveInstanceState");
                return;
            }
        }
        synchronized (this.f13264a) {
            try {
                if (this.x == null) {
                    if (!z) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.f13264a.add(opGenerator);
                    h0();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
