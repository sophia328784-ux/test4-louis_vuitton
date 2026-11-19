package com.bumptech.glide.manager;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.collection.ArrayMap;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.load.resource.bitmap.HardwareConfigState;
import com.bumptech.glide.util.Util;
import defpackage.md;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class RequestManagerRetriever implements Handler.Callback {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final RequestManagerFactory f24893f = new AnonymousClass1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile RequestManager f24894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final RequestManagerFactory f24895c;
    public final DoNothingFirstFrameWaiter d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LifecycleRequestManagerRetriever f24896e;

    /* JADX INFO: renamed from: com.bumptech.glide.manager.RequestManagerRetriever$1, reason: invalid class name */
    public class AnonymousClass1 implements RequestManagerFactory {
        @Override // com.bumptech.glide.manager.RequestManagerRetriever.RequestManagerFactory
        public final RequestManager a(Glide glide, Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode, Context context) {
            return new RequestManager(glide, lifecycle, requestManagerTreeNode, context);
        }
    }

    public interface RequestManagerFactory {
        RequestManager a(Glide glide, Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode, Context context);
    }

    public RequestManagerRetriever(RequestManagerFactory requestManagerFactory) {
        new ArrayMap();
        requestManagerFactory = requestManagerFactory == null ? f24893f : requestManagerFactory;
        this.f24895c = requestManagerFactory;
        this.f24896e = new LifecycleRequestManagerRetriever(requestManagerFactory);
        File file = HardwareConfigState.d;
        this.d = new DoNothingFirstFrameWaiter();
    }

    public static Activity a(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public final RequestManager b(Context context) {
        if (context == null) {
            md.n("You cannot start a load on a null Context");
            return null;
        }
        if (Looper.myLooper() == Looper.getMainLooper() && !(context instanceof Application)) {
            if (context instanceof FragmentActivity) {
                FragmentActivity fragmentActivity = (FragmentActivity) context;
                if (!(Looper.myLooper() == Looper.getMainLooper())) {
                    return b(fragmentActivity.getApplicationContext());
                }
                if (fragmentActivity.isDestroyed()) {
                    md.n("You cannot start a load for a destroyed activity");
                    return null;
                }
                this.d.getClass();
                Activity activityA = a(fragmentActivity);
                boolean z = activityA == null || !activityA.isFinishing();
                Glide glideA = Glide.a(fragmentActivity.getApplicationContext());
                final LifecycleRequestManagerRetriever lifecycleRequestManagerRetriever = this.f24896e;
                final androidx.lifecycle.Lifecycle f13561b = fragmentActivity.getF13561b();
                fragmentActivity.getSupportFragmentManager();
                lifecycleRequestManagerRetriever.getClass();
                Util.a();
                Util.a();
                RequestManager requestManager = (RequestManager) lifecycleRequestManagerRetriever.f24889a.get(f13561b);
                if (requestManager != null) {
                    return requestManager;
                }
                LifecycleLifecycle lifecycleLifecycle = new LifecycleLifecycle(f13561b);
                RequestManager requestManagerA = lifecycleRequestManagerRetriever.f24890b.a(glideA, lifecycleLifecycle, new LifecycleRequestManagerRetriever.SupportRequestManagerTreeNode(), fragmentActivity);
                lifecycleRequestManagerRetriever.f24889a.put(f13561b, requestManagerA);
                lifecycleLifecycle.b(new LifecycleListener() { // from class: com.bumptech.glide.manager.LifecycleRequestManagerRetriever.1
                    @Override // com.bumptech.glide.manager.LifecycleListener
                    public final void onDestroy() {
                        LifecycleRequestManagerRetriever.this.f24889a.remove(f13561b);
                    }

                    @Override // com.bumptech.glide.manager.LifecycleListener
                    public final void onStart() {
                    }

                    @Override // com.bumptech.glide.manager.LifecycleListener
                    public final void onStop() {
                    }
                });
                if (z) {
                    requestManagerA.onStart();
                }
                return requestManagerA;
            }
            if (context instanceof ContextWrapper) {
                ContextWrapper contextWrapper = (ContextWrapper) context;
                if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                    return b(contextWrapper.getBaseContext());
                }
            }
        }
        if (this.f24894b == null) {
            synchronized (this) {
                try {
                    if (this.f24894b == null) {
                        this.f24894b = this.f24895c.a(Glide.a(context.getApplicationContext()), new ApplicationLifecycle(), new EmptyRequestManagerTreeNode(), context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f24894b;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        return false;
    }
}
