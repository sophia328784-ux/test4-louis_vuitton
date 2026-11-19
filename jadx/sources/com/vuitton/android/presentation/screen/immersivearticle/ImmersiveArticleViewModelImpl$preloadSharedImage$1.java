package com.vuitton.android.presentation.screen.immersivearticle;

import android.app.Application;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableKt;
import com.vuitton.android.R;
import com.vuitton.android.presentation.imageloading.ImageDownloader;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModelImpl$preloadSharedImage$1", f = "ImmersiveArticleViewModelImpl.kt", l = {672}, m = "invokeSuspend", v = 2)
final class ImmersiveArticleViewModelImpl$preloadSharedImage$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ImmersiveArticleViewModelImpl f58323b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f58324c;
    public final /* synthetic */ ImmersiveArticleViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f58325e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleViewModelImpl$preloadSharedImage$1(ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.d = immersiveArticleViewModelImpl;
        this.f58325e = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ImmersiveArticleViewModelImpl$preloadSharedImage$1(this.d, this.f58325e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImmersiveArticleViewModelImpl$preloadSharedImage$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ImmersiveArticleViewModelImpl immersiveArticleViewModelImpl = this.d;
        Application application = immersiveArticleViewModelImpl.f58274c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58324c;
        Bitmap bitmapA = null;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f58323b = immersiveArticleViewModelImpl;
            this.f58324c = 1;
            obj = ImageDownloader.a(application, this.f58325e, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            immersiveArticleViewModelImpl = this.f58323b;
            ResultKt.b(obj);
        }
        Bitmap bitmap = (Bitmap) obj;
        if (bitmap == null) {
            Drawable drawable = ContextCompat.getDrawable(application, R.drawable.placeholder);
            if (drawable != null) {
                bitmapA = DrawableKt.a(drawable);
            }
        } else {
            bitmapA = bitmap;
        }
        immersiveArticleViewModelImpl.K = bitmapA;
        return Unit.f71739a;
    }
}
