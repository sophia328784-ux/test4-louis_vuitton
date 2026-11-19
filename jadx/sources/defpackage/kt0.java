package defpackage;

import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import com.perfectcorp.common.utility.EventPublisher;
import com.perfectcorp.perfectlib.RecommendationHandler;
import com.perfectcorp.perfectlib.TagHandler;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class kt0 implements DoubleFunction, EventPublisher.Publisher {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75868b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ double f75869c;

    public /* synthetic */ kt0(double d, int i2) {
        this.f75868b = i2;
        this.f75869c = d;
    }

    @Override // com.perfectcorp.common.utility.EventPublisher.Publisher
    public void a(EventPublisher.Subscriber subscriber) {
        switch (this.f75868b) {
            case 2:
                ((RecommendationHandler.SyncServerCallback) subscriber).progress(this.f75869c);
                break;
            case 3:
                ((RecommendationHandler.SyncServerCallback) subscriber).progress(this.f75869c);
                break;
            case 4:
                ((TagHandler.SyncServerCallback) subscriber).progress((this.f75869c * 0.5d) + 0.5d);
                break;
            default:
                ((TagHandler.SyncServerCallback) subscriber).progress(this.f75869c * 0.49d);
                break;
        }
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double b(double d) {
        int i2 = this.f75868b;
        double d2 = this.f75869c;
        Rgb.Companion companion = Rgb.r;
        switch (i2) {
            case 0:
                if (d < 0.0d) {
                    d = 0.0d;
                }
                return Math.pow(d, 1.0d / d2);
            default:
                if (d < 0.0d) {
                    d = 0.0d;
                }
                return Math.pow(d, d2);
        }
    }
}
