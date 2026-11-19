package com.google.android.material.motion;

import android.os.Build;
import android.view.View;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.BackEventCompat;
import defpackage.s6;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class MaterialBackOrchestrator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Api33BackCallbackDelegate f32756a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MaterialBackHandler f32757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f32758c;

    /* JADX INFO: loaded from: classes.dex */
    public static class Api33BackCallbackDelegate implements BackCallbackDelegate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public OnBackInvokedCallback f32759a;

        @Override // com.google.android.material.motion.MaterialBackOrchestrator.BackCallbackDelegate
        public void a(View view) {
            OnBackInvokedDispatcher onBackInvokedDispatcherFindOnBackInvokedDispatcher;
            if (this.f32759a == null || (onBackInvokedDispatcherFindOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher()) == null) {
                return;
            }
            onBackInvokedDispatcherFindOnBackInvokedDispatcher.unregisterOnBackInvokedCallback(this.f32759a);
            this.f32759a = null;
        }

        @Override // com.google.android.material.motion.MaterialBackOrchestrator.BackCallbackDelegate
        public void b(MaterialBackHandler materialBackHandler, View view, boolean z) {
            OnBackInvokedDispatcher onBackInvokedDispatcherFindOnBackInvokedDispatcher;
            if (this.f32759a == null && (onBackInvokedDispatcherFindOnBackInvokedDispatcher = view.findOnBackInvokedDispatcher()) != null) {
                OnBackInvokedCallback onBackInvokedCallbackC = c(materialBackHandler);
                this.f32759a = onBackInvokedCallbackC;
                onBackInvokedDispatcherFindOnBackInvokedDispatcher.registerOnBackInvokedCallback(z ? 1000000 : 0, onBackInvokedCallbackC);
            }
        }

        public OnBackInvokedCallback c(MaterialBackHandler materialBackHandler) {
            Objects.requireNonNull(materialBackHandler);
            return new s6(materialBackHandler, 1);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    public static class Api34BackCallbackDelegate extends Api33BackCallbackDelegate {
        @Override // com.google.android.material.motion.MaterialBackOrchestrator.Api33BackCallbackDelegate
        public final OnBackInvokedCallback c(final MaterialBackHandler materialBackHandler) {
            return new OnBackAnimationCallback() { // from class: com.google.android.material.motion.MaterialBackOrchestrator.Api34BackCallbackDelegate.1
                public final void onBackCancelled() {
                    if (Api34BackCallbackDelegate.this.f32759a != null) {
                        materialBackHandler.a();
                    }
                }

                public final void onBackInvoked() {
                    materialBackHandler.d();
                }

                public final void onBackProgressed(BackEvent backEvent) {
                    if (Api34BackCallbackDelegate.this.f32759a != null) {
                        materialBackHandler.c(new BackEventCompat(backEvent));
                    }
                }

                public final void onBackStarted(BackEvent backEvent) {
                    if (Api34BackCallbackDelegate.this.f32759a != null) {
                        materialBackHandler.b(new BackEventCompat(backEvent));
                    }
                }
            };
        }
    }

    public interface BackCallbackDelegate {
        void a(View view);

        void b(MaterialBackHandler materialBackHandler, View view, boolean z);
    }

    public MaterialBackOrchestrator(MaterialBackHandler materialBackHandler, View view) {
        int i2 = Build.VERSION.SDK_INT;
        this.f32756a = i2 >= 34 ? new Api34BackCallbackDelegate() : i2 >= 33 ? new Api33BackCallbackDelegate() : null;
        this.f32757b = materialBackHandler;
        this.f32758c = view;
    }

    public final void a() {
        Api33BackCallbackDelegate api33BackCallbackDelegate = this.f32756a;
        if (api33BackCallbackDelegate != null) {
            api33BackCallbackDelegate.b(this.f32757b, this.f32758c, false);
        }
    }

    public final void b() {
        Api33BackCallbackDelegate api33BackCallbackDelegate = this.f32756a;
        if (api33BackCallbackDelegate != null) {
            api33BackCallbackDelegate.a(this.f32758c);
        }
    }

    public <T extends View & MaterialBackHandler> MaterialBackOrchestrator(T t) {
        this(t, t);
    }
}
