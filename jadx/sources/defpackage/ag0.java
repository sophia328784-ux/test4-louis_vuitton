package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.PathMeasure;
import android.view.View;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.InitializerViewModelFactory;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavControllerViewModel;
import androidx.navigation.NavControllerViewModelKt;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.compose.BackStackEntryIdViewModel;
import androidx.navigation.internal.NavControllerImpl;
import androidx.navigation.internal.NavGraphImpl;
import androidx.navigation3.scene.Scene;
import androidx.navigation3.ui.AnimatedSceneKey;
import com.dynatrace.agent.api.OkHttpEventModifier;
import com.dynatrace.agent.events.enrichment.OkHttpModifierRegistry;
import com.sightcall.libraries.archi.nucleus.NucleusViewHolder;
import com.vuitton.android.R;
import com.vuitton.android.presentation.compose.animation.EnterTransitionKt;
import com.vuitton.android.presentation.compose.animation.ExitTransitionKt;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.onboarding.components.OnboardingIconComposableKt;
import java.lang.ref.WeakReference;
import java.util.concurrent.ConcurrentLinkedQueue;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.internal.PrimitiveSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import net.rtccloud.sdk.Call;
import okhttp3.Request;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ag0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f508b;

    public /* synthetic */ ag0(int i2) {
        this.f508b = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f508b) {
            case 0:
                FormSectionTypeUiModel formSectionTypeUiModel = (FormSectionTypeUiModel) obj;
                formSectionTypeUiModel.getClass();
                int i2 = NativeRegisterViewModelImpl.WhenMappings.f53723b[formSectionTypeUiModel.ordinal()];
                if (i2 == 4) {
                    return "nativeRegister_title_button";
                }
                if (i2 == 5) {
                    return "nativeRegister_firstName_textField";
                }
                if (i2 != 6) {
                    return null;
                }
                return "nativeRegister_lastName_textField";
            case 1:
                return new BackStackEntryIdViewModel(SavedStateHandleSupport.a((CreationExtras) obj));
            case 2:
                Context context = (Context) obj;
                boolean z = NavController.f18120i;
                context.getClass();
                if (context instanceof ContextWrapper) {
                    return ((ContextWrapper) context).getBaseContext();
                }
                return null;
            case 3:
                NavDestination navDestination = (NavDestination) obj;
                int i3 = NavControllerImpl.B;
                navDestination.getClass();
                NavGraph navGraph = navDestination.d;
                if (navGraph == null || navGraph.f18165h.f18348c != navDestination.f18152c.f18344e) {
                    return null;
                }
                return navGraph;
            case 4:
                NavDestination navDestination2 = (NavDestination) obj;
                int i4 = NavControllerImpl.B;
                navDestination2.getClass();
                NavGraph navGraph2 = navDestination2.d;
                if (navGraph2 == null || navGraph2.f18165h.f18348c != navDestination2.f18152c.f18344e) {
                    return null;
                }
                return navGraph2;
            case 5:
                NavOptionsBuilder navOptionsBuilder = (NavOptionsBuilder) obj;
                int i5 = NavControllerImpl.B;
                navOptionsBuilder.getClass();
                navOptionsBuilder.f18193c = true;
                return Unit.f71739a;
            case 6:
                NavDestination navDestination3 = (NavDestination) obj;
                int i6 = NavControllerImpl.B;
                navDestination3.getClass();
                return Integer.valueOf(navDestination3.f18152c.f18344e);
            case 7:
                InitializerViewModelFactory initializerViewModelFactory = NavControllerViewModelKt.f18130a;
                ((CreationExtras) obj).getClass();
                return new NavControllerViewModel();
            case 8:
                NavDestination navDestination4 = (NavDestination) obj;
                navDestination4.getClass();
                return navDestination4.d;
            case 9:
                return new AnimatedSceneKey((Scene) obj);
            case 10:
                return Unit.f71739a;
            case 11:
                NavDestination navDestination5 = (NavDestination) obj;
                navDestination5.getClass();
                if (!(navDestination5 instanceof NavGraph)) {
                    return null;
                }
                NavGraphImpl navGraphImpl = ((NavGraph) navDestination5).f18165h;
                return navGraphImpl.b(navGraphImpl.f18348c);
            case 12:
                return EnterExitTransitionKt.f(AnimationSpecKt.c(700, 0, null, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            case 13:
                return EnterExitTransitionKt.h(AnimationSpecKt.c(700, 0, null, 6), 2);
            case 14:
                return ((NavBackStackEntry) obj).g;
            case 15:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                PrimitiveSerialDescriptor primitiveSerialDescriptor = StringSerializer.f75685b;
                EmptyList emptyList = EmptyList.f71768b;
                classSerialDescriptorBuilder.a("type", primitiveSerialDescriptor, emptyList, false);
                classSerialDescriptorBuilder.a("value", SerialDescriptorsKt.d("Any", new SerialDescriptor[0]), emptyList, false);
                return Unit.f71739a;
            case 16:
                View view = (View) obj;
                view.getClass();
                Object parent = view.getParent();
                if (parent instanceof View) {
                    return (View) parent;
                }
                return null;
            case 17:
                View view2 = (View) obj;
                view2.getClass();
                Object tag = view2.getTag(R.id.nav_controller_view_tag);
                if (tag instanceof WeakReference) {
                    return (NavController) ((WeakReference) tag).get();
                }
                if (tag instanceof NavController) {
                    return (NavController) tag;
                }
                return null;
            case 18:
                NavOptionsBuilder navOptionsBuilder2 = (NavOptionsBuilder) obj;
                navOptionsBuilder2.getClass();
                navOptionsBuilder2.f18192b = true;
                return Unit.f71739a;
            case 19:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver);
                return Unit.f71739a;
            case 20:
                ((Long) obj).longValue();
                return Unit.f71739a;
            case 21:
                return NucleusViewHolder.render$lambda$0(obj);
            case 22:
                OkHttpEventModifier okHttpEventModifier = (OkHttpEventModifier) obj;
                ConcurrentLinkedQueue concurrentLinkedQueue = OkHttpModifierRegistry.f26768a;
                okHttpEventModifier.getClass();
                return okHttpEventModifier.a();
            case 23:
                OkHttpEventModifier okHttpEventModifier2 = (OkHttpEventModifier) obj;
                ConcurrentLinkedQueue concurrentLinkedQueue2 = OkHttpModifierRegistry.f26768a;
                okHttpEventModifier2.getClass();
                return okHttpEventModifier2.b();
            case 24:
                DrawScope drawScope = (DrawScope) obj;
                PathMeasure pathMeasure = OnboardingIconComposableKt.f59551a;
                drawScope.getClass();
                for (Path path : OnboardingIconComposableKt.f59552b) {
                    Color.f8866b.getClass();
                    long j2 = Color.f8870h;
                    Dp.Companion companion = Dp.f11004c;
                    DrawScope.U(drawScope, path, j2, new Stroke(5.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, null, 30, null), 52);
                }
                return Unit.f71739a;
            case 25:
                ((AnimatedContentTransitionScope) obj).getClass();
                return EnterExitTransitionKt.g(0.4f, AnimationSpecKt.c(500, 0, EasingKt.d, 2));
            case 26:
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope.getClass();
                return EnterTransitionKt.b(animatedContentTransitionScope, 0, 3);
            case 27:
                AnimatedContentTransitionScope animatedContentTransitionScope2 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope2.getClass();
                return ExitTransitionKt.b(animatedContentTransitionScope2, 0, 3);
            case 28:
                AnimatedContentTransitionScope animatedContentTransitionScope3 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope3.getClass();
                return EnterTransitionKt.a(animatedContentTransitionScope3, 0, 3);
            default:
                AnimatedContentTransitionScope animatedContentTransitionScope4 = (AnimatedContentTransitionScope) obj;
                animatedContentTransitionScope4.getClass();
                return ExitTransitionKt.a(animatedContentTransitionScope4, 0, 3);
        }
    }

    public /* synthetic */ ag0(Request request, Object obj, int i2) {
        this.f508b = i2;
    }
}
