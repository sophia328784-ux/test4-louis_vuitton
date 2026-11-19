package com.vuitton.core.infrastructure.data.forms.datasource;

import com.vuitton.core.infrastructure.data.forms.models.AccountActivationFormDto;
import com.vuitton.core.infrastructure.data.forms.models.AddressFormDto;
import com.vuitton.core.infrastructure.data.forms.models.AuthenticationFormDto;
import com.vuitton.core.infrastructure.data.forms.models.BookingPersonalInfoFormDto;
import com.vuitton.core.infrastructure.data.forms.models.CareServiceFormDto;
import com.vuitton.core.infrastructure.data.forms.models.CompleteProfileFormDto;
import com.vuitton.core.infrastructure.data.forms.models.DispatchIdentifierListDto;
import com.vuitton.core.infrastructure.data.forms.models.GuestAppointmentFormDto;
import com.vuitton.core.infrastructure.data.forms.models.ProfileFormDto;
import com.vuitton.core.infrastructure.data.forms.models.RegistrationFormDto;
import com.vuitton.core.infrastructure.data.forms.reader.FileReader;
import com.vuitton.core.infrastructure.data.forms.reader.FormFilePathProvider;
import defpackage.md;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/datasource/FormSystemDataSource;", "Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;", "Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;", "formFilePathProvider", "Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;", "fileReader", "<init>", "(Lcom/vuitton/core/infrastructure/data/forms/reader/FormFilePathProvider;Lcom/vuitton/core/infrastructure/data/forms/reader/FileReader;)V", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FormSystemDataSource implements FormDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FormFilePathProvider f65937a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FileReader f65938b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f65939c;

    @Inject
    public FormSystemDataSource(FormFilePathProvider formFilePathProvider, FileReader fileReader) {
        formFilePathProvider.getClass();
        fileReader.getClass();
        this.f65937a = formFilePathProvider;
        this.f65938b = fileReader;
        this.f65939c = new LinkedHashMap();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.datasource.FormDataSource
    public final Object a(String str, ContinuationImpl continuationImpl) throws Throwable {
        FormSystemDataSource$getSecondaryAddressForm$1 formSystemDataSource$getSecondaryAddressForm$1;
        String strA;
        if (continuationImpl instanceof FormSystemDataSource$getSecondaryAddressForm$1) {
            formSystemDataSource$getSecondaryAddressForm$1 = (FormSystemDataSource$getSecondaryAddressForm$1) continuationImpl;
            int i2 = formSystemDataSource$getSecondaryAddressForm$1.f66003f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formSystemDataSource$getSecondaryAddressForm$1.f66003f = i2 - Integer.MIN_VALUE;
            } else {
                formSystemDataSource$getSecondaryAddressForm$1 = new FormSystemDataSource$getSecondaryAddressForm$1(this, continuationImpl);
            }
        } else {
            formSystemDataSource$getSecondaryAddressForm$1 = new FormSystemDataSource$getSecondaryAddressForm$1(this, continuationImpl);
        }
        Object objF = formSystemDataSource$getSecondaryAddressForm$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formSystemDataSource$getSecondaryAddressForm$1.f66003f;
        if (i3 == 0) {
            ResultKt.b(objF);
            this.f65937a.getClass();
            str.getClass();
            strA = FormFilePathProvider.a(str, "secondaryAddressForm.json");
            Object obj = this.f65939c.get(strA);
            if (!(obj instanceof AddressFormDto)) {
                obj = null;
            }
            AddressFormDto addressFormDto = (AddressFormDto) obj;
            if (addressFormDto != null) {
                Result.Companion companion = Result.INSTANCE;
                return addressFormDto;
            }
            FileReader fileReader = this.f65938b;
            CoroutineDispatcher coroutineDispatcher = fileReader.f66138b;
            FormSystemDataSource$getSecondaryAddressFormqJBbalk$$inlined$getCachedFormgIAlus$1 formSystemDataSource$getSecondaryAddressFormqJBbalk$$inlined$getCachedFormgIAlus$1 = new FormSystemDataSource$getSecondaryAddressFormqJBbalk$$inlined$getCachedFormgIAlus$1(strA, fileReader, null);
            formSystemDataSource$getSecondaryAddressForm$1.f66000b = this;
            formSystemDataSource$getSecondaryAddressForm$1.f66001c = strA;
            formSystemDataSource$getSecondaryAddressForm$1.f66003f = 1;
            objF = BuildersKt.f(coroutineDispatcher, formSystemDataSource$getSecondaryAddressFormqJBbalk$$inlined$getCachedFormgIAlus$1, formSystemDataSource$getSecondaryAddressForm$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            String str2 = formSystemDataSource$getSecondaryAddressForm$1.f66001c;
            FormSystemDataSource formSystemDataSource = formSystemDataSource$getSecondaryAddressForm$1.f66000b;
            ResultKt.b(objF);
            strA = str2;
            this = formSystemDataSource;
        }
        Object obj2 = ((Result) objF).f71708b;
        if (!(obj2 instanceof Result.Failure)) {
            LinkedHashMap linkedHashMap = this.f65939c;
            obj2.getClass();
            linkedHashMap.put(strA, obj2);
        }
        return obj2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.datasource.FormDataSource
    public final Object b(ContinuationImpl continuationImpl) throws Throwable {
        FormSystemDataSource$getDispatchIdentifierList$1 formSystemDataSource$getDispatchIdentifierList$1;
        String str;
        if (continuationImpl instanceof FormSystemDataSource$getDispatchIdentifierList$1) {
            formSystemDataSource$getDispatchIdentifierList$1 = (FormSystemDataSource$getDispatchIdentifierList$1) continuationImpl;
            int i2 = formSystemDataSource$getDispatchIdentifierList$1.f65973f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formSystemDataSource$getDispatchIdentifierList$1.f65973f = i2 - Integer.MIN_VALUE;
            } else {
                formSystemDataSource$getDispatchIdentifierList$1 = new FormSystemDataSource$getDispatchIdentifierList$1(this, continuationImpl);
            }
        } else {
            formSystemDataSource$getDispatchIdentifierList$1 = new FormSystemDataSource$getDispatchIdentifierList$1(this, continuationImpl);
        }
        Object objF = formSystemDataSource$getDispatchIdentifierList$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formSystemDataSource$getDispatchIdentifierList$1.f65973f;
        if (i3 == 0) {
            ResultKt.b(objF);
            this.f65937a.getClass();
            str = "GeneratedAppSchemes/dispatchIdentifierList.json";
            Object obj = this.f65939c.get("GeneratedAppSchemes/dispatchIdentifierList.json");
            if (!(obj instanceof DispatchIdentifierListDto)) {
                obj = null;
            }
            DispatchIdentifierListDto dispatchIdentifierListDto = (DispatchIdentifierListDto) obj;
            if (dispatchIdentifierListDto != null) {
                Result.Companion companion = Result.INSTANCE;
                return dispatchIdentifierListDto;
            }
            FileReader fileReader = this.f65938b;
            CoroutineDispatcher coroutineDispatcher = fileReader.f66138b;
            FormSystemDataSource$getDispatchIdentifierListIoAF18A$$inlined$getCachedFormgIAlus$1 formSystemDataSource$getDispatchIdentifierListIoAF18A$$inlined$getCachedFormgIAlus$1 = new FormSystemDataSource$getDispatchIdentifierListIoAF18A$$inlined$getCachedFormgIAlus$1("GeneratedAppSchemes/dispatchIdentifierList.json", fileReader, null);
            formSystemDataSource$getDispatchIdentifierList$1.f65970b = this;
            formSystemDataSource$getDispatchIdentifierList$1.f65971c = "GeneratedAppSchemes/dispatchIdentifierList.json";
            formSystemDataSource$getDispatchIdentifierList$1.f65973f = 1;
            objF = BuildersKt.f(coroutineDispatcher, formSystemDataSource$getDispatchIdentifierListIoAF18A$$inlined$getCachedFormgIAlus$1, formSystemDataSource$getDispatchIdentifierList$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            String str2 = formSystemDataSource$getDispatchIdentifierList$1.f65971c;
            FormSystemDataSource formSystemDataSource = formSystemDataSource$getDispatchIdentifierList$1.f65970b;
            ResultKt.b(objF);
            str = str2;
            this = formSystemDataSource;
        }
        Object obj2 = ((Result) objF).f71708b;
        if (!(obj2 instanceof Result.Failure)) {
            LinkedHashMap linkedHashMap = this.f65939c;
            obj2.getClass();
            linkedHashMap.put(str, obj2);
        }
        return obj2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.datasource.FormDataSource
    public final Object c(String str, ContinuationImpl continuationImpl) throws Throwable {
        FormSystemDataSource$getMainAddressForm$1 formSystemDataSource$getMainAddressForm$1;
        String strA;
        if (continuationImpl instanceof FormSystemDataSource$getMainAddressForm$1) {
            formSystemDataSource$getMainAddressForm$1 = (FormSystemDataSource$getMainAddressForm$1) continuationImpl;
            int i2 = formSystemDataSource$getMainAddressForm$1.f65985f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formSystemDataSource$getMainAddressForm$1.f65985f = i2 - Integer.MIN_VALUE;
            } else {
                formSystemDataSource$getMainAddressForm$1 = new FormSystemDataSource$getMainAddressForm$1(this, continuationImpl);
            }
        } else {
            formSystemDataSource$getMainAddressForm$1 = new FormSystemDataSource$getMainAddressForm$1(this, continuationImpl);
        }
        Object objF = formSystemDataSource$getMainAddressForm$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formSystemDataSource$getMainAddressForm$1.f65985f;
        if (i3 == 0) {
            ResultKt.b(objF);
            this.f65937a.getClass();
            str.getClass();
            strA = FormFilePathProvider.a(str, "mainAddressForm.json");
            Object obj = this.f65939c.get(strA);
            if (!(obj instanceof AddressFormDto)) {
                obj = null;
            }
            AddressFormDto addressFormDto = (AddressFormDto) obj;
            if (addressFormDto != null) {
                Result.Companion companion = Result.INSTANCE;
                return addressFormDto;
            }
            FileReader fileReader = this.f65938b;
            CoroutineDispatcher coroutineDispatcher = fileReader.f66138b;
            FormSystemDataSource$getMainAddressFormqJBbalk$$inlined$getCachedFormgIAlus$1 formSystemDataSource$getMainAddressFormqJBbalk$$inlined$getCachedFormgIAlus$1 = new FormSystemDataSource$getMainAddressFormqJBbalk$$inlined$getCachedFormgIAlus$1(strA, fileReader, null);
            formSystemDataSource$getMainAddressForm$1.f65982b = this;
            formSystemDataSource$getMainAddressForm$1.f65983c = strA;
            formSystemDataSource$getMainAddressForm$1.f65985f = 1;
            objF = BuildersKt.f(coroutineDispatcher, formSystemDataSource$getMainAddressFormqJBbalk$$inlined$getCachedFormgIAlus$1, formSystemDataSource$getMainAddressForm$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            String str2 = formSystemDataSource$getMainAddressForm$1.f65983c;
            FormSystemDataSource formSystemDataSource = formSystemDataSource$getMainAddressForm$1.f65982b;
            ResultKt.b(objF);
            strA = str2;
            this = formSystemDataSource;
        }
        Object obj2 = ((Result) objF).f71708b;
        if (!(obj2 instanceof Result.Failure)) {
            LinkedHashMap linkedHashMap = this.f65939c;
            obj2.getClass();
            linkedHashMap.put(strA, obj2);
        }
        return obj2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.datasource.FormDataSource
    public final Object d(String str, ContinuationImpl continuationImpl) {
        FormSystemDataSource$getAccountActivationForm$1 formSystemDataSource$getAccountActivationForm$1;
        String strA;
        if (continuationImpl instanceof FormSystemDataSource$getAccountActivationForm$1) {
            formSystemDataSource$getAccountActivationForm$1 = (FormSystemDataSource$getAccountActivationForm$1) continuationImpl;
            int i2 = formSystemDataSource$getAccountActivationForm$1.f65943f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formSystemDataSource$getAccountActivationForm$1.f65943f = i2 - Integer.MIN_VALUE;
            } else {
                formSystemDataSource$getAccountActivationForm$1 = new FormSystemDataSource$getAccountActivationForm$1(this, continuationImpl);
            }
        } else {
            formSystemDataSource$getAccountActivationForm$1 = new FormSystemDataSource$getAccountActivationForm$1(this, continuationImpl);
        }
        Object objF = formSystemDataSource$getAccountActivationForm$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formSystemDataSource$getAccountActivationForm$1.f65943f;
        if (i3 == 0) {
            ResultKt.b(objF);
            this.f65937a.getClass();
            str.getClass();
            strA = FormFilePathProvider.a(str, "accountActivationForm.json");
            Object obj = this.f65939c.get(strA);
            if (!(obj instanceof AccountActivationFormDto)) {
                obj = null;
            }
            AccountActivationFormDto accountActivationFormDto = (AccountActivationFormDto) obj;
            if (accountActivationFormDto != null) {
                Result.Companion companion = Result.INSTANCE;
                return accountActivationFormDto;
            }
            FileReader fileReader = this.f65938b;
            CoroutineDispatcher coroutineDispatcher = fileReader.f66138b;
            FormSystemDataSource$getAccountActivationFormqJBbalk$$inlined$getCachedFormgIAlus$1 formSystemDataSource$getAccountActivationFormqJBbalk$$inlined$getCachedFormgIAlus$1 = new FormSystemDataSource$getAccountActivationFormqJBbalk$$inlined$getCachedFormgIAlus$1(strA, fileReader, null);
            formSystemDataSource$getAccountActivationForm$1.f65940b = this;
            formSystemDataSource$getAccountActivationForm$1.f65941c = strA;
            formSystemDataSource$getAccountActivationForm$1.f65943f = 1;
            objF = BuildersKt.f(coroutineDispatcher, formSystemDataSource$getAccountActivationFormqJBbalk$$inlined$getCachedFormgIAlus$1, formSystemDataSource$getAccountActivationForm$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            String str2 = formSystemDataSource$getAccountActivationForm$1.f65941c;
            FormSystemDataSource formSystemDataSource = formSystemDataSource$getAccountActivationForm$1.f65940b;
            ResultKt.b(objF);
            strA = str2;
            this = formSystemDataSource;
        }
        Object obj2 = ((Result) objF).f71708b;
        if (!(obj2 instanceof Result.Failure)) {
            LinkedHashMap linkedHashMap = this.f65939c;
            obj2.getClass();
            linkedHashMap.put(strA, obj2);
        }
        return obj2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.datasource.FormDataSource
    public final Object e(String str, ContinuationImpl continuationImpl) throws Throwable {
        FormSystemDataSource$getProfileForm$1 formSystemDataSource$getProfileForm$1;
        String strA;
        if (continuationImpl instanceof FormSystemDataSource$getProfileForm$1) {
            formSystemDataSource$getProfileForm$1 = (FormSystemDataSource$getProfileForm$1) continuationImpl;
            int i2 = formSystemDataSource$getProfileForm$1.f65991f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formSystemDataSource$getProfileForm$1.f65991f = i2 - Integer.MIN_VALUE;
            } else {
                formSystemDataSource$getProfileForm$1 = new FormSystemDataSource$getProfileForm$1(this, continuationImpl);
            }
        } else {
            formSystemDataSource$getProfileForm$1 = new FormSystemDataSource$getProfileForm$1(this, continuationImpl);
        }
        Object objF = formSystemDataSource$getProfileForm$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formSystemDataSource$getProfileForm$1.f65991f;
        if (i3 == 0) {
            ResultKt.b(objF);
            this.f65937a.getClass();
            str.getClass();
            strA = FormFilePathProvider.a(str, "profileForm.json");
            Object obj = this.f65939c.get(strA);
            if (!(obj instanceof ProfileFormDto)) {
                obj = null;
            }
            ProfileFormDto profileFormDto = (ProfileFormDto) obj;
            if (profileFormDto != null) {
                Result.Companion companion = Result.INSTANCE;
                return profileFormDto;
            }
            FileReader fileReader = this.f65938b;
            CoroutineDispatcher coroutineDispatcher = fileReader.f66138b;
            FormSystemDataSource$getProfileFormqJBbalk$$inlined$getCachedFormgIAlus$1 formSystemDataSource$getProfileFormqJBbalk$$inlined$getCachedFormgIAlus$1 = new FormSystemDataSource$getProfileFormqJBbalk$$inlined$getCachedFormgIAlus$1(strA, fileReader, null);
            formSystemDataSource$getProfileForm$1.f65988b = this;
            formSystemDataSource$getProfileForm$1.f65989c = strA;
            formSystemDataSource$getProfileForm$1.f65991f = 1;
            objF = BuildersKt.f(coroutineDispatcher, formSystemDataSource$getProfileFormqJBbalk$$inlined$getCachedFormgIAlus$1, formSystemDataSource$getProfileForm$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            String str2 = formSystemDataSource$getProfileForm$1.f65989c;
            FormSystemDataSource formSystemDataSource = formSystemDataSource$getProfileForm$1.f65988b;
            ResultKt.b(objF);
            strA = str2;
            this = formSystemDataSource;
        }
        Object obj2 = ((Result) objF).f71708b;
        if (!(obj2 instanceof Result.Failure)) {
            LinkedHashMap linkedHashMap = this.f65939c;
            obj2.getClass();
            linkedHashMap.put(strA, obj2);
        }
        return obj2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.datasource.FormDataSource
    public final Object f(String str, ContinuationImpl continuationImpl) {
        FormSystemDataSource$getAuthenticationForm$1 formSystemDataSource$getAuthenticationForm$1;
        String strA;
        if (continuationImpl instanceof FormSystemDataSource$getAuthenticationForm$1) {
            formSystemDataSource$getAuthenticationForm$1 = (FormSystemDataSource$getAuthenticationForm$1) continuationImpl;
            int i2 = formSystemDataSource$getAuthenticationForm$1.f65949f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formSystemDataSource$getAuthenticationForm$1.f65949f = i2 - Integer.MIN_VALUE;
            } else {
                formSystemDataSource$getAuthenticationForm$1 = new FormSystemDataSource$getAuthenticationForm$1(this, continuationImpl);
            }
        } else {
            formSystemDataSource$getAuthenticationForm$1 = new FormSystemDataSource$getAuthenticationForm$1(this, continuationImpl);
        }
        Object objF = formSystemDataSource$getAuthenticationForm$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formSystemDataSource$getAuthenticationForm$1.f65949f;
        if (i3 == 0) {
            ResultKt.b(objF);
            this.f65937a.getClass();
            str.getClass();
            strA = FormFilePathProvider.a(str, "authenticationForm.json");
            Object obj = this.f65939c.get(strA);
            if (!(obj instanceof AuthenticationFormDto)) {
                obj = null;
            }
            AuthenticationFormDto authenticationFormDto = (AuthenticationFormDto) obj;
            if (authenticationFormDto != null) {
                Result.Companion companion = Result.INSTANCE;
                return authenticationFormDto;
            }
            FileReader fileReader = this.f65938b;
            CoroutineDispatcher coroutineDispatcher = fileReader.f66138b;
            FormSystemDataSource$getAuthenticationFormqJBbalk$$inlined$getCachedFormgIAlus$1 formSystemDataSource$getAuthenticationFormqJBbalk$$inlined$getCachedFormgIAlus$1 = new FormSystemDataSource$getAuthenticationFormqJBbalk$$inlined$getCachedFormgIAlus$1(strA, fileReader, null);
            formSystemDataSource$getAuthenticationForm$1.f65946b = this;
            formSystemDataSource$getAuthenticationForm$1.f65947c = strA;
            formSystemDataSource$getAuthenticationForm$1.f65949f = 1;
            objF = BuildersKt.f(coroutineDispatcher, formSystemDataSource$getAuthenticationFormqJBbalk$$inlined$getCachedFormgIAlus$1, formSystemDataSource$getAuthenticationForm$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            String str2 = formSystemDataSource$getAuthenticationForm$1.f65947c;
            FormSystemDataSource formSystemDataSource = formSystemDataSource$getAuthenticationForm$1.f65946b;
            ResultKt.b(objF);
            strA = str2;
            this = formSystemDataSource;
        }
        Object obj2 = ((Result) objF).f71708b;
        if (!(obj2 instanceof Result.Failure)) {
            LinkedHashMap linkedHashMap = this.f65939c;
            obj2.getClass();
            linkedHashMap.put(strA, obj2);
        }
        return obj2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.datasource.FormDataSource
    public final Object g(String str, ContinuationImpl continuationImpl) throws Throwable {
        FormSystemDataSource$getBookingForm$1 formSystemDataSource$getBookingForm$1;
        String strA;
        if (continuationImpl instanceof FormSystemDataSource$getBookingForm$1) {
            formSystemDataSource$getBookingForm$1 = (FormSystemDataSource$getBookingForm$1) continuationImpl;
            int i2 = formSystemDataSource$getBookingForm$1.f65955f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formSystemDataSource$getBookingForm$1.f65955f = i2 - Integer.MIN_VALUE;
            } else {
                formSystemDataSource$getBookingForm$1 = new FormSystemDataSource$getBookingForm$1(this, continuationImpl);
            }
        } else {
            formSystemDataSource$getBookingForm$1 = new FormSystemDataSource$getBookingForm$1(this, continuationImpl);
        }
        Object objF = formSystemDataSource$getBookingForm$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formSystemDataSource$getBookingForm$1.f65955f;
        if (i3 == 0) {
            ResultKt.b(objF);
            this.f65937a.getClass();
            str.getClass();
            strA = FormFilePathProvider.a(str, "bookingForm.json");
            Object obj = this.f65939c.get(strA);
            if (!(obj instanceof BookingPersonalInfoFormDto)) {
                obj = null;
            }
            BookingPersonalInfoFormDto bookingPersonalInfoFormDto = (BookingPersonalInfoFormDto) obj;
            if (bookingPersonalInfoFormDto != null) {
                Result.Companion companion = Result.INSTANCE;
                return bookingPersonalInfoFormDto;
            }
            FileReader fileReader = this.f65938b;
            CoroutineDispatcher coroutineDispatcher = fileReader.f66138b;
            FormSystemDataSource$getBookingFormqJBbalk$$inlined$getCachedFormgIAlus$1 formSystemDataSource$getBookingFormqJBbalk$$inlined$getCachedFormgIAlus$1 = new FormSystemDataSource$getBookingFormqJBbalk$$inlined$getCachedFormgIAlus$1(strA, fileReader, null);
            formSystemDataSource$getBookingForm$1.f65952b = this;
            formSystemDataSource$getBookingForm$1.f65953c = strA;
            formSystemDataSource$getBookingForm$1.f65955f = 1;
            objF = BuildersKt.f(coroutineDispatcher, formSystemDataSource$getBookingFormqJBbalk$$inlined$getCachedFormgIAlus$1, formSystemDataSource$getBookingForm$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            String str2 = formSystemDataSource$getBookingForm$1.f65953c;
            FormSystemDataSource formSystemDataSource = formSystemDataSource$getBookingForm$1.f65952b;
            ResultKt.b(objF);
            strA = str2;
            this = formSystemDataSource;
        }
        Object obj2 = ((Result) objF).f71708b;
        if (!(obj2 instanceof Result.Failure)) {
            LinkedHashMap linkedHashMap = this.f65939c;
            obj2.getClass();
            linkedHashMap.put(strA, obj2);
        }
        return obj2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.datasource.FormDataSource
    public final Object h(String str, ContinuationImpl continuationImpl) throws Throwable {
        FormSystemDataSource$getCompleteProfileForm$1 formSystemDataSource$getCompleteProfileForm$1;
        String strA;
        if (continuationImpl instanceof FormSystemDataSource$getCompleteProfileForm$1) {
            formSystemDataSource$getCompleteProfileForm$1 = (FormSystemDataSource$getCompleteProfileForm$1) continuationImpl;
            int i2 = formSystemDataSource$getCompleteProfileForm$1.f65967f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formSystemDataSource$getCompleteProfileForm$1.f65967f = i2 - Integer.MIN_VALUE;
            } else {
                formSystemDataSource$getCompleteProfileForm$1 = new FormSystemDataSource$getCompleteProfileForm$1(this, continuationImpl);
            }
        } else {
            formSystemDataSource$getCompleteProfileForm$1 = new FormSystemDataSource$getCompleteProfileForm$1(this, continuationImpl);
        }
        Object objF = formSystemDataSource$getCompleteProfileForm$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formSystemDataSource$getCompleteProfileForm$1.f65967f;
        if (i3 == 0) {
            ResultKt.b(objF);
            this.f65937a.getClass();
            str.getClass();
            strA = FormFilePathProvider.a(str, "completeProfileForm.json");
            Object obj = this.f65939c.get(strA);
            if (!(obj instanceof CompleteProfileFormDto)) {
                obj = null;
            }
            CompleteProfileFormDto completeProfileFormDto = (CompleteProfileFormDto) obj;
            if (completeProfileFormDto != null) {
                Result.Companion companion = Result.INSTANCE;
                return completeProfileFormDto;
            }
            FileReader fileReader = this.f65938b;
            CoroutineDispatcher coroutineDispatcher = fileReader.f66138b;
            FormSystemDataSource$getCompleteProfileFormqJBbalk$$inlined$getCachedFormgIAlus$1 formSystemDataSource$getCompleteProfileFormqJBbalk$$inlined$getCachedFormgIAlus$1 = new FormSystemDataSource$getCompleteProfileFormqJBbalk$$inlined$getCachedFormgIAlus$1(strA, fileReader, null);
            formSystemDataSource$getCompleteProfileForm$1.f65964b = this;
            formSystemDataSource$getCompleteProfileForm$1.f65965c = strA;
            formSystemDataSource$getCompleteProfileForm$1.f65967f = 1;
            objF = BuildersKt.f(coroutineDispatcher, formSystemDataSource$getCompleteProfileFormqJBbalk$$inlined$getCachedFormgIAlus$1, formSystemDataSource$getCompleteProfileForm$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            String str2 = formSystemDataSource$getCompleteProfileForm$1.f65965c;
            FormSystemDataSource formSystemDataSource = formSystemDataSource$getCompleteProfileForm$1.f65964b;
            ResultKt.b(objF);
            strA = str2;
            this = formSystemDataSource;
        }
        Object obj2 = ((Result) objF).f71708b;
        if (!(obj2 instanceof Result.Failure)) {
            LinkedHashMap linkedHashMap = this.f65939c;
            obj2.getClass();
            linkedHashMap.put(strA, obj2);
        }
        return obj2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.datasource.FormDataSource
    public final Object i(String str, ContinuationImpl continuationImpl) throws Throwable {
        FormSystemDataSource$getCareServiceForm$1 formSystemDataSource$getCareServiceForm$1;
        String strA;
        if (continuationImpl instanceof FormSystemDataSource$getCareServiceForm$1) {
            formSystemDataSource$getCareServiceForm$1 = (FormSystemDataSource$getCareServiceForm$1) continuationImpl;
            int i2 = formSystemDataSource$getCareServiceForm$1.f65961f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formSystemDataSource$getCareServiceForm$1.f65961f = i2 - Integer.MIN_VALUE;
            } else {
                formSystemDataSource$getCareServiceForm$1 = new FormSystemDataSource$getCareServiceForm$1(this, continuationImpl);
            }
        } else {
            formSystemDataSource$getCareServiceForm$1 = new FormSystemDataSource$getCareServiceForm$1(this, continuationImpl);
        }
        Object objF = formSystemDataSource$getCareServiceForm$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formSystemDataSource$getCareServiceForm$1.f65961f;
        if (i3 == 0) {
            ResultKt.b(objF);
            this.f65937a.getClass();
            str.getClass();
            strA = FormFilePathProvider.a(str, "careServiceForm.json");
            Object obj = this.f65939c.get(strA);
            if (!(obj instanceof CareServiceFormDto)) {
                obj = null;
            }
            CareServiceFormDto careServiceFormDto = (CareServiceFormDto) obj;
            if (careServiceFormDto != null) {
                Result.Companion companion = Result.INSTANCE;
                return careServiceFormDto;
            }
            FileReader fileReader = this.f65938b;
            CoroutineDispatcher coroutineDispatcher = fileReader.f66138b;
            FormSystemDataSource$getCareServiceFormqJBbalk$$inlined$getCachedFormgIAlus$1 formSystemDataSource$getCareServiceFormqJBbalk$$inlined$getCachedFormgIAlus$1 = new FormSystemDataSource$getCareServiceFormqJBbalk$$inlined$getCachedFormgIAlus$1(strA, fileReader, null);
            formSystemDataSource$getCareServiceForm$1.f65958b = this;
            formSystemDataSource$getCareServiceForm$1.f65959c = strA;
            formSystemDataSource$getCareServiceForm$1.f65961f = 1;
            objF = BuildersKt.f(coroutineDispatcher, formSystemDataSource$getCareServiceFormqJBbalk$$inlined$getCachedFormgIAlus$1, formSystemDataSource$getCareServiceForm$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            String str2 = formSystemDataSource$getCareServiceForm$1.f65959c;
            FormSystemDataSource formSystemDataSource = formSystemDataSource$getCareServiceForm$1.f65958b;
            ResultKt.b(objF);
            strA = str2;
            this = formSystemDataSource;
        }
        Object obj2 = ((Result) objF).f71708b;
        if (!(obj2 instanceof Result.Failure)) {
            LinkedHashMap linkedHashMap = this.f65939c;
            obj2.getClass();
            linkedHashMap.put(strA, obj2);
        }
        return obj2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.datasource.FormDataSource
    public final Object j(String str, ContinuationImpl continuationImpl) throws Throwable {
        FormSystemDataSource$getRegistrationForm$1 formSystemDataSource$getRegistrationForm$1;
        String strA;
        if (continuationImpl instanceof FormSystemDataSource$getRegistrationForm$1) {
            formSystemDataSource$getRegistrationForm$1 = (FormSystemDataSource$getRegistrationForm$1) continuationImpl;
            int i2 = formSystemDataSource$getRegistrationForm$1.f65997f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formSystemDataSource$getRegistrationForm$1.f65997f = i2 - Integer.MIN_VALUE;
            } else {
                formSystemDataSource$getRegistrationForm$1 = new FormSystemDataSource$getRegistrationForm$1(this, continuationImpl);
            }
        } else {
            formSystemDataSource$getRegistrationForm$1 = new FormSystemDataSource$getRegistrationForm$1(this, continuationImpl);
        }
        Object objF = formSystemDataSource$getRegistrationForm$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formSystemDataSource$getRegistrationForm$1.f65997f;
        if (i3 == 0) {
            ResultKt.b(objF);
            this.f65937a.getClass();
            str.getClass();
            strA = FormFilePathProvider.a(str, "registerForm.json");
            Object obj = this.f65939c.get(strA);
            if (!(obj instanceof RegistrationFormDto)) {
                obj = null;
            }
            RegistrationFormDto registrationFormDto = (RegistrationFormDto) obj;
            if (registrationFormDto != null) {
                Result.Companion companion = Result.INSTANCE;
                return registrationFormDto;
            }
            FileReader fileReader = this.f65938b;
            CoroutineDispatcher coroutineDispatcher = fileReader.f66138b;
            FormSystemDataSource$getRegistrationFormqJBbalk$$inlined$getCachedFormgIAlus$1 formSystemDataSource$getRegistrationFormqJBbalk$$inlined$getCachedFormgIAlus$1 = new FormSystemDataSource$getRegistrationFormqJBbalk$$inlined$getCachedFormgIAlus$1(strA, fileReader, null);
            formSystemDataSource$getRegistrationForm$1.f65994b = this;
            formSystemDataSource$getRegistrationForm$1.f65995c = strA;
            formSystemDataSource$getRegistrationForm$1.f65997f = 1;
            objF = BuildersKt.f(coroutineDispatcher, formSystemDataSource$getRegistrationFormqJBbalk$$inlined$getCachedFormgIAlus$1, formSystemDataSource$getRegistrationForm$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            String str2 = formSystemDataSource$getRegistrationForm$1.f65995c;
            FormSystemDataSource formSystemDataSource = formSystemDataSource$getRegistrationForm$1.f65994b;
            ResultKt.b(objF);
            strA = str2;
            this = formSystemDataSource;
        }
        Object obj2 = ((Result) objF).f71708b;
        if (!(obj2 instanceof Result.Failure)) {
            LinkedHashMap linkedHashMap = this.f65939c;
            obj2.getClass();
            linkedHashMap.put(strA, obj2);
        }
        return obj2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.datasource.FormDataSource
    public final Object k(String str, ContinuationImpl continuationImpl) throws Throwable {
        FormSystemDataSource$getGuestAppointmentForm$1 formSystemDataSource$getGuestAppointmentForm$1;
        String strA;
        if (continuationImpl instanceof FormSystemDataSource$getGuestAppointmentForm$1) {
            formSystemDataSource$getGuestAppointmentForm$1 = (FormSystemDataSource$getGuestAppointmentForm$1) continuationImpl;
            int i2 = formSystemDataSource$getGuestAppointmentForm$1.f65979f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formSystemDataSource$getGuestAppointmentForm$1.f65979f = i2 - Integer.MIN_VALUE;
            } else {
                formSystemDataSource$getGuestAppointmentForm$1 = new FormSystemDataSource$getGuestAppointmentForm$1(this, continuationImpl);
            }
        } else {
            formSystemDataSource$getGuestAppointmentForm$1 = new FormSystemDataSource$getGuestAppointmentForm$1(this, continuationImpl);
        }
        Object objF = formSystemDataSource$getGuestAppointmentForm$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formSystemDataSource$getGuestAppointmentForm$1.f65979f;
        if (i3 == 0) {
            ResultKt.b(objF);
            this.f65937a.getClass();
            str.getClass();
            strA = FormFilePathProvider.a(str, "guestAppointmentForm.json");
            Object obj = this.f65939c.get(strA);
            if (!(obj instanceof GuestAppointmentFormDto)) {
                obj = null;
            }
            GuestAppointmentFormDto guestAppointmentFormDto = (GuestAppointmentFormDto) obj;
            if (guestAppointmentFormDto != null) {
                Result.Companion companion = Result.INSTANCE;
                return guestAppointmentFormDto;
            }
            FileReader fileReader = this.f65938b;
            CoroutineDispatcher coroutineDispatcher = fileReader.f66138b;
            FormSystemDataSource$getGuestAppointmentFormqJBbalk$$inlined$getCachedFormgIAlus$1 formSystemDataSource$getGuestAppointmentFormqJBbalk$$inlined$getCachedFormgIAlus$1 = new FormSystemDataSource$getGuestAppointmentFormqJBbalk$$inlined$getCachedFormgIAlus$1(strA, fileReader, null);
            formSystemDataSource$getGuestAppointmentForm$1.f65976b = this;
            formSystemDataSource$getGuestAppointmentForm$1.f65977c = strA;
            formSystemDataSource$getGuestAppointmentForm$1.f65979f = 1;
            objF = BuildersKt.f(coroutineDispatcher, formSystemDataSource$getGuestAppointmentFormqJBbalk$$inlined$getCachedFormgIAlus$1, formSystemDataSource$getGuestAppointmentForm$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            String str2 = formSystemDataSource$getGuestAppointmentForm$1.f65977c;
            FormSystemDataSource formSystemDataSource = formSystemDataSource$getGuestAppointmentForm$1.f65976b;
            ResultKt.b(objF);
            strA = str2;
            this = formSystemDataSource;
        }
        Object obj2 = ((Result) objF).f71708b;
        if (!(obj2 instanceof Result.Failure)) {
            LinkedHashMap linkedHashMap = this.f65939c;
            obj2.getClass();
            linkedHashMap.put(strA, obj2);
        }
        return obj2;
    }
}
