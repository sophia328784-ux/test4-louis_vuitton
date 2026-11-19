package com.vuitton.android.presentation.screen.account.addressautocomplete;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AutocompleteAddressResultUiModel;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.AutocompleteAddressResultUiModelKt;
import com.vuitton.android.presentation.screen.account.addressautocomplete.model.PlaceAutocompleteUiModel;
import defpackage.md;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addressautocomplete.AddressAutocompleteViewModelImpl$selectAutocompleteResult$1", f = "AddressAutocompleteViewModelImpl.kt", l = {212}, m = "invokeSuspend", v = 2)
final class AddressAutocompleteViewModelImpl$selectAutocompleteResult$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52070b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddressAutocompleteViewModelImpl f52071c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressAutocompleteViewModelImpl$selectAutocompleteResult$1(AddressAutocompleteViewModelImpl addressAutocompleteViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f52071c = addressAutocompleteViewModelImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AddressAutocompleteViewModelImpl$selectAutocompleteResult$1(this.f52071c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AddressAutocompleteViewModelImpl$selectAutocompleteResult$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        Object next;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52070b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AddressAutocompleteViewModelImpl addressAutocompleteViewModelImpl = this.f52071c;
            Iterator it = ((Iterable) addressAutocompleteViewModelImpl.f52049h.getValue()).iterator();
            do {
                boolean zHasNext = it.hasNext();
                str = this.d;
                if (!zHasNext) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!Intrinsics.c(((PlaceAutocompleteUiModel) next).f52126a, str));
            PlaceAutocompleteUiModel placeAutocompleteUiModel = (PlaceAutocompleteUiModel) next;
            if ((placeAutocompleteUiModel != null ? placeAutocompleteUiModel.d : null) != null) {
                BufferedChannel bufferedChannel = addressAutocompleteViewModelImpl.f52052k;
                AutocompleteAddressResultUiModel autocompleteAddressResultUiModelA = AutocompleteAddressResultUiModelKt.a(placeAutocompleteUiModel.d);
                this.f52070b = 1;
                if (bufferedChannel.u(autocompleteAddressResultUiModelA, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                str.getClass();
                BuildersKt.c(ViewModelKt.a(addressAutocompleteViewModelImpl), null, null, new AddressAutocompleteViewModelImpl$getAddressDetails$1(addressAutocompleteViewModelImpl, str, null), 3);
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
