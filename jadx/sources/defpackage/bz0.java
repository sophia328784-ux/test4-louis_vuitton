package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ph.unit.sku.a;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class bz0 implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20996a;

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
    public final void run() {
        switch (this.f20996a) {
            case 0:
                Log.g(3, "SkuHandler", "clearAll ended.");
                break;
            case 1:
                Log.g(3, "SkuHandler", "[getListBySyncServerInternal] end");
                break;
            case 2:
                Pattern pattern = a.f41721a;
                Log.g(3, "SkuSetUnit", "[querySkuSetListAndInsertToDB] end");
                break;
            case 3:
                Pattern pattern2 = a.f41721a;
                Log.g(3, "SkuSetUnit", "[queryAndSyncToDB] end");
                break;
            default:
                Pattern pattern3 = a.f41721a;
                Log.g(3, "SkuSetUnit", "[getSkuSetIDListFromServer] end");
                break;
        }
    }
}
