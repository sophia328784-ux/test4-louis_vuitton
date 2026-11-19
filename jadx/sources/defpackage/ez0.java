package defpackage;

import com.perfectcorp.perfectlib.PerfectEffect;
import com.perfectcorp.perfectlib.i4;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ez0 implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68981b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PerfectEffect f68982c;

    public /* synthetic */ ez0(PerfectEffect perfectEffect, int i2) {
        this.f68981b = i2;
        this.f68982c = perfectEffect;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        int i2 = this.f68981b;
        PerfectEffect perfectEffect = this.f68982c;
        List list = (List) obj;
        switch (i2) {
            case 0:
                return list.isEmpty() ? new p(new g8(perfectEffect.beautyMode.getFeatureType().toString(), 5)).j(Schedulers.f43170c) : Single.h(list);
            default:
                return (list == null || list.isEmpty()) ? new p(new i4(perfectEffect, 0)) : Single.h(list);
        }
    }
}
