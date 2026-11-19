package defpackage;

import android.media.AudioDescriptor;
import android.os.SystemClock;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.fragment.app.Fragment;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.audio.AudioOutput;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import androidx.room.support.AutoCloser;
import com.perfectcorp.common.guava.MoreFutures;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.perfectlib.ph.database.ymk.skuset.a;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.c;
import com.perfectcorp.perfectlib.ph.template.e;
import com.perfectcorp.perfectlib.ph.utility.networkcache.c$i;
import com.perfectcorp.thirdparty.com.google.common.collect.Collections2;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.SingleSource;
import com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.functions.Functions;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.m;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.o;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class v7 implements Function, BiConsumer, Arrangement.SpacingAlignmentCalculator, ListenerSet.Event, AutoCloser.Watch {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80520b;

    public /* synthetic */ v7(int i2) {
        this.f80520b = i2;
    }

    public static /* bridge */ /* synthetic */ AudioDescriptor b(Object obj) {
        return (AudioDescriptor) obj;
    }

    public static /* synthetic */ void c() {
        throw new ConcurrentModificationException();
    }

    public static /* synthetic */ void d(Fragment fragment, String str) {
        throw new IllegalStateException(str + ((Object) fragment.toString()) + ((Object) " is already attached to a FragmentManager."));
    }

    public static /* synthetic */ void e(Object obj, int i2, int i3, String str) {
        throw new IllegalArgumentException(str + i2 + obj + i3);
    }

    public static /* synthetic */ void g(Object obj, String str) {
        throw new IllegalArgumentException(str + ((Object) obj.toString()));
    }

    public static /* synthetic */ void h(String str) {
        throw new RuntimeException(str);
    }

    public static /* synthetic */ void i(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    @Override // androidx.room.support.AutoCloser.Watch
    public long a() {
        int i2 = AutoCloser.l;
        return SystemClock.uptimeMillis();
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.BiConsumer
    public void accept(Object obj, Object obj2) {
        Map map = (Map) obj;
        switch (this.f80520b) {
            case 1:
                h hVar = (h) obj2;
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                map.put(hVar.skuGUID, hVar);
                break;
            case 5:
                h hVar2 = (h) obj2;
                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                map.put(hVar2.skuGUID, hVar2);
                break;
            case 6:
                h hVar3 = (h) obj2;
                ImmutableSet immutableSet3 = ApplyEffectUtility.f39471a;
                map.put(hVar3.skuGUID, hVar3);
                break;
            case 13:
                a aVar = (a) obj2;
                ImmutableSet immutableSet4 = ApplyEffectUtility.f39471a;
                map.put(aVar.f41328a, aVar);
                break;
            default:
                c.a aVar2 = (c.a) obj2;
                ImmutableSet immutableSet5 = ApplyEffectUtility.f39471a;
                String strB = aVar2.b();
                String strA = aVar2.a();
                Objects.requireNonNull(strA);
                map.put(strB, strA);
                break;
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        int i2 = 0;
        switch (this.f80520b) {
            case 0:
                return (Sku) MoreFutures.b((Future) obj);
            case 1:
            case 5:
            case 6:
            default:
                return (b) ((List) obj).get(0);
            case 2:
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                return Observable.fromIterable(((com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.c) obj).a());
            case 3:
                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                return ((com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.response.b.a) obj).skuGuid;
            case 4:
                ImmutableSet immutableSet3 = ApplyEffectUtility.f39471a;
                return Collections2.b(((com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.sku.a) ((RequestTask.Response) obj).f39358b).a(), new g7(10));
            case 7:
                Collection collection = (Collection) obj;
                ImmutableSet immutableSet4 = ApplyEffectUtility.f39471a;
                return collection;
            case 8:
                return com.perfectcorp.perfectlib.ph.unit.sku.a.i((String) obj);
            case 9:
                List list = (List) obj;
                ImmutableSet immutableSet5 = ApplyEffectUtility.f39471a;
                SingleSource singleSourceCollectInto = new o(new p(new sa0(list, 3)).j(Schedulers.f43170c), Functions.f42605a).collectInto(new ConcurrentHashMap(), new v7(13));
                c8 c8Var = new c8(list, i2);
                singleSourceCollectInto.getClass();
                return new m(singleSourceCollectInto, c8Var);
            case 10:
                ImmutableSet immutableSet6 = ApplyEffectUtility.f39471a;
                return Observable.fromIterable(e.C0182e.g(((a) obj).f41328a));
            case 11:
                return ((com.perfectcorp.perfectlib.ph.database.ymk.skuset.c) obj).f41341b;
            case 12:
                ImmutableSet immutableSet7 = ApplyEffectUtility.f39471a;
                return new o(new t(new c$i((List) obj).c(), new x1(26)), Functions.f42605a);
        }
    }

    @Override // androidx.compose.foundation.layout.Arrangement.SpacingAlignmentCalculator
    public int f(int i2, LayoutDirection layoutDirection) {
        Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
        Alignment.f8582a.getClass();
        return Alignment.Companion.n.a(0, i2, layoutDirection);
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        switch (this.f80520b) {
            case 19:
                ((AudioOutput.Listener) obj).d();
                break;
            case 20:
                ((AudioOutput.Listener) obj).onReleased();
                break;
            case 21:
                ((AudioOutput.Listener) obj).b();
                break;
            case 22:
                ((AudioOutput.Listener) obj).c();
                break;
            default:
                ((AudioOutputProvider.Listener) obj).a();
                break;
        }
    }
}
