package defpackage;

import com.perfectcorp.perfectlib.TagHandler;
import com.perfectcorp.thirdparty.io.reactivex.functions.Action;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class r21 implements Action {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f79231a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TagHandler f79232b;

    public /* synthetic */ r21(TagHandler tagHandler, int i2) {
        this.f79231a = i2;
        this.f79232b = tagHandler;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Action
    public final void run() {
        int i2 = this.f79231a;
        TagHandler tagHandler = this.f79232b;
        switch (i2) {
            case 0:
                tagHandler.f39983b.set(null);
                break;
            case 1:
                tagHandler.f39982a.set(null);
                break;
            default:
                tagHandler.f39982a.set(null);
                break;
        }
    }
}
