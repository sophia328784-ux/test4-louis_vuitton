package defpackage;

import com.powerfront.insidewebsdkandroid.InsideClient;
import com.powerfront.insidewebsdkandroid.models.InsideCart;
import com.powerfront.insidewebsdkandroid.models.InsideView;
import com.vuitton.core.infrastructure.chat.ChatTrackerImpl;
import com.vuitton.foundation.logger.Logger;
import java.math.BigDecimal;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class im implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f70008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ChatTrackerImpl f70009c;

    public /* synthetic */ im(ChatTrackerImpl chatTrackerImpl, int i2) {
        this.f70008b = i2;
        this.f70009c = chatTrackerImpl;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f70008b;
        ChatTrackerImpl chatTrackerImpl = this.f70009c;
        switch (i2) {
            case 0:
                InsideClient insideClient = chatTrackerImpl.f65891b;
                InsideView insideView = insideClient.g;
                Logger logger = chatTrackerImpl.f65890a;
                if (insideView == null) {
                    logger.d("ChatTracker", "unTrackUser skipped, no tracked view", null);
                } else {
                    logger.getClass();
                    insideClient.p();
                }
                break;
            default:
                chatTrackerImpl.f65890a.getClass();
                InsideClient insideClient2 = chatTrackerImpl.f65891b;
                InsideCart insideCartI = insideClient2.i();
                insideCartI.f43305f.clear();
                insideCartI.d = true;
                InsideCart insideCartI2 = insideClient2.i();
                BigDecimal bigDecimalValueOf = BigDecimal.valueOf(0L);
                bigDecimalValueOf.getClass();
                insideCartI2.f43302b = bigDecimalValueOf;
                insideCartI2.d = true;
                insideClient2.m();
                break;
        }
        return Unit.f71739a;
    }
}
