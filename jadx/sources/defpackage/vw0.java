package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.thirdparty.com.google.common.collect.Multimap;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.h;
import java.util.Collection;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class vw0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Multimap f80672c;

    public /* synthetic */ vw0(Multimap multimap, int i2) {
        this.f80671b = i2;
        this.f80672c = multimap;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f80671b;
        Multimap multimap = this.f80672c;
        switch (i2) {
            case 0:
                Map.Entry entry = (Map.Entry) obj;
                String str = (String) entry.getKey();
                return new h(((Single) entry.getValue()).f(new na0(str, multimap, 5)), new h8(str, 3));
            case 1:
                Collection collection = multimap.get((Integer) obj);
                Log.g(3, "SkuHandler", "[getListBySyncServerProtocol] Query background metadata. guids=" + collection);
                return ApplyEffectUtility.g(collection);
            case 2:
                Integer num = (Integer) obj;
                Collection collection2 = multimap.get(num);
                Log.g(3, "SkuHandler", "[getListBySyncServerProtocol] Query makeup metadata. guids=" + collection2);
                return ApplyEffectUtility.B(num.intValue(), collection2);
            case 3:
                Collection collection3 = multimap.get((Integer) obj);
                Log.g(3, "SkuHandler", "[syncServerByProtocol] Query background metadata. guids=" + collection3);
                return ApplyEffectUtility.g(collection3);
            default:
                Integer num2 = (Integer) obj;
                Collection collection4 = multimap.get(num2);
                Log.g(3, "SkuHandler", "[syncServerByProtocol] Query makeup metadata. guids=" + collection4);
                return ApplyEffectUtility.B(num2.intValue(), collection4);
        }
    }
}
