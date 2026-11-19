package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.FaceAttributeAnalyzer;
import com.perfectcorp.perfectlib.LookHandler;
import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.perfectlib.PhotoMakeup;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.TagHandler;
import com.perfectcorp.perfectlib.ph.database.ymk.background.a;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.thirdparty.io.reactivex.disposables.CompositeDisposable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class xw implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f81216a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f81217b;

    public /* synthetic */ xw(Object obj, int i2) {
        this.f81216a = i2;
        this.f81217b = obj;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
    public final void run() throws Throwable {
        int i2 = this.f81216a;
        Object obj = this.f81217b;
        switch (i2) {
            case 0:
                Log.g(3, "FaceAttributeAnalyzer", "[setImage] succeeded");
                ((FaceAttributeAnalyzer.SetImageCallback) obj).onSuccess();
                break;
            case 1:
                ((LookHandler.ClearCallback) obj).onCleared();
                break;
            case 2:
                ((LookHandler.DeleteLooksCallback) obj).onComplete();
                break;
            case 3:
                ((MakeupCam.ReleaseCallback) obj).onReleased();
                break;
            case 4:
                ((MakeupCam) obj).f();
                break;
            case 5:
                ((PhotoMakeup.ReleaseCallback) obj).onReleased();
                break;
            case 6:
                Log.g(3, "RecommendationHandler", "[clearAll] succeeded");
                ((RecommendationHandler.ClearAllCallback) obj).onSuccess();
                break;
            case 7:
                a.A(new StringBuilder("[downloadThenUpdateOnNextSdkInit] end id="), ((Sku) obj).f41266f, 3, "SkuCacheStrategyHelper");
                break;
            case 8:
                ((SkuHandler.ClearCallback) obj).onCleared();
                break;
            case 9:
                ((SkuHandler.DeleteSkuSetsCallback) obj).onComplete();
                break;
            case 10:
                ((SkuHandler.DeleteProductsCallback) obj).onComplete();
                break;
            case 11:
                Log.g(3, "TagHandler", "[syncServer] succeeded");
                ((TagHandler.SyncServerCallback) obj).onSuccess();
                break;
            case 12:
                Log.g(3, "TagHandler", "[clearAll] succeeded");
                ((TagHandler.ClearAllCallback) obj).onSuccess();
                break;
            case 13:
                ((CompositeDisposable) obj).dispose();
                break;
            default:
                a.A(new StringBuilder("[insertToDb] succeeded. guid="), ((a) obj).guid, 3, "BackgroundDownloader");
                break;
        }
    }
}
