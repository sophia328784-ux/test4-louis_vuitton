package com.vuitton.core.infrastructure.data.forms.repository;

import com.vuitton.core.infrastructure.data.forms.datasource.FormDataSource;
import com.vuitton.core.infrastructure.data.forms.models.AccountActivationFormDto;
import com.vuitton.core.infrastructure.data.forms.models.AddressFormDto;
import com.vuitton.core.infrastructure.data.forms.models.AuthenticationFormDto;
import com.vuitton.core.infrastructure.data.forms.models.BookingPersonalInfoFormDto;
import com.vuitton.core.infrastructure.data.forms.models.CareServiceFormDto;
import com.vuitton.core.infrastructure.data.forms.models.CompleteProfileFormDto;
import com.vuitton.core.infrastructure.data.forms.models.DispatchIdentifierListDto;
import com.vuitton.core.infrastructure.data.forms.models.FormMapperKt;
import com.vuitton.core.infrastructure.data.forms.models.GuestAppointmentFormDto;
import com.vuitton.core.infrastructure.data.forms.models.ProfileFormDto;
import com.vuitton.core.infrastructure.data.forms.models.RegistrationFormDto;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.LanguageTagWithUnderscore;
import com.vuitton.foundation.model.domain.model.forms.FormDispatchId;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepositoryImpl;", "Lcom/vuitton/core/infrastructure/data/forms/repository/FormRepository;", "Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;", "formSystemDataSource", "<init>", "(Lcom/vuitton/core/infrastructure/data/forms/datasource/FormDataSource;)V", "forms"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FormRepositoryImpl implements FormRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FormDataSource f66149a;

    @Inject
    public FormRepositoryImpl(FormDataSource formDataSource) {
        formDataSource.getClass();
        this.f66149a = formDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.repository.FormRepository
    public final Object a(String str, ContinuationImpl continuationImpl) throws Throwable {
        FormRepositoryImpl$getSecondaryAddressForm$1 formRepositoryImpl$getSecondaryAddressForm$1;
        Object failure;
        Object objA;
        if (continuationImpl instanceof FormRepositoryImpl$getSecondaryAddressForm$1) {
            formRepositoryImpl$getSecondaryAddressForm$1 = (FormRepositoryImpl$getSecondaryAddressForm$1) continuationImpl;
            int i2 = formRepositoryImpl$getSecondaryAddressForm$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formRepositoryImpl$getSecondaryAddressForm$1.d = i2 - Integer.MIN_VALUE;
            } else {
                formRepositoryImpl$getSecondaryAddressForm$1 = new FormRepositoryImpl$getSecondaryAddressForm$1(this, continuationImpl);
            }
        } else {
            formRepositoryImpl$getSecondaryAddressForm$1 = new FormRepositoryImpl$getSecondaryAddressForm$1(this, continuationImpl);
        }
        Object obj = formRepositoryImpl$getSecondaryAddressForm$1.f66170b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formRepositoryImpl$getSecondaryAddressForm$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                FormDataSource formDataSource = this.f66149a;
                formRepositoryImpl$getSecondaryAddressForm$1.d = 1;
                objA = formDataSource.a(str, formRepositoryImpl$getSecondaryAddressForm$1);
                if (objA == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objA = ((Result) obj).f71708b;
            }
            ResultKt.b(objA);
            failure = new Result(FormMapperKt.b((AddressFormDto) objA));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.repository.FormRepository
    public final Object b(ContinuationImpl continuationImpl) throws Throwable {
        FormRepositoryImpl$getDispatchIdentifierList$1 formRepositoryImpl$getDispatchIdentifierList$1;
        Object failure;
        Object objB;
        if (continuationImpl instanceof FormRepositoryImpl$getDispatchIdentifierList$1) {
            formRepositoryImpl$getDispatchIdentifierList$1 = (FormRepositoryImpl$getDispatchIdentifierList$1) continuationImpl;
            int i2 = formRepositoryImpl$getDispatchIdentifierList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formRepositoryImpl$getDispatchIdentifierList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                formRepositoryImpl$getDispatchIdentifierList$1 = new FormRepositoryImpl$getDispatchIdentifierList$1(this, continuationImpl);
            }
        } else {
            formRepositoryImpl$getDispatchIdentifierList$1 = new FormRepositoryImpl$getDispatchIdentifierList$1(this, continuationImpl);
        }
        Object obj = formRepositoryImpl$getDispatchIdentifierList$1.f66160b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formRepositoryImpl$getDispatchIdentifierList$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                FormDataSource formDataSource = this.f66149a;
                formRepositoryImpl$getDispatchIdentifierList$1.d = 1;
                objB = formDataSource.b(formRepositoryImpl$getDispatchIdentifierList$1);
                if (objB == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objB = ((Result) obj).f71708b;
            }
            ResultKt.b(objB);
            List<String> list = ((DispatchIdentifierListDto) objB).f66055a;
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                LanguageTagWithUnderscore.f67508b.getClass();
                String strA = LanguageTagWithUnderscore.Companion.a(str);
                LanguageTagWithUnderscore languageTagWithUnderscore = strA != null ? new LanguageTagWithUnderscore(strA) : null;
                if (languageTagWithUnderscore != null) {
                    arrayList.add(languageTagWithUnderscore);
                }
            }
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(new FormDispatchId(((LanguageTagWithUnderscore) it.next()).f67509a));
            }
            if (arrayList2.isEmpty()) {
                throw new IllegalStateException("Dispatch identifier list is empty");
            }
            failure = new Result(arrayList2);
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.repository.FormRepository
    public final Object c(String str, ContinuationImpl continuationImpl) throws Throwable {
        FormRepositoryImpl$getMainAddressForm$1 formRepositoryImpl$getMainAddressForm$1;
        Object failure;
        Object objC;
        if (continuationImpl instanceof FormRepositoryImpl$getMainAddressForm$1) {
            formRepositoryImpl$getMainAddressForm$1 = (FormRepositoryImpl$getMainAddressForm$1) continuationImpl;
            int i2 = formRepositoryImpl$getMainAddressForm$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formRepositoryImpl$getMainAddressForm$1.d = i2 - Integer.MIN_VALUE;
            } else {
                formRepositoryImpl$getMainAddressForm$1 = new FormRepositoryImpl$getMainAddressForm$1(this, continuationImpl);
            }
        } else {
            formRepositoryImpl$getMainAddressForm$1 = new FormRepositoryImpl$getMainAddressForm$1(this, continuationImpl);
        }
        Object obj = formRepositoryImpl$getMainAddressForm$1.f66164b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formRepositoryImpl$getMainAddressForm$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                FormDataSource formDataSource = this.f66149a;
                formRepositoryImpl$getMainAddressForm$1.d = 1;
                objC = formDataSource.c(str, formRepositoryImpl$getMainAddressForm$1);
                if (objC == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objC = ((Result) obj).f71708b;
            }
            ResultKt.b(objC);
            failure = new Result(FormMapperKt.b((AddressFormDto) objC));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.repository.FormRepository
    public final Object d(String str, ContinuationImpl continuationImpl) throws Throwable {
        FormRepositoryImpl$getAccountActivationForm$1 formRepositoryImpl$getAccountActivationForm$1;
        Object failure;
        Object objD;
        if (continuationImpl instanceof FormRepositoryImpl$getAccountActivationForm$1) {
            formRepositoryImpl$getAccountActivationForm$1 = (FormRepositoryImpl$getAccountActivationForm$1) continuationImpl;
            int i2 = formRepositoryImpl$getAccountActivationForm$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formRepositoryImpl$getAccountActivationForm$1.d = i2 - Integer.MIN_VALUE;
            } else {
                formRepositoryImpl$getAccountActivationForm$1 = new FormRepositoryImpl$getAccountActivationForm$1(this, continuationImpl);
            }
        } else {
            formRepositoryImpl$getAccountActivationForm$1 = new FormRepositoryImpl$getAccountActivationForm$1(this, continuationImpl);
        }
        Object obj = formRepositoryImpl$getAccountActivationForm$1.f66150b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formRepositoryImpl$getAccountActivationForm$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                FormDataSource formDataSource = this.f66149a;
                formRepositoryImpl$getAccountActivationForm$1.d = 1;
                objD = formDataSource.d(str, formRepositoryImpl$getAccountActivationForm$1);
                if (objD == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objD = ((Result) obj).f71708b;
            }
            ResultKt.b(objD);
            failure = new Result(FormMapperKt.a((AccountActivationFormDto) objD));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.repository.FormRepository
    public final Object e(String str, ContinuationImpl continuationImpl) throws Throwable {
        FormRepositoryImpl$getProfileForm$1 formRepositoryImpl$getProfileForm$1;
        Object failure;
        Object objE;
        if (continuationImpl instanceof FormRepositoryImpl$getProfileForm$1) {
            formRepositoryImpl$getProfileForm$1 = (FormRepositoryImpl$getProfileForm$1) continuationImpl;
            int i2 = formRepositoryImpl$getProfileForm$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formRepositoryImpl$getProfileForm$1.d = i2 - Integer.MIN_VALUE;
            } else {
                formRepositoryImpl$getProfileForm$1 = new FormRepositoryImpl$getProfileForm$1(this, continuationImpl);
            }
        } else {
            formRepositoryImpl$getProfileForm$1 = new FormRepositoryImpl$getProfileForm$1(this, continuationImpl);
        }
        Object obj = formRepositoryImpl$getProfileForm$1.f66166b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formRepositoryImpl$getProfileForm$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                FormDataSource formDataSource = this.f66149a;
                formRepositoryImpl$getProfileForm$1.d = 1;
                objE = formDataSource.e(str, formRepositoryImpl$getProfileForm$1);
                if (objE == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objE = ((Result) obj).f71708b;
            }
            ResultKt.b(objE);
            failure = new Result(FormMapperKt.h((ProfileFormDto) objE));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.repository.FormRepository
    public final Object f(String str, ContinuationImpl continuationImpl) throws Throwable {
        FormRepositoryImpl$getAuthenticationForm$1 formRepositoryImpl$getAuthenticationForm$1;
        Object failure;
        Object objF;
        if (continuationImpl instanceof FormRepositoryImpl$getAuthenticationForm$1) {
            formRepositoryImpl$getAuthenticationForm$1 = (FormRepositoryImpl$getAuthenticationForm$1) continuationImpl;
            int i2 = formRepositoryImpl$getAuthenticationForm$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formRepositoryImpl$getAuthenticationForm$1.d = i2 - Integer.MIN_VALUE;
            } else {
                formRepositoryImpl$getAuthenticationForm$1 = new FormRepositoryImpl$getAuthenticationForm$1(this, continuationImpl);
            }
        } else {
            formRepositoryImpl$getAuthenticationForm$1 = new FormRepositoryImpl$getAuthenticationForm$1(this, continuationImpl);
        }
        Object obj = formRepositoryImpl$getAuthenticationForm$1.f66152b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formRepositoryImpl$getAuthenticationForm$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                FormDataSource formDataSource = this.f66149a;
                formRepositoryImpl$getAuthenticationForm$1.d = 1;
                objF = formDataSource.f(str, formRepositoryImpl$getAuthenticationForm$1);
                if (objF == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objF = ((Result) obj).f71708b;
            }
            ResultKt.b(objF);
            failure = new Result(FormMapperKt.c((AuthenticationFormDto) objF));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.repository.FormRepository
    public final Object g(String str, ContinuationImpl continuationImpl) throws Throwable {
        FormRepositoryImpl$getBookingForm$1 formRepositoryImpl$getBookingForm$1;
        Object failure;
        Object objG;
        if (continuationImpl instanceof FormRepositoryImpl$getBookingForm$1) {
            formRepositoryImpl$getBookingForm$1 = (FormRepositoryImpl$getBookingForm$1) continuationImpl;
            int i2 = formRepositoryImpl$getBookingForm$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formRepositoryImpl$getBookingForm$1.d = i2 - Integer.MIN_VALUE;
            } else {
                formRepositoryImpl$getBookingForm$1 = new FormRepositoryImpl$getBookingForm$1(this, continuationImpl);
            }
        } else {
            formRepositoryImpl$getBookingForm$1 = new FormRepositoryImpl$getBookingForm$1(this, continuationImpl);
        }
        Object obj = formRepositoryImpl$getBookingForm$1.f66154b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formRepositoryImpl$getBookingForm$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                FormDataSource formDataSource = this.f66149a;
                formRepositoryImpl$getBookingForm$1.d = 1;
                objG = formDataSource.g(str, formRepositoryImpl$getBookingForm$1);
                if (objG == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objG = ((Result) obj).f71708b;
            }
            ResultKt.b(objG);
            failure = new Result(FormMapperKt.d((BookingPersonalInfoFormDto) objG));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.repository.FormRepository
    public final Object h(String str, ContinuationImpl continuationImpl) throws Throwable {
        FormRepositoryImpl$getCompleteProfileForm$1 formRepositoryImpl$getCompleteProfileForm$1;
        Object failure;
        Object objH;
        if (continuationImpl instanceof FormRepositoryImpl$getCompleteProfileForm$1) {
            formRepositoryImpl$getCompleteProfileForm$1 = (FormRepositoryImpl$getCompleteProfileForm$1) continuationImpl;
            int i2 = formRepositoryImpl$getCompleteProfileForm$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formRepositoryImpl$getCompleteProfileForm$1.d = i2 - Integer.MIN_VALUE;
            } else {
                formRepositoryImpl$getCompleteProfileForm$1 = new FormRepositoryImpl$getCompleteProfileForm$1(this, continuationImpl);
            }
        } else {
            formRepositoryImpl$getCompleteProfileForm$1 = new FormRepositoryImpl$getCompleteProfileForm$1(this, continuationImpl);
        }
        Object obj = formRepositoryImpl$getCompleteProfileForm$1.f66158b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formRepositoryImpl$getCompleteProfileForm$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                FormDataSource formDataSource = this.f66149a;
                formRepositoryImpl$getCompleteProfileForm$1.d = 1;
                objH = formDataSource.h(str, formRepositoryImpl$getCompleteProfileForm$1);
                if (objH == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objH = ((Result) obj).f71708b;
            }
            ResultKt.b(objH);
            failure = new Result(FormMapperKt.f((CompleteProfileFormDto) objH));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.repository.FormRepository
    public final Object i(String str, ContinuationImpl continuationImpl) throws Throwable {
        FormRepositoryImpl$getCareServiceForm$1 formRepositoryImpl$getCareServiceForm$1;
        Object failure;
        Object objI;
        if (continuationImpl instanceof FormRepositoryImpl$getCareServiceForm$1) {
            formRepositoryImpl$getCareServiceForm$1 = (FormRepositoryImpl$getCareServiceForm$1) continuationImpl;
            int i2 = formRepositoryImpl$getCareServiceForm$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formRepositoryImpl$getCareServiceForm$1.d = i2 - Integer.MIN_VALUE;
            } else {
                formRepositoryImpl$getCareServiceForm$1 = new FormRepositoryImpl$getCareServiceForm$1(this, continuationImpl);
            }
        } else {
            formRepositoryImpl$getCareServiceForm$1 = new FormRepositoryImpl$getCareServiceForm$1(this, continuationImpl);
        }
        Object obj = formRepositoryImpl$getCareServiceForm$1.f66156b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formRepositoryImpl$getCareServiceForm$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                FormDataSource formDataSource = this.f66149a;
                formRepositoryImpl$getCareServiceForm$1.d = 1;
                objI = formDataSource.i(str, formRepositoryImpl$getCareServiceForm$1);
                if (objI == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objI = ((Result) obj).f71708b;
            }
            ResultKt.b(objI);
            failure = new Result(FormMapperKt.e((CareServiceFormDto) objI));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.repository.FormRepository
    public final Object j(String str, ContinuationImpl continuationImpl) throws Throwable {
        FormRepositoryImpl$getRegistrationForm$1 formRepositoryImpl$getRegistrationForm$1;
        Object failure;
        Object objJ;
        if (continuationImpl instanceof FormRepositoryImpl$getRegistrationForm$1) {
            formRepositoryImpl$getRegistrationForm$1 = (FormRepositoryImpl$getRegistrationForm$1) continuationImpl;
            int i2 = formRepositoryImpl$getRegistrationForm$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formRepositoryImpl$getRegistrationForm$1.d = i2 - Integer.MIN_VALUE;
            } else {
                formRepositoryImpl$getRegistrationForm$1 = new FormRepositoryImpl$getRegistrationForm$1(this, continuationImpl);
            }
        } else {
            formRepositoryImpl$getRegistrationForm$1 = new FormRepositoryImpl$getRegistrationForm$1(this, continuationImpl);
        }
        Object obj = formRepositoryImpl$getRegistrationForm$1.f66168b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formRepositoryImpl$getRegistrationForm$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                FormDataSource formDataSource = this.f66149a;
                formRepositoryImpl$getRegistrationForm$1.d = 1;
                objJ = formDataSource.j(str, formRepositoryImpl$getRegistrationForm$1);
                if (objJ == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objJ = ((Result) obj).f71708b;
            }
            ResultKt.b(objJ);
            failure = new Result(FormMapperKt.i((RegistrationFormDto) objJ));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.core.infrastructure.data.forms.repository.FormRepository
    public final Object k(String str, ContinuationImpl continuationImpl) throws Throwable {
        FormRepositoryImpl$getGuestAppointmentForm$1 formRepositoryImpl$getGuestAppointmentForm$1;
        Object failure;
        Object objK;
        if (continuationImpl instanceof FormRepositoryImpl$getGuestAppointmentForm$1) {
            formRepositoryImpl$getGuestAppointmentForm$1 = (FormRepositoryImpl$getGuestAppointmentForm$1) continuationImpl;
            int i2 = formRepositoryImpl$getGuestAppointmentForm$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                formRepositoryImpl$getGuestAppointmentForm$1.d = i2 - Integer.MIN_VALUE;
            } else {
                formRepositoryImpl$getGuestAppointmentForm$1 = new FormRepositoryImpl$getGuestAppointmentForm$1(this, continuationImpl);
            }
        } else {
            formRepositoryImpl$getGuestAppointmentForm$1 = new FormRepositoryImpl$getGuestAppointmentForm$1(this, continuationImpl);
        }
        Object obj = formRepositoryImpl$getGuestAppointmentForm$1.f66162b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = formRepositoryImpl$getGuestAppointmentForm$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                FormDataSource formDataSource = this.f66149a;
                formRepositoryImpl$getGuestAppointmentForm$1.d = 1;
                objK = formDataSource.k(str, formRepositoryImpl$getGuestAppointmentForm$1);
                if (objK == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                objK = ((Result) obj).f71708b;
            }
            ResultKt.b(objK);
            failure = new Result(FormMapperKt.g((GuestAppointmentFormDto) objK));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return ((Result) failure).f71708b;
    }
}
