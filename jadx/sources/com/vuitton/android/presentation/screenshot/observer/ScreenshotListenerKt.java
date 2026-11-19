package com.vuitton.android.presentation.screenshot.observer;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.screenshot.ScreenshotViewModelImpl;
import defpackage.md;
import defpackage.pu;
import defpackage.rp0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ScreenshotListenerKt {
    public static final void a(Function0 function0, Composer composer, int i2) {
        int i3;
        function0.getClass();
        GapComposer gapComposerH = composer.h(34533);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = ContextExtKt.b(context);
                gapComposerH.q(objX);
            }
            AppCompatActivity appCompatActivity = (AppCompatActivity) objX;
            ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(gapComposerH);
            if (viewModelStoreOwnerA == null) {
                md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                return;
            }
            ScreenshotViewModelImpl screenshotViewModelImpl = (ScreenshotViewModelImpl) ViewModelKt.a(Reflection.f71922a.b(ScreenshotViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, gapComposerH), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, gapComposerH);
            if (appCompatActivity == null) {
                RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    recomposeScopeImplB0.d = new pu(i2, 6, function0);
                    return;
                }
                return;
            }
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new ScreenshotObserver(appCompatActivity, screenshotViewModelImpl, function0);
                gapComposerH.q(objX2);
            }
            ScreenshotObserver screenshotObserver = (ScreenshotObserver) objX2;
            boolean zY = gapComposerH.y(appCompatActivity) | gapComposerH.y(screenshotObserver);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new rp0(appCompatActivity, screenshotObserver, 13);
                gapComposerH.q(objX3);
            }
            EffectsKt.c(appCompatActivity, (Function1) objX3, gapComposerH);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB1 = gapComposerH.b0();
        if (recomposeScopeImplB1 != null) {
            recomposeScopeImplB1.d = new pu(i2, 7, function0);
        }
    }
}
