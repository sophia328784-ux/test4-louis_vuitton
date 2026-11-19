package defpackage;

import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import com.dynamicyield.sdk.wrapper.core.enums.EngagementType;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.ChoiceSerializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.ChooseResponse;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.Cookie$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.common.CodeAndMessageWarnings;
import com.dynamicyield.sdk.wrapper.core.models.common.CodeWarning$$serializer;
import com.dynamicyield.sdk.wrapper.core.models.engagment.ClickEngagement;
import com.sightcall.graphik.ColorsKt;
import com.vuitton.android.data.dto.account.checkoutconfirmationdetail.CheckoutConfirmationDetailDto;
import com.vuitton.android.data.dto.account.checkoutconfirmationdetail.CheckoutItemDto$$serializer;
import com.vuitton.android.data.dto.account.orders.ChannelDto;
import com.vuitton.android.data.dto.aicompanion.ChatMessageDto;
import com.vuitton.android.data.dto.aicompanion.ChatMessageDto$$serializer;
import com.vuitton.android.data.dto.aicompanion.ChatMessageSectionDto$$serializer;
import com.vuitton.android.data.dto.aicompanion.ChatRoleDto;
import com.vuitton.android.data.dto.aicompanion.ChatSessionDto;
import com.vuitton.android.data.dto.cart.bff.CartSampleItemDto$$serializer;
import com.vuitton.android.data.dto.certificate.CertificateRubyDto;
import com.vuitton.android.data.dto.certificate.CertificateStatusDto;
import com.vuitton.android.data.dto.certificate.CertificateVisionnaireDto;
import com.vuitton.android.designkit.ui.theme.ColorKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.ComposableSingletons$AudioPlayerControlsKt;
import com.vuitton.android.presentation.screen.certificates.CertificateRoute;
import java.lang.annotation.Annotation;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.EnumsKt;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.ObjectSerializer;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class cm implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21183b;

    public /* synthetic */ cm(int i2) {
        this.f21183b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f21183b) {
            case 0:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.certificates.CertificateRoute.AddConfirmation", CertificateRoute.AddConfirmation.INSTANCE, new Annotation[0]);
            case 1:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.certificates.CertificateRoute.List", CertificateRoute.List.INSTANCE, new Annotation[0]);
            case 2:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.certificates.CertificateRoute.Transfer", CertificateRoute.Transfer.INSTANCE, new Annotation[0]);
            case 3:
                return new ObjectSerializer("com.vuitton.android.presentation.screen.certificates.CertificateRoute.TransferConfirmation", CertificateRoute.TransferConfirmation.INSTANCE, new Annotation[0]);
            case 4:
                CertificateRubyDto.Companion companion = CertificateRubyDto.INSTANCE;
                return CertificateStatusDto.Companion.serializer();
            case 5:
                return EnumsKt.a("com.vuitton.android.data.dto.certificate.CertificateStatusDto", CertificateStatusDto.values(), new String[]{"locked", "unlocked", "pending"}, new Annotation[][]{null, null, null});
            case 6:
                CertificateVisionnaireDto.Companion companion2 = CertificateVisionnaireDto.INSTANCE;
                return CertificateStatusDto.Companion.serializer();
            case 7:
                return EnumsKt.a("com.vuitton.android.data.dto.account.orders.ChannelDto", ChannelDto.values(), new String[]{"offline", "online", "phone"}, new Annotation[][]{null, null, null});
            case 8:
                ChatMessageDto.Companion companion3 = ChatMessageDto.Companion;
                return ChatRoleDto.Companion.serializer();
            case 9:
                ChatMessageDto.Companion companion4 = ChatMessageDto.Companion;
                return new ArrayListSerializer(ChatMessageSectionDto$$serializer.f44485a);
            case 10:
                return EnumsKt.a("com.vuitton.android.data.dto.aicompanion.ChatRoleDto", ChatRoleDto.values(), new String[]{"rootAgent", "user"}, new Annotation[][]{null, null});
            case 11:
                ChatSessionDto.Companion companion5 = ChatSessionDto.INSTANCE;
                return new ArrayListSerializer(ChatMessageDto$$serializer.f44482a);
            case 12:
                CheckoutConfirmationDetailDto.Companion companion6 = CheckoutConfirmationDetailDto.Companion;
                return new ArrayListSerializer(CheckoutItemDto$$serializer.f44312a);
            case 13:
                CheckoutConfirmationDetailDto.Companion companion7 = CheckoutConfirmationDetailDto.Companion;
                return new ArrayListSerializer(CartSampleItemDto$$serializer.f45018a);
            case 14:
                CheckoutConfirmationDetailDto.Companion companion8 = CheckoutConfirmationDetailDto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 15:
                CheckoutConfirmationDetailDto.Companion companion9 = CheckoutConfirmationDetailDto.Companion;
                return new ArrayListSerializer(StringSerializer.f75684a);
            case 16:
                ChooseResponse.Companion companion10 = ChooseResponse.Companion;
                return new ArrayListSerializer(ChoiceSerializer.f25944a);
            case 17:
                ChooseResponse.Companion companion11 = ChooseResponse.Companion;
                return new ArrayListSerializer(Cookie$$serializer.f26072a);
            case 18:
                ClickEngagement.Companion companion12 = ClickEngagement.INSTANCE;
                return new ArrayListSerializer(IntSerializer.f75624a);
            case 19:
                ClickEngagement.Companion companion13 = ClickEngagement.INSTANCE;
                EngagementType[] engagementTypeArrValues = EngagementType.values();
                engagementTypeArrValues.getClass();
                return new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.EngagementType", engagementTypeArrValues);
            case 20:
                CodeAndMessageWarnings.Companion companion14 = CodeAndMessageWarnings.Companion;
                return new ArrayListSerializer(CodeWarning$$serializer.f26182a);
            case 21:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = ColorKt.f48331a;
                throw new IllegalStateException("no local LV colors provided");
            case 22:
                return ColorSchemeKt.e(-1, 0L);
            case 23:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ColorSchemeKt.f6671a;
                return Boolean.TRUE;
            case 24:
                return ColorsKt.LocalVisionAppColors$lambda$0();
            case 25:
                ComposableSingletons$AudioPlayerControlsKt composableSingletons$AudioPlayerControlsKt = ComposableSingletons$AudioPlayerControlsKt.f53102a;
                return Unit.f71739a;
            case 26:
                ComposableSingletons$AudioPlayerControlsKt composableSingletons$AudioPlayerControlsKt2 = ComposableSingletons$AudioPlayerControlsKt.f53102a;
                return Unit.f71739a;
            case 27:
                ComposableSingletons$AudioPlayerControlsKt composableSingletons$AudioPlayerControlsKt3 = ComposableSingletons$AudioPlayerControlsKt.f53102a;
                return Unit.f71739a;
            case 28:
                ComposableSingletons$AudioPlayerControlsKt composableSingletons$AudioPlayerControlsKt4 = ComposableSingletons$AudioPlayerControlsKt.f53102a;
                return Unit.f71739a;
            default:
                ComposableSingletons$AudioPlayerControlsKt composableSingletons$AudioPlayerControlsKt5 = ComposableSingletons$AudioPlayerControlsKt.f53102a;
                return Unit.f71739a;
        }
    }
}
