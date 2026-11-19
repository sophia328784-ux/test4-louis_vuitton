package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.VtoObject;
import java.util.Collections;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class y51 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ VtoObject.Callback f81295c;

    public /* synthetic */ y51(VtoObject.Callback callback, int i2) {
        this.f81294b = i2;
        this.f81295c = callback;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f81294b;
        VtoObject.Callback callback = this.f81295c;
        switch (i2) {
            case 0:
                Log.g(3, "VtoDetail$PaletteMajor", "[getWearingStyles] empty list");
                callback.onSuccess(Collections.EMPTY_LIST);
                break;
            case 1:
                Log.g(3, "VtoDetailPatternEarrings", "[getPalettes] empty list");
                callback.onSuccess(Collections.EMPTY_LIST);
                break;
            case 2:
                callback.onSuccess(Collections.EMPTY_LIST);
                break;
            case 3:
                Log.g(3, "VtoDetailPatternMajor", "[getWearingStyles] empty list");
                callback.onSuccess(Collections.EMPTY_LIST);
                break;
            default:
                Log.g(3, "VtoPatternPatternEarrings", "[getPalettes] empty list");
                callback.onSuccess(Collections.EMPTY_LIST);
                break;
        }
    }
}
