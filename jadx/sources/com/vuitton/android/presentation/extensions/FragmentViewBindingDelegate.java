package com.vuitton.android.presentation.extensions;

import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.viewbinding.ViewBinding;
import defpackage.l00;
import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u0003B/\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;", "Landroidx/viewbinding/ViewBinding;", "T", "Lkotlin/properties/ReadOnlyProperty;", "Landroidx/fragment/app/Fragment;", "fragment", "Lkotlin/Function1;", "Landroid/view/View;", "viewBindingFactory", "", "rootViewId", "<init>", "(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FragmentViewBindingDelegate<T extends ViewBinding> implements ReadOnlyProperty<Fragment, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f51502a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f51503b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ViewBinding f51504c;

    public FragmentViewBindingDelegate(final Fragment fragment, Function1<? super View, ? extends T> function1, Integer num) {
        fragment.getClass();
        function1.getClass();
        this.f51502a = function1;
        this.f51503b = num;
        fragment.getF13561b().a(new DefaultLifecycleObserver() { // from class: com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate.1
            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void onCreate(LifecycleOwner lifecycleOwner) {
                Fragment fragment2 = fragment;
                fragment2.getViewLifecycleOwnerLiveData().observe(fragment2, new FragmentExtKt$sam$androidx_lifecycle_Observer$0(new l00(this, 1)));
            }
        });
    }

    @Override // kotlin.properties.ReadOnlyProperty
    public final /* bridge */ /* synthetic */ Object b(Object obj, KProperty kProperty) {
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0022  */
    public final ViewBinding c(Fragment fragment, KProperty kProperty) {
        View view;
        fragment.getClass();
        kProperty.getClass();
        ViewBinding viewBinding = this.f51504c;
        if (viewBinding != null) {
            return viewBinding;
        }
        Integer num = this.f51503b;
        if (num != null) {
            int iIntValue = num.intValue();
            View view2 = fragment.getView();
            view = view2 != null ? view2.findViewById(iIntValue) : null;
            if (view == null) {
                view = fragment.getView();
            }
        } else {
            view = fragment.getView();
        }
        if (view == null) {
            md.k("Views are not accessible in the current Fragment state.");
            return null;
        }
        ViewBinding viewBinding2 = (ViewBinding) this.f51502a.invoke(view);
        this.f51504c = viewBinding2;
        return viewBinding2;
    }

    public /* synthetic */ FragmentViewBindingDelegate(Fragment fragment, Function1 function1, Integer num, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(fragment, function1, (i2 & 4) != 0 ? null : num);
    }
}
