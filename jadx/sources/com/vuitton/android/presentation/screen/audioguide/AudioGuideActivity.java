package com.vuitton.android.presentation.screen.audioguide;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.RepeatOnLifecycleKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.presentation.link.navigation.ContributionLinkNavigator;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import com.vuitton.android.presentation.utils.SecurityUtils;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.ea;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class AudioGuideActivity extends Hilt_AudioGuideActivity {
    public static final Companion r = new Companion(null);
    public ContributionLinkNavigator p;
    public final ViewModelLazy q;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity$Companion;", "", "", "AUDIO_GUIDE_ID", "Ljava/lang/String;", "TRACK_ID", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Context context, String str, String str2) {
            context.getClass();
            str.getClass();
            Intent intent = new Intent(context, (Class<?>) AudioGuideActivity.class);
            intent.putExtra("audioGuideId", str);
            intent.putExtra("trackId", str2);
            return intent;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52965a;

        static {
            int[] iArr = new int[FeatureThemeUiModel.values().length];
            try {
                iArr[FeatureThemeUiModel.LIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FeatureThemeUiModel.DARK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f52965a = iArr;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.audioguide.AudioGuideActivity$onCreate$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.AudioGuideActivity$onCreate$1", f = "AudioGuideActivity.kt", l = {60}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f52966b;

        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.audioguide.AudioGuideActivity$onCreate$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.AudioGuideActivity$onCreate$1$1", f = "AudioGuideActivity.kt", l = {61}, m = "invokeSuspend", v = 2)
        final class C02631 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f52968b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AudioGuideActivity f52969c;

            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.audioguide.AudioGuideActivity$onCreate$1$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "theme", "Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
            @DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.AudioGuideActivity$onCreate$1$1$1", f = "AudioGuideActivity.kt", l = {}, m = "invokeSuspend", v = 2)
            final class C02641 extends SuspendLambda implements Function2<FeatureThemeUiModel, Continuation<? super Unit>, Object> {

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public /* synthetic */ Object f52970b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ AudioGuideActivity f52971c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C02641(AudioGuideActivity audioGuideActivity, Continuation continuation) {
                    super(2, continuation);
                    this.f52971c = audioGuideActivity;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    C02641 c02641 = new C02641(this.f52971c, continuation);
                    c02641.f52970b = obj;
                    return c02641;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    return ((C02641) create((FeatureThemeUiModel) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    SystemBarStyle systemBarStyleB;
                    FeatureThemeUiModel featureThemeUiModel = (FeatureThemeUiModel) this.f52970b;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    ResultKt.b(obj);
                    Companion companion = AudioGuideActivity.r;
                    int i2 = WhenMappings.f52965a[featureThemeUiModel.ordinal()];
                    if (i2 == 1) {
                        SystemBarStyle.f684e.getClass();
                        systemBarStyleB = SystemBarStyle.Companion.b(0, 0);
                    } else {
                        if (i2 != 2) {
                            v40.g();
                            return null;
                        }
                        SystemBarStyle.f684e.getClass();
                        systemBarStyleB = SystemBarStyle.Companion.a();
                    }
                    EdgeToEdge.a(this.f52971c, systemBarStyleB, systemBarStyleB);
                    return Unit.f71739a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02631(AudioGuideActivity audioGuideActivity, Continuation continuation) {
                super(2, continuation);
                this.f52969c = audioGuideActivity;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                return new C02631(this.f52969c, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return ((C02631) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                int i2 = this.f52968b;
                if (i2 == 0) {
                    ResultKt.b(obj);
                    Companion companion = AudioGuideActivity.r;
                    AudioGuideActivity audioGuideActivity = this.f52969c;
                    Flow flowO2 = ((AudioGuideViewModel) audioGuideActivity.q.getF71699b()).O2();
                    C02641 c02641 = new C02641(audioGuideActivity, null);
                    this.f52968b = 1;
                    if (FlowKt.g(flowO2, c02641, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                }
                return Unit.f71739a;
            }
        }

        public AnonymousClass1(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return AudioGuideActivity.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f52966b;
            if (i2 == 0) {
                ResultKt.b(obj);
                Lifecycle.State state = Lifecycle.State.STARTED;
                AudioGuideActivity audioGuideActivity = AudioGuideActivity.this;
                C02631 c02631 = new C02631(audioGuideActivity, null);
                this.f52966b = 1;
                if (RepeatOnLifecycleKt.b(audioGuideActivity, state, c02631, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            return Unit.f71739a;
        }
    }

    public AudioGuideActivity() {
        final Function0 function0 = null;
        this.q = new ViewModelLazy(Reflection.f71922a.b(AudioGuideViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.audioguide.AudioGuideActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.audioguide.AudioGuideActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.audioguide.AudioGuideActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SecurityUtils.b(this);
        SystemBarStyle.f684e.getClass();
        EdgeToEdge.a(this, SystemBarStyle.Companion.b(0, 0), SystemBarStyle.Companion.b(0, 0));
        BuildersKt.c(LifecycleOwnerKt.a(this), null, null, new AnonymousClass1(null), 3);
        ComponentActivityKt.a(this, new ComposableLambdaImpl(-1962880963, true, new ea(this, 0)));
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        SecurityUtils.a(this);
        super.onDestroy();
    }
}
