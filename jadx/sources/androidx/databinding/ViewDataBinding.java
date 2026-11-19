package androidx.databinding;

import android.os.Handler;
import android.os.Looper;
import android.util.SparseIntArray;
import android.view.Choreographer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.OnLifecycleEvent;
import androidx.viewbinding.ViewBinding;
import com.vuitton.android.R;
import defpackage.md;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class ViewDataBinding extends BaseObservable implements ViewBinding {
    public static final boolean n = true;
    public static final AnonymousClass4 o = new AnonymousClass4();
    public static final ReferenceQueue p;
    public static final View.OnAttachStateChangeListener q;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Runnable f12594c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final WeakListener[] f12595e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final View f12596f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Choreographer f12597h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Choreographer.FrameCallback f12598i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Handler f12599j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Fragment f12600k;
    public OnStartListener l;
    public boolean m;

    /* JADX INFO: renamed from: androidx.databinding.ViewDataBinding$4, reason: invalid class name */
    public class AnonymousClass4 implements CreateWeakListener {
        @Override // androidx.databinding.CreateWeakListener
        public final WeakListener a(ViewDataBinding viewDataBinding, int i2, ReferenceQueue referenceQueue) {
            return new LiveDataListener(viewDataBinding, i2, referenceQueue).f12602b;
        }
    }

    /* JADX INFO: renamed from: androidx.databinding.ViewDataBinding$5, reason: invalid class name */
    public class AnonymousClass5 extends CallbackRegistry.NotifierCallback<OnRebindCallback, ViewDataBinding, Void> {
        @Override // androidx.databinding.CallbackRegistry.NotifierCallback
        public final void a(Object obj, Object obj2, int i2) {
            OnRebindCallback onRebindCallback = (OnRebindCallback) obj;
            if (i2 == 1) {
                onRebindCallback.getClass();
            } else if (i2 == 2) {
                onRebindCallback.getClass();
            } else {
                if (i2 != 3) {
                    return;
                }
                onRebindCallback.getClass();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.databinding.ViewDataBinding$6, reason: invalid class name */
    public class AnonymousClass6 implements View.OnAttachStateChangeListener {
        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            boolean z = ViewDataBinding.n;
            (view != null ? (ViewDataBinding) view.getTag(R.id.dataBinding) : null).f12594c.run();
            view.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
        }
    }

    public static class LiveDataListener implements Observer, ObservableReference<LiveData<?>> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final WeakListener f12602b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public WeakReference f12603c = null;

        public LiveDataListener(ViewDataBinding viewDataBinding, int i2, ReferenceQueue<ViewDataBinding> referenceQueue) {
            this.f12602b = new WeakListener(viewDataBinding, i2, this, referenceQueue);
        }

        @Override // androidx.databinding.ObservableReference
        public final void a(LifecycleOwner lifecycleOwner) {
            WeakReference weakReference = this.f12603c;
            LifecycleOwner lifecycleOwner2 = weakReference == null ? null : (LifecycleOwner) weakReference.get();
            LiveData liveData = (LiveData) this.f12602b.f12607c;
            if (liveData != null) {
                if (lifecycleOwner2 != null) {
                    liveData.removeObserver(this);
                }
                if (lifecycleOwner != null) {
                    liveData.observe(lifecycleOwner, this);
                }
            }
            if (lifecycleOwner != null) {
                this.f12603c = new WeakReference(lifecycleOwner);
            }
        }

        @Override // androidx.databinding.ObservableReference
        public final void b(Object obj) {
            ((LiveData) obj).removeObserver(this);
        }

        @Override // androidx.databinding.ObservableReference
        public final void c(Object obj) {
            LiveData liveData = (LiveData) obj;
            WeakReference weakReference = this.f12603c;
            LifecycleOwner lifecycleOwner = weakReference == null ? null : (LifecycleOwner) weakReference.get();
            if (lifecycleOwner != null) {
                liveData.observe(lifecycleOwner, this);
            }
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(Object obj) {
            WeakListener weakListener = this.f12602b;
            ViewDataBinding viewDataBinding = weakListener.get();
            if (viewDataBinding == null) {
                weakListener.a();
            }
            if (viewDataBinding != null) {
                int i2 = weakListener.f12606b;
                Object obj2 = weakListener.f12607c;
                if (viewDataBinding.m || !viewDataBinding.g(i2, 0, obj2)) {
                    return;
                }
                viewDataBinding.j();
            }
        }
    }

    public static class OnStartListener implements LifecycleObserver {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final WeakReference f12604b;

        public OnStartListener(ViewDataBinding viewDataBinding) {
            this.f12604b = new WeakReference(viewDataBinding);
        }

        @OnLifecycleEvent(Lifecycle.Event.ON_START)
        public void onStart() {
            ViewDataBinding viewDataBinding = (ViewDataBinding) this.f12604b.get();
            if (viewDataBinding != null) {
                if (viewDataBinding.g) {
                    viewDataBinding.j();
                } else if (viewDataBinding.d()) {
                    viewDataBinding.g = true;
                    viewDataBinding.c();
                    viewDataBinding.g = false;
                }
            }
        }
    }

    static {
        new AnonymousClass5();
        p = new ReferenceQueue();
        q = new AnonymousClass6();
    }

    public ViewDataBinding(Object obj, View view, int i2) {
        b(obj);
        this.f12594c = new Runnable() { // from class: androidx.databinding.ViewDataBinding.7
            @Override // java.lang.Runnable
            public void run() {
                synchronized (this) {
                    ViewDataBinding.this.d = false;
                }
                while (true) {
                    Reference referencePoll = ViewDataBinding.p.poll();
                    if (referencePoll == null) {
                        break;
                    } else if (referencePoll instanceof WeakListener) {
                        ((WeakListener) referencePoll).a();
                    }
                }
                boolean zIsAttachedToWindow = ViewDataBinding.this.f12596f.isAttachedToWindow();
                ViewDataBinding viewDataBinding = ViewDataBinding.this;
                if (!zIsAttachedToWindow) {
                    View view2 = viewDataBinding.f12596f;
                    View.OnAttachStateChangeListener onAttachStateChangeListener = ViewDataBinding.q;
                    view2.removeOnAttachStateChangeListener(onAttachStateChangeListener);
                    ViewDataBinding.this.f12596f.addOnAttachStateChangeListener(onAttachStateChangeListener);
                    return;
                }
                if (viewDataBinding.g) {
                    viewDataBinding.j();
                } else if (viewDataBinding.d()) {
                    viewDataBinding.g = true;
                    viewDataBinding.c();
                    viewDataBinding.g = false;
                }
            }
        };
        this.d = false;
        this.f12595e = new WeakListener[i2];
        this.f12596f = view;
        if (Looper.myLooper() == null) {
            md.k("DataBinding must be created in view's UI Thread");
            throw null;
        }
        this.f12597h = Choreographer.getInstance();
        this.f12598i = new Choreographer.FrameCallback() { // from class: androidx.databinding.ViewDataBinding.8
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j2) {
                ViewDataBinding.this.f12594c.run();
            }
        };
    }

    public static DataBindingComponent b(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof DataBindingComponent) {
            return (DataBindingComponent) obj;
        }
        md.n("The provided bindingComponent parameter must be an instance of DataBindingComponent. See  https://issuetracker.google.com/issues/116541301 for details of why this parameter is not defined as DataBindingComponent");
        return null;
    }

    public static ViewDataBinding e(LayoutInflater layoutInflater, int i2, ViewGroup viewGroup) {
        return DataBindingUtil.f12581a.b(b(null), layoutInflater.inflate(i2, viewGroup, false), i2);
    }

    /* JADX WARN: Code duplicated, block: B:42:0x008c  */
    /* JADX WARN: Code duplicated, block: B:44:0x0092 A[ADDED_TO_REGION] */
    public static void f(DataBindingComponent dataBindingComponent, View view, Object[] objArr, SparseIntArray sparseIntArray, boolean z) {
        int id;
        int i2;
        int i3;
        int length;
        if ((view != null ? (ViewDataBinding) view.getTag(R.id.dataBinding) : null) != null) {
            return;
        }
        Object tag = view.getTag();
        String str = tag instanceof String ? (String) tag : null;
        if (z && str != null && str.startsWith("layout")) {
            int iLastIndexOf = str.lastIndexOf(95);
            if (iLastIndexOf <= 0 || (length = str.length()) == (i3 = iLastIndexOf + 1)) {
                id = view.getId();
                if (id > 0) {
                    objArr[i2] = view;
                }
            } else {
                int i4 = i3;
                while (true) {
                    if (i4 >= length) {
                        int length2 = str.length();
                        int iCharAt = 0;
                        while (i3 < length2) {
                            iCharAt = (iCharAt * 10) + (str.charAt(i3) - '0');
                            i3++;
                        }
                        if (objArr[iCharAt] == null) {
                            objArr[iCharAt] = view;
                        }
                    } else if (Character.isDigit(str.charAt(i4))) {
                        i4++;
                    } else {
                        id = view.getId();
                        if (id > 0) {
                            objArr[i2] = view;
                        }
                    }
                }
            }
        } else if (str == null || !str.startsWith("binding_")) {
            id = view.getId();
            if (id > 0 && sparseIntArray != null && (i2 = sparseIntArray.get(id, -1)) >= 0 && objArr[i2] == null) {
                objArr[i2] = view;
            }
        } else {
            int length3 = str.length();
            int iCharAt2 = 0;
            for (int i5 = 8; i5 < length3; i5++) {
                iCharAt2 = (iCharAt2 * 10) + (str.charAt(i5) - '0');
            }
            if (objArr[iCharAt2] == null) {
                objArr[iCharAt2] = view;
            }
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                f(dataBindingComponent, viewGroup.getChildAt(i6), objArr, sparseIntArray, false);
            }
        }
    }

    public abstract void c();

    public abstract boolean d();

    public abstract boolean g(int i2, int i3, Object obj);

    public final void i(int i2, MutableLiveData mutableLiveData, CreateWeakListener createWeakListener) {
        if (mutableLiveData == null) {
            return;
        }
        WeakListener[] weakListenerArr = this.f12595e;
        WeakListener weakListenerA = weakListenerArr[i2];
        if (weakListenerA == null) {
            weakListenerA = createWeakListener.a(this, i2, p);
            weakListenerArr[i2] = weakListenerA;
            Fragment fragment = this.f12600k;
            if (fragment != null) {
                weakListenerA.f12605a.a(fragment);
            }
        }
        weakListenerA.a();
        weakListenerA.f12607c = mutableLiveData;
        weakListenerA.f12605a.c(mutableLiveData);
    }

    public final void j() {
        Fragment fragment = this.f12600k;
        if (fragment == null || fragment.getLifecycle().getF13454i().a(Lifecycle.State.STARTED)) {
            synchronized (this) {
                try {
                    if (this.d) {
                        return;
                    }
                    this.d = true;
                    if (n) {
                        this.f12597h.postFrameCallback(this.f12598i);
                    } else {
                        this.f12599j.post(this.f12594c);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void k(Fragment fragment) {
        Fragment fragment2 = this.f12600k;
        if (fragment2 == fragment) {
            return;
        }
        if (fragment2 != null) {
            fragment2.getLifecycle().d(this.l);
        }
        this.f12600k = fragment;
        if (this.l == null) {
            this.l = new OnStartListener(this);
        }
        fragment.getLifecycle().a(this.l);
        for (WeakListener weakListener : this.f12595e) {
            if (weakListener != null) {
                weakListener.f12605a.a(fragment);
            }
        }
    }

    public final void l(int i2, MutableLiveData mutableLiveData) {
        this.m = true;
        try {
            AnonymousClass4 anonymousClass4 = o;
            WeakListener[] weakListenerArr = this.f12595e;
            if (mutableLiveData == null) {
                WeakListener weakListener = weakListenerArr[i2];
                if (weakListener != null) {
                    weakListener.a();
                }
            } else {
                WeakListener weakListener2 = weakListenerArr[i2];
                if (weakListener2 == null) {
                    i(i2, mutableLiveData, anonymousClass4);
                } else if (weakListener2.f12607c != mutableLiveData) {
                    if (weakListener2 != null) {
                        weakListener2.a();
                    }
                    i(i2, mutableLiveData, anonymousClass4);
                }
            }
        } finally {
            this.m = false;
        }
    }
}
