package defpackage;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.foundation.FocusableNode;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuItem;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSession;
import androidx.compose.foundation.text.contextmenu.internal.DefaultTextContextMenuDropdownProvider_androidKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MovableContentStateReference;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.PinnableContainerKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.window.PopupProperties;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.compose.DialogNavigator;
import androidx.navigation.fragment.FragmentNavigator;
import com.sightcall.advancedannotations.domain.drawer.AnnotationId;
import com.sightcall.advancedannotations.domain.event.DrivenEventInterpreterKt;
import com.vuitton.android.core.helper.DebounceHandler;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleCardTypeUiModel;
import com.vuitton.android.presentation.compose.components.CollapsingState;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.model.common.VideoIdUiModel;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.ForgetPasswordViewModel;
import com.vuitton.android.presentation.screen.authentication.forgetpassword.models.ForgetPasswordTrackingUiModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormBottomSheetScreen;
import com.vuitton.android.presentation.screen.distantrepairs.form.models.Step;
import com.vuitton.android.presentation.screen.distantrepairs.tracking.DistantRepairTrackingUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldBooleanUiModel;
import com.vuitton.android.presentation.screen.feed.FeedDestinations;
import com.vuitton.android.presentation.screen.feed.FeedDestinationsKt;
import com.vuitton.android.presentation.screen.feed.FeedViewModel;
import com.vuitton.android.presentation.screen.feed.models.CalendarEventData;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTracker;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModel;
import com.vuitton.android.presentation.screen.feed.models.tracking.FeedTrackingUiModelKt;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleActivity;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleCtaUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleFashionShowSectionUiModel;
import com.vuitton.android.presentation.screen.options.dispatch.DispatchCountryViewModel;
import com.vuitton.android.presentation.screen.options.dispatch.models.DispatchViewState;
import com.vuitton.android.presentation.screen.options.notifications.components.ExpandableHeaderKt;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.ProductFilterValueUiModel;
import com.vuitton.android.presentation.screen.search.models.HistoryItemUiModel;
import com.vuitton.android.presentation.screen.storemode.filters.components.ImageFilterComponentKt;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.io.IOException;
import java.util.Objects;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.serialization.internal.EnumDescriptor;
import kotlinx.serialization.internal.EnumSerializer;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.platform.Platform;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class dt implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f68659c;
    public final /* synthetic */ Object d;

    public /* synthetic */ dt(NavBackStackEntry navBackStackEntry, NavController.NavControllerNavigatorState navControllerNavigatorState, FragmentNavigator fragmentNavigator, Fragment fragment) {
        this.f68658b = 19;
        this.f68659c = navControllerNavigatorState;
        this.d = fragment;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [kotlinx.serialization.descriptors.SerialDescriptor] */
    /* JADX WARN: Type inference failed for: r1v7, types: [kotlinx.serialization.internal.EnumDescriptor, kotlinx.serialization.internal.PluginGeneratedSerialDescriptor] */
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        CollapsingState collapsingState;
        long jA;
        Http2Stream[] http2StreamArr = null;
        switch (this.f68658b) {
            case 0:
                TextContextMenuItem textContextMenuItem = (TextContextMenuItem) this.f68659c;
                TextContextMenuSession textContextMenuSession = (TextContextMenuSession) this.d;
                PopupProperties popupProperties = DefaultTextContextMenuDropdownProvider_androidKt.f6100a;
                textContextMenuItem.d.invoke(textContextMenuSession);
                return Unit.f71739a;
            case 1:
                ((DialogNavigator) this.f68659c).i((NavBackStackEntry) this.d, false);
                return Unit.f71739a;
            case 2:
                MutableState mutableState = (MutableState) this.f68659c;
                DispatchCountryViewModel dispatchCountryViewModel = (DispatchCountryViewModel) this.d;
                InAppDispatch inAppDispatch = ((DispatchViewState) mutableState.getF10755b()).d;
                if (inAppDispatch != null) {
                    dispatchCountryViewModel.i2(inAppDispatch, true);
                }
                return Unit.f71739a;
            case 3:
                ((Function1) this.f68659c).invoke((Step) this.d);
                return Unit.f71739a;
            case 4:
                DistantRepairFormBffViewModel distantRepairFormBffViewModel = (DistantRepairFormBffViewModel) this.f68659c;
                Function1 function1 = (Function1) this.d;
                distantRepairFormBffViewModel.d(DistantRepairTrackingUiModel.HowToTakePictureClickedEvent.f57434a);
                function1.invoke(DistantRepairFormBottomSheetScreen.BottomSheetTutorial.f57248a);
                return Unit.f71739a;
            case 5:
                DistantRepairFormViewModel distantRepairFormViewModel = (DistantRepairFormViewModel) this.f68659c;
                Function1 function2 = (Function1) this.d;
                distantRepairFormViewModel.d(DistantRepairTrackingUiModel.HowToTakePictureClickedEvent.f57434a);
                function2.invoke(DistantRepairFormBottomSheetScreen.BottomSheetTutorial.f57248a);
                return Unit.f71739a;
            case 6:
                return DrivenEventInterpreterKt.fadeOut$lambda$0((Function1) this.f68659c, (AnnotationId) this.d);
            case 7:
                DebounceHandler debounceHandler = (DebounceHandler) this.f68659c;
                Function0 function0 = (Function0) this.d;
                debounceHandler.getClass();
                function0.getClass();
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (jCurrentTimeMillis - debounceHandler.f43514b > debounceHandler.f43513a) {
                    debounceHandler.f43514b = jCurrentTimeMillis;
                    function0.mo47invoke();
                }
                return Unit.f71739a;
            case 8:
                ((Function1) this.f68659c).invoke(((EditorialModuleCardTypeUiModel.Live) ((EditorialModuleCardTypeUiModel) this.d)).f50806a.f50864c);
                return Unit.f71739a;
            case 9:
                EnumSerializer enumSerializer = (EnumSerializer) this.f68659c;
                String str = (String) this.d;
                Object enumDescriptor = enumSerializer.f75611b;
                if (enumDescriptor == 0) {
                    Enum[] enumArr = enumSerializer.f75610a;
                    enumDescriptor = new EnumDescriptor(str, enumArr.length);
                    for (Enum r0 : enumArr) {
                        enumDescriptor.k(r0.name(), false);
                    }
                }
                return enumDescriptor;
            case 10:
                Function1 function3 = (Function1) this.f68659c;
                int i2 = ExpandableHeaderKt.WhenMappings.f59905a[((CollapsingState) this.d).ordinal()];
                if (i2 == 1) {
                    collapsingState = CollapsingState.EXPANDED;
                } else {
                    if (i2 != 2) {
                        v40.g();
                        return null;
                    }
                    collapsingState = CollapsingState.COLLAPSED;
                }
                function3.invoke(collapsingState);
                return Unit.f71739a;
            case 11:
                FeedViewModel feedViewModel = (FeedViewModel) this.f68659c;
                Function0 function4 = (Function0) this.d;
                feedViewModel.c();
                function4.mo47invoke();
                return Unit.f71739a;
            case 12:
                FeedViewModel feedViewModel2 = (FeedViewModel) this.f68659c;
                PermissionsViewModel permissionsViewModel = (PermissionsViewModel) this.d;
                feedViewModel2.qa(null);
                permissionsViewModel.Gb();
                return Unit.f71739a;
            case 13:
                FeedTracker feedTracker = (FeedTracker) this.f68659c;
                Context context = (Context) this.d;
                feedTracker.f57933a.a(FeedTrackingUiModelKt.a(FeedTrackingUiModel.OpenLVPassEvent.f57971a));
                AppCompatActivity appCompatActivityB = ContextExtKt.b(context);
                if (appCompatActivityB != null) {
                    appCompatActivityB.startActivity(FeedDestinationsKt.a(FeedDestinations.ToLVPassPage.f57590a, appCompatActivityB));
                }
                return Unit.f71739a;
            case 14:
                ((FeedViewModel) this.f68659c).n1((CalendarEventData) this.d);
                return Unit.f71739a;
            case 15:
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) this.f68659c;
                FocusableNode focusableNode = (FocusableNode) this.d;
                FocusableNode.TraverseKey traverseKey = FocusableNode.x;
                ref$ObjectRef.f71921b = CompositionLocalConsumerModifierNodeKt.a(focusableNode, PinnableContainerKt.f9546a);
                return Unit.f71739a;
            case 16:
                ForgetPasswordViewModel forgetPasswordViewModel = (ForgetPasswordViewModel) this.f68659c;
                Function0 function5 = (Function0) this.d;
                forgetPasswordViewModel.y4(ForgetPasswordTrackingUiModel.OnCloseEvent.f53575a);
                function5.mo47invoke();
                return Unit.f71739a;
            case 17:
                ((Function1) this.f68659c).invoke(Boolean.valueOf(!((FormFieldBooleanUiModel) this.d).f57505a));
                return Unit.f71739a;
            case 18:
                ((Function1) this.f68659c).invoke(((FormFieldUiModel) this.d).d);
                return Unit.f71739a;
            case 19:
                NavController.NavControllerNavigatorState navControllerNavigatorState = (NavController.NavControllerNavigatorState) this.f68659c;
                Fragment fragment = (Fragment) this.d;
                int i3 = FragmentNavigator.f18300j;
                for (NavBackStackEntry navBackStackEntry : (Iterable) navControllerNavigatorState.f18214f.getValue()) {
                    if (FragmentNavigator.n()) {
                        Objects.toString(navBackStackEntry);
                        Objects.toString(fragment);
                    }
                    navControllerNavigatorState.b(navBackStackEntry);
                }
                return Unit.f71739a;
            case 20:
                GapComposer gapComposer = (GapComposer) this.f68659c;
                MovableContentStateReference movableContentStateReference = (MovableContentStateReference) this.d;
                gapComposer.j0(movableContentStateReference.f8024a, movableContentStateReference.g, movableContentStateReference.f8025b, true);
                return Unit.f71739a;
            case 21:
                ((Function1) this.f68659c).invoke((HistoryItemUiModel.HistoryProductUiModel) this.d);
                return Unit.f71739a;
            case 22:
                ((Function1) this.f68659c).invoke((HistoryItemUiModel.HistoryResearchUiModel) this.d);
                return Unit.f71739a;
            case 23:
                Http2Connection http2Connection = (Http2Connection) this.f68659c;
                Http2Stream http2Stream = (Http2Stream) this.d;
                try {
                    http2Connection.f77230c.b(http2Stream);
                    break;
                } catch (IOException e2) {
                    Platform.f77312a.getClass();
                    Platform.f77313b.e(4, "Http2Connection.Listener failure for " + http2Connection.f77231e, e2);
                    try {
                        http2Stream.d(ErrorCode.PROTOCOL_ERROR, e2);
                        break;
                    } catch (IOException unused) {
                    }
                }
                return Unit.f71739a;
            case 24:
                Http2Connection.ReaderRunnable readerRunnable = (Http2Connection.ReaderRunnable) this.f68659c;
                Settings settings = (Settings) this.d;
                Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                Http2Connection http2Connection2 = readerRunnable.f77245c;
                synchronized (http2Connection2.z) {
                    synchronized (http2Connection2) {
                        try {
                            Settings settings2 = http2Connection2.u;
                            Settings settings3 = new Settings();
                            settings2.getClass();
                            for (int i4 = 0; i4 < 10; i4++) {
                                if (((1 << i4) & settings2.f77288a) != 0) {
                                    settings3.b(i4, settings2.f77289b[i4]);
                                }
                            }
                            for (int i5 = 0; i5 < 10; i5++) {
                                if (((1 << i5) & settings.f77288a) != 0) {
                                    settings3.b(i5, settings.f77289b[i5]);
                                }
                            }
                            ref$ObjectRef2.f71921b = settings3;
                            jA = ((long) settings3.a()) - ((long) settings2.a());
                            if (jA != 0 && !http2Connection2.d.isEmpty()) {
                                http2StreamArr = (Http2Stream[]) http2Connection2.d.values().toArray(new Http2Stream[0]);
                            }
                            Settings settings4 = (Settings) ref$ObjectRef2.f71921b;
                            settings4.getClass();
                            http2Connection2.u = settings4;
                            TaskQueue.b(http2Connection2.l, http2Connection2.f77231e + " onSettings", 0L, new dt(http2Connection2, ref$ObjectRef2, 25), 6);
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    try {
                        http2Connection2.z.c((Settings) ref$ObjectRef2.f71921b);
                    } catch (IOException e3) {
                        ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                        http2Connection2.c(errorCode, errorCode, e3);
                    }
                    break;
                }
                if (http2StreamArr != null) {
                    for (Http2Stream http2Stream2 : http2StreamArr) {
                        synchronized (http2Stream2) {
                            http2Stream2.f77264f += jA;
                            if (jA > 0) {
                                http2Stream2.notifyAll();
                            }
                            break;
                        }
                    }
                }
                return Unit.f71739a;
            case 25:
                Http2Connection http2Connection3 = (Http2Connection) this.f68659c;
                http2Connection3.f77230c.a(http2Connection3, (Settings) ((Ref$ObjectRef) this.d).f71921b);
                return Unit.f71739a;
            case 26:
                ProductFilterValueUiModel productFilterValueUiModel = (ProductFilterValueUiModel) this.f68659c;
                Function2 function6 = (Function2) this.d;
                float f2 = ImageFilterComponentKt.f65006a;
                String str2 = productFilterValueUiModel.d;
                if (str2 != null) {
                    function6.invoke(productFilterValueUiModel.f62966b, str2);
                }
                return Unit.f71739a;
            case 27:
                ImmersiveArticleActivity.N((ImmersiveArticleActivity) this.f68659c, (ContributionLinkUiModel.ImmersiveArticle) this.d);
                return Unit.f71739a;
            case 28:
                Function2 function7 = (Function2) this.f68659c;
                ImmersiveArticleFashionShowSectionUiModel immersiveArticleFashionShowSectionUiModel = (ImmersiveArticleFashionShowSectionUiModel) this.d;
                function7.invoke(new VideoIdUiModel(immersiveArticleFashionShowSectionUiModel.f58677h.f50862a), immersiveArticleFashionShowSectionUiModel.f58679j);
                return Unit.f71739a;
            default:
                ((Function1) this.f68659c).invoke(((ImmersiveArticleCtaUiModel) this.d).f58649b);
                return Unit.f71739a;
        }
    }

    public /* synthetic */ dt(Object obj, Object obj2, int i2) {
        this.f68658b = i2;
        this.f68659c = obj;
        this.d = obj2;
    }
}
