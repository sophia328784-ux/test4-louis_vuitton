package com.perfectcorp.perfectlib;

import android.graphics.Bitmap;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class k2 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f40438a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f40439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VtoApplier.DownloadAndApplyCallback f40440c;

    public /* synthetic */ k2(String str, VtoApplier.DownloadAndApplyCallback downloadAndApplyCallback, int i2) {
        this.f40438a = i2;
        this.f40439b = str;
        this.f40440c = downloadAndApplyCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f40438a;
        VtoApplier.DownloadAndApplyCallback downloadAndApplyCallback = this.f40440c;
        String str = this.f40439b;
        switch (i2) {
            case 0:
                ThreadPoolExecutor threadPoolExecutor = MakeupCamInternal.n;
                Log.g(3, "MakeupCamInternal", "[applyLookByGuid] Look applied (mapping). lookGuid=".concat(str));
                downloadAndApplyCallback.onSuccess(null);
                break;
            case 1:
                Throwable th = (Throwable) obj;
                ThreadPoolExecutor threadPoolExecutor2 = MakeupCamInternal.n;
                if (!(th instanceof SkipCallbackException)) {
                    Log.e("MakeupCamInternal", "[applyLookByGuid] onFailure (mapping). lookGuid=".concat(str), th);
                    downloadAndApplyCallback.onFailure(th);
                } else {
                    Log.c("MakeupCamInternal", "[applyLookByGuid] task canceled (mapping). lookGuid=".concat(str), th);
                }
                break;
            case 2:
                ThreadPoolExecutor threadPoolExecutor3 = MakeupCamInternal.n;
                Log.g(3, "MakeupCamInternal", "[applyLookByGuid] Look applied. lookGuid=".concat(str));
                downloadAndApplyCallback.onSuccess(null);
                break;
            case 3:
                Throwable th2 = (Throwable) obj;
                ThreadPoolExecutor threadPoolExecutor4 = MakeupCamInternal.n;
                if (!(th2 instanceof SkipCallbackException)) {
                    Log.e("MakeupCamInternal", "[applyLookByGuid] onFailure. lookGuid=".concat(str), th2);
                    downloadAndApplyCallback.onFailure(th2);
                } else {
                    Log.c("MakeupCamInternal", "[applyLookByGuid] task canceled. lookGuid=".concat(str), th2);
                }
                break;
            case 4:
                ThreadPoolExecutor threadPoolExecutor5 = MakeupCamInternal.n;
                Log.g(3, "MakeupCamInternal", "[applyLookByGuid] Look applied (mapping). lookGuid=".concat(str));
                downloadAndApplyCallback.onSuccess(null);
                break;
            case 5:
                Throwable th3 = (Throwable) obj;
                ThreadPoolExecutor threadPoolExecutor6 = MakeupCamInternal.n;
                if (!(th3 instanceof SkipCallbackException)) {
                    Log.e("MakeupCamInternal", "[applyLookByGuid] onFailure (mapping). lookGuid=".concat(str), th3);
                    downloadAndApplyCallback.onFailure(th3);
                } else {
                    Log.c("MakeupCamInternal", "[applyLookByGuid] task canceled (mapping). lookGuid=".concat(str), th3);
                }
                break;
            case 6:
                ThreadPoolExecutor threadPoolExecutor7 = MakeupCamInternal.n;
                Log.g(3, "MakeupCamInternal", "[downloadAndApplyLookInternal] Look applied. lookGuid=".concat(str));
                downloadAndApplyCallback.onSuccess(null);
                break;
            case 7:
                Throwable th4 = (Throwable) obj;
                ThreadPoolExecutor threadPoolExecutor8 = MakeupCamInternal.n;
                if (!(th4 instanceof SkipCallbackException)) {
                    Log.e("MakeupCamInternal", "[downloadAndApplyLookInternal] onFailure. lookGuid=".concat(str), th4);
                    downloadAndApplyCallback.onFailure(th4);
                } else {
                    Log.c("MakeupCamInternal", "[downloadAndApplyLookInternal] task canceled. lookGuid=".concat(str), th4);
                }
                break;
            case 8:
                int i3 = PhotoMakeupInternal.n;
                Log.g(3, "PhotoMakeupInternal", "[applyLookByGuid] Look applied (mapping). lookGuid=".concat(str));
                downloadAndApplyCallback.onSuccess((Bitmap) obj);
                break;
            case 9:
                Throwable th5 = (Throwable) obj;
                int i4 = PhotoMakeupInternal.n;
                if (!(th5 instanceof SkipCallbackException)) {
                    Log.e("PhotoMakeupInternal", "[applyLookByGuid] onFailure (mapping). lookGuid=".concat(str), th5);
                    downloadAndApplyCallback.onFailure(th5);
                } else {
                    Log.c("PhotoMakeupInternal", "[applyLookByGuid] task canceled (mapping). lookGuid=".concat(str), th5);
                }
                break;
            case 10:
                int i5 = PhotoMakeupInternal.n;
                Log.g(3, "PhotoMakeupInternal", "[applyLookByGuid] Look applied. lookGuid=".concat(str));
                downloadAndApplyCallback.onSuccess((Bitmap) obj);
                break;
            case 11:
                Throwable th6 = (Throwable) obj;
                int i6 = PhotoMakeupInternal.n;
                if (!(th6 instanceof SkipCallbackException)) {
                    Log.e("PhotoMakeupInternal", "[applyLookByGuid] onFailure. lookGuid=".concat(str), th6);
                    downloadAndApplyCallback.onFailure(th6);
                } else {
                    Log.c("PhotoMakeupInternal", "[applyLookByGuid] task canceled. lookGuid=".concat(str), th6);
                }
                break;
            case 12:
                int i7 = PhotoMakeupInternal.n;
                Log.g(3, "PhotoMakeupInternal", "[downloadAndApplyLookInternal] Look applied (mapping). lookGuid=".concat(str));
                downloadAndApplyCallback.onSuccess((Bitmap) obj);
                break;
            case 13:
                Throwable th7 = (Throwable) obj;
                int i8 = PhotoMakeupInternal.n;
                if (!(th7 instanceof SkipCallbackException)) {
                    Log.e("PhotoMakeupInternal", "[downloadAndApplyLookInternal] onFailure (mapping). lookGuid=".concat(str), th7);
                    downloadAndApplyCallback.onFailure(th7);
                } else {
                    Log.c("PhotoMakeupInternal", "[downloadAndApplyLookInternal] task canceled (mapping). lookGuid=".concat(str), th7);
                }
                break;
            case 14:
                int i9 = PhotoMakeupInternal.n;
                Log.g(3, "PhotoMakeupInternal", "[downloadAndApplyLookInternal] Look applied. lookGuid=".concat(str));
                downloadAndApplyCallback.onSuccess((Bitmap) obj);
                break;
            default:
                Throwable th8 = (Throwable) obj;
                int i10 = PhotoMakeupInternal.n;
                if (!(th8 instanceof SkipCallbackException)) {
                    Log.e("PhotoMakeupInternal", "[downloadAndApplyLookInternal] onFailure. lookGuid=".concat(str), th8);
                    downloadAndApplyCallback.onFailure(th8);
                } else {
                    Log.c("PhotoMakeupInternal", "[downloadAndApplyLookInternal] task canceled. lookGuid=".concat(str), th8);
                }
                break;
        }
    }
}
