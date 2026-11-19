package defpackage;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import com.vuitton.android.designkit.ui.theme.atoms.StepState;
import com.vuitton.android.presentation.chat.ChatAttachable;
import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.screen.webview.WebViewFragment;
import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class a20 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f369b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f370c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f371e;

    public /* synthetic */ a20(int i2, int i3, int i4, Object obj) {
        this.f369b = i4;
        this.f371e = obj;
        this.f370c = i2;
        this.d = i3;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f369b;
        int i3 = this.d;
        int i4 = this.f370c;
        Object obj = this.f371e;
        switch (i2) {
            case 0:
                Http2Connection http2Connection = (Http2Connection) obj;
                http2Connection.getClass();
                try {
                    http2Connection.z.j(i4, i3, true);
                    break;
                } catch (IOException e2) {
                    ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                    http2Connection.c(errorCode, errorCode, e2);
                }
                return Unit.f71739a;
            case 1:
                SnapshotStateList snapshotStateList = (SnapshotStateList) obj;
                snapshotStateList.set(i4, new StepState.Idle(true));
                if (i4 < i3) {
                    snapshotStateList.set(i4 + 1, StepState.Animating.f48517a);
                }
                return Unit.f71739a;
            case 2:
                ((Function3) obj).A(ContactUsMethod.Chat.f51131a, Integer.valueOf(i4), Integer.valueOf(i3));
                return Unit.f71739a;
            default:
                WebViewFragment.Companion companion = WebViewFragment.n1;
                ChatAttachable chatAttachable = ((WebViewFragment) obj).Q;
                if (chatAttachable != null) {
                    chatAttachable.b(i4, i3);
                    return Unit.f71739a;
                }
                Intrinsics.h("chatAttachable");
                throw null;
        }
    }
}
