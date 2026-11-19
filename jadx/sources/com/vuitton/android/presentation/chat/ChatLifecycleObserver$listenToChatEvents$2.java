package com.vuitton.android.presentation.chat;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import android.webkit.WebView;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResultLauncher;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.lifecycle.FlowExtKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import com.vuitton.android.R;
import com.vuitton.android.data.datasource.inappbanner.InAppBannerMemCacheDataSource;
import com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModel;
import com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModelKt;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.link.LinkHandler;
import com.vuitton.foundation.model.domain.model.chat.ChatResponseEvent;
import com.vuitton.foundation.model.domain.model.inappbanner.InAppBanner;
import defpackage.c;
import defpackage.md;
import java.time.Instant;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.chat.ChatLifecycleObserver$listenToChatEvents$2", f = "ChatLifecycleObserver.kt", l = {115}, m = "invokeSuspend", v = 2)
final class ChatLifecycleObserver$listenToChatEvents$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f50705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ChatLifecycleObserver f50706c;
    public final /* synthetic */ LifecycleOwner d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ActivityResultLauncher f50707e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.chat.ChatLifecycleObserver$listenToChatEvents$2$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", MvelScriptManager.VAR_EVENT, "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.chat.ChatLifecycleObserver$listenToChatEvents$2$1", f = "ChatLifecycleObserver.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<ChatResponseEvent, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f50708b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ LifecycleOwner f50709c;
        public final /* synthetic */ ChatLifecycleObserver d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ ActivityResultLauncher f50710e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(ActivityResultLauncher activityResultLauncher, LifecycleOwner lifecycleOwner, ChatLifecycleObserver chatLifecycleObserver, Continuation continuation) {
            super(2, continuation);
            this.f50709c = lifecycleOwner;
            this.d = chatLifecycleObserver;
            this.f50710e = activityResultLauncher;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f50710e, this.f50709c, this.d, continuation);
            anonymousClass1.f50708b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((ChatResponseEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Exception {
            final WebView webView;
            OnBackPressedDispatcher onBackPressedDispatcher;
            ActivityResultLauncher activityResultLauncher;
            LifecycleOwner lifecycleOwner = this.f50709c;
            ChatLifecycleObserver chatLifecycleObserver = this.d;
            ChatResponseEvent chatResponseEvent = (ChatResponseEvent) this.f50708b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            if (chatResponseEvent instanceof ChatResponseEvent.TargetedUrlReceived.WebAppLinkUrl) {
                AppCompatActivity appCompatActivityB = ContextExtKt.b((Context) lifecycleOwner);
                if (appCompatActivityB != null) {
                    LinkHandler linkHandler = chatLifecycleObserver.f50691e;
                    String str = ((ChatResponseEvent.TargetedUrlReceived.WebAppLinkUrl) chatResponseEvent).f67096a;
                    int i2 = LinkHandler.f51604e;
                    linkHandler.c(str, appCompatActivityB, null);
                }
                chatLifecycleObserver.d.a(ContactUsTrackingUiModelKt.a(new ContactUsTrackingUiModel.OnAppLinkClickEvent(((ChatResponseEvent.TargetedUrlReceived.WebAppLinkUrl) chatResponseEvent).f67096a)));
                ChatCoordinator chatCoordinator = chatLifecycleObserver.f50689b;
                if (chatCoordinator.c()) {
                    chatCoordinator.f50678b.f49646a.m();
                }
                chatLifecycleObserver.f50689b.a();
            } else if (chatResponseEvent instanceof ChatResponseEvent.UiNotification.AppShouldAskForPermissions) {
                if (lifecycleOwner.getD().getF13454i() == Lifecycle.State.RESUMED && (activityResultLauncher = this.f50710e) != null) {
                    activityResultLauncher.a("android.permission.CAMERA");
                }
            } else if (chatResponseEvent instanceof ChatResponseEvent.UiNotification.ChatIsClosedUiNotification) {
                chatLifecycleObserver.f50694i.f(false);
                chatLifecycleObserver.f50694i.e();
            } else if (chatResponseEvent instanceof ChatResponseEvent.UiNotification.ChatIsVisibleUiNotification) {
                chatLifecycleObserver.f50694i.f(true);
                Context context = (Context) lifecycleOwner;
                AppCompatActivity appCompatActivityB2 = ContextExtKt.b(context);
                if (appCompatActivityB2 != null && (onBackPressedDispatcher = appCompatActivityB2.getOnBackPressedDispatcher()) != null) {
                    onBackPressedDispatcher.b(chatLifecycleObserver.f50694i, lifecycleOwner);
                }
                chatLifecycleObserver.d.a(ContactUsTrackingUiModelKt.a(ContactUsTrackingUiModel.PowerfrontScreen.f51153a));
                if (!(lifecycleOwner instanceof ChatHostActivity) || !(lifecycleOwner instanceof Activity)) {
                    md.n("ChatLifecycleObserver requires the LifecycleOwner to be an Activity and implement ChatHostActivity");
                    return null;
                }
                AppCompatActivity appCompatActivityB3 = ContextExtKt.b(context);
                if (appCompatActivityB3 != null && (webView = (WebView) appCompatActivityB3.findViewById(R.id.inside_web_view)) != null) {
                    ViewCompat.A(webView, new WindowInsetsAnimationCompat.Callback() { // from class: com.vuitton.android.presentation.chat.ChatLifecycleObserver$listenToKeyboardEvents$2$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
                        public final WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List list) {
                            Object next;
                            windowInsetsCompat.getClass();
                            list.getClass();
                            Iterator it = list.iterator();
                            do {
                                if (!it.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = it.next();
                            } while ((((WindowInsetsAnimationCompat) next).f() & 8) == 0);
                            WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) next;
                            if (windowInsetsAnimationCompat == null) {
                                return windowInsetsCompat;
                            }
                            WebView webView2 = webView;
                            ViewGroup.LayoutParams layoutParams = webView2.getLayoutParams();
                            ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
                            ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(marginLayoutParams != null ? marginLayoutParams.bottomMargin : 0, windowInsetsCompat.o(8) ? windowInsetsCompat.e(8).d : windowInsetsCompat.e(2).d);
                            valueAnimatorOfInt.setInterpolator(windowInsetsAnimationCompat.e());
                            long jB = windowInsetsAnimationCompat.b();
                            Long lValueOf = jB > 0 ? Long.valueOf(jB) : null;
                            valueAnimatorOfInt.setDuration(lValueOf != null ? lValueOf.longValue() : 300L);
                            valueAnimatorOfInt.setCurrentFraction(windowInsetsAnimationCompat.c());
                            if (marginLayoutParams != null) {
                                Object animatedValue = valueAnimatorOfInt.getAnimatedValue();
                                animatedValue.getClass();
                                marginLayoutParams.bottomMargin = ((Integer) animatedValue).intValue();
                            }
                            webView2.requestLayout();
                            valueAnimatorOfInt.start();
                            return windowInsetsCompat;
                        }
                    });
                }
            } else if (chatResponseEvent instanceof ChatResponseEvent.UiNotification.UnReadCountNotification) {
                int i3 = ((ChatResponseEvent.UiNotification.UnReadCountNotification) chatResponseEvent).f67104a;
                InAppBannerMemCacheDataSource inAppBannerMemCacheDataSource = chatLifecycleObserver.f50693h;
                if (i3 == 1) {
                    Context context2 = (Context) lifecycleOwner;
                    String string = context2.getString(R.string.chat_toast_notification_description);
                    string.getClass();
                    String string2 = context2.getString(R.string.chat_toast_notification_viewmore_link);
                    Instant instantNow = Instant.now();
                    instantNow.getClass();
                    Instant instantPlusSeconds = Instant.now().plusSeconds(7L);
                    instantPlusSeconds.getClass();
                    InAppBanner inAppBanner = new InAppBanner(string, string2, instantNow, instantPlusSeconds, false, new c(chatLifecycleObserver, 15));
                    synchronized (inAppBannerMemCacheDataSource.f44121a) {
                        inAppBannerMemCacheDataSource.f44122b.setValue(inAppBanner);
                    }
                } else {
                    inAppBannerMemCacheDataSource.a();
                }
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChatLifecycleObserver$listenToChatEvents$2(ActivityResultLauncher activityResultLauncher, LifecycleOwner lifecycleOwner, ChatLifecycleObserver chatLifecycleObserver, Continuation continuation) {
        super(2, continuation);
        this.f50706c = chatLifecycleObserver;
        this.d = lifecycleOwner;
        this.f50707e = activityResultLauncher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ChatLifecycleObserver$listenToChatEvents$2(this.f50707e, this.d, this.f50706c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ChatLifecycleObserver$listenToChatEvents$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f50705b;
        if (i2 == 0) {
            ResultKt.b(obj);
            ChatLifecycleObserver chatLifecycleObserver = this.f50706c;
            SharedFlow sharedFlowD = chatLifecycleObserver.f50690c.f49648a.getF65889h();
            LifecycleOwner lifecycleOwner = this.d;
            Flow flowA = FlowExtKt.a(sharedFlowD, lifecycleOwner.getD(), Lifecycle.State.STARTED);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f50707e, lifecycleOwner, chatLifecycleObserver, null);
            this.f50705b = 1;
            if (FlowKt.g(flowA, anonymousClass1, this) == coroutineSingletons) {
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
