package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import android.graphics.Bitmap;
import com.perfectcorp.perfectlib.EffectConfig;
import com.perfectcorp.perfectlib.SkuInfo;
import com.perfectcorp.perfectlib.VtoApplier;
import com.perfectcorp.perfectlib.VtoSetting;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$applyProduct$2", f = "BeautyVtoActivity.kt", l = {376}, m = "invokeSuspend", v = 2)
final class BeautyVtoActivity$applyProduct$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61779b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SkuInfo f61780c;
    public final /* synthetic */ BeautyVtoActivity d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f61781e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$applyProduct$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$applyProduct$2$1", f = "BeautyVtoActivity.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ BeautyVtoActivity f61782b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ VtoSetting f61783c;
        public final /* synthetic */ Function0 d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(BeautyVtoActivity beautyVtoActivity, VtoSetting vtoSetting, Function0 function0, Continuation continuation) {
            super(2, continuation);
            this.f61782b = beautyVtoActivity;
            this.f61783c = vtoSetting;
            this.d = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f61782b, this.f61783c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            final BeautyVtoActivity beautyVtoActivity = this.f61782b;
            VtoApplier vtoApplier = beautyVtoActivity.t;
            if (vtoApplier != null) {
                List<VtoSetting> listO = CollectionsKt.O(this.f61783c);
                EffectConfig effectConfig = EffectConfig.DEFAULT;
                final Function0 function0 = this.d;
                vtoApplier.apply(listO, effectConfig, new VtoApplier.ApplyCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity.applyProduct.2.1.1
                    @Override // com.perfectcorp.perfectlib.VtoApplier.ApplyCallback
                    public final void onFailure(Throwable th) {
                        th.getClass();
                        BeautyVtoActivity beautyVtoActivity2 = beautyVtoActivity;
                        beautyVtoActivity2.L().c("BeautyVtoActivity", "[applyLook] onFailure", th);
                        beautyVtoActivity2.M().Z9();
                    }

                    @Override // com.perfectcorp.perfectlib.VtoApplier.ApplyCallback
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
    public BeautyVtoActivity$applyProduct$2(SkuInfo skuInfo, BeautyVtoActivity beautyVtoActivity, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.f61780c = skuInfo;
        this.d = beautyVtoActivity;
        this.f61781e = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyVtoActivity$applyProduct$2(this.f61780c, this.d, this.f61781e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoActivity$applyProduct$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61779b;
        if (i2 == 0) {
            ResultKt.b(obj);
            VtoSetting vtoSettingBuild = new VtoSetting.Builder().setSkuGuid(this.f61780c.getGuid()).build();
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            MainCoroutineDispatcher mainCoroutineDispatcher = MainDispatcherLoader.f75131a;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, vtoSettingBuild, this.f61781e, null);
            this.f61779b = 1;
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
