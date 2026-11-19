package com.vuitton.android.presentation.inappbanner;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import com.vuitton.foundation.model.domain.model.inappbanner.InAppBanner;
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
import kotlinx.coroutines.DelayKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.inappbanner.InAppBannerComposableKt$InAppBannerComposable$4$1$1", f = "InAppBannerComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class InAppBannerComposableKt$InAppBannerComposable$4$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f51537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InAppBanner f51538c;
    public final /* synthetic */ Animatable d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Animatable f51539e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f51540f;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.inappbanner.InAppBannerComposableKt$InAppBannerComposable$4$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.inappbanner.InAppBannerComposableKt$InAppBannerComposable$4$1$1$1", f = "InAppBannerComposable.kt", l = {62}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f51541b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Animatable f51542c;
        public final /* synthetic */ int d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Animatable animatable, int i2, Continuation continuation) {
            super(2, continuation);
            this.f51542c = animatable;
            this.d = i2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f51542c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f51541b;
            if (i2 == 0) {
                ResultKt.b(obj);
                Float f2 = new Float(1.0f);
                TweenSpec tweenSpecC = AnimationSpecKt.c(this.d, 0, null, 6);
                this.f51541b = 1;
                if (Animatable.c(this.f51542c, f2, tweenSpecC, null, null, this, 12) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.inappbanner.InAppBannerComposableKt$InAppBannerComposable$4$1$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.inappbanner.InAppBannerComposableKt$InAppBannerComposable$4$1$1$2", f = "InAppBannerComposable.kt", l = {63}, m = "invokeSuspend", v = 2)
    final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f51543b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Animatable f51544c;
        public final /* synthetic */ int d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(Animatable animatable, int i2, Continuation continuation) {
            super(2, continuation);
            this.f51544c = animatable;
            this.d = i2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.f51544c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f51543b;
            if (i2 == 0) {
                ResultKt.b(obj);
                Float f2 = new Float(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                TweenSpec tweenSpecC = AnimationSpecKt.c(this.d, 0, null, 6);
                this.f51543b = 1;
                if (Animatable.c(this.f51544c, f2, tweenSpecC, null, null, this, 12) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.vuitton.android.presentation.inappbanner.InAppBannerComposableKt$InAppBannerComposable$4$1$1$3, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.inappbanner.InAppBannerComposableKt$InAppBannerComposable$4$1$1$3", f = "InAppBannerComposable.kt", l = {EACTags.ELEMENT_LIST}, m = "invokeSuspend", v = 2)
    final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f51545b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ int f51546c;
        public final /* synthetic */ InAppBanner d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ Function0 f51547e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(int i2, InAppBanner inAppBanner, Function0 function0, Continuation continuation) {
            super(2, continuation);
            this.f51546c = i2;
            this.d = inAppBanner;
            this.f51547e = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass3(this.f51546c, this.d, this.f51547e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f51545b;
            if (i2 == 0) {
                ResultKt.b(obj);
                long j2 = this.f51546c;
                this.f51545b = 1;
                if (DelayKt.b(j2, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            if (!this.d.f67757e) {
                this.f51547e.mo47invoke();
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InAppBannerComposableKt$InAppBannerComposable$4$1$1(InAppBanner inAppBanner, Animatable animatable, Animatable animatable2, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.f51538c = inAppBanner;
        this.d = animatable;
        this.f51539e = animatable2;
        this.f51540f = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        InAppBannerComposableKt$InAppBannerComposable$4$1$1 inAppBannerComposableKt$InAppBannerComposable$4$1$1 = new InAppBannerComposableKt$InAppBannerComposable$4$1$1(this.f51538c, this.d, this.f51539e, this.f51540f, continuation);
        inAppBannerComposableKt$InAppBannerComposable$4$1$1.f51537b = obj;
        return inAppBannerComposableKt$InAppBannerComposable$4$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((InAppBannerComposableKt$InAppBannerComposable$4$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope = (CoroutineScope) this.f51537b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        InAppBanner inAppBanner = this.f51538c;
        int i2 = inAppBanner.f67757e ? 0 : 1500;
        BuildersKt.c(coroutineScope, null, null, new AnonymousClass1(this.d, i2, null), 3);
        BuildersKt.c(coroutineScope, null, null, new AnonymousClass2(this.f51539e, i2, null), 3);
        BuildersKt.c(coroutineScope, null, null, new AnonymousClass3(i2, inAppBanner, this.f51540f, null), 3);
        return Unit.f71739a;
    }
}
