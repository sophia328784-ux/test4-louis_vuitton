package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.BadParcelableException;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.fragment.app.strictmode.WrongFragmentContainerViolation;
import androidx.fragment.app.strictmode.WrongNestedHierarchyViolation;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelStoreOwner;
import com.vuitton.android.R;
import defpackage.md;
import defpackage.n00;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Objects;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
class FragmentStateManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FragmentLifecycleCallbacksDispatcher f13313a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FragmentStore f13314b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Fragment f13315c;
    public boolean d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13316e = -1;

    /* JADX INFO: renamed from: androidx.fragment.app.FragmentStateManager$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f13318a;

        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            f13318a = iArr;
            try {
                iArr[Lifecycle.State.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13318a[Lifecycle.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13318a[Lifecycle.State.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13318a[Lifecycle.State.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public FragmentStateManager(FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, FragmentStore fragmentStore, ClassLoader classLoader, FragmentFactory fragmentFactory, Bundle bundle) {
        this.f13313a = fragmentLifecycleCallbacksDispatcher;
        this.f13314b = fragmentStore;
        Fragment fragmentA = ((FragmentState) bundle.getParcelable("state")).a(fragmentFactory, classLoader);
        this.f13315c = fragmentA;
        fragmentA.mSavedFragmentState = bundle;
        Bundle bundle2 = bundle.getBundle("arguments");
        if (bundle2 != null) {
            bundle2.setClassLoader(classLoader);
        }
        fragmentA.setArguments(bundle2);
        if (FragmentManager.O(2)) {
            Objects.toString(fragmentA);
        }
    }

    public final void a() {
        Fragment fragment;
        View view;
        View view2;
        Fragment fragment2 = this.f13315c;
        View view3 = fragment2.mContainer;
        while (true) {
            fragment = null;
            if (view3 == null) {
                break;
            }
            Object tag = view3.getTag(R.id.fragment_container_view_tag);
            Fragment fragment3 = tag instanceof Fragment ? (Fragment) tag : null;
            if (fragment3 != null) {
                fragment = fragment3;
                break;
            } else {
                Object parent = view3.getParent();
                view3 = parent instanceof View ? (View) parent : null;
            }
        }
        Fragment parentFragment = fragment2.getParentFragment();
        if (fragment != null && !fragment.equals(parentFragment)) {
            int i2 = fragment2.mContainerId;
            FragmentStrictMode.Policy policy = FragmentStrictMode.f13391a;
            WrongNestedHierarchyViolation wrongNestedHierarchyViolation = new WrongNestedHierarchyViolation(fragment2, fragment, i2);
            FragmentStrictMode.c(wrongNestedHierarchyViolation);
            FragmentStrictMode.Policy policyA = FragmentStrictMode.a(fragment2);
            if (policyA.f13392a.contains(FragmentStrictMode.Flag.DETECT_WRONG_NESTED_HIERARCHY) && FragmentStrictMode.f(policyA, fragment2.getClass(), WrongNestedHierarchyViolation.class)) {
                FragmentStrictMode.b(policyA, wrongNestedHierarchyViolation);
            }
        }
        ArrayList arrayList = this.f13314b.f13324a;
        ViewGroup viewGroup = fragment2.mContainer;
        int iIndexOfChild = -1;
        if (viewGroup != null) {
            int iIndexOf = arrayList.indexOf(fragment2);
            for (int i3 = iIndexOf - 1; i3 >= 0; i3--) {
                Fragment fragment4 = (Fragment) arrayList.get(i3);
                if (fragment4.mContainer == viewGroup && (view2 = fragment4.mView) != null) {
                    iIndexOfChild = viewGroup.indexOfChild(view2) + 1;
                }
            }
            while (true) {
                iIndexOf++;
                if (iIndexOf >= arrayList.size()) {
                    break;
                }
                Fragment fragment5 = (Fragment) arrayList.get(iIndexOf);
                if (fragment5.mContainer == viewGroup && (view = fragment5.mView) != null) {
                    iIndexOfChild = viewGroup.indexOfChild(view);
                    break;
                }
            }
        }
        fragment2.mContainer.addView(fragment2.mView, iIndexOfChild);
    }

    public final void b() {
        boolean zO = FragmentManager.O(3);
        Fragment fragment = this.f13315c;
        if (zO) {
            Objects.toString(fragment);
        }
        Fragment fragment2 = fragment.mTarget;
        FragmentStateManager fragmentStateManager = null;
        FragmentStore fragmentStore = this.f13314b;
        if (fragment2 != null) {
            FragmentStateManager fragmentStateManager2 = (FragmentStateManager) fragmentStore.f13325b.get(fragment2.mWho);
            if (fragmentStateManager2 == null) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(fragment);
                Fragment fragment3 = fragment.mTarget;
                sb.append(" declared target fragment ");
                sb.append(fragment3);
                sb.append(" that does not belong to this FragmentManager!");
                throw new IllegalStateException(sb.toString());
            }
            fragment.mTargetWho = fragment.mTarget.mWho;
            fragment.mTarget = null;
            fragmentStateManager = fragmentStateManager2;
        } else {
            String str = fragment.mTargetWho;
            if (str != null && (fragmentStateManager = (FragmentStateManager) fragmentStore.f13325b.get(str)) == null) {
                StringBuilder sb2 = new StringBuilder("Fragment ");
                sb2.append(fragment);
                sb2.append(" declared target fragment ");
                md.k(n00.r(fragment.mTargetWho, " that does not belong to this FragmentManager!", sb2));
                return;
            }
        }
        if (fragmentStateManager != null) {
            fragmentStateManager.i();
        }
        FragmentManager fragmentManager = fragment.mFragmentManager;
        fragment.mHost = fragmentManager.x;
        fragment.mParentFragment = fragmentManager.z;
        FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.f13313a;
        fragmentLifecycleCallbacksDispatcher.g(fragment, false);
        fragment.performAttach();
        fragmentLifecycleCallbacksDispatcher.b(fragment, false);
    }

    public final int c() {
        Fragment fragment = this.f13315c;
        if (fragment.mFragmentManager == null) {
            return fragment.mState;
        }
        int iMin = this.f13316e;
        int i2 = AnonymousClass2.f13318a[fragment.mMaxState.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                iMin = Math.min(iMin, 5);
            } else if (i2 != 3) {
                iMin = i2 != 4 ? Math.min(iMin, -1) : Math.min(iMin, 0);
            } else {
                iMin = Math.min(iMin, 1);
            }
        }
        if (fragment.mFromLayout) {
            boolean z = fragment.mInLayout;
            int i3 = this.f13316e;
            if (z) {
                iMin = Math.max(i3, 2);
                View view = fragment.mView;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = i3 < 4 ? Math.min(iMin, fragment.mState) : Math.min(iMin, 1);
            }
        }
        if (fragment.mInDynamicContainer && fragment.mContainer == null) {
            iMin = Math.min(iMin, 4);
        }
        if (!fragment.mAdded) {
            iMin = Math.min(iMin, 1);
        }
        ViewGroup viewGroup = fragment.mContainer;
        SpecialEffectsController.Operation.LifecycleImpact lifecycleImpact = null;
        if (viewGroup != null) {
            SpecialEffectsController specialEffectsControllerI = SpecialEffectsController.i(viewGroup, fragment.getParentFragmentManager());
            SpecialEffectsController.Operation operationF = specialEffectsControllerI.f(fragment);
            SpecialEffectsController.Operation.LifecycleImpact lifecycleImpact2 = operationF != null ? operationF.f13368b : null;
            SpecialEffectsController.Operation operationG = specialEffectsControllerI.g(fragment);
            lifecycleImpact = operationG != null ? operationG.f13368b : null;
            int i4 = lifecycleImpact2 == null ? -1 : SpecialEffectsController.WhenMappings.f13378a[lifecycleImpact2.ordinal()];
            if (i4 != -1 && i4 != 1) {
                lifecycleImpact = lifecycleImpact2;
            }
        }
        if (lifecycleImpact == SpecialEffectsController.Operation.LifecycleImpact.ADDING) {
            iMin = Math.min(iMin, 6);
        } else if (lifecycleImpact == SpecialEffectsController.Operation.LifecycleImpact.REMOVING) {
            iMin = Math.max(iMin, 3);
        } else if (fragment.mRemoving) {
            iMin = fragment.isInBackStack() ? Math.min(iMin, 1) : Math.min(iMin, -1);
        }
        if (fragment.mDeferStart && fragment.mState < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (fragment.mTransitioning) {
            iMin = Math.max(iMin, 3);
        }
        if (FragmentManager.O(2)) {
            Objects.toString(fragment);
        }
        return iMin;
    }

    public final void d() {
        String resourceName;
        Fragment fragment = this.f13315c;
        if (fragment.mFromLayout) {
            return;
        }
        if (FragmentManager.O(3)) {
            Objects.toString(fragment);
        }
        Bundle bundle = fragment.mSavedFragmentState;
        ViewGroup viewGroup = null;
        Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
        LayoutInflater layoutInflaterPerformGetLayoutInflater = fragment.performGetLayoutInflater(bundle2);
        ViewGroup viewGroup2 = fragment.mContainer;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i2 = fragment.mContainerId;
            if (i2 != 0) {
                if (i2 == -1) {
                    md.n(tr.f("Cannot create fragment ", fragment, " for a container view with no id"));
                    return;
                }
                viewGroup = (ViewGroup) fragment.mFragmentManager.y.b(i2);
                if (viewGroup == null) {
                    if (!fragment.mRestored && !fragment.mInDynamicContainer) {
                        try {
                            resourceName = fragment.getResources().getResourceName(fragment.mContainerId);
                        } catch (Resources.NotFoundException unused) {
                            resourceName = "unknown";
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(fragment.mContainerId) + " (" + resourceName + ") for fragment " + fragment);
                    }
                } else if (!(viewGroup instanceof FragmentContainerView)) {
                    FragmentStrictMode.Policy policy = FragmentStrictMode.f13391a;
                    WrongFragmentContainerViolation wrongFragmentContainerViolation = new WrongFragmentContainerViolation(fragment, viewGroup);
                    FragmentStrictMode.c(wrongFragmentContainerViolation);
                    FragmentStrictMode.Policy policyA = FragmentStrictMode.a(fragment);
                    if (policyA.f13392a.contains(FragmentStrictMode.Flag.DETECT_WRONG_FRAGMENT_CONTAINER) && FragmentStrictMode.f(policyA, fragment.getClass(), WrongFragmentContainerViolation.class)) {
                        FragmentStrictMode.b(policyA, wrongFragmentContainerViolation);
                    }
                }
            }
        }
        fragment.mContainer = viewGroup;
        fragment.performCreateView(layoutInflaterPerformGetLayoutInflater, viewGroup, bundle2);
        if (fragment.mView != null) {
            if (FragmentManager.O(3)) {
                Objects.toString(fragment);
            }
            fragment.mView.setSaveFromParentEnabled(false);
            fragment.mView.setTag(R.id.fragment_container_view_tag, fragment);
            if (viewGroup != null) {
                a();
            }
            if (fragment.mHidden) {
                fragment.mView.setVisibility(8);
            }
            boolean zIsAttachedToWindow = fragment.mView.isAttachedToWindow();
            final View view = fragment.mView;
            if (zIsAttachedToWindow) {
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                view.requestApplyInsets();
            } else {
                view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.fragment.app.FragmentStateManager.1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public final void onViewAttachedToWindow(View view2) {
                        View view3 = view;
                        view3.removeOnAttachStateChangeListener(this);
                        WeakHashMap weakHashMap2 = ViewCompat.f12200a;
                        view3.requestApplyInsets();
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public final void onViewDetachedFromWindow(View view2) {
                    }
                });
            }
            fragment.performViewCreated();
            this.f13313a.m(fragment, fragment.mView, bundle2, false);
            int visibility = fragment.mView.getVisibility();
            fragment.setPostOnViewCreatedAlpha(fragment.mView.getAlpha());
            if (fragment.mContainer != null && visibility == 0) {
                View viewFindFocus = fragment.mView.findFocus();
                if (viewFindFocus != null) {
                    fragment.setFocusedView(viewFindFocus);
                    if (FragmentManager.O(2)) {
                        viewFindFocus.toString();
                        Objects.toString(fragment);
                    }
                }
                fragment.mView.setAlpha(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            }
        }
        fragment.mState = 2;
    }

    public final void e() {
        Fragment fragmentB;
        boolean zO = FragmentManager.O(3);
        Fragment fragment = this.f13315c;
        if (zO) {
            Objects.toString(fragment);
        }
        boolean zIsChangingConfigurations = true;
        boolean z = fragment.mRemoving && !fragment.isInBackStack();
        FragmentStore fragmentStore = this.f13314b;
        if (z && !fragment.mBeingSaved) {
            fragmentStore.i(fragment.mWho, null);
        }
        if (!z) {
            FragmentManagerViewModel fragmentManagerViewModel = fragmentStore.d;
            if (!((fragmentManagerViewModel.f13300a.containsKey(fragment.mWho) && fragmentManagerViewModel.d) ? fragmentManagerViewModel.f13303e : true)) {
                String str = fragment.mTargetWho;
                if (str != null && (fragmentB = fragmentStore.b(str)) != null && fragmentB.mRetainInstance) {
                    fragment.mTarget = fragmentB;
                }
                fragment.mState = 0;
                return;
            }
        }
        FragmentHostCallback<?> fragmentHostCallback = fragment.mHost;
        if (fragmentHostCallback instanceof ViewModelStoreOwner) {
            zIsChangingConfigurations = fragmentStore.d.f13303e;
        } else {
            Context context = fragmentHostCallback.f13255c;
            if (context instanceof Activity) {
                zIsChangingConfigurations = true ^ ((Activity) context).isChangingConfigurations();
            }
        }
        if ((z && !fragment.mBeingSaved) || zIsChangingConfigurations) {
            FragmentManagerViewModel fragmentManagerViewModel2 = fragmentStore.d;
            fragmentManagerViewModel2.getClass();
            if (FragmentManager.O(3)) {
                Objects.toString(fragment);
            }
            fragmentManagerViewModel2.zc(fragment.mWho, false);
        }
        fragment.performDestroy();
        this.f13313a.d(fragment, false);
        for (FragmentStateManager fragmentStateManager : fragmentStore.d()) {
            if (fragmentStateManager != null) {
                Fragment fragment2 = fragmentStateManager.f13315c;
                if (fragment.mWho.equals(fragment2.mTargetWho)) {
                    fragment2.mTarget = fragment;
                    fragment2.mTargetWho = null;
                }
            }
        }
        String str2 = fragment.mTargetWho;
        if (str2 != null) {
            fragment.mTarget = fragmentStore.b(str2);
        }
        fragmentStore.h(this);
    }

    public final void f() {
        View view;
        boolean zO = FragmentManager.O(3);
        Fragment fragment = this.f13315c;
        if (zO) {
            Objects.toString(fragment);
        }
        ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        fragment.performDestroyView();
        this.f13313a.n(fragment, false);
        fragment.mContainer = null;
        fragment.mView = null;
        fragment.mViewLifecycleOwner = null;
        fragment.mViewLifecycleOwnerLiveData.setValue(null);
        fragment.mInLayout = false;
    }

    public final void g() {
        boolean zO = FragmentManager.O(3);
        Fragment fragment = this.f13315c;
        if (zO) {
            Objects.toString(fragment);
        }
        fragment.performDetach();
        this.f13313a.e(fragment, false);
        fragment.mState = -1;
        fragment.mHost = null;
        fragment.mParentFragment = null;
        fragment.mFragmentManager = null;
        if (!fragment.mRemoving || fragment.isInBackStack()) {
            FragmentManagerViewModel fragmentManagerViewModel = this.f13314b.d;
            if (!((fragmentManagerViewModel.f13300a.containsKey(fragment.mWho) && fragmentManagerViewModel.d) ? fragmentManagerViewModel.f13303e : true)) {
                return;
            }
        }
        if (FragmentManager.O(3)) {
            Objects.toString(fragment);
        }
        fragment.initState();
    }

    public final void h() {
        Fragment fragment = this.f13315c;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (FragmentManager.O(3)) {
                Objects.toString(fragment);
            }
            Bundle bundle = fragment.mSavedFragmentState;
            Bundle bundle2 = bundle != null ? bundle.getBundle("savedInstanceState") : null;
            fragment.performCreateView(fragment.performGetLayoutInflater(bundle2), null, bundle2);
            View view = fragment.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                fragment.mView.setTag(R.id.fragment_container_view_tag, fragment);
                if (fragment.mHidden) {
                    fragment.mView.setVisibility(8);
                }
                fragment.performViewCreated();
                this.f13313a.m(fragment, fragment.mView, bundle2, false);
                fragment.mState = 2;
            }
        }
    }

    public final void i() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        Bundle bundle;
        ViewGroup viewGroup3;
        boolean z = this.d;
        Fragment fragment = this.f13315c;
        if (z) {
            if (FragmentManager.O(2)) {
                Objects.toString(fragment);
                return;
            }
            return;
        }
        try {
            this.d = true;
            boolean z2 = false;
            while (true) {
                int iC = c();
                int i2 = fragment.mState;
                FragmentStore fragmentStore = this.f13314b;
                if (iC == i2) {
                    if (!z2 && i2 == -1 && fragment.mRemoving && !fragment.isInBackStack() && !fragment.mBeingSaved) {
                        if (FragmentManager.O(3)) {
                            Objects.toString(fragment);
                        }
                        FragmentManagerViewModel fragmentManagerViewModel = fragmentStore.d;
                        fragmentManagerViewModel.getClass();
                        if (FragmentManager.O(3)) {
                            Objects.toString(fragment);
                        }
                        fragmentManagerViewModel.zc(fragment.mWho, true);
                        fragmentStore.h(this);
                        if (FragmentManager.O(3)) {
                            Objects.toString(fragment);
                        }
                        fragment.initState();
                    }
                    if (fragment.mHiddenChanged) {
                        if (fragment.mView != null && (viewGroup = fragment.mContainer) != null) {
                            SpecialEffectsController specialEffectsControllerI = SpecialEffectsController.i(viewGroup, fragment.getParentFragmentManager());
                            if (fragment.mHidden) {
                                if (FragmentManager.O(2)) {
                                    Objects.toString(fragment);
                                }
                                specialEffectsControllerI.d(SpecialEffectsController.Operation.State.GONE, SpecialEffectsController.Operation.LifecycleImpact.NONE, this);
                            } else {
                                if (FragmentManager.O(2)) {
                                    Objects.toString(fragment);
                                }
                                specialEffectsControllerI.d(SpecialEffectsController.Operation.State.VISIBLE, SpecialEffectsController.Operation.LifecycleImpact.NONE, this);
                            }
                        }
                        FragmentManager fragmentManager = fragment.mFragmentManager;
                        if (fragmentManager != null && fragment.mAdded && FragmentManager.P(fragment)) {
                            fragmentManager.H = true;
                        }
                        fragment.mHiddenChanged = false;
                        fragment.onHiddenChanged(fragment.mHidden);
                        fragment.mChildFragmentManager.q();
                    }
                    return;
                }
                FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.f13313a;
                if (iC > i2) {
                    switch (i2 + 1) {
                        case 0:
                            b();
                            break;
                        case 1:
                            if (FragmentManager.O(3)) {
                                Objects.toString(fragment);
                            }
                            Bundle bundle2 = fragment.mSavedFragmentState;
                            bundle = bundle2 != null ? bundle2.getBundle("savedInstanceState") : null;
                            if (!fragment.mIsCreated) {
                                fragmentLifecycleCallbacksDispatcher.h(fragment, bundle, false);
                                fragment.performCreate(bundle);
                                fragmentLifecycleCallbacksDispatcher.c(fragment, bundle, false);
                            } else {
                                fragment.mState = 1;
                                fragment.restoreChildFragmentState();
                            }
                            break;
                        case 2:
                            h();
                            d();
                            break;
                        case 3:
                            if (FragmentManager.O(3)) {
                                Objects.toString(fragment);
                            }
                            Bundle bundle3 = fragment.mSavedFragmentState;
                            bundle = bundle3 != null ? bundle3.getBundle("savedInstanceState") : null;
                            fragment.performActivityCreated(bundle);
                            fragmentLifecycleCallbacksDispatcher.a(fragment, bundle, false);
                            break;
                        case 4:
                            if (fragment.mView != null && (viewGroup3 = fragment.mContainer) != null) {
                                SpecialEffectsController specialEffectsControllerI2 = SpecialEffectsController.i(viewGroup3, fragment.getParentFragmentManager());
                                int visibility = fragment.mView.getVisibility();
                                SpecialEffectsController.Operation.State.INSTANCE.getClass();
                                SpecialEffectsController.Operation.State stateB = SpecialEffectsController.Operation.State.Companion.b(visibility);
                                stateB.getClass();
                                if (FragmentManager.O(2)) {
                                    Objects.toString(fragment);
                                }
                                specialEffectsControllerI2.d(stateB, SpecialEffectsController.Operation.LifecycleImpact.ADDING, this);
                            }
                            fragment.mState = 4;
                            break;
                        case 5:
                            if (FragmentManager.O(3)) {
                                Objects.toString(fragment);
                            }
                            fragment.performStart();
                            fragmentLifecycleCallbacksDispatcher.k(fragment, false);
                            break;
                        case 6:
                            fragment.mState = 6;
                            break;
                        case 7:
                            k();
                            break;
                    }
                } else {
                    switch (i2 - 1) {
                        case -1:
                            g();
                            break;
                        case 0:
                            if (fragment.mBeingSaved) {
                                if (((Bundle) fragmentStore.f13326c.get(fragment.mWho)) == null) {
                                    fragmentStore.i(fragment.mWho, l());
                                }
                            }
                            e();
                            break;
                        case 1:
                            f();
                            fragment.mState = 1;
                            break;
                        case 2:
                            fragment.mInLayout = false;
                            fragment.mState = 2;
                            break;
                        case 3:
                            if (FragmentManager.O(3)) {
                                Objects.toString(fragment);
                            }
                            if (fragment.mBeingSaved) {
                                fragmentStore.i(fragment.mWho, l());
                            } else if (fragment.mView != null && fragment.mSavedViewState == null) {
                                m();
                            }
                            if (fragment.mView != null && (viewGroup2 = fragment.mContainer) != null) {
                                SpecialEffectsController specialEffectsControllerI3 = SpecialEffectsController.i(viewGroup2, fragment.getParentFragmentManager());
                                if (FragmentManager.O(2)) {
                                    Objects.toString(fragment);
                                }
                                specialEffectsControllerI3.d(SpecialEffectsController.Operation.State.REMOVED, SpecialEffectsController.Operation.LifecycleImpact.REMOVING, this);
                            }
                            fragment.mState = 3;
                            break;
                        case 4:
                            if (FragmentManager.O(3)) {
                                Objects.toString(fragment);
                            }
                            fragment.performStop();
                            fragmentLifecycleCallbacksDispatcher.l(fragment, false);
                            break;
                        case 5:
                            fragment.mState = 5;
                            break;
                        case 6:
                            if (FragmentManager.O(3)) {
                                Objects.toString(fragment);
                            }
                            fragment.performPause();
                            fragmentLifecycleCallbacksDispatcher.f(fragment, false);
                            break;
                    }
                }
                z2 = true;
            }
        } finally {
            this.d = false;
        }
    }

    public final void j(ClassLoader classLoader) {
        Fragment fragment = this.f13315c;
        Bundle bundle = fragment.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        if (fragment.mSavedFragmentState.getBundle("savedInstanceState") == null) {
            fragment.mSavedFragmentState.putBundle("savedInstanceState", new Bundle());
        }
        try {
            fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("viewState");
            fragment.mSavedViewRegistryState = fragment.mSavedFragmentState.getBundle("viewRegistryState");
            FragmentState fragmentState = (FragmentState) fragment.mSavedFragmentState.getParcelable("state");
            if (fragmentState != null) {
                fragment.mTargetWho = fragmentState.n;
                fragment.mTargetRequestCode = fragmentState.o;
                Boolean bool = fragment.mSavedUserVisibleHint;
                if (bool != null) {
                    fragment.mUserVisibleHint = bool.booleanValue();
                    fragment.mSavedUserVisibleHint = null;
                } else {
                    fragment.mUserVisibleHint = fragmentState.p;
                }
            }
            if (fragment.mUserVisibleHint) {
                return;
            }
            fragment.mDeferStart = true;
        } catch (BadParcelableException e2) {
            throw new IllegalStateException("Failed to restore view hierarchy state for fragment " + fragment, e2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002b  */
    public final void k() {
        boolean zO = FragmentManager.O(3);
        Fragment fragment = this.f13315c;
        if (zO) {
            Objects.toString(fragment);
        }
        View focusedView = fragment.getFocusedView();
        if (focusedView != null) {
            if (focusedView == fragment.mView) {
                focusedView.requestFocus();
                if (FragmentManager.O(2)) {
                    focusedView.toString();
                    Objects.toString(fragment);
                    Objects.toString(fragment.mView.findFocus());
                }
            } else {
                ViewParent parent = focusedView.getParent();
                while (true) {
                    if (parent != null) {
                        if (parent == fragment.mView) {
                            break;
                        } else {
                            parent = parent.getParent();
                        }
                    }
                }
                focusedView.requestFocus();
                if (FragmentManager.O(2)) {
                    focusedView.toString();
                    Objects.toString(fragment);
                    Objects.toString(fragment.mView.findFocus());
                }
            }
        }
        fragment.setFocusedView(null);
        fragment.performResume();
        this.f13313a.i(fragment, false);
        this.f13314b.i(fragment.mWho, null);
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    public final Bundle l() {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        Fragment fragment = this.f13315c;
        if (fragment.mState == -1 && (bundle = fragment.mSavedFragmentState) != null) {
            bundle2.putAll(bundle);
        }
        bundle2.putParcelable("state", new FragmentState(fragment));
        if (fragment.mState > -1) {
            Bundle bundle3 = new Bundle();
            fragment.performSaveInstanceState(bundle3);
            if (!bundle3.isEmpty()) {
                bundle2.putBundle("savedInstanceState", bundle3);
            }
            this.f13313a.j(fragment, bundle3, false);
            Bundle bundle4 = new Bundle();
            fragment.mSavedStateRegistryController.b(bundle4);
            if (!bundle4.isEmpty()) {
                bundle2.putBundle("registryState", bundle4);
            }
            Bundle bundleF0 = fragment.mChildFragmentManager.f0();
            if (!bundleF0.isEmpty()) {
                bundle2.putBundle("childFragmentManager", bundleF0);
            }
            if (fragment.mView != null) {
                m();
            }
            SparseArray<Parcelable> sparseArray = fragment.mSavedViewState;
            if (sparseArray != null) {
                bundle2.putSparseParcelableArray("viewState", sparseArray);
            }
            Bundle bundle5 = fragment.mSavedViewRegistryState;
            if (bundle5 != null) {
                bundle2.putBundle("viewRegistryState", bundle5);
            }
        }
        Bundle bundle6 = fragment.mArguments;
        if (bundle6 != null) {
            bundle2.putBundle("arguments", bundle6);
        }
        return bundle2;
    }

    public final void m() {
        Fragment fragment = this.f13315c;
        if (fragment.mView == null) {
            return;
        }
        if (FragmentManager.O(2)) {
            Objects.toString(fragment);
            Objects.toString(fragment.mView);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        fragment.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            fragment.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        fragment.mViewLifecycleOwner.g.b(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        fragment.mSavedViewRegistryState = bundle;
    }

    public FragmentStateManager(FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, FragmentStore fragmentStore, Fragment fragment) {
        this.f13313a = fragmentLifecycleCallbacksDispatcher;
        this.f13314b = fragmentStore;
        this.f13315c = fragment;
    }

    public FragmentStateManager(FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, FragmentStore fragmentStore, Fragment fragment, Bundle bundle) {
        this.f13313a = fragmentLifecycleCallbacksDispatcher;
        this.f13314b = fragmentStore;
        this.f13315c = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        fragment.mTarget = null;
        fragment.mSavedFragmentState = bundle;
        fragment.mArguments = bundle.getBundle("arguments");
    }
}
