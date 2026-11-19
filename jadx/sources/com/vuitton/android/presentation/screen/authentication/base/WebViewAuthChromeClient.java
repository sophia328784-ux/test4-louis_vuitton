package com.vuitton.android.presentation.screen.authentication.base;

import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import com.vuitton.foundation.logger.Logger;
import defpackage.b51;
import defpackage.k61;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000eB;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00070\t¢\u0006\u0004\b\f\u0010\r¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthChromeClient;", "Landroid/webkit/WebChromeClient;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "", "isKisaEnabled", "Lkotlin/Function0;", "", "onWebViewPageStarted", "Lkotlin/Function1;", "", "onKisaPayload", "<init>", "(Lcom/vuitton/foundation/logger/Logger;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class WebViewAuthChromeClient extends WebChromeClient {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f53454e = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f53455a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f53456b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f53457c;
    public final Function1 d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthChromeClient$Companion;", "", "", "KISA_INDICATOR", "Ljava/lang/String;", "TAG", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f53458a;

        static {
            int[] iArr = new int[ConsoleMessage.MessageLevel.values().length];
            try {
                iArr[ConsoleMessage.MessageLevel.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ConsoleMessage.MessageLevel.WARNING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f53458a = iArr;
        }
    }

    static {
        new Companion(null);
    }

    public WebViewAuthChromeClient(Logger logger, boolean z, Function0<Unit> function0, Function1<? super String, Unit> function1) {
        logger.getClass();
        function0.getClass();
        function1.getClass();
        this.f53455a = logger;
        this.f53456b = z;
        this.f53457c = function0;
        this.d = function1;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        if (this.f53456b && consoleMessage != null) {
            String strMessage = consoleMessage.message();
            strMessage.getClass();
            if (StringsKt.k(strMessage, "[KISA bridge] sendToHost payload:", false)) {
                this.f53457c.mo47invoke();
                this.d.invoke(strMessage);
                return true;
            }
        }
        if (consoleMessage != null) {
            k61 k61Var = new k61(consoleMessage, 0);
            ConsoleMessage.MessageLevel messageLevel = consoleMessage.messageLevel();
            int i2 = messageLevel == null ? -1 : WhenMappings.f53458a[messageLevel.ordinal()];
            Logger logger = this.f53455a;
            if (i2 == 1) {
                logger.b("WebViewAuthConsole", k61Var, null);
            } else if (i2 != 2) {
                logger.getClass();
            } else {
                logger.a("WebViewAuthConsole", k61Var);
            }
        }
        return super.onConsoleMessage(consoleMessage);
    }

    public /* synthetic */ WebViewAuthChromeClient(Logger logger, boolean z, Function0 function0, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(logger, z, (i2 & 4) != 0 ? new b51(24) : function0, function1);
    }
}
