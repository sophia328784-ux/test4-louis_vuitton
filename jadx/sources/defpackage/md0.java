package defpackage;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.AndroidPath;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.fragment.app.FragmentActivity;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.link.navigation.ContactUsNavigator;
import com.vuitton.android.presentation.screen.webview.WebViewFragment;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class md0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f76236c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f76237e;

    public /* synthetic */ md0(int i2, int i3, int i4, Object obj) {
        this.f76235b = i4;
        this.f76237e = obj;
        this.f76236c = i2;
        this.d = i3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f76235b;
        Object obj2 = this.f76237e;
        switch (i2) {
            case 0:
                ParagraphInfo paragraphInfo = (ParagraphInfo) obj;
                AndroidPath androidPathM = paragraphInfo.f10471a.m(paragraphInfo.d(this.f76236c), paragraphInfo.d(this.d));
                float f2 = paragraphInfo.f10475f;
                long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) << 32) | (((long) Float.floatToRawIntBits(f2)) & BodyPartID.bodyIdMax);
                Offset.Companion companion = Offset.f8806b;
                androidPathM.t(jFloatToRawIntBits);
                Path.o((AndroidPath) obj2, androidPathM);
                return Unit.f71739a;
            default:
                WebViewFragment webViewFragment = (WebViewFragment) obj2;
                ContactUsMethod contactUsMethod = (ContactUsMethod) obj;
                WebViewFragment.Companion companion2 = WebViewFragment.n1;
                contactUsMethod.getClass();
                ContactUsNavigator contactUsNavigator = webViewFragment.P;
                if (contactUsNavigator == null) {
                    Intrinsics.h("contactUsNavigator");
                    throw null;
                }
                FragmentActivity fragmentActivityRequireActivity = webViewFragment.requireActivity();
                fragmentActivityRequireActivity.getClass();
                ChatAttachable chatAttachable = webViewFragment.Q;
                if (chatAttachable != null) {
                    contactUsNavigator.a(fragmentActivityRequireActivity, contactUsMethod, this.f76236c, this.d, chatAttachable);
                    return Unit.f71739a;
                }
                Intrinsics.h("chatAttachable");
                throw null;
        }
    }
}
