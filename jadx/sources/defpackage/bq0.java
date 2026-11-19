package defpackage;

import android.text.TextUtils;
import com.perfectcorp.common.concurrent.Threads;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.exceptions.ProductMappingFailedException;
import com.perfectcorp.perfectlib.ph.database.mcsdk.IdRow;
import com.perfectcorp.perfectlib.ph.database.mcsdk.ProductMappingDatabase;
import com.perfectcorp.perfectlib.ph.database.mcsdk.a;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import java.util.Objects;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class bq0 implements Callable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f20923c;
    public final /* synthetic */ boolean d;

    public /* synthetic */ bq0(String str, boolean z, int i2) {
        this.f20922b = i2;
        this.f20923c = str;
        this.d = z;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i2 = this.f20922b;
        boolean z = this.d;
        String str = this.f20923c;
        switch (i2) {
            case 0:
                Threads.b();
                if (TextUtils.isEmpty(str)) {
                    throw new ProductMappingFailedException("shadeId is empty");
                }
                ProductMappingDatabase productMappingDatabaseH = ProductMappingDatabase.h();
                productMappingDatabaseH.getClass();
                Objects.requireNonNull(str, "shadetId can't be null");
                Optional optionalJ = productMappingDatabaseH.j("shadetId=?", new String[]{str});
                if (!optionalJ.d()) {
                    Log.g(5, "ProductMappingUtility", "Can not get mapped id for shadeId=" + str + ", continue to try SkuAndShadeIdMapping");
                    optionalJ = a.h().m(str);
                    if (!optionalJ.d()) {
                        Log.d("ProductMappingUtility", "can not get mapped id for shadeId=".concat(str));
                        if (z) {
                            throw new ProductMappingFailedException("can not get mapped id for shadeId=".concat(str));
                        }
                        return IdRow.f41146f;
                    }
                }
                return (IdRow) optionalJ.c();
            default:
                Threads.b();
                if (TextUtils.isEmpty(str)) {
                    throw new ProductMappingFailedException("productId is empty");
                }
                ProductMappingDatabase productMappingDatabaseH2 = ProductMappingDatabase.h();
                productMappingDatabaseH2.getClass();
                Objects.requireNonNull(str, "productId can't be null");
                Optional optionalJ2 = productMappingDatabaseH2.j("productId=?", new String[]{str});
                if (!optionalJ2.d()) {
                    Log.g(5, "ProductMappingUtility", "Can not get mapped id for productId=" + str + ", continue to try SkuAndShadeIdMapping");
                    a aVarH = a.h();
                    aVarH.getClass();
                    optionalJ2 = aVarH.j("productId=?", new String[]{str});
                    if (!optionalJ2.d()) {
                        Log.d("ProductMappingUtility", "Can not get mapped id for productId=".concat(str));
                        if (z) {
                            throw new ProductMappingFailedException("Can not get mapped id for productId=".concat(str));
                        }
                        return IdRow.f41146f;
                    }
                }
                return (IdRow) optionalJ2.c();
        }
    }
}
