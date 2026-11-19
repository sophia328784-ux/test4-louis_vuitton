package defpackage;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.material3.SheetValue;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.ParagraphStyle;
import coil3.compose.AsyncImagePainter;
import com.batch.android.s.b;
import com.dynamicyield.sdk.wrapper.core.enums.ChoiceType;
import com.dynamicyield.sdk.wrapper.core.models.choose.response.AssistantVariation;
import com.vuitton.android.presentation.ar.gesture.BaseGesture;
import com.vuitton.android.presentation.compose.animation.Nav3TransitionsKt;
import com.vuitton.android.presentation.extensions.SemanticsPropertyReceiverExtKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideTrackDetailBottomSheetKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyDualColorComparatorKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.EnumSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonBuilder;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class u5 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80227b;

    public /* synthetic */ u5(int i2) {
        this.f80227b = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f80227b) {
            case 0:
                ((Long) obj).longValue();
                return Unit.f71739a;
            case 1:
                AnnotatedString annotatedString = AnnotatedStringKt.f10431a;
                return Boolean.valueOf(!(((AnnotatedString.Annotation) obj) instanceof ParagraphStyle));
            case 2:
                JsonBuilder jsonBuilder = (JsonBuilder) obj;
                jsonBuilder.getClass();
                jsonBuilder.f75727c = true;
                return Unit.f71739a;
            case 3:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                classSerialDescriptorBuilder.getClass();
                EmptyList emptyList = EmptyList.f71768b;
                classSerialDescriptorBuilder.a(b.a.f24015b, IntSerializer.f75625b, emptyList, false);
                StringSerializer stringSerializer = StringSerializer.f75684a;
                classSerialDescriptorBuilder.a("name", StringSerializer.f75685b, emptyList, false);
                classSerialDescriptorBuilder.a("type", new EnumSerializer("com.dynamicyield.sdk.wrapper.core.enums.ChoiceType", ChoiceType.values()).getF19838b(), emptyList, false);
                classSerialDescriptorBuilder.a("variations", new ArrayListSerializer(AssistantVariation.INSTANCE.serializer()).f75570b, emptyList, false);
                classSerialDescriptorBuilder.a("groups", BuiltinSerializersKt.d(new ArrayListSerializer(stringSerializer)).getF19838b(), emptyList, true);
                classSerialDescriptorBuilder.a("decisionId", BuiltinSerializersKt.d(stringSerializer).getF19838b(), emptyList, true);
                return Unit.f71739a;
            case 4:
                AsyncImagePainter.State state = (AsyncImagePainter.State) obj;
                AsyncImagePainter.Companion companion = AsyncImagePainter.y;
                return state;
            case 5:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 6:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 7:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 8:
                SheetValue sheetValue = (SheetValue) obj;
                sheetValue.getClass();
                return Boolean.valueOf(sheetValue != SheetValue.PartiallyExpanded);
            case 9:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver);
                return Unit.f71739a;
            case 10:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.v(semanticsPropertyReceiver2, true);
                return Unit.f71739a;
            case 11:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.w(semanticsPropertyReceiver3, -1.0f);
                return Unit.f71739a;
            case 12:
                Integer num = (Integer) obj;
                num.intValue();
                float f2 = AudioGuideTrackDetailBottomSheetKt.f53032a;
                return num;
            case 13:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver4);
                return Unit.f71739a;
            case 14:
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver5.getClass();
                SemanticsPropertiesKt.w(semanticsPropertyReceiver5, -1.0f);
                return Unit.f71739a;
            case 15:
                SemanticsPropertyReceiver semanticsPropertyReceiver6 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver6.getClass();
                SemanticsPropertyReceiverExtKt.a(semanticsPropertyReceiver6);
                return Unit.f71739a;
            case 16:
                SemanticsPropertyReceiver semanticsPropertyReceiver7 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver7.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver7);
                return Unit.f71739a;
            case 17:
                BaseGesture baseGesture = (BaseGesture) obj;
                baseGesture.getClass();
                return Boolean.valueOf(baseGesture.d);
            case 18:
                int i2 = BasicTextFieldKt.f5854a;
                return Unit.f71739a;
            case 19:
                int i3 = BasicTextFieldKt.f5854a;
                return Unit.f71739a;
            case 20:
                Long l = (Long) obj;
                l.longValue();
                return l;
            case 21:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope.getClass();
                return animatedContentTransitionScope.d(AnimatedContentKt.e(EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), EnterExitTransitionKt.h(null, 3)), AnimatedContentKt.d(2));
            case 22:
                float f3 = BeautyDualColorComparatorKt.f62002a;
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 23:
                SemanticsPropertyReceiver semanticsPropertyReceiver8 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver8.getClass();
                SemanticsPropertyReceiverExtKt.a(semanticsPropertyReceiver8);
                return Unit.f71739a;
            case 24:
                return Integer.valueOf(((Integer) obj).intValue() * 2);
            case 25:
                return Integer.valueOf(((Integer) obj).intValue() * 2);
            case 26:
                AnimatedContentTransitionScope animatedContentTransitionScope2 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope2.getClass();
                return animatedContentTransitionScope2.d(AnimatedContentKt.e(EnterExitTransitionKt.d(AnimationSpecKt.c(500, 0, null, 6), null, null, 14).b(EnterExitTransitionKt.q(new u5(24), AnimationSpecKt.c(500, 0, null, 6))).b(EnterExitTransitionKt.f(AnimationSpecKt.c(500, 0, null, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2)), EnterExitTransitionKt.n(AnimationSpecKt.c(500, 0, null, 6), null, null, 14).b(EnterExitTransitionKt.u(new u5(25), AnimationSpecKt.c(500, 0, null, 6))).b(EnterExitTransitionKt.h(AnimationSpecKt.c(500, 0, null, 6), 2))), AnimatedContentKt.d(2));
            case 27:
                SheetValue sheetValue2 = (SheetValue) obj;
                sheetValue2.getClass();
                return Boolean.valueOf(sheetValue2 != SheetValue.PartiallyExpanded);
            case 28:
                AnimatedContentTransitionScope animatedContentTransitionScope3 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope3.getClass();
                return Nav3TransitionsKt.a(animatedContentTransitionScope3);
            default:
                AnimatedContentTransitionScope animatedContentTransitionScope4 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope4.getClass();
                return Nav3TransitionsKt.b(animatedContentTransitionScope4);
        }
    }
}
