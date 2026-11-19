package defpackage;

import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.perfectlib.hc.preferences.JewelryLookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.LookHandlerPreferences;
import com.perfectcorp.perfectlib.hc.preferences.NailLookHandlerPreferences;
import com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.jewelryLook.a;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class r40 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f79243a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RequestTask.Response f79244b;

    public /* synthetic */ r40(RequestTask.Response response, int i2) {
        this.f79243a = i2;
        this.f79244b = response;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f79243a;
        RequestTask.Response response = this.f79244b;
        switch (i2) {
            case 0:
                String strA = ((a) response.f39358b).a();
                JewelryLookHandlerPreferences.f40324a.edit().putString("LOOK_LIST_MESSAGE_DIGEST", strA).putString("LOOK_LIST_ITEMS", GsonHelper.f39261b.k(((a) response.f39358b).b())).commit();
                break;
            case 1:
                LookHandlerPreferences.f40326a.edit().putString("LOOK_LIST_MESSAGE_DIGEST", ((com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.look.a) response.f39358b).a()).commit();
                break;
            default:
                String strA2 = ((com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.nailLook.a) response.f39358b).a();
                NailLookHandlerPreferences.f40328a.edit().putString("LOOK_LIST_MESSAGE_DIGEST", strA2).putString("LOOK_LIST_ITEMS", GsonHelper.f39261b.k(((com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.nailLook.a) response.f39358b).b())).commit();
                break;
        }
    }
}
