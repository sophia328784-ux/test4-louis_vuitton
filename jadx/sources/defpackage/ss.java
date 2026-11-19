package defpackage;

import android.app.ActivityManager;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.view.View;
import android.view.ViewParent;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.camera.video.internal.workaround.DefaultEncoderProfilesProvider;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.foundation.text.input.internal.InputMethodManagerImpl;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.window.DialogWindowProvider;
import androidx.compose.ui.window.PopupProperties;
import androidx.core.content.ContextCompat;
import coil3.ImageLoader;
import coil3.memory.MemoryCache;
import coil3.memory.RealMemoryCache;
import coil3.memory.RealStrongMemoryCache;
import coil3.memory.RealWeakMemoryCache;
import com.dynatrace.agent.userinteraction.handler.FingerInteractionCoordinator;
import com.dynatrace.agent.userinteraction.model.SequenceState;
import com.google.accompanist.drawablepainter.DrawablePainter;
import com.sightcall.livetranslation.history.HistoryCoordinator;
import com.sightcall.livetranslation.history.HistoryInteractorImpl;
import com.vuitton.android.R;
import com.vuitton.android.data.connectivity.lightup.LightUpProductDao_Impl;
import com.vuitton.android.data.database.room.LVAppDatabase_Impl;
import com.vuitton.android.designkit.ui.theme.atoms.DropdownState;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.presentation.LVApplication;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.account.inbox.InboxActivity;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxTrackingUIModel;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity;
import com.vuitton.android.presentation.screen.authentication.common.validation.EmailValidationRules;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModelImpl;
import com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.pairing.DeviceDetectedBottomSheet;
import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.details.disposition.DispositionListBottomSheet;
import com.vuitton.android.presentation.screen.distantrepairs.DistantRepairRouter;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentBffFragment;
import com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentFragment;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.feed.FeedViewModelImpl;
import com.vuitton.android.presentation.screen.feed.components.FeedScreenKt;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.android.presentation.screen.immersivearticle.models.CarouselArticleSectionUiModel;
import com.vuitton.android.presentation.screen.plp.activities.ExclusivePLPActivity;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import java.io.IOException;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.KTypeParameterBase;
import kotlin.jvm.internal.KotlinGenericDeclaration;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ss implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79871c;

    public /* synthetic */ ss(Object obj, int i2) {
        this.f79870b = i2;
        this.f79871c = obj;
    }

    /* JADX WARN: Type inference failed for: r3v5, types: [vc0] */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        Window window;
        int i2 = this.f79870b;
        int i3 = 1;
        Object obj = this.f79871c;
        switch (i2) {
            case 0:
                return ((DefaultEncoderProfilesProvider) obj).f3107c.k(34);
            case 1:
                PopupProperties popupProperties = DefaultTextContextMenuDropdownProvider_androidKt.f6100a;
                ((TextContextMenuSession) obj).close();
                return Unit.f71739a;
            case 2:
                return DeviceDetectedBottomSheet.V((DeviceDetectedBottomSheet) obj);
            case 3:
                return DispositionListBottomSheet.V((DispositionListBottomSheet) obj);
            case 4:
                DistantRepairAssessmentBffFragment distantRepairAssessmentBffFragment = (DistantRepairAssessmentBffFragment) obj;
                DistantRepairAssessmentBffFragment.Companion companion = DistantRepairAssessmentBffFragment.N;
                if (distantRepairAssessmentBffFragment.G != null) {
                    DistantRepairRouter.a(distantRepairAssessmentBffFragment.requireActivity());
                    return Unit.f71739a;
                }
                Intrinsics.h("distantRepairRouter");
                throw null;
            case 5:
                DistantRepairAssessmentFragment distantRepairAssessmentFragment = (DistantRepairAssessmentFragment) obj;
                DistantRepairAssessmentFragment.Companion companion2 = DistantRepairAssessmentFragment.M;
                if (distantRepairAssessmentFragment.G != null) {
                    DistantRepairRouter.a(distantRepairAssessmentFragment.requireActivity());
                    return Unit.f71739a;
                }
                Intrinsics.h("distantRepairRouter");
                throw null;
            case 6:
                SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) obj;
                if (softwareKeyboardController != null) {
                    softwareKeyboardController.b();
                }
                return Unit.f71739a;
            case 7:
                final DrawablePainter drawablePainter = (DrawablePainter) obj;
                return new Drawable.Callback() { // from class: com.google.accompanist.drawablepainter.DrawablePainter$callback$2$1
                    @Override // android.graphics.drawable.Drawable.Callback
                    public final void invalidateDrawable(Drawable drawable) {
                        drawable.getClass();
                        DrawablePainter drawablePainter2 = drawablePainter;
                        MutableState mutableState = drawablePainter2.f27763h;
                        ((SnapshotMutableStateImpl) mutableState).setValue(Integer.valueOf(((Number) ((SnapshotMutableStateImpl) mutableState).getF10755b()).intValue() + 1));
                        long jA = DrawablePainterKt.a(drawablePainter2.g);
                        ((SnapshotMutableStateImpl) drawablePainter2.f27764i).setValue(new Size(jA));
                    }

                    @Override // android.graphics.drawable.Drawable.Callback
                    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j2) {
                        drawable.getClass();
                        runnable.getClass();
                        ((Handler) DrawablePainterKt.f27768a.getF71699b()).postAtTime(runnable, j2);
                    }

                    @Override // android.graphics.drawable.Drawable.Callback
                    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
                        drawable.getClass();
                        runnable.getClass();
                        ((Handler) DrawablePainterKt.f27768a.getF71699b()).removeCallbacks(runnable);
                    }
                };
            case 8:
                EmailValidationRules emailValidationRules = (EmailValidationRules) obj;
                String str = emailValidationRules.f53488b;
                if (str != null) {
                    if (!StringKtExtKt.g(str)) {
                        str = null;
                    }
                    if (str != null) {
                        return new StringResourceUiModel.Text(str);
                    }
                }
                return emailValidationRules.f53487a ? new StringResourceUiModel.ResId(R.string.mylv_native_register_email_error_message, null, 2, null) : StringResourceUiModel.Empty.f51825b;
            case 9:
                ExclusivePLPActivity exclusivePLPActivity = (ExclusivePLPActivity) obj;
                ExclusivePLPActivity.Companion companion3 = ExclusivePLPActivity.p;
                AICompanionActivity.v.getClass();
                exclusivePLPActivity.startActivity(AICompanionActivity.Companion.a(exclusivePLPActivity));
                return Unit.f71739a;
            case 10:
                return FaqCategoriesActivity.H((FaqCategoriesActivity) obj);
            case 11:
                FeedTab feedTab = (FeedTab) obj;
                List list = FeedScreenKt.f57835a;
                return SnapshotStateKt.g(Boolean.valueOf(feedTab != null));
            case 12:
                FeedViewModelImpl feedViewModelImpl = (FeedViewModelImpl) obj;
                feedViewModelImpl.Ia();
                feedViewModelImpl.D9();
                return Unit.f71739a;
            case 13:
                FingerInteractionCoordinator fingerInteractionCoordinator = (FingerInteractionCoordinator) obj;
                SequenceState sequenceState = fingerInteractionCoordinator.g;
                sequenceState.getClass();
                SequenceState.Pending pending = sequenceState instanceof SequenceState.Pending ? (SequenceState.Pending) sequenceState : null;
                if (pending == null) {
                    return Unit.f71739a;
                }
                fingerInteractionCoordinator.g = SequenceState.Idle.f27166a;
                fingerInteractionCoordinator.b(pending);
                return Unit.f71739a;
            case 14:
                return (FormUiModel) ((ForgetPasswordViewModelImpl) obj).d.getF57468c().getValue();
            case 15:
                Function0 function0 = ((FormFieldUiModel) obj).f57498h;
                if (function0 != null) {
                    function0.mo47invoke();
                }
                return Boolean.TRUE;
            case 16:
                int i4 = GroupableFeature.f2019b;
                int i5 = GroupableFeature.WhenMappings.f2021a[((GroupableFeature) obj).getF2032e().ordinal()];
                if (i5 == 1) {
                    i3 = 0;
                } else if (i5 != 2) {
                    i3 = 3;
                    if (i5 == 3) {
                        i3 = 2;
                    } else if (i5 != 4) {
                        v40.g();
                        return null;
                    }
                }
                return Integer.valueOf(i3);
            case 17:
                return HistoryInteractorImpl.reducerConfigurator$lambda$0$1((HistoryCoordinator) obj);
            case 18:
                Http2Connection http2Connection = (Http2Connection) obj;
                Http2Connection.Companion companion4 = Http2Connection.C;
                http2Connection.getClass();
                try {
                    http2Connection.z.j(2, 0, false);
                    break;
                } catch (IOException e2) {
                    ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                    http2Connection.c(errorCode, errorCode, e2);
                }
                return Unit.f71739a;
            case 19:
                MemoryCache.Builder builder = new MemoryCache.Builder();
                final Context context = ((ImageLoader.Builder) obj).f21223a;
                final double d = 0.2d;
                try {
                    Object systemService = ContextCompat.getSystemService(context, ActivityManager.class);
                    systemService.getClass();
                    if (((ActivityManager) systemService).isLowRamDevice()) {
                        d = 0.15d;
                    }
                } catch (Exception unused) {
                }
                if (0.0d > d || d > 1.0d) {
                    md.n("percent must be in the range [0.0, 1.0].");
                    return null;
                }
                builder.f21508a = new Function0() { // from class: vc0
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int largeMemoryClass;
                        Context context2 = context;
                        try {
                            Object systemService2 = ContextCompat.getSystemService(context2, ActivityManager.class);
                            systemService2.getClass();
                            ActivityManager activityManager = (ActivityManager) systemService2;
                            largeMemoryClass = (context2.getApplicationInfo().flags & 1048576) != 0 ? activityManager.getLargeMemoryClass() : activityManager.getMemoryClass();
                        } catch (Exception unused2) {
                            largeMemoryClass = 256;
                        }
                        return Long.valueOf((long) (d * ((long) largeMemoryClass) * 1048576));
                    }
                };
                RealWeakMemoryCache realWeakMemoryCache = new RealWeakMemoryCache();
                vc0 vc0Var = builder.f21508a;
                if (vc0Var != null) {
                    return new RealMemoryCache(new RealStrongMemoryCache(((Number) vc0Var.mo47invoke()).longValue(), realWeakMemoryCache), realWeakMemoryCache);
                }
                md.k("maxSizeBytesFactory == null");
                return null;
            case 20:
                return Integer.valueOf(((CarouselArticleSectionUiModel) obj).d.size());
            case 21:
                InboxActivity inboxActivity = (InboxActivity) obj;
                InboxActivity.Companion companion5 = InboxActivity.s;
                inboxActivity.H().gc(InboxTrackingUIModel.TryAgainClicked.f52425a);
                inboxActivity.H().M();
                return Unit.f71739a;
            case 22:
                return Float.valueOf(SuspendAnimationKt.i(((CoroutineScope) obj).getF8068c()));
            case 23:
                Object systemService2 = ((InputMethodManagerImpl) obj).f6208a.getContext().getSystemService("input_method");
                systemService2.getClass();
                return (InputMethodManager) systemService2;
            case 24:
                Object obj2 = ((KTypeParameterBase) obj).f71913b;
                KotlinGenericDeclaration kotlinGenericDeclaration = obj2 instanceof KotlinGenericDeclaration ? (KotlinGenericDeclaration) obj2 : null;
                if (kotlinGenericDeclaration != null) {
                    return kotlinGenericDeclaration.findJavaDeclaration();
                }
                return null;
            case 25:
                int i6 = LVAppDatabase_Impl.s;
                return new LightUpProductDao_Impl((LVAppDatabase_Impl) obj);
            case 26:
                LVApplication.Companion companion6 = LVApplication.t;
                EnvironmentProvider environmentProvider = ((LVApplication) obj).p;
                if (environmentProvider != null) {
                    return environmentProvider.j();
                }
                Intrinsics.h("environmentProvider");
                throw null;
            case 27:
                DropdownState dropdownState = (DropdownState) obj;
                if (dropdownState.f48444b) {
                    ((SnapshotMutableStateImpl) dropdownState.f48445c).setValue(Boolean.FALSE);
                }
                return Unit.f71739a;
            case 28:
                return Float.valueOf(((MutableFloatState) obj).a());
            default:
                ViewParent parent = ((View) obj).getParent();
                DialogWindowProvider dialogWindowProvider = parent instanceof DialogWindowProvider ? (DialogWindowProvider) parent : null;
                if (dialogWindowProvider != null && (window = dialogWindowProvider.getL()) != null) {
                    window.setNavigationBarContrastEnforced(false);
                }
                return Unit.f71739a;
        }
    }
}
