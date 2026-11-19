package defpackage;

import android.util.Pair;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import com.dynatrace.android.agent.CommunicationManager;
import com.dynatrace.android.agent.conf.ConfigurationPublisher;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.perfectlib.FaceAttributeAnalyzer;
import com.perfectcorp.perfectlib.ProductInfo;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.SkuInfo;
import com.perfectcorp.perfectlib.SkuSetInfo;
import com.perfectcorp.perfectlib.SkuSetItemInfo;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.a;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.i;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.k;
import com.perfectcorp.perfectlib.ph.template.e;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.c;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.x;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class wm implements ConfigurationPublisher.ConfigurationTransform, ListenerSet.Event, Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80897b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f80898c;

    public /* synthetic */ wm(boolean z, int i2) {
        this.f80897b = i2;
        this.f80898c = z;
    }

    @Override // com.dynatrace.android.agent.conf.ConfigurationPublisher.ConfigurationTransform
    public ConfigurationPublisher.ConfigurationUpdate.Builder a(ConfigurationPublisher.ConfigurationUpdate.Builder builder) {
        String str = CommunicationManager.w;
        builder.f27376j = this.f80898c;
        return builder;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        List listI;
        int i2 = this.f80897b;
        int i3 = 12;
        boolean z = this.f80898c;
        switch (i2) {
            case 2:
                return new FaceAttributeAnalyzer(z, (String) obj);
            case 3:
            default:
                Pair pair = (Pair) obj;
                String str = (String) pair.first;
                x xVarJ = new p(new sa0(Collections.singletonList((String) pair.second), 3)).j(Schedulers.f43170c);
                Function function = Functions.f42605a;
                return new o(xVarJ, function).flatMapSingle(new z7(2, str, z)).flatMapIterable(function);
            case 4:
                return new t(new c(new a8(i3)).j(Schedulers.f43170c), new z7((String) obj, z));
            case 5:
                a aVar = (a) obj;
                Threads.b();
                String str2 = aVar.f41328a;
                String str3 = aVar.f41329b;
                BeautyMode beautyModeValueOfSkuFeatureType = BeautyMode.valueOfSkuFeatureType(str3);
                if (com.perfectcorp.perfectlib.ph.unit.sku.a.e(beautyModeValueOfSkuFeatureType)) {
                    List listA = e.C0182e.a(str2, true);
                    Collection collection = (Collection) Observable.fromIterable(listA).map(new zy0(17)).flatMapIterable(Functions.f42605a).map(new zy0(18)).collectInto(new HashSet(), new zy0(16)).c();
                    SkuHandler skuHandler = SkuHandler.getInstance();
                    Objects.requireNonNull(skuHandler);
                    Map mapG = skuHandler.g(collection, z);
                    bz bzVar = ImmutableList.f42200c;
                    ImmutableList.Builder builder = new ImmutableList.Builder();
                    Iterator it = listA.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            Pair pair2 = (Pair) it.next();
                            ImmutableList.Builder builder2 = new ImmutableList.Builder();
                            Iterator it2 = ((List) pair2.second).iterator();
                            while (true) {
                                if (it2.hasNext()) {
                                    Pair pair3 = (Pair) it2.next();
                                    Pair pairA = SkuSetInfo.a(mapG, (com.perfectcorp.perfectlib.ph.database.ymk.skuset.c) pair3.first);
                                    if (pairA == null) {
                                        listI = Collections.EMPTY_LIST;
                                    } else {
                                        builder2.f(new SkuSetItemInfo((ProductInfo) pairA.first, (SkuInfo) pairA.second, (i.a) pair3.second));
                                    }
                                } else {
                                    builder.f(Pair.create((String) pair2.first, builder2.i()));
                                }
                            }
                        } else {
                            listI = builder.i();
                        }
                    }
                } else if (com.perfectcorp.perfectlib.ph.unit.sku.a.h(beautyModeValueOfSkuFeatureType)) {
                    List listC = e.C0182e.c(str2, true);
                    Collection collection2 = (Collection) Observable.fromIterable(listC).map(new zy0(23)).flatMapIterable(Functions.f42605a).map(new zy0(12)).collectInto(new HashSet(), new zy0(16)).c();
                    SkuHandler skuHandler2 = SkuHandler.getInstance();
                    Objects.requireNonNull(skuHandler2);
                    Map mapG2 = skuHandler2.g(collection2, z);
                    bz bzVar2 = ImmutableList.f42200c;
                    ImmutableList.Builder builder3 = new ImmutableList.Builder();
                    Iterator it3 = listC.iterator();
                    while (true) {
                        if (it3.hasNext()) {
                            Pair pair4 = (Pair) it3.next();
                            ImmutableList.Builder builder4 = new ImmutableList.Builder();
                            Iterator it4 = ((List) pair4.second).iterator();
                            while (true) {
                                if (it4.hasNext()) {
                                    Pair pair5 = (Pair) it4.next();
                                    Pair pairA2 = SkuSetInfo.a(mapG2, (com.perfectcorp.perfectlib.ph.database.ymk.skuset.c) pair5.first);
                                    if (pairA2 == null) {
                                        listI = Collections.EMPTY_LIST;
                                    } else {
                                        builder4.f(new SkuSetItemInfo((ProductInfo) pairA2.first, (SkuInfo) pairA2.second, (k.a) pair5.second));
                                    }
                                } else {
                                    builder3.f(Pair.create((String) pair4.first, builder4.i()));
                                }
                            }
                        } else {
                            listI = builder3.i();
                        }
                    }
                } else {
                    if (!com.perfectcorp.perfectlib.ph.unit.sku.a.j(beautyModeValueOfSkuFeatureType)) {
                        mt.i(tr.g("unsupported SKU set type ", str3));
                        return null;
                    }
                    List listF = e.C0182e.f(str2, true);
                    Collection collection3 = (Collection) Observable.fromIterable(listF).map(new zy0(19)).flatMapIterable(Functions.f42605a).map(new zy0(20)).collectInto(new HashSet(), new zy0(16)).c();
                    SkuHandler skuHandler3 = SkuHandler.getInstance();
                    Objects.requireNonNull(skuHandler3);
                    Map mapG3 = skuHandler3.g(collection3, z);
                    bz bzVar3 = ImmutableList.f42200c;
                    ImmutableList.Builder builder5 = new ImmutableList.Builder();
                    Iterator it5 = listF.iterator();
                    while (true) {
                        if (it5.hasNext()) {
                            Pair pair6 = (Pair) it5.next();
                            ImmutableList.Builder builder6 = new ImmutableList.Builder();
                            Iterator it6 = ((List) pair6.second).iterator();
                            while (true) {
                                if (it6.hasNext()) {
                                    Pair pair7 = (Pair) it6.next();
                                    Pair pairA3 = SkuSetInfo.a(mapG3, (com.perfectcorp.perfectlib.ph.database.ymk.skuset.c) pair7.first);
                                    if (pairA3 == null) {
                                        listI = Collections.EMPTY_LIST;
                                    } else {
                                        builder6.f(new SkuSetItemInfo((ProductInfo) pairA3.first, (SkuInfo) pairA3.second, (k.b) pair7.second));
                                    }
                                } else {
                                    builder5.f(Pair.create((String) pair6.first, builder6.i()));
                                }
                            }
                        } else {
                            listI = builder5.i();
                        }
                    }
                }
                if (listI.isEmpty()) {
                    listI = SkuSetInfo.b(aVar, z);
                }
                return Observable.fromIterable(listI).filter(new yw0(7)).map(new hx0(aVar, 0));
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        int i2 = this.f80897b;
        boolean z = this.f80898c;
        Player.Listener listener = (Player.Listener) obj;
        switch (i2) {
            case 1:
                listener.l(z);
                break;
            default:
                listener.N(z);
                break;
        }
    }
}
