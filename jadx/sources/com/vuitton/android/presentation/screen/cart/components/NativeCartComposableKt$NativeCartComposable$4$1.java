package com.vuitton.android.presentation.screen.cart.components;

import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.compose.runtime.MutableState;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import com.vuitton.android.platform.extensions.IntentExtensionKt;
import com.vuitton.android.presentation.screen.authentication.welcome.model.LoginContext;
import com.vuitton.android.presentation.screen.cart.NativeCartDestinations;
import com.vuitton.android.presentation.screen.cart.NativeCartDestinationsKt;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.models.AddToWishlistRequest;
import defpackage.md;
import defpackage.t30;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.components.NativeCartComposableKt$NativeCartComposable$4$1", f = "NativeCartComposable.kt", l = {ModuleDescriptor.MODULE_VERSION}, m = "invokeSuspend", v = 2)
final class NativeCartComposableKt$NativeCartComposable$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeCartViewModel f55009c;
    public final /* synthetic */ Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ManagedActivityResultLauncher f55010e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f55011f;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.cart.components.NativeCartComposableKt$NativeCartComposable$4$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "addToWishlistRequest", "Lcom/vuitton/android/presentation/screen/cart/models/AddToWishlistRequest;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.components.NativeCartComposableKt$NativeCartComposable$4$1$1", f = "NativeCartComposable.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<AddToWishlistRequest, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f55012b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ NativeCartViewModel f55013c;
        public final /* synthetic */ Context d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ ManagedActivityResultLauncher f55014e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ MutableState f55015f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(NativeCartViewModel nativeCartViewModel, Context context, ManagedActivityResultLauncher managedActivityResultLauncher, MutableState mutableState, Continuation continuation) {
            super(2, continuation);
            this.f55013c = nativeCartViewModel;
            this.d = context;
            this.f55014e = managedActivityResultLauncher;
            this.f55015f = mutableState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f55013c, this.d, this.f55014e, this.f55015f, continuation);
            anonymousClass1.f55012b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((AddToWishlistRequest) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AddToWishlistRequest addToWishlistRequest = (AddToWishlistRequest) this.f55012b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            boolean z = addToWishlistRequest.f55130a;
            NativeCartViewModel nativeCartViewModel = this.f55013c;
            if (z) {
                nativeCartViewModel.vb(true, addToWishlistRequest.f55131b);
            } else {
                this.f55015f.setValue(new t30(nativeCartViewModel, addToWishlistRequest, 16));
                IntentExtensionKt.b(NativeCartDestinationsKt.a(new NativeCartDestinations.ToLoginPage(LoginContext.WISHLIST), this.d), this.f55014e);
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartComposableKt$NativeCartComposable$4$1(NativeCartViewModel nativeCartViewModel, Context context, ManagedActivityResultLauncher managedActivityResultLauncher, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f55009c = nativeCartViewModel;
        this.d = context;
        this.f55010e = managedActivityResultLauncher;
        this.f55011f = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeCartComposableKt$NativeCartComposable$4$1(this.f55009c, this.d, this.f55010e, this.f55011f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartComposableKt$NativeCartComposable$4$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55008b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowI9 = this.f55009c.i9();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f55009c, this.d, this.f55010e, this.f55011f, null);
            this.f55008b = 1;
            if (FlowKt.g(flowI9, anonymousClass1, this) == coroutineSingletons) {
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
