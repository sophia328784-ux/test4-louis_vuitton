package com.vuitton.android.presentation.lifecycleaware;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\tB\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;", "Landroidx/fragment/app/Fragment;", "fragment", "Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener$OnBackStackVisibilityListener;", "listener", "<init>", "(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener$OnBackStackVisibilityListener;)V", "OnBackStackVisibilityListener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BackStackVisibilityListener implements DefaultLifecycleObserver, FragmentManager.OnBackStackChangedListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Fragment f51573b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final OnBackStackVisibilityListener f51574c;
    public FragmentManager d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/lifecycleaware/BackStackVisibilityListener$OnBackStackVisibilityListener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface OnBackStackVisibilityListener {
        default void a() {
        }
    }

    public BackStackVisibilityListener(Fragment fragment, OnBackStackVisibilityListener onBackStackVisibilityListener) {
        fragment.getClass();
        onBackStackVisibilityListener.getClass();
        this.f51573b = fragment;
        this.f51574c = onBackStackVisibilityListener;
        fragment.getD().a(this);
    }

    @Override // androidx.fragment.app.FragmentManager.OnBackStackChangedListener
    public final void onBackStackChanged() {
        FragmentManager fragmentManager = this.d;
        Object obj = null;
        if (fragmentManager == null) {
            Intrinsics.h("fragmentManager");
            throw null;
        }
        List listM = fragmentManager.M();
        listM.getClass();
        for (Object obj2 : CollectionsKt.f0(listM)) {
            if (((Fragment) obj2).isVisible()) {
                obj = obj2;
                break;
            }
        }
        boolean zC = Intrinsics.c((Fragment) obj, this.f51573b);
        OnBackStackVisibilityListener onBackStackVisibilityListener = this.f51574c;
        if (zC) {
            onBackStackVisibilityListener.a();
        } else {
            onBackStackVisibilityListener.getClass();
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onCreate(LifecycleOwner lifecycleOwner) {
        FragmentManager supportFragmentManager = this.f51573b.requireActivity().getSupportFragmentManager();
        supportFragmentManager.getClass();
        this.d = supportFragmentManager;
        supportFragmentManager.o.add(this);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        FragmentManager fragmentManager = this.d;
        if (fragmentManager == null) {
            Intrinsics.h("fragmentManager");
            throw null;
        }
        fragmentManager.o.remove(this);
        this.f51573b.getD().d(this);
    }
}
