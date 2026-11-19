package com.vuitton.android.presentation.extensions;

import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.viewbinding.ViewBinding;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u0003B/\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00028\u00000\u0006\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/extensions/ActivityViewBindingDelegate;", "Landroidx/viewbinding/ViewBinding;", "T", "Lkotlin/properties/ReadOnlyProperty;", "Landroidx/appcompat/app/AppCompatActivity;", ActionFloatingViewItem.f37018a, "Lkotlin/Function1;", "Landroid/view/View;", "viewBindingFactory", "", "rootViewId", "<init>", "(Landroidx/appcompat/app/AppCompatActivity;Lkotlin/jvm/functions/Function1;Ljava/lang/Integer;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ActivityViewBindingDelegate<T extends ViewBinding> implements ReadOnlyProperty<AppCompatActivity, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Function1 f51494a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f51495b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ViewBinding f51496c;

    public ActivityViewBindingDelegate(AppCompatActivity appCompatActivity, Function1<? super View, ? extends T> function1, Integer num) {
        appCompatActivity.getClass();
        function1.getClass();
        this.f51494a = function1;
        this.f51495b = num;
        appCompatActivity.getF13561b().a(new DefaultLifecycleObserver() { // from class: com.vuitton.android.presentation.extensions.ActivityViewBindingDelegate.1
            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void onDestroy(LifecycleOwner lifecycleOwner) {
                ActivityViewBindingDelegate.this.f51496c = null;
            }
        });
    }

    @Override // kotlin.properties.ReadOnlyProperty
    public final /* bridge */ /* synthetic */ Object b(Object obj, KProperty kProperty) {
        throw null;
    }

    public /* synthetic */ ActivityViewBindingDelegate(AppCompatActivity appCompatActivity, Function1 function1, Integer num, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(appCompatActivity, function1, (i2 & 4) != 0 ? null : num);
    }
}
