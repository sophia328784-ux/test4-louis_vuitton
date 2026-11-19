package defpackage;

import android.text.TextUtils;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.SkuDataForProtocol;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.hc.database.DBUtility;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageDao;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageInfo;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.h;
import com.perfectcorp.perfectlib.ph.template.idc.e;
import com.perfectcorp.thirdparty.com.google.common.collect.Multimap;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ww0 implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f80957a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f80958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80959c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f80960e;

    public /* synthetic */ ww0(Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        this.f80957a = i2;
        this.f80958b = obj;
        this.f80959c = obj2;
        this.d = obj3;
        this.f80960e = obj4;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
    public final void run() throws JSONException {
        int i2 = this.f80957a;
        Object obj = this.f80960e;
        Object obj2 = this.d;
        Object obj3 = this.f80959c;
        Object obj4 = this.f80958b;
        switch (i2) {
            case 0:
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) obj3;
                Multimap multimap = (Multimap) obj;
                ArrayList<DownloadImageInfo> arrayList = new ArrayList();
                DBUtility.i(YMKDatabase.c(), new ed(concurrentHashMap, YMKDatabase.c(), (List) obj2, arrayList, (Map) obj4, multimap, 2));
                for (DownloadImageInfo downloadImageInfo : arrayList) {
                    StringBuilder sb = new StringBuilder("[downloadProducts] delete download image=");
                    downloadImageInfo.getClass();
                    String str = downloadImageInfo.f40307b;
                    sb.append(DownloadImageDao.o(downloadImageInfo));
                    Log.g(3, "SkinCare3RecommendationHandler", sb.toString());
                    if (!TextUtils.isEmpty(str)) {
                        FileUtils.c(new File(str));
                    }
                }
                Log.g(3, "SkinCare3RecommendationHandler", "[downloadProducts] " + concurrentHashMap.size() + " products and " + multimap.size() + " images has been inserted or updated to database");
                StringBuilder sb2 = new StringBuilder("[downloadProducts] ");
                sb2.append(arrayList.size());
                sb2.append(" download images has been remove from database and file system");
                Log.g(3, "SkinCare3RecommendationHandler", sb2.toString());
                break;
            default:
                SkuDataForProtocol.d((SkuDataForProtocol) obj4, (h) obj3, (e) obj2, (HashMap) obj);
                break;
        }
    }
}
