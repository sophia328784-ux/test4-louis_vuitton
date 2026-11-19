package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerHelper$loadLocalGltf$4", f = "Lv3dViewerHelper.kt", l = {578}, m = "invokeSuspend", v = 2)
final class Lv3dViewerHelper$loadLocalGltf$4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58607b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Lv3dViewerHelper f58608c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Lv3dViewerHelper$loadLocalGltf$4(Lv3dViewerHelper lv3dViewerHelper, Continuation continuation) {
        super(2, continuation);
        this.f58608c = lv3dViewerHelper;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new Lv3dViewerHelper$loadLocalGltf$4(this.f58608c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((Lv3dViewerHelper$loadLocalGltf$4) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58607b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Lv3dViewerHelper lv3dViewerHelper = this.f58608c;
            String str = lv3dViewerHelper.c0;
            if (str == null) {
                Intrinsics.h("sneakersUrl");
                throw null;
            }
            this.f58607b = 1;
            if (Lv3dViewerHelper.e(lv3dViewerHelper, str, this) == coroutineSingletons) {
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
