package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.BookingApi;
import com.vuitton.android.data.dto.booking.BookingConfirmedListDto;
import com.vuitton.android.data.dto.booking.BookingDto;
import com.vuitton.android.data.dto.booking.BookingFormResponseDto;
import com.vuitton.android.data.dto.booking.BookingFormStepDto;
import com.vuitton.android.data.dto.booking.BookingListDto;
import com.vuitton.android.data.dto.booking.BookingMegatrioDto;
import com.vuitton.android.data.dto.booking.BookingPassDto;
import com.vuitton.android.data.dto.booking.PreBookConfirmRequestDto;
import com.vuitton.android.data.dto.booking.PreBookConfirmResponseDto;
import com.vuitton.android.data.dto.booking.PreBookSummaryDto;
import com.vuitton.android.data.dto.booking.PrebookFormDataDto;
import com.vuitton.android.data.dto.booking.PrebookFormDataResponseDto;
import com.vuitton.android.data.dto.booking.mapper.BookingFormMapperKt;
import com.vuitton.android.data.dto.booking.mapper.BookingFormUpdateMapperKt;
import com.vuitton.android.data.dto.booking.mapper.BookingHttpErrorMapper;
import com.vuitton.android.data.dto.booking.mapper.BookingListMapperKt;
import com.vuitton.android.data.dto.booking.mapper.BookingMegatrioMapperKt;
import com.vuitton.android.data.dto.booking.mapper.BookingPassDtoMapperKt;
import com.vuitton.android.data.dto.booking.mapper.PreBookSummaryMapperKt;
import com.vuitton.android.domain.repository.BookingRepository;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.booking.BookingForm;
import com.vuitton.foundation.model.domain.model.booking.BookingFormModule;
import com.vuitton.foundation.model.domain.model.booking.PreBookConfirmForm;
import com.vuitton.foundation.model.domain.model.booking.PreBookConfirmation;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/repository/BookingRepositoryImpl;", "Lcom/vuitton/android/domain/repository/BookingRepository;", "Lcom/vuitton/android/data/api/bff/user/BookingApi;", "bookingApi", "Lcom/vuitton/android/data/dto/booking/mapper/BookingHttpErrorMapper;", "bookingHttpErrorMapper", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Lcom/vuitton/android/data/api/bff/user/BookingApi;Lcom/vuitton/android/data/dto/booking/mapper/BookingHttpErrorMapper;Lcom/vuitton/foundation/logger/Logger;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BookingRepositoryImpl implements BookingRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BookingApi f47385a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BookingHttpErrorMapper f47386b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Logger f47387c;

    @Inject
    public BookingRepositoryImpl(BookingApi bookingApi, BookingHttpErrorMapper bookingHttpErrorMapper, Logger logger) {
        bookingApi.getClass();
        bookingHttpErrorMapper.getClass();
        logger.getClass();
        this.f47385a = bookingApi;
        this.f47386b = bookingHttpErrorMapper;
        this.f47387c = logger;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.BookingRepository
    public final Object a(ContinuationImpl continuationImpl) throws Throwable {
        BookingRepositoryImpl$getConfirmedBookings$1 bookingRepositoryImpl$getConfirmedBookings$1;
        Object failure;
        if (continuationImpl instanceof BookingRepositoryImpl$getConfirmedBookings$1) {
            bookingRepositoryImpl$getConfirmedBookings$1 = (BookingRepositoryImpl$getConfirmedBookings$1) continuationImpl;
            int i2 = bookingRepositoryImpl$getConfirmedBookings$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bookingRepositoryImpl$getConfirmedBookings$1.d = i2 - Integer.MIN_VALUE;
            } else {
                bookingRepositoryImpl$getConfirmedBookings$1 = new BookingRepositoryImpl$getConfirmedBookings$1(this, continuationImpl);
            }
        } else {
            bookingRepositoryImpl$getConfirmedBookings$1 = new BookingRepositoryImpl$getConfirmedBookings$1(this, continuationImpl);
        }
        Object confirmedBookings = bookingRepositoryImpl$getConfirmedBookings$1.f47406b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bookingRepositoryImpl$getConfirmedBookings$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(confirmedBookings);
                Result.Companion companion = Result.INSTANCE;
                BookingApi bookingApi = this.f47385a;
                bookingRepositoryImpl$getConfirmedBookings$1.d = 1;
                confirmedBookings = bookingApi.getConfirmedBookings(bookingRepositoryImpl$getConfirmedBookings$1);
                if (confirmedBookings == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(confirmedBookings);
            }
            BookingConfirmedListDto bookingConfirmedListDto = (BookingConfirmedListDto) confirmedBookings;
            bookingConfirmedListDto.getClass();
            List list = bookingConfirmedListDto.f44634a;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(BookingListMapperKt.a((BookingDto) it.next()));
            }
            failure = new Result(arrayList);
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
    @Override // com.vuitton.android.domain.repository.BookingRepository
    public final Object b(String str, ContinuationImpl continuationImpl) throws Throwable {
        BookingRepositoryImpl$getBookingPass$1 bookingRepositoryImpl$getBookingPass$1;
        Object failure;
        if (continuationImpl instanceof BookingRepositoryImpl$getBookingPass$1) {
            bookingRepositoryImpl$getBookingPass$1 = (BookingRepositoryImpl$getBookingPass$1) continuationImpl;
            int i2 = bookingRepositoryImpl$getBookingPass$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bookingRepositoryImpl$getBookingPass$1.d = i2 - Integer.MIN_VALUE;
            } else {
                bookingRepositoryImpl$getBookingPass$1 = new BookingRepositoryImpl$getBookingPass$1(this, continuationImpl);
            }
        } else {
            bookingRepositoryImpl$getBookingPass$1 = new BookingRepositoryImpl$getBookingPass$1(this, continuationImpl);
        }
        Object bookingPass = bookingRepositoryImpl$getBookingPass$1.f47402b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bookingRepositoryImpl$getBookingPass$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(bookingPass);
                Result.Companion companion = Result.INSTANCE;
                BookingApi bookingApi = this.f47385a;
                bookingRepositoryImpl$getBookingPass$1.d = 1;
                bookingPass = bookingApi.getBookingPass(str, bookingRepositoryImpl$getBookingPass$1);
                if (bookingPass == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(bookingPass);
            }
            failure = new Result(BookingPassDtoMapperKt.a((BookingPassDto) bookingPass));
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

    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    @Override // com.vuitton.android.domain.repository.BookingRepository
    public final Object c(PreBookConfirmForm preBookConfirmForm, ContinuationImpl continuationImpl) throws Throwable {
        BookingRepositoryImpl$confirmPreBook$1 bookingRepositoryImpl$confirmPreBook$1;
        Object failure;
        BookingRepositoryImpl bookingRepositoryImpl = this;
        if (continuationImpl instanceof BookingRepositoryImpl$confirmPreBook$1) {
            bookingRepositoryImpl$confirmPreBook$1 = (BookingRepositoryImpl$confirmPreBook$1) continuationImpl;
            int i2 = bookingRepositoryImpl$confirmPreBook$1.f47393e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bookingRepositoryImpl$confirmPreBook$1.f47393e = i2 - Integer.MIN_VALUE;
            } else {
                bookingRepositoryImpl$confirmPreBook$1 = new BookingRepositoryImpl$confirmPreBook$1(bookingRepositoryImpl, continuationImpl);
            }
        } else {
            bookingRepositoryImpl$confirmPreBook$1 = new BookingRepositoryImpl$confirmPreBook$1(bookingRepositoryImpl, continuationImpl);
        }
        Object objConfirmPreBook = bookingRepositoryImpl$confirmPreBook$1.f47392c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bookingRepositoryImpl$confirmPreBook$1.f47393e;
        try {
            if (i3 == 0) {
                ResultKt.b(objConfirmPreBook);
                Result.Companion companion = Result.INSTANCE;
                BookingApi bookingApi = bookingRepositoryImpl.f47385a;
                preBookConfirmForm.getClass();
                PreBookConfirmRequestDto preBookConfirmRequestDto = new PreBookConfirmRequestDto(preBookConfirmForm.f66764a, preBookConfirmForm.f66765b, preBookConfirmForm.f66766c, preBookConfirmForm.d, preBookConfirmForm.f66767e, preBookConfirmForm.f66768f, preBookConfirmForm.g, preBookConfirmForm.f66769h, preBookConfirmForm.f66770i, preBookConfirmForm.f66771j, preBookConfirmForm.f66772k);
                bookingRepositoryImpl$confirmPreBook$1.f47391b = bookingRepositoryImpl;
                bookingRepositoryImpl$confirmPreBook$1.f47393e = 1;
                objConfirmPreBook = bookingApi.confirmPreBook(preBookConfirmRequestDto, bookingRepositoryImpl$confirmPreBook$1);
                if (objConfirmPreBook == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                bookingRepositoryImpl = bookingRepositoryImpl$confirmPreBook$1.f47391b;
                ResultKt.b(objConfirmPreBook);
            }
            PreBookConfirmResponseDto preBookConfirmResponseDto = (PreBookConfirmResponseDto) objConfirmPreBook;
            preBookConfirmResponseDto.getClass();
            failure = new Result(new PreBookConfirmation(preBookConfirmResponseDto.f44748a));
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
        return bookingRepositoryImpl.o(((Result) failure).f71708b);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.BookingRepository
    public final Object d(ContinuationImpl continuationImpl) throws Throwable {
        BookingRepositoryImpl$getPreBookSummary$1 bookingRepositoryImpl$getPreBookSummary$1;
        Object failure;
        if (continuationImpl instanceof BookingRepositoryImpl$getPreBookSummary$1) {
            bookingRepositoryImpl$getPreBookSummary$1 = (BookingRepositoryImpl$getPreBookSummary$1) continuationImpl;
            int i2 = bookingRepositoryImpl$getPreBookSummary$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bookingRepositoryImpl$getPreBookSummary$1.d = i2 - Integer.MIN_VALUE;
            } else {
                bookingRepositoryImpl$getPreBookSummary$1 = new BookingRepositoryImpl$getPreBookSummary$1(this, continuationImpl);
            }
        } else {
            bookingRepositoryImpl$getPreBookSummary$1 = new BookingRepositoryImpl$getPreBookSummary$1(this, continuationImpl);
        }
        Object preBookSummary = bookingRepositoryImpl$getPreBookSummary$1.f47410b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bookingRepositoryImpl$getPreBookSummary$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(preBookSummary);
                Result.Companion companion = Result.INSTANCE;
                BookingApi bookingApi = this.f47385a;
                bookingRepositoryImpl$getPreBookSummary$1.d = 1;
                preBookSummary = bookingApi.getPreBookSummary(bookingRepositoryImpl$getPreBookSummary$1);
                if (preBookSummary == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(preBookSummary);
            }
            failure = new Result(PreBookSummaryMapperKt.a((PreBookSummaryDto) preBookSummary));
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
    @Override // com.vuitton.android.domain.repository.BookingRepository
    public final Object e(ContinuationImpl continuationImpl) throws Throwable {
        BookingRepositoryImpl$getMegatrio$1 bookingRepositoryImpl$getMegatrio$1;
        Object failure;
        if (continuationImpl instanceof BookingRepositoryImpl$getMegatrio$1) {
            bookingRepositoryImpl$getMegatrio$1 = (BookingRepositoryImpl$getMegatrio$1) continuationImpl;
            int i2 = bookingRepositoryImpl$getMegatrio$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bookingRepositoryImpl$getMegatrio$1.d = i2 - Integer.MIN_VALUE;
            } else {
                bookingRepositoryImpl$getMegatrio$1 = new BookingRepositoryImpl$getMegatrio$1(this, continuationImpl);
            }
        } else {
            bookingRepositoryImpl$getMegatrio$1 = new BookingRepositoryImpl$getMegatrio$1(this, continuationImpl);
        }
        Object megatrio = bookingRepositoryImpl$getMegatrio$1.f47408b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bookingRepositoryImpl$getMegatrio$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(megatrio);
                Result.Companion companion = Result.INSTANCE;
                BookingApi bookingApi = this.f47385a;
                bookingRepositoryImpl$getMegatrio$1.d = 1;
                megatrio = bookingApi.getMegatrio(bookingRepositoryImpl$getMegatrio$1);
                if (megatrio == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(megatrio);
            }
            failure = new Result(BookingMegatrioMapperKt.a((BookingMegatrioDto) megatrio));
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
        Object obj = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(obj);
        if (thA2 == null) {
            return obj;
        }
        try {
            this.f47387c.d("BookingRepositoryImpl", "Failed to get booking megatrio", thA2);
            throw thA2;
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            return new Result.Failure(th2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.BookingRepository
    public final Object f(String str, String str2, String str3, ContinuationImpl continuationImpl) throws Throwable {
        BookingRepositoryImpl$getBookingForm$1 bookingRepositoryImpl$getBookingForm$1;
        Object failure;
        if (continuationImpl instanceof BookingRepositoryImpl$getBookingForm$1) {
            bookingRepositoryImpl$getBookingForm$1 = (BookingRepositoryImpl$getBookingForm$1) continuationImpl;
            int i2 = bookingRepositoryImpl$getBookingForm$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bookingRepositoryImpl$getBookingForm$1.d = i2 - Integer.MIN_VALUE;
            } else {
                bookingRepositoryImpl$getBookingForm$1 = new BookingRepositoryImpl$getBookingForm$1(this, continuationImpl);
            }
        } else {
            bookingRepositoryImpl$getBookingForm$1 = new BookingRepositoryImpl$getBookingForm$1(this, continuationImpl);
        }
        Object bookingForm = bookingRepositoryImpl$getBookingForm$1.f47400b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bookingRepositoryImpl$getBookingForm$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(bookingForm);
                Result.Companion companion = Result.INSTANCE;
                BookingApi bookingApi = this.f47385a;
                bookingRepositoryImpl$getBookingForm$1.d = 1;
                bookingForm = bookingApi.getBookingForm(str, str2, str3, bookingRepositoryImpl$getBookingForm$1);
                if (bookingForm == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(bookingForm);
            }
            failure = new Result(BookingFormMapperKt.b((BookingFormResponseDto) bookingForm));
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
        Object obj = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(obj);
        if (thA2 == null) {
            return obj;
        }
        try {
            this.f47387c.d("BookingRepositoryImpl", "Failed to get booking form", thA2);
            throw thA2;
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            return new Result.Failure(th2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.BookingRepository
    public final Object g(BookingForm bookingForm, ContinuationImpl continuationImpl) throws Throwable {
        BookingRepositoryImpl$addPreBook$1 bookingRepositoryImpl$addPreBook$1;
        Object failure;
        if (continuationImpl instanceof BookingRepositoryImpl$addPreBook$1) {
            bookingRepositoryImpl$addPreBook$1 = (BookingRepositoryImpl$addPreBook$1) continuationImpl;
            int i2 = bookingRepositoryImpl$addPreBook$1.f47390e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bookingRepositoryImpl$addPreBook$1.f47390e = i2 - Integer.MIN_VALUE;
            } else {
                bookingRepositoryImpl$addPreBook$1 = new BookingRepositoryImpl$addPreBook$1(this, continuationImpl);
            }
        } else {
            bookingRepositoryImpl$addPreBook$1 = new BookingRepositoryImpl$addPreBook$1(this, continuationImpl);
        }
        Object objAddPreBook = bookingRepositoryImpl$addPreBook$1.f47389c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bookingRepositoryImpl$addPreBook$1.f47390e;
        try {
            if (i3 == 0) {
                ResultKt.b(objAddPreBook);
                Result.Companion companion = Result.INSTANCE;
                BookingApi bookingApi = this.f47385a;
                PrebookFormDataDto prebookFormDataDtoB = BookingFormUpdateMapperKt.b(bookingForm, null, null, 3);
                bookingRepositoryImpl$addPreBook$1.f47388b = this;
                bookingRepositoryImpl$addPreBook$1.f47390e = 1;
                objAddPreBook = bookingApi.addPreBook(prebookFormDataDtoB, bookingRepositoryImpl$addPreBook$1);
                if (objAddPreBook == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                this = bookingRepositoryImpl$addPreBook$1.f47388b;
                ResultKt.b(objAddPreBook);
            }
            failure = new Result(PreBookSummaryMapperKt.a((PreBookSummaryDto) objAddPreBook));
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
        return this.o(((Result) failure).f71708b);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.BookingRepository
    public final Object h(String str, ContinuationImpl continuationImpl) throws Throwable {
        BookingRepositoryImpl$deletePreBook$1 bookingRepositoryImpl$deletePreBook$1;
        Object failure;
        if (continuationImpl instanceof BookingRepositoryImpl$deletePreBook$1) {
            bookingRepositoryImpl$deletePreBook$1 = (BookingRepositoryImpl$deletePreBook$1) continuationImpl;
            int i2 = bookingRepositoryImpl$deletePreBook$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bookingRepositoryImpl$deletePreBook$1.d = i2 - Integer.MIN_VALUE;
            } else {
                bookingRepositoryImpl$deletePreBook$1 = new BookingRepositoryImpl$deletePreBook$1(this, continuationImpl);
            }
        } else {
            bookingRepositoryImpl$deletePreBook$1 = new BookingRepositoryImpl$deletePreBook$1(this, continuationImpl);
        }
        Object objDeletePreBook = bookingRepositoryImpl$deletePreBook$1.f47398b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bookingRepositoryImpl$deletePreBook$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objDeletePreBook);
                Result.Companion companion = Result.INSTANCE;
                BookingApi bookingApi = this.f47385a;
                bookingRepositoryImpl$deletePreBook$1.d = 1;
                objDeletePreBook = bookingApi.deletePreBook(str, bookingRepositoryImpl$deletePreBook$1);
                if (objDeletePreBook == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objDeletePreBook);
            }
            failure = new Result(PreBookSummaryMapperKt.a((PreBookSummaryDto) objDeletePreBook));
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
    @Override // com.vuitton.android.domain.repository.BookingRepository
    public final Object i(String str, BookingForm bookingForm, ContinuationImpl continuationImpl) throws Throwable {
        BookingRepositoryImpl$updateBooking$1 bookingRepositoryImpl$updateBooking$1;
        Object failure;
        if (continuationImpl instanceof BookingRepositoryImpl$updateBooking$1) {
            bookingRepositoryImpl$updateBooking$1 = (BookingRepositoryImpl$updateBooking$1) continuationImpl;
            int i2 = bookingRepositoryImpl$updateBooking$1.f47416e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bookingRepositoryImpl$updateBooking$1.f47416e = i2 - Integer.MIN_VALUE;
            } else {
                bookingRepositoryImpl$updateBooking$1 = new BookingRepositoryImpl$updateBooking$1(this, continuationImpl);
            }
        } else {
            bookingRepositoryImpl$updateBooking$1 = new BookingRepositoryImpl$updateBooking$1(this, continuationImpl);
        }
        Object objUpdateBooking = bookingRepositoryImpl$updateBooking$1.f47415c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bookingRepositoryImpl$updateBooking$1.f47416e;
        try {
            if (i3 == 0) {
                ResultKt.b(objUpdateBooking);
                Result.Companion companion = Result.INSTANCE;
                BookingApi bookingApi = this.f47385a;
                PrebookFormDataDto prebookFormDataDtoB = BookingFormUpdateMapperKt.b(bookingForm, null, str, 1);
                bookingRepositoryImpl$updateBooking$1.f47414b = this;
                bookingRepositoryImpl$updateBooking$1.f47416e = 1;
                objUpdateBooking = bookingApi.updateBooking(str, prebookFormDataDtoB, bookingRepositoryImpl$updateBooking$1);
                if (objUpdateBooking == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                this = bookingRepositoryImpl$updateBooking$1.f47414b;
                ResultKt.b(objUpdateBooking);
            }
            failure = new Result(BookingListMapperKt.d((BookingListDto) objUpdateBooking));
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
        return this.o(((Result) failure).f71708b);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.BookingRepository
    public final Object j(String str, BookingForm bookingForm, ContinuationImpl continuationImpl) throws Throwable {
        BookingRepositoryImpl$updatePreBook$1 bookingRepositoryImpl$updatePreBook$1;
        Object failure;
        if (continuationImpl instanceof BookingRepositoryImpl$updatePreBook$1) {
            bookingRepositoryImpl$updatePreBook$1 = (BookingRepositoryImpl$updatePreBook$1) continuationImpl;
            int i2 = bookingRepositoryImpl$updatePreBook$1.f47419e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bookingRepositoryImpl$updatePreBook$1.f47419e = i2 - Integer.MIN_VALUE;
            } else {
                bookingRepositoryImpl$updatePreBook$1 = new BookingRepositoryImpl$updatePreBook$1(this, continuationImpl);
            }
        } else {
            bookingRepositoryImpl$updatePreBook$1 = new BookingRepositoryImpl$updatePreBook$1(this, continuationImpl);
        }
        Object objUpdatePreBook = bookingRepositoryImpl$updatePreBook$1.f47418c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bookingRepositoryImpl$updatePreBook$1.f47419e;
        try {
            if (i3 == 0) {
                ResultKt.b(objUpdatePreBook);
                Result.Companion companion = Result.INSTANCE;
                BookingApi bookingApi = this.f47385a;
                PrebookFormDataDto prebookFormDataDtoB = BookingFormUpdateMapperKt.b(bookingForm, str, null, 2);
                bookingRepositoryImpl$updatePreBook$1.f47417b = this;
                bookingRepositoryImpl$updatePreBook$1.f47419e = 1;
                objUpdatePreBook = bookingApi.updatePreBook(str, prebookFormDataDtoB, bookingRepositoryImpl$updatePreBook$1);
                if (objUpdatePreBook == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                this = bookingRepositoryImpl$updatePreBook$1.f47417b;
                ResultKt.b(objUpdatePreBook);
            }
            failure = new Result(PreBookSummaryMapperKt.a((PreBookSummaryDto) objUpdatePreBook));
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
        return this.o(((Result) failure).f71708b);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.BookingRepository
    public final Object k(BookingForm bookingForm, String str, String str2, ContinuationImpl continuationImpl) throws Throwable {
        BookingRepositoryImpl$postBookingFormUpdate$1 bookingRepositoryImpl$postBookingFormUpdate$1;
        Object failure;
        if (continuationImpl instanceof BookingRepositoryImpl$postBookingFormUpdate$1) {
            bookingRepositoryImpl$postBookingFormUpdate$1 = (BookingRepositoryImpl$postBookingFormUpdate$1) continuationImpl;
            int i2 = bookingRepositoryImpl$postBookingFormUpdate$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bookingRepositoryImpl$postBookingFormUpdate$1.d = i2 - Integer.MIN_VALUE;
            } else {
                bookingRepositoryImpl$postBookingFormUpdate$1 = new BookingRepositoryImpl$postBookingFormUpdate$1(this, continuationImpl);
            }
        } else {
            bookingRepositoryImpl$postBookingFormUpdate$1 = new BookingRepositoryImpl$postBookingFormUpdate$1(this, continuationImpl);
        }
        Object objPostBookingsFormUpdate = bookingRepositoryImpl$postBookingFormUpdate$1.f47412b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bookingRepositoryImpl$postBookingFormUpdate$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objPostBookingsFormUpdate);
                Result.Companion companion = Result.INSTANCE;
                BookingApi bookingApi = this.f47385a;
                PrebookFormDataDto prebookFormDataDtoA = BookingFormUpdateMapperKt.a(bookingForm, str, str2);
                bookingRepositoryImpl$postBookingFormUpdate$1.d = 1;
                objPostBookingsFormUpdate = bookingApi.postBookingsFormUpdate(prebookFormDataDtoA, bookingRepositoryImpl$postBookingFormUpdate$1);
                if (objPostBookingsFormUpdate == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objPostBookingsFormUpdate);
            }
            List list = ((PrebookFormDataResponseDto) objPostBookingsFormUpdate).f44774a.f44671b;
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                BookingFormModule bookingFormModuleA = BookingFormMapperKt.a((BookingFormStepDto) it.next());
                if (bookingFormModuleA != null) {
                    arrayList.add(bookingFormModuleA);
                }
            }
            failure = new Result(arrayList);
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
        Object obj = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(obj);
        if (thA2 == null) {
            return obj;
        }
        try {
            this.f47387c.d("BookingRepositoryImpl", "Failed to update booking form", thA2);
            throw thA2;
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            return new Result.Failure(th2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.BookingRepository
    public final Object l(ContinuationImpl continuationImpl) throws Throwable {
        BookingRepositoryImpl$getBookings$1 bookingRepositoryImpl$getBookings$1;
        Object failure;
        if (continuationImpl instanceof BookingRepositoryImpl$getBookings$1) {
            bookingRepositoryImpl$getBookings$1 = (BookingRepositoryImpl$getBookings$1) continuationImpl;
            int i2 = bookingRepositoryImpl$getBookings$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bookingRepositoryImpl$getBookings$1.d = i2 - Integer.MIN_VALUE;
            } else {
                bookingRepositoryImpl$getBookings$1 = new BookingRepositoryImpl$getBookings$1(this, continuationImpl);
            }
        } else {
            bookingRepositoryImpl$getBookings$1 = new BookingRepositoryImpl$getBookings$1(this, continuationImpl);
        }
        Object bookings = bookingRepositoryImpl$getBookings$1.f47404b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bookingRepositoryImpl$getBookings$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(bookings);
                Result.Companion companion = Result.INSTANCE;
                BookingApi bookingApi = this.f47385a;
                bookingRepositoryImpl$getBookings$1.d = 1;
                bookings = bookingApi.getBookings(bookingRepositoryImpl$getBookings$1);
                if (bookings == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(bookings);
            }
            failure = new Result(BookingListMapperKt.d((BookingListDto) bookings));
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
        Object obj = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(obj);
        if (thA2 == null) {
            return obj;
        }
        try {
            this.f47387c.d("BookingRepositoryImpl", "Failed to get bookings", thA2);
            throw thA2;
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            return new Result.Failure(th2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.BookingRepository
    public final Object m(ContinuationImpl continuationImpl) throws Throwable {
        BookingRepositoryImpl$deleteAllPreBook$1 bookingRepositoryImpl$deleteAllPreBook$1;
        Object failure;
        if (continuationImpl instanceof BookingRepositoryImpl$deleteAllPreBook$1) {
            bookingRepositoryImpl$deleteAllPreBook$1 = (BookingRepositoryImpl$deleteAllPreBook$1) continuationImpl;
            int i2 = bookingRepositoryImpl$deleteAllPreBook$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bookingRepositoryImpl$deleteAllPreBook$1.d = i2 - Integer.MIN_VALUE;
            } else {
                bookingRepositoryImpl$deleteAllPreBook$1 = new BookingRepositoryImpl$deleteAllPreBook$1(this, continuationImpl);
            }
        } else {
            bookingRepositoryImpl$deleteAllPreBook$1 = new BookingRepositoryImpl$deleteAllPreBook$1(this, continuationImpl);
        }
        Object obj = bookingRepositoryImpl$deleteAllPreBook$1.f47394b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bookingRepositoryImpl$deleteAllPreBook$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                BookingApi bookingApi = this.f47385a;
                bookingRepositoryImpl$deleteAllPreBook$1.d = 1;
                if (bookingApi.deleteAllPreBook(bookingRepositoryImpl$deleteAllPreBook$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
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
    @Override // com.vuitton.android.domain.repository.BookingRepository
    public final Object n(String str, ContinuationImpl continuationImpl) throws Throwable {
        BookingRepositoryImpl$deleteBooking$1 bookingRepositoryImpl$deleteBooking$1;
        Object failure;
        if (continuationImpl instanceof BookingRepositoryImpl$deleteBooking$1) {
            bookingRepositoryImpl$deleteBooking$1 = (BookingRepositoryImpl$deleteBooking$1) continuationImpl;
            int i2 = bookingRepositoryImpl$deleteBooking$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                bookingRepositoryImpl$deleteBooking$1.d = i2 - Integer.MIN_VALUE;
            } else {
                bookingRepositoryImpl$deleteBooking$1 = new BookingRepositoryImpl$deleteBooking$1(this, continuationImpl);
            }
        } else {
            bookingRepositoryImpl$deleteBooking$1 = new BookingRepositoryImpl$deleteBooking$1(this, continuationImpl);
        }
        Object objDeleteBooking = bookingRepositoryImpl$deleteBooking$1.f47396b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = bookingRepositoryImpl$deleteBooking$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objDeleteBooking);
                Result.Companion companion = Result.INSTANCE;
                BookingApi bookingApi = this.f47385a;
                bookingRepositoryImpl$deleteBooking$1.d = 1;
                objDeleteBooking = bookingApi.deleteBooking(str, bookingRepositoryImpl$deleteBooking$1);
                if (objDeleteBooking == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objDeleteBooking);
            }
            failure = new Result(BookingListMapperKt.d((BookingListDto) objDeleteBooking));
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

    public final Object o(Object obj) {
        Throwable thA = Result.a(obj);
        if (thA == null) {
            return obj;
        }
        try {
            throw this.f47386b.a(thA);
        } catch (Throwable th) {
            Result.Companion companion = Result.INSTANCE;
            return new Result.Failure(th);
        }
    }
}
