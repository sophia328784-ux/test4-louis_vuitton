package com.vuitton.core.infrastructure.chat;

import com.powerfront.insidewebsdkandroid.InsideClient;
import com.powerfront.insidewebsdkandroid.models.InsideCart;
import com.powerfront.insidewebsdkandroid.models.InsideCartItem;
import com.powerfront.insidewebsdkandroid.models.InsideViewType;
import com.vuitton.core.infrastructure.chat.ChatTrackerImpl;
import com.vuitton.foundation.contracts.chat.ChatTracker;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import com.vuitton.foundation.model.domain.model.chat.ScreenOrigin;
import com.vuitton.foundation.model.domain.model.chat.ScreenType;
import defpackage.gm;
import defpackage.im;
import defpackage.q;
import defpackage.r3;
import defpackage.tf;
import defpackage.yh;
import java.math.BigDecimal;
import java.util.LinkedHashMap;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;", "Lcom/vuitton/foundation/contracts/chat/ChatTracker;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/powerfront/insidewebsdkandroid/InsideClient;", "insideClient", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/powerfront/insidewebsdkandroid/InsideClient;)V", "Companion", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ChatTrackerImpl implements ChatTracker {
    public static final /* synthetic */ int d = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f65890a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InsideClient f65891b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MainCoroutineDispatcher f65892c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004¨\u0006\n"}, d2 = {"Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", "DEFAULT_CURRENCY_CODE", "CURRENCY_KEY_NAME", "EMAIL_KEY", "SALESFORCE_ID_KEY", "LANGUAGE_KEY", "chat"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f65893a;

        static {
            int[] iArr = new int[ScreenOrigin.values().length];
            try {
                iArr[ScreenOrigin.HOME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ScreenOrigin.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ScreenOrigin.CHECKOUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f65893a = iArr;
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public ChatTrackerImpl(Logger logger, InsideClient insideClient) {
        logger.getClass();
        insideClient.getClass();
        this.f65890a = logger;
        this.f65891b = insideClient;
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        this.f65892c = MainDispatcherLoader.f75131a.r();
    }

    public static void i(ChatTrackerImpl chatTrackerImpl, InsideViewType insideViewType, String str, String str2, ChatProductModel chatProductModel, boolean z, int i2) {
        String str3;
        String str4 = (i2 & 4) != 0 ? null : str2;
        ChatProductModel chatProductModel2 = (i2 & 8) != 0 ? null : chatProductModel;
        chatTrackerImpl.f65891b.o(insideViewType, str, chatProductModel2 != null ? chatProductModel2.f67088b : null, chatProductModel2 != null ? chatProductModel2.f67089c : null, chatProductModel2 != null ? chatProductModel2.d : null, (chatProductModel2 == null || (str3 = chatProductModel2.f67090e) == null) ? str4 : str3, chatProductModel2 != null ? chatProductModel2.f67091f : null, (i2 & 16) != 0 ? false : z ? MapsKt.e(new Pair("careServices", "true")) : null);
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void B(final ChatProductModel chatProductModel, final int i2, final int i3) {
        chatProductModel.getClass();
        h(new Function0() { // from class: hm
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ChatTrackerImpl chatTrackerImpl = this.f69741b;
                Logger logger = chatTrackerImpl.f65890a;
                ChatProductModel chatProductModel2 = chatProductModel;
                Objects.toString(chatProductModel2);
                logger.getClass();
                InsideClient insideClient = chatTrackerImpl.f65891b;
                InsideCart insideCartI = insideClient.i();
                String str = chatProductModel2.f67092h;
                if (str == null) {
                    str = "USD";
                }
                insideCartI.a(str);
                InsideCart insideCartI2 = insideClient.i();
                String str2 = chatProductModel2.f67091f;
                String str3 = chatProductModel2.f67087a;
                BigDecimal bigDecimal = chatProductModel2.d;
                String str4 = chatProductModel2.f67090e;
                String str5 = chatProductModel2.f67088b;
                LinkedHashMap linkedHashMap = insideCartI2.f43305f;
                if (str2 == null || str3 == null || bigDecimal == null) {
                    md.n("sku, name and price can not be null");
                    return null;
                }
                int i4 = i2;
                if (i4 > 0 && linkedHashMap.containsKey(str2)) {
                    linkedHashMap.put(str2, new InsideCartItem(str2, str3, bigDecimal, i4, str4, str5));
                    insideCartI2.d = true;
                }
                InsideCart insideCartI3 = insideClient.i();
                BigDecimal bigDecimalValueOf = BigDecimal.valueOf(i3);
                bigDecimalValueOf.getClass();
                insideCartI3.f43302b = bigDecimalValueOf;
                insideCartI3.d = true;
                insideClient.m();
                return Unit.f71739a;
            }
        });
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void C(ScreenType screenType) {
        screenType.getClass();
        h(new tf(this, screenType, 23));
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void I(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        h(new gm(this, chatProductModel, i2, 1));
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void c(String str, String str2, String str3, String str4) {
        str3.getClass();
        str4.getClass();
        h(new yh(str, str2, str3, this, str4, 2));
    }

    public final void h(Function0 function0) {
        EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.f71840b;
        MainCoroutineDispatcher mainCoroutineDispatcher = this.f65892c;
        if (mainCoroutineDispatcher.isDispatchNeeded(emptyCoroutineContext)) {
            mainCoroutineDispatcher.dispatch(emptyCoroutineContext, new r3(function0, 5));
        } else {
            function0.mo47invoke();
        }
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void k(String str) {
        str.getClass();
        h(new tf(this, str, 21));
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void r(ChatProductModel chatProductModel) {
        chatProductModel.getClass();
        h(new tf(this, chatProductModel, 22));
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void s() {
        h(new im(this, 0));
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void v(String str, String str2) {
        h(new q(str, this, str2, 27));
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void x(ChatProductModel chatProductModel, int i2) {
        chatProductModel.getClass();
        h(new gm(this, chatProductModel, i2, 0));
    }

    @Override // com.vuitton.foundation.contracts.chat.ChatTracker
    public final void z() {
        h(new im(this, 1));
    }
}
