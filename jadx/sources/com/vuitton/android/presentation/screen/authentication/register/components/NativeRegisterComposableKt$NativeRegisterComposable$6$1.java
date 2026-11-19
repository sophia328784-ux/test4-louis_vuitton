package com.vuitton.android.presentation.screen.authentication.register.components;

import androidx.navigation.NavHostController;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AutocompleteAddressResultUiModel;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel;
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
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterComposableKt$NativeRegisterComposable$6$1", f = "NativeRegisterComposable.kt", l = {123}, m = "invokeSuspend", v = 2)
final class NativeRegisterComposableKt$NativeRegisterComposable$6$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53844b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddressAutocompleteViewModel f53845c;
    public final /* synthetic */ NativeRegisterViewModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ NavHostController f53846e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterComposableKt$NativeRegisterComposable$6$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "addressDetails", "Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterComposableKt$NativeRegisterComposable$6$1$1", f = "NativeRegisterComposable.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<AutocompleteAddressResultUiModel, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f53847b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ NativeRegisterViewModel f53848c;
        public final /* synthetic */ AddressAutocompleteViewModel d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ NavHostController f53849e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(NavHostController navHostController, AddressAutocompleteViewModel addressAutocompleteViewModel, NativeRegisterViewModel nativeRegisterViewModel, Continuation continuation) {
            super(2, continuation);
            this.f53848c = nativeRegisterViewModel;
            this.d = addressAutocompleteViewModel;
            this.f53849e = navHostController;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f53849e, this.d, this.f53848c, continuation);
            anonymousClass1.f53847b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((AutocompleteAddressResultUiModel) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AutocompleteAddressResultUiModel autocompleteAddressResultUiModel = (AutocompleteAddressResultUiModel) this.f53847b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            this.f53848c.j4(autocompleteAddressResultUiModel);
            this.d.n0();
            this.f53849e.e();
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeRegisterComposableKt$NativeRegisterComposable$6$1(NavHostController navHostController, AddressAutocompleteViewModel addressAutocompleteViewModel, NativeRegisterViewModel nativeRegisterViewModel, Continuation continuation) {
        super(2, continuation);
        this.f53845c = addressAutocompleteViewModel;
        this.d = nativeRegisterViewModel;
        this.f53846e = navHostController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeRegisterComposableKt$NativeRegisterComposable$6$1(this.f53846e, this.f53845c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeRegisterComposableKt$NativeRegisterComposable$6$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53844b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AddressAutocompleteViewModel addressAutocompleteViewModel = this.f53845c;
            Flow l = addressAutocompleteViewModel.getL();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f53846e, addressAutocompleteViewModel, this.d, null);
            this.f53844b = 1;
            if (FlowKt.g(l, anonymousClass1, this) == coroutineSingletons) {
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
