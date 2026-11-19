package defpackage;

import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SheetValue;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.preferences.core.PreferencesFactory;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.SortOptionsSerializer;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.SortingDataSerializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.SortingRecsSlot;
import com.dynamicyield.sdk.wrapper.core.models.search.payload.SortOptions;
import com.dynatrace.android.agent.data.SessionParameterStoreKt;
import com.vuitton.android.data.dto.product.sizeguide.SizeGuideDropDownDto;
import com.vuitton.android.data.dto.product.sizeguide.mapper.SizeGuideDropDownMapperKt;
import com.vuitton.android.presentation.compose.animation.EnterTransitionKt;
import com.vuitton.android.presentation.compose.animation.ExitTransitionKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.options.settings.SettingsTracker;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KClass;
import kotlin.reflect.KProperty;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.PolymorphicSerializer;
import kotlinx.serialization.SerializersCacheKt;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.SerializerCache;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class av0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20642b;

    public /* synthetic */ av0(int i2) {
        this.f20642b = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f20642b) {
            case 0:
                KClass kClass = (KClass) obj;
                SerializerCache serializerCache = SerializersCacheKt.f75525a;
                kClass.getClass();
                KSerializer kSerializerD = SerializersKt.d(kClass);
                if (kSerializerD == null) {
                    kSerializerD = JvmClassMappingKt.b(kClass).isInterface() ? new PolymorphicSerializer(kClass) : null;
                }
                if (kSerializerD != null) {
                    return BuiltinSerializersKt.d(kSerializerD);
                }
                return null;
            case 1:
                return (String) obj;
            case 2:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver);
                return Unit.f71739a;
            case 3:
                ((AnimatedContentTransitionScope) obj).getClass();
                EnterTransition.f3626a.getClass();
                return EnterTransition.f3627b;
            case 4:
                ((AnimatedContentTransitionScope) obj).getClass();
                ExitTransition.f3629a.getClass();
                return ExitTransition.f3630b;
            case 5:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver2);
                return Unit.f71739a;
            case 6:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver3);
                return Unit.f71739a;
            case 7:
                KProperty[] kPropertyArr = SessionParameterStoreKt.f27504a;
                ((CorruptionException) obj).getClass();
                return PreferencesFactory.a();
            case 8:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope.getClass();
                return EnterTransitionKt.a(animatedContentTransitionScope, 0, 3);
            case 9:
                AnimatedContentTransitionScope animatedContentTransitionScope2 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope2.getClass();
                return ExitTransitionKt.a(animatedContentTransitionScope2, 0, 3);
            case 10:
                AnimatedContentTransitionScope animatedContentTransitionScope3 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope3.getClass();
                return EnterTransitionKt.b(animatedContentTransitionScope3, 0, 3);
            case 11:
                AnimatedContentTransitionScope animatedContentTransitionScope4 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope4.getClass();
                return ExitTransitionKt.b(animatedContentTransitionScope4, 0, 3);
            case 12:
                Pair pair = (Pair) obj;
                int i2 = SettingsTracker.f59994b;
                pair.getClass();
                return ((String) pair.f71705b) + "_" + ((Boolean) pair.f71706c).booleanValue();
            case 13:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 14:
                SheetValue sheetValue = (SheetValue) obj;
                sheetValue.getClass();
                return Boolean.valueOf(sheetValue != SheetValue.PartiallyExpanded);
            case 15:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                SemanticsPropertiesKt.v(semanticsPropertyReceiver4, true);
                SemanticsPropertiesKt.w(semanticsPropertyReceiver4, -1.0f);
                return Unit.f71739a;
            case 16:
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver5.getClass();
                SemanticsPropertiesKt.v(semanticsPropertyReceiver5, true);
                SemanticsPropertiesKt.w(semanticsPropertyReceiver5, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                return Unit.f71739a;
            case 17:
                SemanticsPropertyReceiver semanticsPropertyReceiver6 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver6.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver6);
                return Unit.f71739a;
            case 18:
                SheetState.Companion companion = SheetState.f7207h;
                return Boolean.TRUE;
            case 19:
                ((Boolean) obj).booleanValue();
                return Unit.f71739a;
            case 20:
                SizeGuideDropDownDto sizeGuideDropDownDto = (SizeGuideDropDownDto) obj;
                sizeGuideDropDownDto.getClass();
                return SizeGuideDropDownMapperKt.a(sizeGuideDropDownDto);
            case 21:
                SizeGuideDropDownDto sizeGuideDropDownDto2 = (SizeGuideDropDownDto) obj;
                sizeGuideDropDownDto2.getClass();
                return SizeGuideDropDownMapperKt.a(sizeGuideDropDownDto2);
            case 22:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 23:
                SemanticsPropertyReceiver semanticsPropertyReceiver7 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver7.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver7, 0);
                return Unit.f71739a;
            case 24:
                SemanticsPropertyReceiver semanticsPropertyReceiver8 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver8.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver8);
                return Unit.f71739a;
            case 25:
                av0 av0Var = SnapshotKt.f8481a;
                return Unit.f71739a;
            case 26:
                FormFieldGenericUiModel formFieldGenericUiModel = (FormFieldGenericUiModel) obj;
                formFieldGenericUiModel.getClass();
                return Boolean.valueOf(formFieldGenericUiModel.getD() == FormSectionTypeUiModel.ALL_MARKETING_COMMUNICATIONS_CONSENTS);
            case 27:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                SortOptionsSerializer sortOptionsSerializer = SortOptionsSerializer.f25989a;
                classSerialDescriptorBuilder.getClass();
                SerialDescriptor serialDescriptorA = SortOptions.ByPopularity.INSTANCE.serializer().getF19838b();
                EmptyList emptyList = EmptyList.f71768b;
                classSerialDescriptorBuilder.a("ByPopularity", serialDescriptorA, emptyList, false);
                classSerialDescriptorBuilder.a("ByField", SortOptions.ByField.INSTANCE.serializer().getF19838b(), emptyList, false);
                return Unit.f71739a;
            case 28:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder2 = (ClassSerialDescriptorBuilder) obj;
                SortingDataSerializer sortingDataSerializer = SortingDataSerializer.f25991a;
                classSerialDescriptorBuilder2.getClass();
                classSerialDescriptorBuilder2.a("slots", new ArrayListSerializer(SortingRecsSlot.INSTANCE.serializer()).f75570b, EmptyList.f71768b, false);
                return Unit.f71739a;
            default:
                return Unit.f71739a;
        }
    }
}
