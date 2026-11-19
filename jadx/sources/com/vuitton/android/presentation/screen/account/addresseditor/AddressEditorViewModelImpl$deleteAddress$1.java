package com.vuitton.android.presentation.screen.account.addresseditor;

import com.vuitton.android.domain.usecase.account.address.DeleteAddressUseCase;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0006\u0012\u0002\b\u00030\u0001H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$deleteAddress$1", f = "AddressEditorViewModelImpl.kt", l = {448}, m = "invokeSuspend", v = 2)
final class AddressEditorViewModelImpl$deleteAddress$1 extends SuspendLambda implements Function1<Continuation<? super Result<?>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddressEditorViewModelImpl f52233c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressEditorViewModelImpl$deleteAddress$1(AddressEditorViewModelImpl addressEditorViewModelImpl, Continuation continuation) {
        super(1, continuation);
        this.f52233c = addressEditorViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new AddressEditorViewModelImpl$deleteAddress$1(this.f52233c, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((AddressEditorViewModelImpl$deleteAddress$1) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52232b;
        if (i2 == 0) {
            ResultKt.b(obj);
            AddressEditorViewModelImpl addressEditorViewModelImpl = this.f52233c;
            DeleteAddressUseCase deleteAddressUseCase = addressEditorViewModelImpl.f52221k;
            String str = addressEditorViewModelImpl.s;
            this.f52232b = 1;
            objA = deleteAddressUseCase.a(str, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        return new Result(objA);
    }
}
