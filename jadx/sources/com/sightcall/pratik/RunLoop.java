package com.sightcall.pratik;

import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import defpackage.hn0;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\n\u0010\u000bJ\u0006\u0010\u0019\u001a\u00020\tJ\u0006\u0010\u001a\u001a\u00020\tJ\u0013\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00028\u0000¢\u0006\u0002\u0010\u001dJ\u0013\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00028\u0000¢\u0006\u0002\u0010\u001dJ\b\u0010\u001f\u001a\u00020\tH\u0002J\u0010\u0010 \u001a\u00020\t2\u0006\u0010!\u001a\u00020\"H\u0016J\u0010\u0010#\u001a\u00020\t2\u0006\u0010!\u001a\u00020\"H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR&\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t0\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001e\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0013j\b\u0012\u0004\u0012\u00028\u0000`\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Lcom/sightcall/pratik/RunLoop;", "T", "Landroidx/lifecycle/DefaultLifecycleObserver;", "looper", "Landroid/os/Looper;", "delayMillis", "", "callback", "Lkotlin/Function1;", "", "<init>", "(Landroid/os/Looper;JLkotlin/jvm/functions/Function1;)V", "getDelayMillis", "()J", "getCallback", "()Lkotlin/jvm/functions/Function1;", "setCallback", "(Lkotlin/jvm/functions/Function1;)V", m.C, "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "handler", "Landroid/os/Handler;", "isRunning", "", "start", "stop", "add", "element", "(Ljava/lang/Object;)V", "addFirst", "startEventHandler", "onStart", "owner", "Landroidx/lifecycle/LifecycleOwner;", "onStop", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public class RunLoop<T> implements DefaultLifecycleObserver {
    private Function1<? super T, Unit> callback;
    private final long delayMillis;
    private final Handler handler;
    private boolean isRunning;
    private final ArrayList<T> stack;

    public RunLoop(Looper looper, long j2, Function1<? super T, Unit> function1) {
        looper.getClass();
        function1.getClass();
        this.delayMillis = j2;
        this.callback = function1;
        this.stack = new ArrayList<>();
        Handler handlerCreateAsync = Handler.createAsync(looper);
        handlerCreateAsync.getClass();
        this.handler = handlerCreateAsync;
    }

    private final void startEventHandler() {
        this.handler.postDelayed(new hn0(this, 15), this.delayMillis);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startEventHandler$lambda$0(RunLoop runLoop) {
        if (runLoop.isRunning) {
            synchronized (runLoop.stack) {
                try {
                    ArrayList<T> arrayList = runLoop.stack;
                    arrayList.getClass();
                    T tRemove = arrayList.isEmpty() ? null : arrayList.remove(0);
                    if (tRemove != null) {
                        runLoop.callback.invoke(tRemove);
                    }
                    runLoop.startEventHandler();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void add(T element) {
        synchronized (this.stack) {
            this.stack.add(element);
        }
    }

    public final void addFirst(T element) {
        synchronized (this.stack) {
            this.stack.add(0, element);
        }
    }

    public final Function1<T, Unit> getCallback() {
        return this.callback;
    }

    public final long getDelayMillis() {
        return this.delayMillis;
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onCreate(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onDestroy(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onPause(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onResume(LifecycleOwner lifecycleOwner) {
        lifecycleOwner.getClass();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStart(LifecycleOwner owner) {
        owner.getClass();
        owner.getClass();
        start();
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(LifecycleOwner owner) {
        owner.getClass();
        owner.getClass();
        stop();
    }

    public final void setCallback(Function1<? super T, Unit> function1) {
        function1.getClass();
        this.callback = function1;
    }

    public final void start() {
        if (this.isRunning) {
            return;
        }
        this.isRunning = true;
        startEventHandler();
    }

    public final void stop() {
        if (this.isRunning) {
            this.isRunning = false;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ RunLoop(Looper looper, long j2, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            looper = Looper.getMainLooper();
            looper.getClass();
        }
        this(looper, (i2 & 2) != 0 ? 1L : j2, function1);
    }
}
