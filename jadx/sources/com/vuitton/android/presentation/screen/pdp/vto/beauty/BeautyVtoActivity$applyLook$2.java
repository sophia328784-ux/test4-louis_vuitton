package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import android.graphics.Bitmap;
import com.perfectcorp.perfectlib.LookSetting;
import com.perfectcorp.perfectlib.VtoApplier;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$applyLook$2", f = "BeautyVtoActivity.kt", l = {405}, m = "invokeSuspend", v = 2)
final class BeautyVtoActivity$applyLook$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61772b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoActivity f61773c;
    public final /* synthetic */ LookSetting d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f61774e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$applyLook$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$applyLook$2$1", f = "BeautyVtoActivity.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ BeautyVtoActivity f61775b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ LookSetting f61776c;
        public final /* synthetic */ Function0 d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(BeautyVtoActivity beautyVtoActivity, LookSetting lookSetting, Function0 function0, Continuation continuation) {
            super(2, continuation);
            this.f61775b = beautyVtoActivity;
            this.f61776c = lookSetting;
            this.d = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f61775b, this.f61776c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            final BeautyVtoActivity beautyVtoActivity = this.f61775b;
            VtoApplier vtoApplier = beautyVtoActivity.t;
            if (vtoApplier != null) {
                final Function0 function0 = this.d;
                vtoApplier.apply(this.f61776c, new VtoApplier.DownloadAndApplyCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity.applyLook.2.1.1
                    @Override // com.perfectcorp.perfectlib.VtoApplier.DownloadAndApplyCallback
                    public final void downloadProgress(double d) {
                    }

                    @Override // com.perfectcorp.perfectlib.VtoApplier.DownloadAndApplyCallback
                    public final void onFailure(Throwable th) {
                        th.getClass();
                        BeautyVtoActivity beautyVtoActivity2 = beautyVtoActivity;
                        beautyVtoActivity2.L().c("BeautyVtoActivity", "[applyLook] onFailure", th);
                        beautyVtoActivity2.M().Z9();
                    }

                    @Override // com.perfectcorp.perfectlib.VtoApplier.DownloadAndApplyCallback
                    public final void onSuccess(Bitmap bitmap) {
                        if (bitmap != null) {
                            bitmap.recycle();
                        }
                        BeautyVtoActivity beautyVtoActivity2 = beautyVtoActivity;
                        beautyVtoActivity2.L();
                        function0.mo47invoke();
                        beautyVtoActivity2.M().Z9();
                    }
                });
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoActivity$applyLook$2(BeautyVtoActivity beautyVtoActivity, LookSetting lookSetting, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.f61773c = beautyVtoActivity;
        this.d = lookSetting;
        this.f61774e = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyVtoActivity$applyLook$2(this.f61773c, this.d, this.f61774e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoActivity$applyLook$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61772b;
        if (i2 == 0) {
            ResultKt.b(obj);
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            MainCoroutineDispatcher mainCoroutineDispatcher = MainDispatcherLoader.f75131a;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f61773c, this.d, this.f61774e, null);
            this.f61772b = 1;
            if (BuildersKt.f(mainCoroutineDispatcher, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
