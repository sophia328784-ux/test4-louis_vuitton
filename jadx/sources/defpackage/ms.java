package defpackage;

import android.util.Pair;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.dynatrace.agent.events.enrichment.sanitation.AttributeSanitizer;
import com.dynatrace.agent.events.enrichment.sanitation.JsonAttribute;
import com.dynatrace.agent.events.enrichment.sanitation.JsonAttributeSanitationKt;
import com.dynatrace.android.agent.util.Utility;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.kernelctrl.networktaskmanager.DownloadImageHelper;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.j;
import com.perfectcorp.thirdparty.com.google.common.collect.Lists;
import com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ms implements ListenerSet.Event, Function, AttributeSanitizer, BiConsumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76357b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f76358c;

    public /* synthetic */ ms(AnalyticsListener.EventTime eventTime, int i2, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2) {
        this.f76357b = 0;
        this.f76358c = i2;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer
    public void accept(Object obj, Object obj2) {
        StringBuilder sbQ = fc.q(this.f76358c, "[#", "] download id system zip file #");
        sbQ.append(((AtomicInteger) obj).getAndIncrement());
        Log.g(3, "IdSystemDataHelper", sbQ.toString());
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        int i2 = this.f76357b;
        int i3 = this.f76358c;
        List<Pair> list = (List) obj;
        switch (i2) {
            case 1:
                AtomicInteger atomicInteger = DownloadImageHelper.f40320a;
                Log.g(3, "DownloadImageHelper", "[#" + i3 + "] #getDownloadImageObservable(); done");
                return Lists.c(list, new g7(17));
            default:
                AtomicInteger atomicInteger2 = j.f41498a;
                Log.g(3, "IdSystemDataHelper", "[#" + i3 + "] insert pattern/texture/palette/shape to DB from ID system");
                try {
                    for (Pair pair : list) {
                        if (pair != null) {
                            DBUtility.i(YMKDatabase.b(), new g91(pair, 0));
                        }
                    }
                    return list;
                } catch (Throwable th) {
                    Log.e("IdSystemDataHelper", "[#" + i3 + "] insert to database failed", th);
                    throw th;
                }
        }
    }

    @Override // com.dynatrace.agent.events.enrichment.sanitation.AttributeSanitizer
    public JsonAttribute e(JsonAttribute jsonAttribute) {
        Regex regex = JsonAttributeSanitationKt.f26788a;
        Object obj = jsonAttribute.f26787b;
        String str = jsonAttribute.f26786a;
        if ((obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Double) || (obj instanceof Boolean)) {
            return jsonAttribute;
        }
        String string = obj.toString();
        int iMax = Math.max(this.f76358c, 5000);
        if (string.length() < iMax) {
            return jsonAttribute;
        }
        StringBuilder sbR = pq0.r("sanitation: value of key '", str, "' is too long and thus is trimmed; original length: ");
        sbR.append(string.length());
        sbR.append("; ");
        Utility.b(sbR.toString());
        return new JsonAttribute(str, StringsKt.V(iMax, string));
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i2 = this.f76357b;
        int i3 = this.f76358c;
        switch (i2) {
            case 0:
                AnalyticsListener analyticsListener = (AnalyticsListener) obj;
                analyticsListener.getClass();
                analyticsListener.v(i3);
                break;
            default:
                ((Player.Listener) obj).A(i3);
                break;
        }
    }

    public /* synthetic */ ms(int i2, int i3) {
        this.f76357b = i3;
        this.f76358c = i2;
    }
}
