package com.vuitton.android.presentation.screen.authentication.base;

import android.content.Context;
import android.webkit.WebView;
import androidx.compose.runtime.MutableState;
import com.sensorsdata.analytics.android.sdk.jsbridge.JSHookAop;
import com.vuitton.android.data.net.interceptor.UserAgentInterceptor;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
import com.vuitton.android.presentation.security.AkamaiSecurityHelper;
import defpackage.md;
import java.util.LinkedHashMap;
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
import kotlinx.coroutines.flow.FlowCollector;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.base.WebViewAuthContentKt$WebViewAuthContent$2$1", f = "WebViewAuthContent.kt", l = {EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION}, m = "invokeSuspend", v = 2)
final class WebViewAuthContentKt$WebViewAuthContent$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AuthenticationViewModel f53468c;
    public final /* synthetic */ AkamaiSecurityHelper d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f53469e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WebViewAuthContentKt$WebViewAuthContent$2$1(AuthenticationViewModel authenticationViewModel, AkamaiSecurityHelper akamaiSecurityHelper, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f53468c = authenticationViewModel;
        this.d = akamaiSecurityHelper;
        this.f53469e = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WebViewAuthContentKt$WebViewAuthContent$2$1(this.f53468c, this.d, this.f53469e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WebViewAuthContentKt$WebViewAuthContent$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53467b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final AuthenticationViewModel authenticationViewModel = this.f53468c;
            Flow o = authenticationViewModel.getO();
            final AkamaiSecurityHelper akamaiSecurityHelper = this.d;
            final MutableState mutableState = this.f53469e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.authentication.base.WebViewAuthContentKt$WebViewAuthContent$2$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    String str = (String) obj2;
                    if (str != null) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap();
                        AkamaiSecurityHelper akamaiSecurityHelper2 = akamaiSecurityHelper;
                        akamaiSecurityHelper2.getClass();
                        UserAgentInterceptor.Companion companion = UserAgentInterceptor.f47097c;
                        Context context = akamaiSecurityHelper2.f65800a;
                        akamaiSecurityHelper2.f65801b.getClass();
                        companion.getClass();
                        linkedHashMap.put("X-Akamai-Webview", UserAgentInterceptor.Companion.a(context, false));
                        WebView webView = (WebView) mutableState.getF10755b();
                        if (webView != null) {
                            JSHookAop.loadUrl(webView, str, linkedHashMap);
                            webView.loadUrl(str, linkedHashMap);
                        }
                        authenticationViewModel.J8();
                    }
                    return Unit.f71739a;
                }
            };
            this.f53467b = 1;
            if (o.f(flowCollector, this) == coroutineSingletons) {
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
