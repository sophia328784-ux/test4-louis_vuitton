package defpackage;

import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.kizitonwose.calendar.compose.CalendarState;
import com.kizitonwose.calendar.core.CalendarMonth;
import com.kizitonwose.calendar.core.OutDateStyle;
import com.vuitton.android.designkit.ui.theme.GradientKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.common.editorial.components.carousels.CarouselSItemKt;
import com.vuitton.android.presentation.compose.animation.Nav3TransitionsKt;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookContentKt;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarItemUiModel;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatMessagesKt;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatMessageUiModel;
import com.vuitton.android.presentation.screen.audioguide.components.AudioGuideLoadingScreenKt;
import com.vuitton.android.presentation.screen.booking.confirmation.components.BookingConfirmationScreenKt;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleSlotChipsKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleUiModel;
import com.vuitton.android.presentation.screen.booking.list.models.BookingAdditionalUiModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookUiModel;
import com.vuitton.android.presentation.screen.catalog.components.CatalogSubcategoryBottomSheetContentKt;
import com.vuitton.android.presentation.screen.certificates.components.add.AddCertificateComposableKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentFormBffComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentFormComponentKt;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyDualColorComparatorKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoLoadingScreenKt;
import com.vuitton.android.presentation.screen.privacy.components.headers.CcpaPrivacyHeaderKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.AssessmentInformationKt;
import java.time.DayOfWeek;
import java.time.YearMonth;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class t implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79920b;

    public /* synthetic */ t(int i2) {
        this.f79920b = i2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f79920b) {
            case 0:
                int iIntValue = ((Integer) obj).intValue();
                ChatMessageUiModel chatMessageUiModel = (ChatMessageUiModel) obj2;
                chatMessageUiModel.getClass();
                return iIntValue + "-" + chatMessageUiModel.f52903a;
            case 1:
                ((Integer) obj2).getClass();
                AICompanionChatMessagesKt.a((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 2:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                ((Integer) obj2).getClass();
                animatedContentTransitionScope.getClass();
                return Nav3TransitionsKt.b(animatedContentTransitionScope);
            case 3:
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                composer.L(-2051637690);
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Modifier modifierA = AlphaKt.a(new DTFunctionNameModifier("AccessibilityArrowButton$lambda$0"), LVAppDesignKitTheme.h(composer).d);
                composer.F();
                return modifierA;
            case 4:
                ((Integer) obj2).getClass();
                AddCertificateComposableKt.j((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 5:
                ((Integer) obj2).getClass();
                AddCertificateComposableKt.f((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 6:
                ((Integer) obj2).getClass();
                AddCertificateComposableKt.g((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 7:
                ((Integer) obj2).getClass();
                AddressBookContentKt.c((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 8:
                ((Integer) obj2).getClass();
                AssessmentFormBffComponentKt.b((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 9:
                ((Integer) obj2).getClass();
                AssessmentFormComponentKt.b((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 10:
                ((Integer) obj2).getClass();
                AssessmentInformationKt.a((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 11:
                ((Integer) obj2).getClass();
                AudioGuideLoadingScreenKt.a((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 12:
                ((Integer) obj).intValue();
                AvatarItemUiModel avatarItemUiModel = (AvatarItemUiModel) obj2;
                avatarItemUiModel.getClass();
                return avatarItemUiModel.f52326a;
            case 13:
                Composer composer2 = (Composer) obj;
                ((Integer) obj2).getClass();
                float f2 = BeautyDualColorComparatorKt.f62002a;
                composer2.L(-903160732);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                Modifier modifierA2 = BorderKt.a(new DTFunctionNameModifier("BeautyDualColorItem$lambda$0"), LVAppDesignKitTheme.d(composer2).f48385c, LVAppDesignKitTheme.c(composer2).f48361b.y, RoundedCornerShapeKt.f5846a);
                composer2.F();
                return modifierA2;
            case 14:
                ((Integer) obj2).getClass();
                BeautyVtoLoadingScreenKt.a((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 15:
                AnimatedContentTransitionScope animatedContentTransitionScope2 = (AnimatedContentTransitionScope) obj;
                ((Integer) obj2).getClass();
                animatedContentTransitionScope2.getClass();
                return Nav3TransitionsKt.b(animatedContentTransitionScope2);
            case 16:
                float f3 = BookingConfirmationScreenKt.f54386a;
                ((String) obj).getClass();
                ((String) obj2).getClass();
                return Unit.f71739a;
            case 17:
                Composer composer3 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer3.L(-410497277);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("BookingModule$lambda$8$3$0$2"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48416e, 7);
                composer3.F();
                return modifierM;
            case 18:
                ((Integer) obj2).getClass();
                BookingModuleSlotChipsKt.c((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 19:
                AnimatedContentTransitionScope animatedContentTransitionScope3 = (AnimatedContentTransitionScope) obj;
                ((Integer) obj2).getClass();
                animatedContentTransitionScope3.getClass();
                return Nav3TransitionsKt.b(animatedContentTransitionScope3);
            case 20:
                AnimatedContentTransitionScope animatedContentTransitionScope4 = (AnimatedContentTransitionScope) obj;
                ((Integer) obj2).getClass();
                animatedContentTransitionScope4.getClass();
                return Nav3TransitionsKt.b(animatedContentTransitionScope4);
            case 21:
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj2;
                String str = BookingPersonalInfoViewModelImpl.w;
                ((FormUiModel) obj).getClass();
                formFieldGenericUiModel.getClass();
                return formFieldGenericUiModel;
            case 22:
                ((Integer) obj).intValue();
                BookingFormModuleUiModel bookingFormModuleUiModel = (BookingFormModuleUiModel) obj2;
                int i2 = BookingReservationScreenKt.f54457b;
                bookingFormModuleUiModel.getClass();
                return bookingFormModuleUiModel.f54536a;
            case 23:
                ((Integer) obj).getClass();
                PreBookUiModel preBookUiModel = (PreBookUiModel) obj2;
                preBookUiModel.getClass();
                return preBookUiModel.f54820a;
            case 24:
                ((Integer) obj).getClass();
                BookingAdditionalUiModel bookingAdditionalUiModel = (BookingAdditionalUiModel) obj2;
                bookingAdditionalUiModel.getClass();
                return bookingAdditionalUiModel.f54603a;
            case 25:
                CalendarState calendarState = (CalendarState) obj2;
                CalendarState.Companion companion = CalendarState.f35926k;
                ((SaverScope) obj).getClass();
                calendarState.getClass();
                YearMonth yearMonthG = calendarState.g();
                YearMonth yearMonth = (YearMonth) ((SnapshotMutableStateImpl) calendarState.f35928b).getF10755b();
                YearMonth yearMonth2 = ((CalendarMonth) calendarState.f35930e.getF10755b()).f35957b;
                DayOfWeek dayOfWeek = (DayOfWeek) ((SnapshotMutableStateImpl) calendarState.f35929c).getF10755b();
                OutDateStyle outDateStyle = (OutDateStyle) ((SnapshotMutableStateImpl) calendarState.d).getF10755b();
                LazyListState lazyListState = calendarState.g;
                return CollectionsKt.P(yearMonthG, yearMonth, yearMonth2, dayOfWeek, outDateStyle, Integer.valueOf(lazyListState.h()), Integer.valueOf(lazyListState.i()));
            case 26:
                Composer composer4 = (Composer) obj;
                ((Integer) obj2).getClass();
                composer4.L(-1610650700);
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                Modifier modifierA3 = GradientKt.a(new DTFunctionNameModifier("CarouselAsset$lambda$0$1"), GradientKt.f48342a);
                composer4.F();
                return modifierA3;
            case 27:
                ((Integer) obj2).getClass();
                CarouselSItemKt.b((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            case 28:
                ((Integer) obj2).getClass();
                CatalogSubcategoryBottomSheetContentKt.b((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                CcpaPrivacyHeaderKt.a((Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ t(int i2, int i3) {
        this.f79920b = i3;
    }
}
