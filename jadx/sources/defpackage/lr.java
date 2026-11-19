package defpackage;

import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.sightcall.gpslocation.datasource.GpsGmsDatasourceImpl;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class lr implements OnSuccessListener, OnFailureListener, DoubleFunction {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function1 f76077c;

    public /* synthetic */ lr(Function1 function1, int i2) {
        this.f76076b = i2;
        this.f76077c = function1;
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double b(double d) {
        int i2 = this.f76076b;
        Function1 function1 = this.f76077c;
        switch (i2) {
            case 3:
                Rgb.Companion companion = Rgb.r;
                break;
            case 4:
                Rgb.Companion companion2 = Rgb.r;
                break;
            case 5:
                Rgb.Companion companion3 = Rgb.r;
                break;
            default:
                Rgb.Companion companion4 = Rgb.r;
                break;
        }
        return ((Number) function1.invoke(Double.valueOf(d))).doubleValue();
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        GpsGmsDatasourceImpl.startGps$lambda$2(this.f76077c, exc);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(Object obj) {
        int i2 = this.f76076b;
        Function1 function1 = this.f76077c;
        switch (i2) {
            case 0:
                function1.invoke(obj);
                break;
            default:
                function1.invoke(obj);
                break;
        }
    }
}
