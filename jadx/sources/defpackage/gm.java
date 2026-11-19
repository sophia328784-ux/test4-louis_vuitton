package defpackage;

import com.powerfront.insidewebsdkandroid.InsideClient;
import com.powerfront.insidewebsdkandroid.models.InsideCart;
import com.powerfront.insidewebsdkandroid.models.InsideCartItem;
import com.vuitton.core.infrastructure.chat.ChatTrackerImpl;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.chat.ChatProductModel;
import java.math.BigDecimal;
import java.util.Objects;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class gm implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69444b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ChatTrackerImpl f69445c;
    public final /* synthetic */ ChatProductModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f69446e;

    public /* synthetic */ gm(ChatTrackerImpl chatTrackerImpl, ChatProductModel chatProductModel, int i2, int i3) {
        this.f69444b = i3;
        this.f69445c = chatTrackerImpl;
        this.d = chatProductModel;
        this.f69446e = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f69444b;
        int i3 = this.f69446e;
        ChatProductModel chatProductModel = this.d;
        ChatTrackerImpl chatTrackerImpl = this.f69445c;
        switch (i2) {
            case 0:
                chatTrackerImpl.f65890a.getClass();
                InsideClient insideClient = chatTrackerImpl.f65891b;
                InsideCart insideCartI = insideClient.i();
                String str = chatProductModel.f67091f;
                if (str != null) {
                    insideCartI.f43305f.remove(str);
                    insideCartI.d = true;
                } else {
                    insideCartI.getClass();
                }
                InsideCart insideCartI2 = insideClient.i();
                BigDecimal bigDecimalValueOf = BigDecimal.valueOf(i3);
                bigDecimalValueOf.getClass();
                insideCartI2.f43302b = bigDecimalValueOf;
                insideCartI2.d = true;
                insideClient.m();
                return Unit.f71739a;
            default:
                Logger logger = chatTrackerImpl.f65890a;
                Objects.toString(chatProductModel);
                logger.getClass();
                InsideClient insideClient2 = chatTrackerImpl.f65891b;
                InsideCart insideCartI3 = insideClient2.i();
                String str2 = chatProductModel.f67092h;
                if (str2 == null) {
                    str2 = "USD";
                }
                insideCartI3.a(str2);
                InsideCart insideCartI4 = insideClient2.i();
                String str3 = chatProductModel.f67091f;
                String str4 = chatProductModel.f67087a;
                BigDecimal bigDecimal = chatProductModel.d;
                int i4 = chatProductModel.g;
                String str5 = chatProductModel.f67090e;
                String str6 = chatProductModel.f67088b;
                insideCartI4.getClass();
                if (str3 == null || str4 == null || bigDecimal == null) {
                    md.n("sku, name and price can not be null");
                    return null;
                }
                if (i4 > 0) {
                    insideCartI4.f43305f.put(str3, new InsideCartItem(str3, str4, bigDecimal, i4, str5, str6));
                    insideCartI4.d = true;
                }
                InsideCart insideCartI5 = insideClient2.i();
                BigDecimal bigDecimalValueOf2 = BigDecimal.valueOf(i3);
                bigDecimalValueOf2.getClass();
                insideCartI5.f43302b = bigDecimalValueOf2;
                insideCartI5.d = true;
                insideClient2.m();
                return Unit.f71739a;
        }
    }
}
