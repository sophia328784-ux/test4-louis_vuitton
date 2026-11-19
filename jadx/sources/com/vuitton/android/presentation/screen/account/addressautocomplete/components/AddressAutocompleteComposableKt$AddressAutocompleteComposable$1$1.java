package com.vuitton.android.presentation.screen.account.addressautocomplete.components;

import androidx.compose.runtime.State;
import com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AddressAutocompleteScreenContext;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AutocompleteAddressResultUiModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.tracking.AddressAutocompleteTrackingUiModel;
import com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModel;
import com.vuitton.android.presentation.screen.account.addresseditor.models.AddressEditorViewState;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthEntryPoint;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterAddressTrackingUiModel;
import defpackage.md;
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
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addressautocomplete.components.AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1", f = "AddressAutocompleteComposable.kt", l = {104}, m = "invokeSuspend", v = 2)
final class AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52078b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddressAutocompleteViewModel f52079c;
    public final /* synthetic */ AddressAutocompleteScreenContext d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f52080e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ TrackingAuthOrigin f52081f;
    public final /* synthetic */ TrackingAuthEntryPoint g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f52082h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f52083i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ State f52084j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ AddressEditorViewModel f52085k;
    public final /* synthetic */ Function0 l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1(AddressAutocompleteViewModel addressAutocompleteViewModel, AddressAutocompleteScreenContext addressAutocompleteScreenContext, Function1 function1, TrackingAuthOrigin trackingAuthOrigin, TrackingAuthEntryPoint trackingAuthEntryPoint, String str, String str2, State state, AddressEditorViewModel addressEditorViewModel, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.f52079c = addressAutocompleteViewModel;
        this.d = addressAutocompleteScreenContext;
        this.f52080e = function1;
        this.f52081f = trackingAuthOrigin;
        this.g = trackingAuthEntryPoint;
        this.f52082h = str;
        this.f52083i = str2;
        this.f52084j = state;
        this.f52085k = addressEditorViewModel;
        this.l = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1(this.f52079c, this.d, this.f52080e, this.f52081f, this.g, this.f52082h, this.f52083i, this.f52084j, this.f52085k, this.l, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52078b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AddressAutocompleteScreenContext addressAutocompleteScreenContext = AddressAutocompleteScreenContext.NATIVE_REGISTER_ADDRESS;
            AddressAutocompleteViewModel addressAutocompleteViewModel = this.f52079c;
            AddressAutocompleteScreenContext addressAutocompleteScreenContext2 = this.d;
            if (addressAutocompleteScreenContext2 == addressAutocompleteScreenContext) {
                Function1 function1 = this.f52080e;
                if (function1 != null) {
                    function1.invoke(new NativeRegisterAddressTrackingUiModel.AddressSearchScreen(this.f52081f, this.g));
                }
            } else {
                addressAutocompleteViewModel.N1(AddressAutocompleteTrackingUiModel.AddressAutocompletePage.f52129a);
            }
            String str = this.f52082h;
            State state = this.f52084j;
            if (str == null) {
                str = ((AddressEditorViewState) state.getF10755b()).f52272e.f52265a;
            }
            addressAutocompleteViewModel.pa(str, addressAutocompleteScreenContext2);
            String str2 = this.f52083i;
            if (str2 == null) {
                str2 = ((AddressEditorViewState) state.getF10755b()).f52272e.f52266b;
            }
            addressAutocompleteViewModel.X5(str2);
            addressAutocompleteViewModel.zb(new AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1$1$1(1, addressAutocompleteViewModel, AddressAutocompleteViewModel.class, "updateSearchBarValue", "updateSearchBarValue(Ljava/lang/String;)V", 0));
            Flow l = addressAutocompleteViewModel.getL();
            final AddressEditorViewModel addressEditorViewModel = this.f52085k;
            final Function0 function0 = this.l;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.account.addressautocomplete.components.AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1$1$2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    addressEditorViewModel.w8((AutocompleteAddressResultUiModel) obj2, true);
                    function0.mo47invoke();
                    return Unit.f71739a;
                }
            };
            this.f52078b = 1;
            if (l.f(flowCollector, this) == coroutineSingletons) {
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
