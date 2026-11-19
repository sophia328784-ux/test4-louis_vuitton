package defpackage;

import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.batch.android.s.b;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.ChoiceSerializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.Variation;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.ComposableSingletons$AICompanionChatMessagesKt;
import com.vuitton.android.presentation.screen.audioguide.components.ComposableSingletons$AudioGuideLanguageSelectorKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.ComposableSingletons$AudioPlayerControlsKt;
import com.vuitton.android.presentation.screen.booking.form.components.ComposableSingletons$BookingReservationScreenKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormUiModel;
import com.vuitton.android.presentation.screen.booking.summary.components.ComposableSingletons$BookingSummaryScreenKt;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.sections.ComposableSingletons$AssessmentSendComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.Step;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class km implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71683b;

    public /* synthetic */ km(int i2) {
        this.f71683b = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f71683b) {
            case 0:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                ChoiceSerializer choiceSerializer = ChoiceSerializer.f25944a;
                classSerialDescriptorBuilder.getClass();
                EmptyList emptyList = EmptyList.f71768b;
                classSerialDescriptorBuilder.a(b.a.f24015b, IntSerializer.f75625b, emptyList, false);
                StringSerializer stringSerializer = StringSerializer.f75684a;
                PrimitiveSerialDescriptor primitiveSerialDescriptor = StringSerializer.f75685b;
                classSerialDescriptorBuilder.a("name", primitiveSerialDescriptor, emptyList, false);
                classSerialDescriptorBuilder.a("type", primitiveSerialDescriptor, emptyList, false);
                classSerialDescriptorBuilder.a("variations", new ArrayListSerializer(Variation.INSTANCE.serializer()).f75570b, emptyList, false);
                classSerialDescriptorBuilder.a("groups", new ArrayListSerializer(BuiltinSerializersKt.d(stringSerializer)).f75570b, emptyList, false);
                classSerialDescriptorBuilder.a("decisionId", BuiltinSerializersKt.d(stringSerializer).getF19838b(), emptyList, false);
                break;
            case 1:
                break;
            case 2:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver);
                break;
            case 3:
                ((Boolean) obj).booleanValue();
                break;
            case 4:
                ComposableSingletons$AICompanionChatMessagesKt composableSingletons$AICompanionChatMessagesKt = ComposableSingletons$AICompanionChatMessagesKt.f52817a;
                ((String) obj).getClass();
                break;
            case 5:
                ComposableSingletons$AICompanionChatMessagesKt composableSingletons$AICompanionChatMessagesKt2 = ComposableSingletons$AICompanionChatMessagesKt.f52817a;
                ((String) obj).getClass();
                break;
            case 6:
                ComposableSingletons$AICompanionChatMessagesKt composableSingletons$AICompanionChatMessagesKt3 = ComposableSingletons$AICompanionChatMessagesKt.f52817a;
                break;
            case 7:
                ComposableSingletons$AICompanionChatMessagesKt composableSingletons$AICompanionChatMessagesKt4 = ComposableSingletons$AICompanionChatMessagesKt.f52817a;
                ((String) obj).getClass();
                break;
            case 8:
                ComposableSingletons$AssessmentSendComponentKt composableSingletons$AssessmentSendComponentKt = ComposableSingletons$AssessmentSendComponentKt.f57085a;
                ((Step) obj).getClass();
                break;
            case 9:
                ComposableSingletons$AssessmentSendComponentKt composableSingletons$AssessmentSendComponentKt2 = ComposableSingletons$AssessmentSendComponentKt.f57085a;
                ((Step) obj).getClass();
                break;
            case 10:
                ComposableSingletons$AudioGuideLanguageSelectorKt composableSingletons$AudioGuideLanguageSelectorKt = ComposableSingletons$AudioGuideLanguageSelectorKt.f53020a;
                ((String) obj).getClass();
                break;
            case 11:
                ((Long) obj).longValue();
                ComposableSingletons$AudioPlayerControlsKt composableSingletons$AudioPlayerControlsKt = ComposableSingletons$AudioPlayerControlsKt.f53102a;
                break;
            case 12:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((List) obj).getClass();
                break;
            case 13:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt2 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((ContributionLinkUiModel) obj).getClass();
                break;
            case 14:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt3 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((String) obj).getClass();
                break;
            case 15:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt4 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((BookingFormUiModel) obj).getClass();
                break;
            case 16:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt5 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((List) obj).getClass();
                break;
            case 17:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt6 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((ContributionLinkUiModel) obj).getClass();
                break;
            case 18:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt7 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((String) obj).getClass();
                break;
            case 19:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt8 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((BookingFormUiModel) obj).getClass();
                break;
            case 20:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt9 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((List) obj).getClass();
                break;
            case 21:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt10 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((ContributionLinkUiModel) obj).getClass();
                break;
            case 22:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt11 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((String) obj).getClass();
                break;
            case 23:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt12 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((BookingFormUiModel) obj).getClass();
                break;
            case 24:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt13 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((List) obj).getClass();
                break;
            case 25:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt14 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((ContributionLinkUiModel) obj).getClass();
                break;
            case 26:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt15 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((String) obj).getClass();
                break;
            case 27:
                ComposableSingletons$BookingReservationScreenKt composableSingletons$BookingReservationScreenKt16 = ComposableSingletons$BookingReservationScreenKt.f54474a;
                ((BookingFormUiModel) obj).getClass();
                break;
            case 28:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                ComposableSingletons$BookingSummaryScreenKt composableSingletons$BookingSummaryScreenKt = ComposableSingletons$BookingSummaryScreenKt.f54796a;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver2);
                break;
            default:
                ComposableSingletons$BookingSummaryScreenKt composableSingletons$BookingSummaryScreenKt2 = ComposableSingletons$BookingSummaryScreenKt.f54796a;
                ((ContributionLinkUiModel) obj).getClass();
                break;
        }
        return Unit.f71739a;
    }
}
