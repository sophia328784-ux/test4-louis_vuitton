package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ph.database.ymk.cachestrategy.a;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class h8 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f69645a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f69646b;

    public /* synthetic */ h8(String str, int i2) {
        this.f69645a = i2;
        this.f69646b = str;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f69645a;
        String str = this.f69646b;
        switch (i2) {
            case 0:
                a.v(3, "[startLookUpdateTask] Look updated. lookGuid=", str, "LookCacheFirstThenUpdateStrategy");
                a.e(str, a.b.f41169b);
                break;
            case 1:
                Log.e("LookCacheFirstThenUpdateStrategy", "[startLookUpdateTask] Update look failed. lookGuid=" + str, (Throwable) obj);
                a.d(str);
                break;
            case 2:
                Log.e("SkinCare3RecommendationHandler", "[processProducts] Download failed url=" + str, (Throwable) obj);
                break;
            case 3:
                Log.e("SkinCare3RecommendationHandler", "[getThumbnailDownloadTasks] download failed. url=" + str, (Throwable) obj);
                break;
            case 4:
                Log.g(3, "SkuHandler", "[checkNeedToUpdateByEffect] product mask (" + str + ") needToUpdate=" + ((Boolean) obj));
                break;
            case 5:
                Log.g(3, "SkuHandler", "[checkSkuTreeNeedToUpdate] " + str + " needToUpdate=" + ((Boolean) obj));
                break;
            case 6:
                Log.g(3, "SkuHandler", "[checkSkuTreeNeedToUpdate] " + str + " needToUpdate=" + ((Boolean) obj));
                break;
            case 7:
                a.v(3, "[createUnzipSingle] succeeded. guid=", str, "BackgroundDownloader");
                break;
            case 8:
                a.v(3, "[queryMetadata] succeeded. guid=", str, "BackgroundDownloader");
                break;
            default:
                Log.e("BackgroundDownloader", "[queryMetadata] failed. guid=" + str, (Throwable) obj);
                break;
        }
    }
}
