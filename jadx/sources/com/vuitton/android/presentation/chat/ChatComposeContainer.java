package com.vuitton.android.presentation.chat;

import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.view.View;
import android.widget.FrameLayout;
import androidx.compose.ui.platform.ComposeView;
import androidx.compose.ui.platform.ViewCompositionStrategy;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.vuitton.android.R;
import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/chat/ChatComposeContainer;", "Landroidx/lifecycle/DefaultLifecycleObserver;", "Landroid/app/Activity;", ActionFloatingViewItem.f37018a, "<init>", "(Landroid/app/Activity;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ChatComposeContainer implements DefaultLifecycleObserver {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Activity f50671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FrameLayout f50672c;
    public ComposeView d;

    /* JADX WARN: Multi-variable type inference failed */
    public ChatComposeContainer(Activity activity) {
        activity.getClass();
        this.f50671b = activity;
        if (activity instanceof LifecycleOwner) {
            ((LifecycleOwner) activity).getF13561b().a(this);
        } else {
            md.n("HybridViewContainer requires the activity to implement LifecycleOwner");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(Function2 function2) {
        Activity activity = this.f50671b;
        FrameLayout frameLayout = new FrameLayout(activity);
        frameLayout.setId(View.generateViewId());
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        activity.getClass();
        frameLayout.setTag(R.id.view_tree_lifecycle_owner, (LifecycleOwner) activity);
        this.f50672c = frameLayout;
        ComposeView composeView = new ComposeView(this.f50671b, null, 0, 6, null);
        composeView.setViewCompositionStrategy(ViewCompositionStrategy.DisposeOnViewTreeLifecycleDestroyed.f10159a);
        composeView.setId(View.generateViewId());
        composeView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.d = composeView;
        FrameLayout frameLayout2 = this.f50672c;
        if (frameLayout2 == null) {
            Intrinsics.h("rootContainer");
            throw null;
        }
        frameLayout2.addView(composeView);
        FrameLayout frameLayout3 = this.f50672c;
        if (frameLayout3 == null) {
            Intrinsics.h("rootContainer");
            throw null;
        }
        activity.setContentView(frameLayout3);
        ComposeView composeView2 = this.d;
        if (composeView2 != null) {
            composeView2.setContent(function2);
        } else {
            Intrinsics.h("composeView");
            throw null;
        }
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public final void onDestroy(LifecycleOwner lifecycleOwner) {
        FrameLayout frameLayout = this.f50672c;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        ComponentCallbacks2 componentCallbacks2 = this.f50671b;
        if (componentCallbacks2 instanceof LifecycleOwner) {
            ((LifecycleOwner) componentCallbacks2).getF13561b().d(this);
        }
    }
}
