package com.vuitton.android.presentation.screen.immersivearticle;

import android.graphics.Bitmap;
import androidx.lifecycle.ViewModelKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f58357b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ImmersiveArticleActivity f58358c;

    public /* synthetic */ c(ImmersiveArticleActivity immersiveArticleActivity, int i2) {
        this.f58357b = i2;
        this.f58358c = immersiveArticleActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f58357b;
        ImmersiveArticleActivity immersiveArticleActivity = this.f58358c;
        switch (i2) {
            case 0:
                Bitmap bitmap = (Bitmap) obj;
                ImmersiveArticleActivity.Companion companion = ImmersiveArticleActivity.H;
                bitmap.getClass();
                ImmersiveArticleViewModelImpl immersiveArticleViewModelImplM = immersiveArticleActivity.M();
                BuildersKt.c(ViewModelKt.a(immersiveArticleViewModelImplM), null, null, new ImmersiveArticleViewModelImpl$displayScreenshotNotification$1(immersiveArticleViewModelImplM, bitmap, null), 3);
                break;
            default:
                Function0 function0 = immersiveArticleActivity.q;
                if (function0 != null) {
                    ((ImmersiveArticleActivity$onProductWishlistClick$1) function0).mo47invoke();
                }
                break;
        }
        return Unit.f71739a;
    }
}
