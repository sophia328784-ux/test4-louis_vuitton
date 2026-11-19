package defpackage;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Pair;
import androidx.media3.common.Player;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.Triple;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.VtoSetting;
import com.perfectcorp.perfectlib.hc.preferences.JewelryLookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.LookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.NailLookHandlerPreferences;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.jewelryLook.a;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableList;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import com.perfectcorp.thirdparty.com.google.common.collect.Iterables;
import com.perfectcorp.thirdparty.com.google.common.collect.bz;
import com.perfectcorp.thirdparty.io.reactivex.Observable;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.p;
import com.perfectcorp.thirdparty.io.reactivex.internal.operators.single.t;
import com.perfectcorp.thirdparty.io.reactivex.schedulers.Schedulers;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class c8 implements Function, ListenerSet.Event {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21086b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f21087c;

    public /* synthetic */ c8(AnalyticsListener.EventTime eventTime, List list) {
        this.f21086b = 2;
        this.f21087c = list;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        int i2 = this.f21086b;
        int i3 = 3;
        List<VtoSetting> list = this.f21087c;
        switch (i2) {
            case 0:
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) obj;
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                Single list2 = Observable.fromIterable(list).filter(new f8(concurrentHashMap, 0)).toList();
                f8 f8Var = new f8(concurrentHashMap, 1);
                list2.getClass();
                return new t(list2, f8Var);
            case 1:
                Map map = (Map) obj;
                ImmutableSet immutableSet2 = ApplyEffectUtility.f39471a;
                bz bzVar = ImmutableList.f42200c;
                ImmutableList.Builder builder = new ImmutableList.Builder();
                for (VtoSetting vtoSettingBuild : list) {
                    String str = vtoSettingBuild.f40014a;
                    String str2 = vtoSettingBuild.f40016c;
                    if (TextUtils.isEmpty(str) && TextUtils.isEmpty(vtoSettingBuild.f40015b)) {
                        if (TextUtils.isEmpty(str2)) {
                            md.h("Setting already validate in VtoSetting#Builder.");
                            return null;
                        }
                        String str3 = (String) map.get(str2);
                        if (TextUtils.isEmpty(str3)) {
                            md.n(tr.g("Can't find product GUID for SKU GUID=", str2));
                            return null;
                        }
                        vtoSettingBuild = VtoSetting.builder(vtoSettingBuild).setProductGuid(str3).build();
                    }
                    builder.f(vtoSettingBuild);
                }
                ImmutableList immutableListI = builder.i();
                Log.g(3, "ApplyEffectUtility", "[handleNoProductIdSettings] mappedResult=".concat(Iterables.c(immutableListI)));
                return immutableListI;
            case 2:
            case 3:
            default:
                Map map2 = (Map) obj;
                return Observable.fromIterable(list).filter(new xw0(map2, i3)).map(new xw0(map2, 4));
            case 4:
                List list3 = (List) obj;
                SharedPreferences.Editor editorEdit = JewelryLookHandlerPreferences.f40325b.edit();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    a.C0167a c0167a = (a.C0167a) it.next();
                    editorEdit.putLong(c0167a.guid, c0167a.lastModified);
                }
                editorEdit.commit();
                return list3;
            case 5:
                List list4 = (List) obj;
                SharedPreferences.Editor editorEdit2 = LookHandlerPreferences.f40327b.edit();
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a.C0168a c0168a = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a.C0168a) it2.next();
                    editorEdit2.putLong(c0168a.guid, c0168a.lastModified);
                }
                editorEdit2.commit();
                return list4;
            case 6:
                List list5 = (List) obj;
                SharedPreferences.Editor editorEdit3 = NailLookHandlerPreferences.f40329b.edit();
                Iterator it3 = list.iterator();
                while (it3.hasNext()) {
                    com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.nailLook.a.C0169a c0169a = (com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.nailLook.a.C0169a) it3.next();
                    editorEdit3.putLong(c0169a.guid, c0169a.lastModified);
                }
                editorEdit3.commit();
                return list5;
            case 7:
                return Observable.fromIterable(list);
            case 8:
                Triple triple = (Triple) obj;
                HashSet hashSet = new HashSet();
                HashSet hashSet2 = new HashSet();
                Iterator it4 = list.iterator();
                while (it4.hasNext()) {
                    String str4 = (String) it4.next();
                    if (((Set) triple.f39438c).contains(str4)) {
                        hashSet.add(str4);
                    } else {
                        hashSet2.add(str4);
                    }
                }
                return Pair.create(hashSet, hashSet2);
            case 9:
                List list6 = (List) obj;
                return list6.isEmpty() ? new p(new sa0(list, i3)).j(Schedulers.f43170c) : Single.h(list6);
        }
    }

    @Override // androidx.media3.common.util.ListenerSet.Event
    public void invoke(Object obj) {
        switch (this.f21086b) {
            case 2:
                ((AnalyticsListener) obj).getClass();
                break;
            default:
                ((Player.Listener) obj).n(this.f21087c);
                break;
        }
    }

    public /* synthetic */ c8(List list, int i2) {
        this.f21086b = i2;
        this.f21087c = list;
    }
}
