package defpackage;

import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.VtoObject;
import com.perfectcorp.perfectlib.internal.SkipCallbackException;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class z51 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f81541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ VtoObject.Callback f81542b;

    public /* synthetic */ z51(VtoObject.Callback callback, int i2) {
        this.f81541a = i2;
        this.f81542b = callback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f81541a;
        VtoObject.Callback callback = this.f81542b;
        switch (i2) {
            case 0:
                List list = (List) obj;
                fc.z(list, new StringBuilder("[getPalettes] onSuccess. size="), 3, "VtoDetail$PaletteMajor");
                callback.onSuccess(list);
                break;
            case 1:
                Throwable th = (Throwable) obj;
                if (!(th instanceof SkipCallbackException)) {
                    Log.e("VtoDetail$PaletteMajor", "[getPalettes] failed.", th);
                    callback.onFailure(th);
                } else {
                    Log.c("VtoDetail$PaletteMajor", "[getPalettes] task canceled.", th);
                }
                break;
            case 2:
                List list2 = (List) obj;
                fc.z(list2, new StringBuilder("[getPatterns] onSuccess. size="), 3, "VtoDetail$PaletteMajor");
                callback.onSuccess(list2);
                break;
            case 3:
                Throwable th2 = (Throwable) obj;
                if (!(th2 instanceof SkipCallbackException)) {
                    Log.e("VtoDetail$PaletteMajor", "[getPatterns] failed.", th2);
                    callback.onFailure(th2);
                } else {
                    Log.c("VtoDetail$PaletteMajor", "[getPatterns] task canceled.", th2);
                }
                break;
            case 4:
                List list3 = (List) obj;
                fc.z(list3, new StringBuilder("[getPatterns] onSuccess. size="), 3, "VtoDetailPatternEarrings");
                callback.onSuccess(list3);
                break;
            case 5:
                Throwable th3 = (Throwable) obj;
                if (!(th3 instanceof SkipCallbackException)) {
                    Log.e("VtoDetailPatternEarrings", "[getPatterns] failed.", th3);
                    callback.onFailure(th3);
                } else {
                    Log.c("VtoDetailPatternEarrings", "[getPatterns] task canceled.", th3);
                }
                break;
            case 6:
                List list4 = (List) obj;
                fc.z(list4, new StringBuilder("[getWearingStyles] onSuccess. size="), 3, "VtoDetailPatternEarrings");
                callback.onSuccess(list4);
                break;
            case 7:
                Throwable th4 = (Throwable) obj;
                if (!(th4 instanceof SkipCallbackException)) {
                    Log.e("VtoDetailPatternEarrings", "[getWearingStyles] failed.", th4);
                    callback.onFailure(th4);
                } else {
                    Log.c("VtoDetailPatternEarrings", "[getWearingStyles] task canceled.", th4);
                }
                break;
            case 8:
                List list5 = (List) obj;
                fc.z(list5, new StringBuilder("[getPatterns] onSuccess. size="), 3, "VtoPalette$PaletteMajor");
                callback.onSuccess(list5);
                break;
            case 9:
                Throwable th5 = (Throwable) obj;
                if (!(th5 instanceof SkipCallbackException)) {
                    Log.e("VtoPalette$PaletteMajor", "[getPatterns] failed.", th5);
                    callback.onFailure(th5);
                } else {
                    Log.c("VtoPalette$PaletteMajor", "[getPatterns] task canceled.", th5);
                }
                break;
            case 10:
                List list6 = (List) obj;
                fc.z(list6, new StringBuilder("[getPatterns] onSuccess. size="), 3, "VtoPalette$SubPalette");
                callback.onSuccess(list6);
                break;
            case 11:
                Throwable th6 = (Throwable) obj;
                if (!(th6 instanceof SkipCallbackException)) {
                    Log.e("VtoPalette$SubPalette", "[getPatterns] failed.", th6);
                    callback.onFailure(th6);
                } else {
                    Log.c("VtoPalette$SubPalette", "[getPatterns] task canceled.", th6);
                }
                break;
            case 12:
                List list7 = (List) obj;
                fc.z(list7, new StringBuilder("[getPalettes] onSuccess. size="), 3, "VtoPattern$PaletteMajor");
                callback.onSuccess(list7);
                break;
            case 13:
                Throwable th7 = (Throwable) obj;
                if (!(th7 instanceof SkipCallbackException)) {
                    Log.e("VtoPattern$PaletteMajor", "[getPalettes] failed.", th7);
                    callback.onFailure(th7);
                } else {
                    Log.c("VtoPattern$PaletteMajor", "[getPalettes] task canceled.", th7);
                }
                break;
            case 14:
                List list8 = (List) obj;
                fc.z(list8, new StringBuilder("[getPalettes] onSuccess. size="), 3, "VtoPattern$PatternMajor");
                callback.onSuccess(list8);
                break;
            case 15:
                Throwable th8 = (Throwable) obj;
                if (!(th8 instanceof SkipCallbackException)) {
                    Log.e("VtoPattern$PatternMajor", "[getPalettes] failed.", th8);
                    callback.onFailure(th8);
                } else {
                    Log.c("VtoPattern$PatternMajor", "[getPalettes] task canceled.", th8);
                }
                break;
            case 16:
                List list9 = (List) obj;
                fc.z(list9, new StringBuilder("[getPalettes] onSuccess. size="), 3, "VtoPattern$SubPalette");
                callback.onSuccess(list9);
                break;
            default:
                Throwable th9 = (Throwable) obj;
                if (!(th9 instanceof SkipCallbackException)) {
                    Log.e("VtoPattern$SubPalette", "[getPalettes] failed.", th9);
                    callback.onFailure(th9);
                } else {
                    Log.c("VtoPattern$SubPalette", "[getPalettes] task canceled.", th9);
                }
                break;
        }
    }
}
