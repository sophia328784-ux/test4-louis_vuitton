package defpackage;

import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.layout.ModifierInfo;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsModifier;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.room.TriggerBasedInvalidationTracker;
import androidx.sqlite.SQLiteStatement;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.UserSerializer;
import com.dynatrace.agent.compose.userinteraction.utils.UserInteractionUtilsKt;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.collections.SetsKt;
import kotlin.collections.builders.SetBuilder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.TypeReference;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.StringSerializer;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.teleal.cling.support.contentdirectory.callback.Browse;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y41 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81286b;

    public /* synthetic */ y41(TypeReference typeReference) {
        this.f81286b = 6;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f81286b) {
            case 0:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver);
                return Unit.f71739a;
            case 1:
                SQLiteStatement sQLiteStatement = (SQLiteStatement) obj;
                TriggerBasedInvalidationTracker.Companion companion = TriggerBasedInvalidationTracker.l;
                sQLiteStatement.getClass();
                SetBuilder setBuilder = new SetBuilder();
                while (sQLiteStatement.Q1()) {
                    setBuilder.add(Integer.valueOf((int) sQLiteStatement.getLong(0)));
                }
                return SetsKt.a(setBuilder);
            case 2:
                ((String) obj).getClass();
                return Unit.f71739a;
            case 3:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver2);
                return Unit.f71739a;
            case 4:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver3);
                return Unit.f71739a;
            case 5:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver4);
                return Unit.f71739a;
            case 6:
                KTypeProjection kTypeProjection = (KTypeProjection) obj;
                TypeReference.Companion companion2 = TypeReference.INSTANCE;
                kTypeProjection.getClass();
                KVariance kVariance = kTypeProjection.f71959a;
                if (kVariance == null) {
                    return Browse.CAPS_WILDCARD;
                }
                KType kType = kTypeProjection.f71960b;
                TypeReference typeReference = kType instanceof TypeReference ? (TypeReference) kType : null;
                String strG = typeReference != null ? typeReference.g(true) : String.valueOf(kType);
                int i2 = TypeReference.WhenMappings.f71934a[kVariance.ordinal()];
                if (i2 == 1) {
                    return strG;
                }
                if (i2 == 2) {
                    return "in ".concat(strG);
                }
                if (i2 == 3) {
                    return "out ".concat(strG);
                }
                v40.g();
                return null;
            case 7:
                ModifierInfo modifierInfo = (ModifierInfo) obj;
                Set set = UserInteractionUtilsKt.f26700a;
                modifierInfo.getClass();
                return modifierInfo.f9537a;
            case 8:
                SemanticsModifier semanticsModifier = (SemanticsModifier) obj;
                Set set2 = UserInteractionUtilsKt.f26700a;
                semanticsModifier.getClass();
                return Boolean.valueOf(semanticsModifier.i().f10312b.c(SemanticsProperties.z));
            case 9:
                SemanticsModifier semanticsModifier2 = (SemanticsModifier) obj;
                Set set3 = UserInteractionUtilsKt.f26700a;
                semanticsModifier2.getClass();
                return Role.a(((Role) semanticsModifier2.i().f(SemanticsProperties.z)).f10296a);
            case 10:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                UserSerializer userSerializer = UserSerializer.f25993a;
                classSerialDescriptorBuilder.getClass();
                EmptyList emptyList = EmptyList.f71768b;
                StringSerializer stringSerializer = StringSerializer.f75684a;
                classSerialDescriptorBuilder.a("dyid", BuiltinSerializersKt.d(stringSerializer).getF19838b(), emptyList, true);
                BooleanSerializer booleanSerializer = BooleanSerializer.f75574a;
                classSerialDescriptorBuilder.a("sharedDevice", BuiltinSerializersKt.d(booleanSerializer).getF19838b(), emptyList, true);
                classSerialDescriptorBuilder.a("cuid", BuiltinSerializersKt.d(stringSerializer).getF19838b(), emptyList, true);
                classSerialDescriptorBuilder.a("cuidType", BuiltinSerializersKt.d(stringSerializer).getF19838b(), emptyList, true);
                classSerialDescriptorBuilder.a("active_consent_accepted", BuiltinSerializersKt.d(booleanSerializer).getF19838b(), emptyList, true);
                return Unit.f71739a;
            case 11:
                return Unit.f71739a;
            case 12:
                float fFloatValue = ((Float) obj).floatValue();
                TwoWayConverter twoWayConverter = VectorConvertersKt.f4036a;
                return new AnimationVector1D(fFloatValue);
            case 13:
                int iIntValue = ((Integer) obj).intValue();
                TwoWayConverter twoWayConverter2 = VectorConvertersKt.f4036a;
                return new AnimationVector1D(iIntValue);
            case 14:
                TwoWayConverter twoWayConverter3 = VectorConvertersKt.f4036a;
                return Integer.valueOf((int) ((AnimationVector1D) obj).f3821a);
            case 15:
                TwoWayConverter twoWayConverter4 = VectorConvertersKt.f4036a;
                return new AnimationVector1D(((Dp) obj).f11006b);
            case 16:
                TwoWayConverter twoWayConverter5 = VectorConvertersKt.f4036a;
                return new Dp(((AnimationVector1D) obj).f3821a);
            case 17:
                DpOffset dpOffset = (DpOffset) obj;
                TwoWayConverter twoWayConverter6 = VectorConvertersKt.f4036a;
                return new AnimationVector2D(DpOffset.a(dpOffset.f11008a), DpOffset.b(dpOffset.f11008a));
            case 18:
                AnimationVector2D animationVector2D = (AnimationVector2D) obj;
                TwoWayConverter twoWayConverter7 = VectorConvertersKt.f4036a;
                float f2 = animationVector2D.f3823a;
                Dp.Companion companion3 = Dp.f11004c;
                return new DpOffset((((long) Float.floatToRawIntBits(animationVector2D.f3824b)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(f2)) << 32));
            case 19:
                Size size = (Size) obj;
                TwoWayConverter twoWayConverter8 = VectorConvertersKt.f4036a;
                return new AnimationVector2D(Float.intBitsToFloat((int) (size.f8822a >> 32)), Float.intBitsToFloat((int) (size.f8822a & BodyPartID.bodyIdMax)));
            case 20:
                AnimationVector2D animationVector2D2 = (AnimationVector2D) obj;
                TwoWayConverter twoWayConverter9 = VectorConvertersKt.f4036a;
                return new Size((((long) Float.floatToRawIntBits(animationVector2D2.f3824b)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(animationVector2D2.f3823a)) << 32));
            case 21:
                Offset offset = (Offset) obj;
                TwoWayConverter twoWayConverter10 = VectorConvertersKt.f4036a;
                return new AnimationVector2D(Float.intBitsToFloat((int) (offset.f8808a >> 32)), Float.intBitsToFloat((int) (offset.f8808a & BodyPartID.bodyIdMax)));
            case 22:
                AnimationVector2D animationVector2D3 = (AnimationVector2D) obj;
                TwoWayConverter twoWayConverter11 = VectorConvertersKt.f4036a;
                return new Offset((((long) Float.floatToRawIntBits(animationVector2D3.f3824b)) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(animationVector2D3.f3823a)) << 32));
            case 23:
                TwoWayConverter twoWayConverter12 = VectorConvertersKt.f4036a;
                long j2 = ((IntOffset) obj).f11014a;
                return new AnimationVector2D((int) (j2 >> 32), (int) (j2 & BodyPartID.bodyIdMax));
            case 24:
                AnimationVector2D animationVector2D4 = (AnimationVector2D) obj;
                TwoWayConverter twoWayConverter13 = VectorConvertersKt.f4036a;
                return new IntOffset((((long) Math.round(animationVector2D4.f3824b)) & BodyPartID.bodyIdMax) | (((long) Math.round(animationVector2D4.f3823a)) << 32));
            case 25:
                TwoWayConverter twoWayConverter14 = VectorConvertersKt.f4036a;
                long j3 = ((IntSize) obj).f11021a;
                return new AnimationVector2D((int) (j3 >> 32), (int) (j3 & BodyPartID.bodyIdMax));
            case 26:
                AnimationVector2D animationVector2D5 = (AnimationVector2D) obj;
                TwoWayConverter twoWayConverter15 = VectorConvertersKt.f4036a;
                int iRound = Math.round(animationVector2D5.f3823a);
                if (iRound < 0) {
                    iRound = 0;
                }
                int iRound2 = Math.round(animationVector2D5.f3824b);
                return new IntSize((((long) iRound) << 32) | (((long) (iRound2 >= 0 ? iRound2 : 0)) & BodyPartID.bodyIdMax));
            case 27:
                Rect rect = (Rect) obj;
                TwoWayConverter twoWayConverter16 = VectorConvertersKt.f4036a;
                return new AnimationVector4D(rect.f8811a, rect.f8812b, rect.f8813c, rect.d);
            case 28:
                AnimationVector4D animationVector4D = (AnimationVector4D) obj;
                TwoWayConverter twoWayConverter17 = VectorConvertersKt.f4036a;
                return new Rect(animationVector4D.f3829a, animationVector4D.f3830b, animationVector4D.f3831c, animationVector4D.d);
            default:
                TwoWayConverter twoWayConverter18 = VectorConvertersKt.f4036a;
                return Float.valueOf(((AnimationVector1D) obj).f3821a);
        }
    }

    public /* synthetic */ y41(int i2) {
        this.f81286b = i2;
    }
}
