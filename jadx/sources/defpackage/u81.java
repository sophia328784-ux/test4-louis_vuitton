package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.batch.android.j1.g;
import com.batch.android.j1.h;
import com.batch.android.v0.j;
import com.batch.android.v0.k;
import com.perfectcorp.perfectlib.ph.template.e;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class u81 implements Function, h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80264c;

    public /* synthetic */ u81(Object obj, int i2) {
        this.f80263b = i2;
        this.f80264c = obj;
    }

    @Override // com.batch.android.j1.h
    public void a(g gVar) {
        int i2 = this.f80263b;
        Object obj = this.f80264c;
        switch (i2) {
            case 1:
                ((j) obj).a(gVar);
                break;
            default:
                ((k) obj).a(gVar);
                break;
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public Object apply(Object obj) {
        JSONObject jSONObject = (JSONObject) this.f80264c;
        String str = (String) obj;
        ExecutorService executorService = e.f41633a;
        String strOptString = jSONObject.optString(str);
        if (TextUtils.isEmpty(strOptString)) {
            md.n(tr.g("No image can be found. key=", str));
            return null;
        }
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(strOptString);
        Objects.requireNonNull(bitmapDecodeFile, "Image can't be decoded. key=" + str + ", path=" + strOptString);
        return bitmapDecodeFile;
    }
}
