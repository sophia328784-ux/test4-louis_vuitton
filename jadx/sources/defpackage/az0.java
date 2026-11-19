package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.SkuHandler;
import com.perfectcorp.perfectlib.internal.InternalErrorRetriever;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class az0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SkuHandler.CheckNeedToUpdateCallback f20665b;

    public /* synthetic */ az0(SkuHandler.CheckNeedToUpdateCallback checkNeedToUpdateCallback, int i2) {
        this.f20664a = i2;
        this.f20665b = checkNeedToUpdateCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f20664a;
        SkuHandler.CheckNeedToUpdateCallback checkNeedToUpdateCallback = this.f20665b;
        switch (i2) {
            case 0:
                Boolean bool = (Boolean) obj;
                Log.g(3, "SkuHandler", "[checkNeedToUpdate] succeed. needUpdate=" + bool);
                checkNeedToUpdateCallback.onSuccess(bool.booleanValue());
                break;
            case 1:
                Throwable th = (Throwable) obj;
                Log.e("SkuHandler", "[checkNeedToUpdate] failed.", th);
                checkNeedToUpdateCallback.onFailure(InternalErrorRetriever.a(th));
                break;
            case 2:
                Boolean bool2 = (Boolean) obj;
                Log.g(3, "SkuHandler", "[checkNeedToUpdateByEffect] succeed. needUpdate=" + bool2);
                checkNeedToUpdateCallback.onSuccess(bool2.booleanValue());
                break;
            default:
                Throwable th2 = (Throwable) obj;
                Log.e("SkuHandler", "[checkNeedToUpdateByEffect] failed.", th2);
                checkNeedToUpdateCallback.onFailure(InternalErrorRetriever.a(th2));
                break;
        }
    }
}
