package com.vuitton.android.presentation.screen.webview;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.webview.WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1", f = "WebViewFragment.kt", l = {}, m = "invokeSuspend", v = 2)
final class WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ WebViewFragment f65476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LVModalBottomSheetState f65477c;
    public final /* synthetic */ MutableState d;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f65478a;

        static {
            int[] iArr = new int[CustomizationType.values().length];
            try {
                iArr[CustomizationType.MONOGRAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CustomizationType.BEAUTY_ENGRAVING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CustomizationType.HOTSTAMPING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CustomizationType.PERFUME_ENGRAVING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CustomizationType.DIAMOND_ENGRAVING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[CustomizationType.NO_CUSTOMIZATION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f65478a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1(WebViewFragment webViewFragment, LVModalBottomSheetState lVModalBottomSheetState, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f65476b = webViewFragment;
        this.f65477c = lVModalBottomSheetState;
        this.d = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1(this.f65476b, this.f65477c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WebViewFragment$initCustomizationComposeView$composeView$1$1$1$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        WebViewFragment.Companion companion = WebViewFragment.n1;
        if (((Boolean) this.d.getF10755b()).booleanValue()) {
            WebViewFragment webViewFragment = this.f65476b;
            switch (WhenMappings.f65478a[webViewFragment.Q().ordinal()]) {
                case 1:
                    webViewFragment.T().zc(WebViewTrackingUiModel.OnMyMonogramWebViewBottomSheetOpenEvent.f65528a);
                    this.f65477c.e();
                    break;
                case 2:
                    webViewFragment.T().zc(WebViewTrackingUiModel.OnBeautyEngravingWebViewBottomSheetOpenEvent.f65516a);
                    this.f65477c.e();
                    break;
                case 3:
                    webViewFragment.T().zc(WebViewTrackingUiModel.OnHotstampingWebViewBottomSheetOpenEvent.f65524a);
                    this.f65477c.e();
                    break;
                case 4:
                    webViewFragment.T().zc(WebViewTrackingUiModel.OnPerfumeEngravingWebViewBottomSheetOpenEvent.f65532a);
                    this.f65477c.e();
                    break;
                case 5:
                    webViewFragment.T().zc(WebViewTrackingUiModel.OnDiamondEngravingWebViewBottomSheetOpenEvent.f65520a);
                    this.f65477c.e();
                    break;
                case 6:
                    this.f65477c.e();
                    break;
                default:
                    v40.g();
                    return null;
            }
        }
        return Unit.f71739a;
    }
}
