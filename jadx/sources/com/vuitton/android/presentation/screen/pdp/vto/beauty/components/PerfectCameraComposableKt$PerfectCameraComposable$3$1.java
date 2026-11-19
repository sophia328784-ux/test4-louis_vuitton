package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import android.content.Context;
import android.widget.Toast;
import com.perfectcorp.perfectlib.CameraView;
import com.perfectcorp.perfectlib.MakeupCam;
import defpackage.k0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.components.PerfectCameraComposableKt$PerfectCameraComposable$3$1", f = "PerfectCameraComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class PerfectCameraComposableKt$PerfectCameraComposable$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f62035b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CameraView f62036c;
    public final /* synthetic */ MakeupCam d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f62037e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f62038f;
    public final /* synthetic */ Function1 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Function2 f62039h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function1 f62040i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Context f62041j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PerfectCameraComposableKt$PerfectCameraComposable$3$1(boolean z, CameraView cameraView, MakeupCam makeupCam, boolean z2, Function0 function0, Function1 function1, Function2 function2, Function1 function3, Context context, Continuation continuation) {
        super(2, continuation);
        this.f62035b = z;
        this.f62036c = cameraView;
        this.d = makeupCam;
        this.f62037e = z2;
        this.f62038f = function0;
        this.g = function1;
        this.f62039h = function2;
        this.f62040i = function3;
        this.f62041j = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PerfectCameraComposableKt$PerfectCameraComposable$3$1(this.f62035b, this.f62036c, this.d, this.f62037e, this.f62038f, this.g, this.f62039h, this.f62040i, this.f62041j, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PerfectCameraComposableKt$PerfectCameraComposable$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CameraView cameraView;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (this.f62035b && (cameraView = this.f62036c) != null && this.d == null) {
            final Function1 function1 = this.f62040i;
            final Context context = this.f62041j;
            final Function1 function2 = this.g;
            final Function2 function3 = this.f62039h;
            MakeupCam.create(cameraView, new MakeupCam.CreateCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.PerfectCameraComposableKt$PerfectCameraComposable$3$1.1
                @Override // com.perfectcorp.perfectlib.MakeupCam.CreateCallback
                public final void onFailure(Throwable th) {
                    th.getClass();
                    Toast.makeText(context, "MakeupCam init failed", 0).show();
                }

                @Override // com.perfectcorp.perfectlib.MakeupCam.CreateCallback
                public final void onSuccess(MakeupCam makeupCam) {
                    makeupCam.getClass();
                    makeupCam.onCreated();
                    function2.invoke(makeupCam);
                    makeupCam.enableLiplinerOnTop(true);
                    function3.invoke(makeupCam, new k0(function1, 29));
                }
            });
        }
        if (this.f62037e) {
            this.f62038f.mo47invoke();
        }
        return Unit.f71739a;
    }
}
