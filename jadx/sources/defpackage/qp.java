package defpackage;

import com.vuitton.android.presentation.chat.ChatContactUsUiModel;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetContentKt;
import com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetType;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class qp implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79132b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ContactUsTracker f79133c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ContactUsUiModel f79134e;

    public /* synthetic */ qp(ContactUsTracker contactUsTracker, ContactUsUiModel contactUsUiModel, Function1 function1, int i2) {
        this.f79132b = i2;
        this.f79133c = contactUsTracker;
        this.f79134e = contactUsUiModel;
        this.d = function1;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f79132b;
        Function1 function1 = this.d;
        ContactUsUiModel contactUsUiModel = this.f79134e;
        ContactUsTracker contactUsTracker = this.f79133c;
        switch (i2) {
            case 0:
                contactUsTracker.b(new ContactUsMethod.Sms(null));
                function1.invoke(new ContactUsMethod.Sms(contactUsUiModel.d));
                break;
            case 1:
                contactUsTracker.b(new ContactUsMethod.PhoneCall(null));
                function1.invoke(new ContactUsMethod.PhoneCall(contactUsUiModel.f51157e));
                break;
            case 2:
                contactUsTracker.b(new ContactUsMethod.WhatsApp(null));
                function1.invoke(new ContactUsMethod.WhatsApp(contactUsUiModel.f51158f));
                break;
            case 3:
                contactUsTracker.b(new ContactUsMethod.KakaoTalk(null));
                function1.invoke(new ContactUsMethod.KakaoTalk(contactUsUiModel.g));
                break;
            case 4:
                contactUsTracker.b(new ContactUsMethod.Sms(null));
                function1.invoke(new ContactUsMethod.Sms(contactUsUiModel.d));
                break;
            case 5:
                contactUsTracker.b(new ContactUsMethod.PhoneCall(null));
                function1.invoke(new ContactUsMethod.PhoneCall(contactUsUiModel.f51157e));
                break;
            case 6:
                contactUsTracker.b(new ContactUsMethod.EmailForm(null));
                int i3 = PdpBottomSheetContentKt.WhenMappings.f61368a[contactUsUiModel.l.ordinal()];
                String str = contactUsUiModel.f51155b;
                function1.invoke(i3 == 1 ? new ContactUsMethod.EmailNative(str, null, 2, null) : new ContactUsMethod.EmailForm(str));
                break;
            case 7:
                contactUsTracker.b(new ContactUsMethod.WhatsApp(null));
                function1.invoke(new ContactUsMethod.WhatsApp(contactUsUiModel.f51158f));
                break;
            case 8:
                contactUsTracker.b(new ContactUsMethod.KakaoTalk(null));
                function1.invoke(new ContactUsMethod.KakaoTalk(contactUsUiModel.g));
                break;
            default:
                contactUsTracker.c(Intrinsics.c(contactUsUiModel.f51159h, ChatContactUsUiModel.Available.f50674a));
                function1.invoke(PdpBottomSheetType.ContactUs.f61374a);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ qp(ContactUsTracker contactUsTracker, Function1 function1, ContactUsUiModel contactUsUiModel, int i2) {
        this.f79132b = i2;
        this.f79133c = contactUsTracker;
        this.d = function1;
        this.f79134e = contactUsUiModel;
    }
}
