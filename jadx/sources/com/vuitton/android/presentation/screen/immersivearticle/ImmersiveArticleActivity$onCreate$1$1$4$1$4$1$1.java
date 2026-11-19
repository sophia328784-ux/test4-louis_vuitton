package com.vuitton.android.presentation.screen.immersivearticle;

import android.os.Build;
import androidx.core.content.ContextCompat;
import com.vuitton.android.presentation.screen.immersivearticle.models.WallpaperArticleSectionUiModel;
import java.util.List;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1", f = "ImmersiveArticleActivity.kt", l = {}, m = "invokeSuspend", v = 2)
final class ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ImmersiveArticleActivity f58241b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WallpaperArticleSectionUiModel f58242c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1(ImmersiveArticleActivity immersiveArticleActivity, WallpaperArticleSectionUiModel wallpaperArticleSectionUiModel, Continuation continuation) {
        super(2, continuation);
        this.f58241b = immersiveArticleActivity;
        this.f58242c = wallpaperArticleSectionUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1(this.f58241b, this.f58242c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ImmersiveArticleActivity$onCreate$1$1$4$1$4$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        WallpaperArticleSectionUiModel wallpaperArticleSectionUiModel = this.f58242c;
        wallpaperArticleSectionUiModel.getClass();
        List list = wallpaperArticleSectionUiModel.g;
        ImmersiveArticleActivity immersiveArticleActivity = this.f58241b;
        if (ContextCompat.checkSelfPermission(immersiveArticleActivity, "android.permission.WRITE_EXTERNAL_STORAGE") != 0 && Build.VERSION.SDK_INT < 30) {
            immersiveArticleActivity.C = wallpaperArticleSectionUiModel;
            immersiveArticleActivity.D.a("android.permission.WRITE_EXTERNAL_STORAGE");
        } else {
            immersiveArticleActivity.I(list);
        }
        return Unit.f71739a;
    }
}
