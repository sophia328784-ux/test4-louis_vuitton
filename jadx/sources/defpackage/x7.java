package defpackage;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.FcmBroadcastProcessor;
import com.perfectcorp.common.network.NetworkTaskManager;
import com.perfectcorp.common.network.ProgressCallback;
import com.perfectcorp.common.utility.Triple;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.PerfectEffect;
import com.perfectcorp.perfectlib.ProductInfo;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.kernelctrl.sku.h;
import com.perfectcorp.perfectlib.ph.unit.sku.a;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.perfectlib.ymk.model.ItemSubType;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class x7 implements Function, Continuation, BiConsumer {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81042b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f81043c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81044e;

    public /* synthetic */ x7(Object obj, Object obj2, boolean z, int i2) {
        this.f81042b = i2;
        this.d = obj;
        this.f81044e = obj2;
        this.f81043c = z;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer
    public void accept(Object obj, Object obj2) {
        String str;
        SkuHandler skuHandler = (SkuHandler) this.d;
        Map map = (Map) this.f81044e;
        HashMap map2 = (HashMap) obj;
        Sku sku = (Sku) obj2;
        BeautyMode beautyModeValueOfSkuFeatureType = BeautyMode.valueOfSkuFeatureType(sku.f41263b);
        PerfectEffect perfectEffectOf = PerfectEffect.of(beautyModeValueOfSkuFeatureType, ItemSubType.d(beautyModeValueOfSkuFeatureType, sku.f41264c));
        String str2 = sku.f41266f;
        if (this.f81043c) {
            str = (String) map.get(str2);
            if (str == null) {
                return;
            }
        } else {
            str = str2;
        }
        map2.put(str2, new ProductInfo(perfectEffectOf, str, sku, skuHandler.f39935b));
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        int i2 = this.f81042b;
        boolean z = this.f81043c;
        Object obj2 = this.f81044e;
        Object obj3 = this.d;
        switch (i2) {
            case 0:
                String str = (String) obj2;
                Triple triple = (Triple) obj;
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                ((ProgressCallback) obj3).a(0.0d);
                if (!z) {
                    return ((Set) triple.f39438c).contains(str) ? ApplyEffectUtility.g(Collections.singleton(str)) : ApplyEffectUtility.B(0, Collections.singleton(str));
                }
                Set setSingleton = Collections.singleton(str);
                h.a.C0179a c0179a = new h.a.C0179a();
                c0179a.d = NetworkTaskManager.TaskPriority.NORMAL;
                return new o(h.d(setSingleton, new h.a(c0179a)), new x1(27));
            default:
                Pattern pattern = a.f41721a;
                return new c(new ho0((ArrayList) obj3, (List) obj2, z, 4));
        }
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object d(Task task) {
        return ((Integer) task.getResult()).intValue() != 402 ? task : FcmBroadcastProcessor.a((Context) this.d, (Intent) this.f81044e, this.f81043c).g(new l8(1), new mt(20));
    }

    public /* synthetic */ x7(Object obj, boolean z, Object obj2, int i2) {
        this.f81042b = i2;
        this.d = obj;
        this.f81043c = z;
        this.f81044e = obj2;
    }
}
