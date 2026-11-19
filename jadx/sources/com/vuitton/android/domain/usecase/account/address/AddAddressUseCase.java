package com.vuitton.android.domain.usecase.account.address;

import com.vuitton.android.domain.repository.AddressRepository;
import com.vuitton.foundation.model.domain.model.account.address.AddressRequestBody;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/account/address/AddAddressUseCase;", "", "Lcom/vuitton/android/domain/repository/AddressRepository;", "addressRepository", "<init>", "(Lcom/vuitton/android/domain/repository/AddressRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddAddressUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AddressRepository f49067a;

    @Inject
    public AddAddressUseCase(AddressRepository addressRepository) {
        addressRepository.getClass();
        this.f49067a = addressRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(AddressRequestBody addressRequestBody, ContinuationImpl continuationImpl) {
        AddAddressUseCase$run$1 addAddressUseCase$run$1;
        if (continuationImpl instanceof AddAddressUseCase$run$1) {
            addAddressUseCase$run$1 = (AddAddressUseCase$run$1) continuationImpl;
            int i2 = addAddressUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addAddressUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addAddressUseCase$run$1 = new AddAddressUseCase$run$1(this, continuationImpl);
            }
        } else {
            addAddressUseCase$run$1 = new AddAddressUseCase$run$1(this, continuationImpl);
        }
        Object obj = addAddressUseCase$run$1.f49068b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addAddressUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            addAddressUseCase$run$1.d = 1;
            Object objF = this.f49067a.f(addressRequestBody, addAddressUseCase$run$1);
            return objF == coroutineSingletons ? coroutineSingletons : objF;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
