package com.vuitton.android.presentation.screen.account.myicons;

import android.content.Intent;
import com.vuitton.android.presentation.screen.splash.SplashScreenActivity;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myicons.MyIconsActivity$onUpdateLauncherIcon$1", f = "MyIconsActivity.kt", l = {EACTags.APPLICATION_IMAGE}, m = "invokeSuspend", v = 2)
final class MyIconsActivity$onUpdateLauncherIcon$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MyIconsActivity f52488c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyIconsActivity$onUpdateLauncherIcon$1(MyIconsActivity myIconsActivity, Continuation continuation) {
        super(2, continuation);
        this.f52488c = myIconsActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MyIconsActivity$onUpdateLauncherIcon$1(this.f52488c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MyIconsActivity$onUpdateLauncherIcon$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52487b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Duration.Companion companion = Duration.INSTANCE;
            long jG = DurationKt.g(1, DurationUnit.SECONDS);
            this.f52487b = 1;
            if (DelayKt.c(jG, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        MyIconsActivity myIconsActivity = this.f52488c;
        myIconsActivity.finishAffinity();
        myIconsActivity.startActivity(new Intent(myIconsActivity.getApplicationContext(), (Class<?>) SplashScreenActivity.class));
        return Unit.f71739a;
    }
}
