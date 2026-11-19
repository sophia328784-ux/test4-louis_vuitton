package defpackage;

import com.vuitton.android.data.dto.booking.BookingActionDto$$serializer;
import com.vuitton.android.data.dto.booking.BookingActionTypeDto;
import com.vuitton.android.data.dto.booking.BookingAdditionalDto$$serializer;
import com.vuitton.android.data.dto.booking.BookingConfirmedListDto;
import com.vuitton.android.data.dto.booking.BookingDto;
import com.vuitton.android.data.dto.booking.BookingDto$$serializer;
import com.vuitton.android.data.dto.booking.BookingExternalContentDto;
import com.vuitton.android.data.dto.booking.BookingExternalContentTypeDto;
import com.vuitton.android.data.dto.booking.BookingFormCategoryDto;
import com.vuitton.android.data.dto.booking.BookingFormCategoryDto$$serializer;
import com.vuitton.android.data.dto.booking.BookingFormCategoryOptionDto$$serializer;
import com.vuitton.android.data.dto.booking.BookingFormChoiceValueDto$$serializer;
import com.vuitton.android.data.dto.booking.BookingFormDto;
import com.vuitton.android.data.dto.booking.BookingFormResponseDto;
import com.vuitton.android.data.dto.booking.BookingFormSlotDateDto;
import com.vuitton.android.data.dto.booking.BookingFormSlotDateDto$$serializer;
import com.vuitton.android.data.dto.booking.BookingFormSlotDto$$serializer;
import com.vuitton.android.data.dto.booking.BookingFormStepDataDto;
import com.vuitton.android.data.dto.booking.BookingFormStepDataDto$DateDataDto$$serializer;
import com.vuitton.android.data.dto.booking.BookingFormStepDataDto$MultipleTextDataDto$$serializer;
import com.vuitton.android.data.dto.booking.BookingFormStepDataDto$SingleTextDataDto$$serializer;
import com.vuitton.android.data.dto.booking.BookingFormStepDataDto$SlotDataDto$$serializer;
import com.vuitton.android.data.dto.booking.BookingFormStepDtoSerializer;
import com.vuitton.android.data.dto.booking.BookingInfoDto;
import com.vuitton.android.data.dto.booking.BookingInfoDto$$serializer;
import com.vuitton.android.data.dto.booking.BookingInfoTypeDto;
import com.vuitton.android.data.dto.booking.BookingListDto;
import com.vuitton.android.data.dto.booking.BookingPassDto;
import com.vuitton.android.data.dto.booking.BookingTypeDto;
import com.vuitton.android.data.dto.booking.SingleTextLayoutDto;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoRoutes;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl;
import java.lang.annotation.Annotation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KClass;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SealedClassSerializer;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class xe implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81113b;

    public /* synthetic */ xe(int i2) {
        this.f81113b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f81113b) {
            case 0:
                return EnumsKt.a("com.vuitton.android.data.dto.booking.BookingActionTypeDto", BookingActionTypeDto.values(), new String[]{"addToCalendar", "qrCode", "cancel", "modify"}, new Annotation[][]{null, null, null, null});
            case 1:
                BookingConfirmedListDto.Companion companion = BookingConfirmedListDto.Companion;
                return new ArrayListSerializer(BookingDto$$serializer.f44651a);
            case 2:
                BookingDto.Companion companion2 = BookingDto.Companion;
                return BookingTypeDto.INSTANCE.serializer();
            case 3:
                BookingDto.Companion companion3 = BookingDto.Companion;
                return new ArrayListSerializer(BookingInfoDto$$serializer.f44725a);
            case 4:
                BookingDto.Companion companion4 = BookingDto.Companion;
                return new ArrayListSerializer(BookingActionDto$$serializer.f44623a);
            case 5:
                BookingExternalContentDto.Companion companion5 = BookingExternalContentDto.INSTANCE;
                return BookingExternalContentTypeDto.INSTANCE.serializer();
            case 6:
                return EnumsKt.a("com.vuitton.android.data.dto.booking.BookingExternalContentTypeDto", BookingExternalContentTypeDto.values(), new String[]{"pdf", "webview"}, new Annotation[][]{null, null});
            case 7:
                BookingFormCategoryDto.Companion companion6 = BookingFormCategoryDto.Companion;
                return new ArrayListSerializer(BookingFormCategoryOptionDto$$serializer.f44663a);
            case 8:
                BookingFormDto.Companion companion7 = BookingFormDto.INSTANCE;
                return new ArrayListSerializer(BookingFormStepDtoSerializer.f44719a);
            case 9:
                BookingFormResponseDto.Companion companion8 = BookingFormResponseDto.Companion;
                return BookingTypeDto.INSTANCE.serializer();
            case 10:
                BookingFormSlotDateDto.Companion companion9 = BookingFormSlotDateDto.Companion;
                return new ArrayListSerializer(BookingFormSlotDto$$serializer.f44694a);
            case 11:
                BookingFormSlotDateDto.Companion companion10 = BookingFormSlotDateDto.Companion;
                return new ArrayListSerializer(BookingFormSlotDto$$serializer.f44694a);
            case 12:
                BookingFormStepDataDto.Companion companion11 = BookingFormStepDataDto.Companion;
                ReflectionFactory reflectionFactory = Reflection.f71922a;
                return new SealedClassSerializer("com.vuitton.android.data.dto.booking.BookingFormStepDataDto", reflectionFactory.b(BookingFormStepDataDto.class), new KClass[]{reflectionFactory.b(BookingFormStepDataDto.DateDataDto.class), reflectionFactory.b(BookingFormStepDataDto.MultipleTextDataDto.class), reflectionFactory.b(BookingFormStepDataDto.SingleTextDataDto.class), reflectionFactory.b(BookingFormStepDataDto.SlotDataDto.class), reflectionFactory.b(BookingFormStepDataDto.UnknownDataDto.class)}, new KSerializer[]{BookingFormStepDataDto$DateDataDto$$serializer.f44698a, BookingFormStepDataDto$MultipleTextDataDto$$serializer.f44702a, BookingFormStepDataDto$SingleTextDataDto$$serializer.f44706a, BookingFormStepDataDto$SlotDataDto$$serializer.f44709a, new ObjectSerializer("com.vuitton.android.data.dto.booking.BookingFormStepDataDto.UnknownDataDto", BookingFormStepDataDto.UnknownDataDto.INSTANCE, new Annotation[0])}, new Annotation[0]);
            case 13:
                BookingFormStepDataDto.DateDataDto.Companion companion12 = BookingFormStepDataDto.DateDataDto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 14:
                BookingFormStepDataDto.MultipleTextDataDto.Companion companion13 = BookingFormStepDataDto.MultipleTextDataDto.Companion;
                return new ArrayListSerializer(BookingFormCategoryDto$$serializer.f44659a);
            case 15:
                BookingFormStepDataDto.SingleTextDataDto.Companion companion14 = BookingFormStepDataDto.SingleTextDataDto.Companion;
                return new ArrayListSerializer(BookingFormChoiceValueDto$$serializer.f44668a);
            case 16:
                BookingFormStepDataDto.SingleTextDataDto.Companion companion15 = BookingFormStepDataDto.SingleTextDataDto.Companion;
                return SingleTextLayoutDto.INSTANCE.serializer();
            case 17:
                BookingFormStepDataDto.SlotDataDto.Companion companion16 = BookingFormStepDataDto.SlotDataDto.Companion;
                return new ArrayListSerializer(BookingFormSlotDateDto$$serializer.f44690a);
            case 18:
                return new ObjectSerializer("com.vuitton.android.data.dto.booking.BookingFormStepDataDto.UnknownDataDto", BookingFormStepDataDto.UnknownDataDto.INSTANCE, new Annotation[0]);
            case 19:
                BookingInfoDto.Companion companion17 = BookingInfoDto.Companion;
                return BookingInfoTypeDto.Companion.serializer();
            case 20:
                return EnumsKt.a("com.vuitton.android.data.dto.booking.BookingInfoTypeDto", BookingInfoTypeDto.values(), new String[]{"text", "address", "phone"}, new Annotation[][]{null, null, null});
            case 21:
                BookingListDto.Companion companion18 = BookingListDto.Companion;
                return new ArrayListSerializer(BookingDto$$serializer.f44651a);
            case 22:
                BookingListDto.Companion companion19 = BookingListDto.Companion;
                return new ArrayListSerializer(BookingAdditionalDto$$serializer.f44628a);
            case 23:
                BookingPassDto.Companion companion20 = BookingPassDto.Companion;
                return new ArrayListSerializer(BookingInfoDto$$serializer.f44725a);
            case 24:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoRoutes.AccountStatus", BookingPersonalInfoRoutes.AccountStatus.INSTANCE, new Annotation[0]);
            case 25:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoRoutes.InfoForm", BookingPersonalInfoRoutes.InfoForm.INSTANCE, new Annotation[0]);
            case 26:
                String str = BookingPersonalInfoViewModelImpl.w;
                return "Failed to load the booking form";
            case 27:
                String str2 = BookingPersonalInfoViewModelImpl.w;
                return "Failed to get profile";
            case 28:
                String str3 = BookingPersonalInfoViewModelImpl.w;
                return "Failed to get booking policy";
            default:
                return "Failed to get account status";
        }
    }
}
