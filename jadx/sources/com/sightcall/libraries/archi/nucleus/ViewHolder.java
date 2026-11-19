package com.sightcall.libraries.archi.nucleus;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.sightcall.pratik.logs.Logger;
import defpackage.mt;
import io.reactivex.rxjava3.disposables.CompositeDisposable;
import java.lang.ref.WeakReference;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000M\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0005*\u0001\u001c\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0001*B\u0011\b\u0016\u0012\u0006\u0010\u0004\u001a\u00028\u0000¢\u0006\u0004\b\u0005\u0010\u0006B\u0019\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u0005\u0010\u000bB\u0019\b\u0016\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u0005\u0010\u000eJ)\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\u0006\u0010\t\u001a\u00020\nH\u0002¢\u0006\u0002\u0010\u001aJ\b\u0010\u001e\u001a\u00020\u001fH\u0002J\u0014\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\f\u001a\u00020\rJ\f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\f\u0010!\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\u0014\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\f\u001a\u00020\rJ\f\u0010\"\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J\f\u0010#\u001a\u00020\u001f*\u00020\u0018H$J\b\u0010$\u001a\u00020\u001fH\u0014J\u000e\u0010%\u001a\u00020&2\u0006\u0010\u0014\u001a\u00020\u0002J\u001f\u0010'\u001a\u0002H\u0001\"\b\b\u0001\u0010\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0004¢\u0006\u0002\u0010(J!\u0010)\u001a\u0004\u0018\u0001H\u0001\"\b\b\u0001\u0010\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\nH\u0004¢\u0006\u0002\u0010(R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0016\u0010\u0004\u001a\u00028\u0000X\u0084\u0004¢\u0006\n\n\u0002\u0010\u0013\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0014\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0012R\u0016\u0010\f\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u0016X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u001d¨\u0006+"}, d2 = {"Lcom/sightcall/libraries/archi/nucleus/ViewHolder;", "V", "Landroid/view/View;", "", "contentView", "<init>", "(Landroid/view/View;)V", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "resId", "", "(Landroid/content/Context;I)V", "rootView", "Landroid/view/ViewGroup;", "(Landroid/view/ViewGroup;I)V", "getContext", "()Landroid/content/Context;", "getContentView", "()Landroid/view/View;", "Landroid/view/View;", "view", "getView", "Ljava/lang/ref/WeakReference;", "disposables", "Lio/reactivex/rxjava3/disposables/CompositeDisposable;", "inflate", "(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/view/View;", "attachStateChangeListener", "com/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1", "Lcom/sightcall/libraries/archi/nucleus/ViewHolder$attachStateChangeListener$1;", "initView", "", "addOnRootView", "removeFromRootView", "bringToFront", "startInteractions", "buildContentView", "holdsViewInstance", "", "findViewById", "(I)Landroid/view/View;", "findOptionalViewById", "BadLayoutTypeException", "archi_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class ViewHolder<V extends View> {
    private final ViewHolder$attachStateChangeListener$1 attachStateChangeListener;
    private final V contentView;
    private final CompositeDisposable disposables;
    private WeakReference<ViewGroup> rootView;

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0015\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/libraries/archi/nucleus/ViewHolder$BadLayoutTypeException;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "foundClass", "Ljava/lang/Class;", "Landroid/view/View;", "<init>", "(Ljava/lang/Class;)V", "archi_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class BadLayoutTypeException extends Exception {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BadLayoutTypeException(Class<View> cls) {
            super("Bad layout type found in your xml file\nfoundClass:" + cls);
            cls.getClass();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.sightcall.libraries.archi.nucleus.ViewHolder$attachStateChangeListener$1] */
    public ViewHolder(ViewGroup viewGroup, int i2) {
        viewGroup.getClass();
        this.disposables = new CompositeDisposable();
        this.attachStateChangeListener = new View.OnAttachStateChangeListener(this) { // from class: com.sightcall.libraries.archi.nucleus.ViewHolder$attachStateChangeListener$1
            final /* synthetic */ ViewHolder<V> this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View p0) {
                p0.getClass();
                this.this$0.buildContentView();
                ViewHolder<V> viewHolder = this.this$0;
                viewHolder.startInteractions(((ViewHolder) viewHolder).disposables);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View p0) {
                p0.getClass();
                ((ViewHolder) this.this$0).disposables.d();
            }
        };
        Context context = viewGroup.getContext();
        context.getClass();
        this.contentView = (V) inflate(context, viewGroup, i2);
        this.rootView = new WeakReference<>(viewGroup);
        initView();
    }

    private final V inflate(Context context, ViewGroup rootView, int resId) throws BadLayoutTypeException {
        V v = (V) LayoutInflater.from(context).inflate(resId, rootView, false);
        try {
            v.getClass();
            return v;
        } catch (ClassCastException unused) {
            v.getClass();
            throw new BadLayoutTypeException(v.getClass());
        }
    }

    public static /* synthetic */ View inflate$default(ViewHolder viewHolder, Context context, ViewGroup viewGroup, int i2, int i3, Object obj) {
        if (obj != null) {
            mt.i("Super calls with default arguments not supported in this target, function: inflate");
            return null;
        }
        if ((i3 & 2) != 0) {
            viewGroup = null;
        }
        return viewHolder.inflate(context, viewGroup, i2);
    }

    private final void initView() {
        this.contentView.addOnAttachStateChangeListener(this.attachStateChangeListener);
    }

    public final ViewHolder<V> addOnRootView(ViewGroup rootView) {
        rootView.getClass();
        ViewParent parent = this.contentView.getParent();
        if (!Intrinsics.c(parent, rootView)) {
            if (parent == null) {
                rootView.addView(this.contentView);
                return this;
            }
            Logger.INSTANCE.getTag();
        }
        return this;
    }

    public final ViewHolder<V> bringToFront(ViewGroup rootView) {
        rootView.getClass();
        ViewParent parent = this.contentView.getParent();
        if (Intrinsics.c(parent, rootView)) {
            rootView.bringChildToFront(this.contentView);
            return this;
        }
        if (parent == null) {
            addOnRootView(rootView);
            return this;
        }
        Logger logger = Logger.INSTANCE;
        Objects.toString(this.contentView.getParent());
        logger.getTag();
        return this;
    }

    public void buildContentView() {
    }

    public final <V extends View> V findOptionalViewById(int resId) {
        return (V) this.contentView.findViewById(resId);
    }

    public final <V extends View> V findViewById(int resId) {
        V v = (V) this.contentView.findViewById(resId);
        v.getClass();
        return v;
    }

    public final V getContentView() {
        return this.contentView;
    }

    public final Context getContext() {
        Context context = this.contentView.getContext();
        context.getClass();
        return context;
    }

    /* JADX INFO: renamed from: getView, reason: from getter */
    public final View getContentView() {
        return this.contentView;
    }

    public final boolean holdsViewInstance(View view) {
        view.getClass();
        return this.contentView == view;
    }

    public final ViewHolder<V> removeFromRootView() {
        ViewParent parent = this.contentView.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this.contentView);
        }
        return this;
    }

    public abstract void startInteractions(CompositeDisposable compositeDisposable);

    public final ViewHolder<V> addOnRootView() {
        WeakReference<ViewGroup> weakReference = this.rootView;
        ViewGroup viewGroup = weakReference != null ? weakReference.get() : null;
        if (viewGroup != null) {
            addOnRootView(viewGroup);
            return this;
        }
        Logger.INSTANCE.getTag();
        return this;
    }

    public final ViewHolder<V> bringToFront() {
        WeakReference<ViewGroup> weakReference = this.rootView;
        ViewGroup viewGroup = weakReference != null ? weakReference.get() : null;
        if (viewGroup != null) {
            bringToFront(viewGroup);
            return this;
        }
        Logger.INSTANCE.getTag();
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.sightcall.libraries.archi.nucleus.ViewHolder$attachStateChangeListener$1] */
    public ViewHolder(Context context, int i2) {
        context.getClass();
        this.disposables = new CompositeDisposable();
        this.attachStateChangeListener = new View.OnAttachStateChangeListener(this) { // from class: com.sightcall.libraries.archi.nucleus.ViewHolder$attachStateChangeListener$1
            final /* synthetic */ ViewHolder<V> this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View p0) {
                p0.getClass();
                this.this$0.buildContentView();
                ViewHolder<V> viewHolder = this.this$0;
                viewHolder.startInteractions(((ViewHolder) viewHolder).disposables);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View p0) {
                p0.getClass();
                ((ViewHolder) this.this$0).disposables.d();
            }
        };
        this.contentView = (V) inflate$default(this, context, null, i2, 2, null);
        this.rootView = null;
        initView();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.sightcall.libraries.archi.nucleus.ViewHolder$attachStateChangeListener$1] */
    public ViewHolder(V v) {
        v.getClass();
        this.disposables = new CompositeDisposable();
        this.attachStateChangeListener = new View.OnAttachStateChangeListener(this) { // from class: com.sightcall.libraries.archi.nucleus.ViewHolder$attachStateChangeListener$1
            final /* synthetic */ ViewHolder<V> this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View p0) {
                p0.getClass();
                this.this$0.buildContentView();
                ViewHolder<V> viewHolder = this.this$0;
                viewHolder.startInteractions(((ViewHolder) viewHolder).disposables);
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View p0) {
                p0.getClass();
                ((ViewHolder) this.this$0).disposables.d();
            }
        };
        this.contentView = v;
        this.rootView = null;
        initView();
    }
}
