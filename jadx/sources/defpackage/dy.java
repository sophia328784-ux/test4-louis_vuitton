package defpackage;

import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.material3.FloatingActionButtonKt;
import androidx.compose.runtime.snapshots.GlobalSnapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.datastore.core.CorruptionException;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.fragment.FragmentNavigator;
import coil3.compose.AsyncImagePainter;
import com.dynamicyield.sdk.wrapper.core.managers.serialization.customSerialization.FilterSerializer;
import com.dynamicyield.sdk.wrapper.core.models.search.payload.Filter;
import com.google.firebase.sessions.settings.SessionConfigsSerializer;
import com.sightcall.gpslocation.datasource.GpsDatasource;
import com.vuitton.android.presentation.extensions.SemanticsPropertyReceiverExtKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoader$Zoomable$State;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import java.util.List;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class dy implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68699b;

    public /* synthetic */ dy(int i2) {
        this.f68699b = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f68699b) {
            case 0:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 1:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 2:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 3:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 4:
                ((AnimatedContentTransitionScope) obj).getClass();
                EnterTransition.f3626a.getClass();
                return EnterTransition.f3627b;
            case 5:
                ((AnimatedContentTransitionScope) obj).getClass();
                ExitTransition.f3629a.getClass();
                return ExitTransition.f3630b;
            case 6:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                FilterSerializer filterSerializer = FilterSerializer.f25969a;
                classSerialDescriptorBuilder.getClass();
                SerialDescriptor serialDescriptorA = Filter.StringFilter.INSTANCE.serializer().getF19850b();
                EmptyList emptyList = EmptyList.f71768b;
                classSerialDescriptorBuilder.a("StringFilter", serialDescriptorA, emptyList, false);
                classSerialDescriptorBuilder.a("NumericFilter", Filter.NumericFilter.INSTANCE.serializer().getF19850b(), emptyList, false);
                return Unit.f71739a;
            case 7:
                ((CorruptionException) obj).getClass();
                return SessionConfigsSerializer.f35593b;
            case 8:
                float f2 = FloatingActionButtonKt.f6988a;
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o((SemanticsPropertyReceiver) obj, 0);
                return Unit.f71739a;
            case 9:
                return Unit.f71739a;
            case 10:
                return Unit.f71739a;
            case 11:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                ContentType.f8649a.getClass();
                SemanticsPropertiesKt.j(semanticsPropertyReceiver, ContentType.Companion.K);
                return Unit.f71739a;
            case 12:
                FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel.getClass();
                int i2 = ForgetPasswordViewModelImpl.WhenMappings.f53511a[formSectionTypeUiModel.ordinal()];
                if (i2 == 1) {
                    return "nativeForgetPassword_password_textField";
                }
                if (i2 != 2) {
                    return null;
                }
                return "nativeForgetPassword_confirmPassword_textField";
            case 13:
                ((Boolean) obj).booleanValue();
                return Unit.f71739a;
            case 14:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                ContentType.f8649a.getClass();
                SemanticsPropertiesKt.j(semanticsPropertyReceiver2, ContentType.Companion.E);
                return Unit.f71739a;
            case 15:
                Pair pair = (Pair) obj;
                int i3 = FragmentNavigator.f18300j;
                pair.getClass();
                return (String) pair.f71705b;
            case 16:
                int i4 = FragmentNavigator.f18300j;
                ((CreationExtras) obj).getClass();
                return new FragmentNavigator.ClearEntryStateViewModel();
            case 17:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver3);
                return Unit.f71739a;
            case 18:
                int i5 = GlobalSnapshot.p;
                synchronized (SnapshotKt.f8483c) {
                    List list = SnapshotKt.f8487i;
                    int size = list.size();
                    for (int i6 = 0; i6 < size; i6++) {
                        ((Function1) list.get(i6)).invoke(obj);
                    }
                }
                return Unit.f71739a;
            case 19:
                return GpsDatasource.startGps$lambda$0((Exception) obj);
            case 20:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver4);
                return Unit.f71739a;
            case 21:
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver5.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver5);
                return Unit.f71739a;
            case 22:
                SemanticsPropertyReceiver semanticsPropertyReceiver6 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver6.getClass();
                SemanticsPropertyReceiverExtKt.a(semanticsPropertyReceiver6);
                return Unit.f71739a;
            case 23:
                return Unit.f71739a;
            case 24:
                ((ImageLoader$Zoomable$State) obj).getClass();
                return Unit.f71739a;
            case 25:
                ((AsyncImagePainter.State.Success) obj).getClass();
                return Unit.f71739a;
            case 26:
                ((AsyncImagePainter.State.Error) obj).getClass();
                return Unit.f71739a;
            case 27:
                ((ImageLoader$Zoomable$State) obj).getClass();
                return Unit.f71739a;
            case 28:
                ((AsyncImagePainter.State.Success) obj).getClass();
                return Unit.f71739a;
            default:
                ((AsyncImagePainter.State.Error) obj).getClass();
                return Unit.f71739a;
        }
    }
}
