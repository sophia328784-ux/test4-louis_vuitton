package defpackage;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.EndpointPayloadSerializer;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.FacetSerializer;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.AssistantPayload;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.ChoosePayload;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.EngagementsPayload;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.EventsPayload;
import com.dynamicyield.sdk.wrapper.core.models.common.payload.SearchPayload;
import com.dynamicyield.sdk.wrapper.core.models.search.response.StringFacetValue;
import com.vuitton.android.presentation.compose.animation.EnterTransitionKt;
import com.vuitton.android.presentation.compose.animation.ExitTransitionKt;
import com.vuitton.android.presentation.screen.account.editavatar.models.AvatarSectionUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.phone.PhoneType;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.text.MatchResult;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonBuilder;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class iv implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71205b;

    public /* synthetic */ iv(int i2) {
        this.f71205b = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f71205b) {
            case 0:
                ((PhoneType) obj).getClass();
                return Unit.f71739a;
            case 1:
                ((PhoneType) obj).getClass();
                return Unit.f71739a;
            case 2:
                ((FormFieldGenericUiModel) obj).getClass();
                return Boolean.TRUE;
            case 3:
                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj;
                formFieldUiModel.getClass();
                return formFieldUiModel;
            case 4:
                ((FormSectionTypeUiModel) obj).getClass();
                return null;
            case 5:
                ((FormSectionTypeUiModel) obj).getClass();
                return null;
            case 6:
                ((FormSectionTypeUiModel) obj).getClass();
                return null;
            case 7:
                AvatarSectionUiModel avatarSectionUiModel = (AvatarSectionUiModel) obj;
                avatarSectionUiModel.getClass();
                return avatarSectionUiModel.f52332a;
            case 8:
                return Unit.f71739a;
            case 9:
                return Unit.f71739a;
            case 10:
                JsonBuilder jsonBuilder = (JsonBuilder) obj;
                jsonBuilder.getClass();
                jsonBuilder.f75727c = true;
                jsonBuilder.f75725a = true;
                jsonBuilder.f75726b = false;
                return Unit.f71739a;
            case 11:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                EndpointPayloadSerializer endpointPayloadSerializer = EndpointPayloadSerializer.f25963a;
                classSerialDescriptorBuilder.getClass();
                SerialDescriptor serialDescriptorA = ChoosePayload.INSTANCE.serializer().getF19838b();
                EmptyList emptyList = EmptyList.f71768b;
                classSerialDescriptorBuilder.a("ChoosePayload", serialDescriptorA, emptyList, false);
                classSerialDescriptorBuilder.a("EventsPayload", EventsPayload.INSTANCE.serializer().getF19838b(), emptyList, false);
                classSerialDescriptorBuilder.a("EngagementsPayload", EngagementsPayload.INSTANCE.serializer().getF19838b(), emptyList, false);
                classSerialDescriptorBuilder.a("SearchPayload", SearchPayload.INSTANCE.serializer().getF19838b(), emptyList, false);
                classSerialDescriptorBuilder.a("AssistantPayload", AssistantPayload.INSTANCE.serializer().getF19838b(), emptyList, false);
                return Unit.f71739a;
            case 12:
                Integer num = (Integer) obj;
                num.intValue();
                EnterTransition enterTransition = EnterTransitionKt.f50932a;
                return num;
            case 13:
                ((Boolean) obj).booleanValue();
                return Unit.f71739a;
            case 14:
                CoroutineContext.Element element = (CoroutineContext.Element) obj;
                if (element instanceof ExecutorCoroutineDispatcher) {
                    return (ExecutorCoroutineDispatcher) element;
                }
                return null;
            case 15:
                MatchResult matchResult = (MatchResult) obj;
                matchResult.getClass();
                return matchResult.getValue();
            case 16:
                Cause cause = (Cause) obj;
                cause.getClass();
                return cause.f9e;
            case 17:
                Integer num2 = (Integer) obj;
                num2.intValue();
                ExitTransition exitTransition = ExitTransitionKt.f50933a;
                return num2;
            case 18:
                ((AnimatedContentTransitionScope) obj).getClass();
                EnterTransition.f3626a.getClass();
                EnterTransition enterTransition2 = EnterTransition.f3627b;
                ExitTransition.f3629a.getClass();
                return AnimatedContentKt.e(enterTransition2, ExitTransition.f3630b);
            case 19:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.a(semanticsPropertyReceiver);
                return Unit.f71739a;
            case 20:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder2 = (ClassSerialDescriptorBuilder) obj;
                FacetSerializer facetSerializer = FacetSerializer.f25967a;
                classSerialDescriptorBuilder2.getClass();
                EmptyList emptyList2 = EmptyList.f71768b;
                PrimitiveSerialDescriptor primitiveSerialDescriptor = StringSerializer.f75685b;
                classSerialDescriptorBuilder2.a("column", primitiveSerialDescriptor, emptyList2, false);
                classSerialDescriptorBuilder2.a("displayName", primitiveSerialDescriptor, emptyList2, false);
                classSerialDescriptorBuilder2.a("valuesType", primitiveSerialDescriptor, emptyList2, false);
                PrimitiveSerialDescriptor primitiveSerialDescriptor2 = FloatSerializer.f75617b;
                classSerialDescriptorBuilder2.a("min", primitiveSerialDescriptor2, emptyList2, true);
                classSerialDescriptorBuilder2.a("max", primitiveSerialDescriptor2, emptyList2, true);
                classSerialDescriptorBuilder2.a("values", new ArrayListSerializer(StringFacetValue.INSTANCE.serializer()).f75570b, emptyList2, true);
                return Unit.f71739a;
            case 21:
                return Unit.f71739a;
            case 22:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 23:
                return Integer.valueOf(-((Integer) obj).intValue());
            case 24:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 25:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 26:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 27:
                ((String) obj).getClass();
                return Unit.f71739a;
            case 28:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            default:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
        }
    }
}
