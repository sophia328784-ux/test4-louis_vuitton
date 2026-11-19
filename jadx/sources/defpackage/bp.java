package defpackage;

import android.net.Uri;
import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.DraggableElement;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.work.Data;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.CustomJsonPayloadSerializer;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.DYEventSerializer;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.DefaultRecsProductDataSerializer;
import com.dynamicyield.sdk.wrapper.core.models.event.CustomEvent;
import com.dynamicyield.sdk.wrapper.core.models.event.PredefinedEvent;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.presentation.redirectlink.DeepLink;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityAdapter;
import com.vuitton.android.presentation.screen.connectivity.home.ConnectivityView;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffFragment;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormFragment;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import java.util.Arrays;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonObject;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class bp implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20911b;

    public /* synthetic */ bp(int i2) {
        this.f20911b = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f20911b) {
            case 0:
                int i2 = ConnectivityAdapter.g;
                ((LVLightUpTrackingUiModel) obj).getClass();
                return Unit.f71739a;
            case 1:
                ((ConnectivityView) obj).B();
                return Unit.f71739a;
            case 2:
                ((ConnectivityView) obj).H(null, null, null);
                return Unit.f71739a;
            case 3:
                return Unit.f71739a;
            case 4:
                CoroutineContext.Element element = (CoroutineContext.Element) obj;
                if (element instanceof CoroutineDispatcher) {
                    return (CoroutineDispatcher) element;
                }
                return null;
            case 5:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                CustomJsonPayloadSerializer customJsonPayloadSerializer = CustomJsonPayloadSerializer.f25947a;
                classSerialDescriptorBuilder.getClass();
                EmptyList emptyList = EmptyList.f71768b;
                classSerialDescriptorBuilder.a("type", StringSerializer.f75685b, emptyList, false);
                classSerialDescriptorBuilder.a(DbParams.KEY_DATA, JsonObject.INSTANCE.serializer().getF19838b(), emptyList, false);
                return Unit.f71739a;
            case 6:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, Role.f10293h);
                return Unit.f71739a;
            case 7:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder2 = (ClassSerialDescriptorBuilder) obj;
                DYEventSerializer dYEventSerializer = DYEventSerializer.f25953a;
                classSerialDescriptorBuilder2.getClass();
                SerialDescriptor serialDescriptorA = PredefinedEvent.INSTANCE.serializer().getF19838b();
                EmptyList emptyList2 = EmptyList.f71768b;
                classSerialDescriptorBuilder2.a("PredefinedEvent", serialDescriptorA, emptyList2, false);
                classSerialDescriptorBuilder2.a("CustomEvent", CustomEvent.INSTANCE.serializer().getF19838b(), emptyList2, false);
                return Unit.f71739a;
            case 8:
                Map.Entry entry = (Map.Entry) obj;
                Data.Companion companion = Data.f20243b;
                entry.getClass();
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                StringBuilder sbU = n00.u(str, " : ");
                if (value instanceof Object[]) {
                    value = Arrays.toString((Object[]) value);
                    value.getClass();
                }
                sbU.append(value);
                return sbU.toString();
            case 9:
                return Unit.f71739a;
            case 10:
                Integer num = (Integer) obj;
                num.intValue();
                float f2 = DatePickerKt.f6780a;
                return num;
            case 11:
                float f3 = DatePickerKt.f6780a;
                SemanticsPropertiesKt.h((SemanticsPropertyReceiver) obj);
                return Unit.f71739a;
            case 12:
                float f4 = DatePickerKt.f6780a;
                SemanticsPropertiesKt.h((SemanticsPropertyReceiver) obj);
                return Unit.f71739a;
            case 13:
                return Unit.f71739a;
            case 14:
                int i3 = 23;
                SemanticsPropertiesKt.l((SemanticsPropertyReceiver) obj, new ScrollAxisRange(new iq(i3), new iq(i3), false, 4, null));
                return Unit.f71739a;
            case 15:
                return Unit.f71739a;
            case 16:
                JsonBuilder jsonBuilder = (JsonBuilder) obj;
                jsonBuilder.getClass();
                jsonBuilder.f75727c = true;
                return Unit.f71739a;
            case 17:
                DeepLink deepLink = (DeepLink) obj;
                deepLink.getClass();
                return deepLink.getHost();
            case 18:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder3 = (ClassSerialDescriptorBuilder) obj;
                DefaultRecsProductDataSerializer defaultRecsProductDataSerializer = DefaultRecsProductDataSerializer.f25959a;
                classSerialDescriptorBuilder3.getClass();
                EmptyList emptyList3 = EmptyList.f71768b;
                StringSerializer stringSerializer = StringSerializer.f75684a;
                classSerialDescriptorBuilder3.a("product_type", BuiltinSerializersKt.d(stringSerializer).getF19838b(), emptyList3, false);
                classSerialDescriptorBuilder3.a("group_id", BuiltinSerializersKt.d(stringSerializer).getF19838b(), emptyList3, false);
                classSerialDescriptorBuilder3.a("name", BuiltinSerializersKt.d(stringSerializer).getF19838b(), emptyList3, false);
                classSerialDescriptorBuilder3.a(ConfigurationName.DOWNLOAD_PLUGIN_URL, BuiltinSerializersKt.d(stringSerializer).getF19838b(), emptyList3, false);
                classSerialDescriptorBuilder3.a("price", BuiltinSerializersKt.d(FloatSerializer.f75616a).getF19838b(), emptyList3, false);
                classSerialDescriptorBuilder3.a("in_stock", BuiltinSerializersKt.d(BooleanSerializer.f75574a).getF19838b(), emptyList3, false);
                classSerialDescriptorBuilder3.a("image_url", BuiltinSerializersKt.d(stringSerializer).getF19838b(), emptyList3, false);
                classSerialDescriptorBuilder3.a("categories", BuiltinSerializersKt.d(new ArrayListSerializer(BuiltinSerializersKt.d(stringSerializer))).getF19838b(), emptyList3, false);
                classSerialDescriptorBuilder3.a("keywords", BuiltinSerializersKt.d(new ArrayListSerializer(BuiltinSerializersKt.d(stringSerializer))).getF19838b(), emptyList3, false);
                classSerialDescriptorBuilder3.a("brand", BuiltinSerializersKt.d(stringSerializer).getF19838b(), emptyList3, false);
                classSerialDescriptorBuilder3.a("searchpass", BuiltinSerializersKt.d(new ArrayListSerializer(BuiltinSerializersKt.d(stringSerializer))).getF19838b(), emptyList3, false);
                return Unit.f71739a;
            case 19:
                SemanticsPropertiesKt.v((SemanticsPropertyReceiver) obj, true);
                return Unit.f71739a;
            case 20:
                return Unit.f71739a;
            case 21:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver2);
                return Unit.f71739a;
            case 22:
                DistantRepairFormBffFragment.Companion companion2 = DistantRepairFormBffFragment.M;
                ((Uri) obj).getClass();
                return Unit.f71739a;
            case 23:
                DistantRepairFormFragment.Companion companion3 = DistantRepairFormFragment.M;
                ((Uri) obj).getClass();
                return Unit.f71739a;
            case 24:
                ((Integer) obj).intValue();
                return Unit.f71739a;
            case 25:
                ((Integer) obj).intValue();
                return Unit.f71739a;
            case 26:
                float f5 = DragGestureDetectorKt.f4487a;
                return Unit.f71739a;
            case 27:
                float f6 = DragGestureDetectorKt.f4487a;
                return Unit.f71739a;
            case 28:
                bp bpVar = DraggableElement.f4558j;
                return Boolean.TRUE;
            default:
                ((FormSectionTypeUiModel) obj).getClass();
                return Unit.f71739a;
        }
    }
}
