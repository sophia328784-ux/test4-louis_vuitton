package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import androidx.camera.lifecycle.ProcessCameraProvider;
import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.foundation.lazy.grid.GridItemSpan;
import androidx.compose.foundation.lazy.grid.LazyGridItemSpanScope;
import androidx.compose.foundation.lazy.grid.LazyGridSpanKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.SheetValue;
import androidx.compose.material3.tokens.MotionTokens;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.appsflyer.sdk_base.referrer.Payload;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.QsrProductRecsDataSerializer;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.QuerySerializer;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.RecsDataSerializer;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.QsrProductRecsSlot;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.RecsSlot;
import com.dynamicyield.sdk.wrapper.core.models.search.payload.Query;
import com.linkplay.medialib.server.HttpServer;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.vuitton.android.presentation.compose.animation.EnterTransitionKt;
import com.vuitton.android.presentation.compose.animation.ExitTransitionKt;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterDataTypeUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFiltersCategoryUiModel;
import com.vuitton.android.presentation.screen.privacy.PrivacyActivity;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KProperty;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.json.JsonElement;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class yn0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81396b;

    public /* synthetic */ yn0(int i2) {
        this.f81396b = i2;
    }

    /* JADX WARN: Code duplicated, block: B:50:0x01fa  */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String str;
        switch (this.f81396b) {
            case 0:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope.getClass();
                return ExitTransitionKt.a(animatedContentTransitionScope, 0, 3);
            case 1:
                AnimatedContentTransitionScope animatedContentTransitionScope2 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope2.getClass();
                return EnterTransitionKt.b(animatedContentTransitionScope2, 0, 3);
            case 2:
                AnimatedContentTransitionScope animatedContentTransitionScope3 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope3.getClass();
                return ExitTransitionKt.b(animatedContentTransitionScope3, 0, 3);
            case 3:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.w(semanticsPropertyReceiver, 1.0f);
                return Unit.f71739a;
            case 4:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver2, 0);
                return Unit.f71739a;
            case 5:
                SheetValue sheetValue = (SheetValue) obj;
                PrivacyActivity.Companion companion = PrivacyActivity.s;
                sheetValue.getClass();
                return Boolean.valueOf(sheetValue != SheetValue.Hidden);
            case 6:
                AnimatedContentTransitionScope animatedContentTransitionScope4 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope4.getClass();
                return EnterTransitionKt.a(animatedContentTransitionScope4, 0, 3);
            case 7:
                AnimatedContentTransitionScope animatedContentTransitionScope5 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope5.getClass();
                return ExitTransitionKt.a(animatedContentTransitionScope5, 0, 3);
            case 8:
                AnimatedContentTransitionScope animatedContentTransitionScope6 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope6.getClass();
                return EnterTransitionKt.b(animatedContentTransitionScope6, 0, 3);
            case 9:
                AnimatedContentTransitionScope animatedContentTransitionScope7 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope7.getClass();
                return ExitTransitionKt.b(animatedContentTransitionScope7, 0, 3);
            case 10:
                return ProcessCameraProvider.f2705c;
            case 11:
                Context context = (Context) obj;
                List<ResolveInfo> listQueryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent().setAction("android.intent.action.PROCESS_TEXT").setType(HttpServer.MIME_PLAINTEXT), 0);
                ArrayList arrayList = new ArrayList(listQueryIntentActivities.size());
                int size = listQueryIntentActivities.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ResolveInfo resolveInfo = listQueryIntentActivities.get(i2);
                    ResolveInfo resolveInfo2 = resolveInfo;
                    if (context.getPackageName().equals(resolveInfo2.activityInfo.packageName)) {
                        arrayList.add(resolveInfo);
                    } else {
                        ActivityInfo activityInfo = resolveInfo2.activityInfo;
                        if (activityInfo.exported && ((str = activityInfo.permission) == null || context.checkSelfPermission(str) == 0)) {
                            arrayList.add(resolveInfo);
                        }
                    }
                }
                return arrayList;
            case 12:
                KeyframesSpec.KeyframesSpecConfig keyframesSpecConfig = (KeyframesSpec.KeyframesSpecConfig) obj;
                float f2 = ProgressIndicatorKt.f7152a;
                keyframesSpecConfig.f3899a = 6000;
                Float fValueOf = Float.valueOf(90.0f);
                keyframesSpecConfig.a(300, fValueOf).f3896b = MotionTokens.f7812b;
                keyframesSpecConfig.a(1500, fValueOf);
                Float fValueOf2 = Float.valueOf(180.0f);
                keyframesSpecConfig.a(1800, fValueOf2);
                keyframesSpecConfig.a(HarvestConfiguration.SLOW_START_THRESHOLD, fValueOf2);
                Float fValueOf3 = Float.valueOf(270.0f);
                keyframesSpecConfig.a(3300, fValueOf3);
                keyframesSpecConfig.a(4500, fValueOf3);
                Float fValueOf4 = Float.valueOf(360.0f);
                keyframesSpecConfig.a(4800, fValueOf4);
                keyframesSpecConfig.a(6000, fValueOf4);
                return Unit.f71739a;
            case 13:
                ProgressBarRangeInfo.d.getClass();
                ProgressBarRangeInfo progressBarRangeInfo = ProgressBarRangeInfo.f10285e;
                KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10333c;
                KProperty kProperty = SemanticsPropertiesKt.f10359a[1];
                semanticsPropertyKey.getClass();
                ((SemanticsPropertyReceiver) obj).a(semanticsPropertyKey, progressBarRangeInfo);
                return Unit.f71739a;
            case 14:
                ((Boolean) obj).booleanValue();
                return Unit.f71739a;
            case 15:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                QsrProductRecsDataSerializer qsrProductRecsDataSerializer = QsrProductRecsDataSerializer.f25978a;
                classSerialDescriptorBuilder.getClass();
                EmptyList emptyList = EmptyList.f71768b;
                classSerialDescriptorBuilder.a(Payload.CUSTOM, BuiltinSerializersKt.d(JsonElement.INSTANCE.serializer()).getF19850b(), emptyList, false);
                classSerialDescriptorBuilder.a("slots", new ArrayListSerializer(QsrProductRecsSlot.INSTANCE.serializer()).f75570b, emptyList, false);
                return Unit.f71739a;
            case 16:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder2 = (ClassSerialDescriptorBuilder) obj;
                QuerySerializer querySerializer = QuerySerializer.f25980a;
                classSerialDescriptorBuilder2.getClass();
                SerialDescriptor f19850b = Query.SemanticQuery.INSTANCE.serializer().getF19850b();
                EmptyList emptyList2 = EmptyList.f71768b;
                classSerialDescriptorBuilder2.a("SemanticQuery", f19850b, emptyList2, false);
                classSerialDescriptorBuilder2.a("VisualQuery", Query.VisualQuery.INSTANCE.serializer().getF19850b(), emptyList2, false);
                return Unit.f71739a;
            case 17:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 18:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver3, Role.f10293h);
                return Unit.f71739a;
            case 19:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver4, Role.f10293h);
                return Unit.f71739a;
            case 20:
                ((AnimatedContentTransitionScope) obj).getClass();
                return AnimatedContentKt.e(EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), EnterExitTransitionKt.h(null, 3));
            case 21:
                ProductFiltersCategoryUiModel productFiltersCategoryUiModel = (ProductFiltersCategoryUiModel) obj;
                productFiltersCategoryUiModel.getClass();
                return productFiltersCategoryUiModel.d;
            case 22:
                ProductFilterDataTypeUiModel.Simple simple = (ProductFilterDataTypeUiModel.Simple) obj;
                simple.getClass();
                return simple.f62961a;
            case 23:
                ProductFilterValueUiModel productFilterValueUiModel = (ProductFilterValueUiModel) obj;
                productFilterValueUiModel.getClass();
                return Boolean.valueOf(productFilterValueUiModel.f62968e);
            case 24:
                ((FiltersButtonState) obj).getClass();
                return Unit.f71739a;
            case 25:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder3 = (ClassSerialDescriptorBuilder) obj;
                RecsDataSerializer recsDataSerializer = RecsDataSerializer.f25982a;
                classSerialDescriptorBuilder3.getClass();
                EmptyList emptyList3 = EmptyList.f71768b;
                classSerialDescriptorBuilder3.a(Payload.CUSTOM, BuiltinSerializersKt.d(JsonElement.INSTANCE.serializer()).getF19850b(), emptyList3, false);
                classSerialDescriptorBuilder3.a("slots", new ArrayListSerializer(RecsSlot.INSTANCE.serializer()).f75570b, emptyList3, false);
                return Unit.f71739a;
            case 26:
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver5.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver5, 0);
                SemanticsPropertiesKt.p(semanticsPropertyReceiver5, true);
                return Unit.f71739a;
            case 27:
                LazyGridItemSpanScope lazyGridItemSpanScope = (LazyGridItemSpanScope) obj;
                lazyGridItemSpanScope.getClass();
                return new GridItemSpan(LazyGridSpanKt.a(lazyGridItemSpanScope.a()));
            case 28:
                FocusProperties focusProperties = (FocusProperties) obj;
                focusProperties.getClass();
                focusProperties.b(false);
                return Unit.f71739a;
            default:
                SemanticsPropertyReceiver semanticsPropertyReceiver6 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver6.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver6, 0);
                SemanticsPropertiesKt.d(semanticsPropertyReceiver6);
                return Unit.f71739a;
        }
    }
}
