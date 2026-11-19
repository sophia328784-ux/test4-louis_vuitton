package defpackage;

import com.cyberlink.clgpuimage.CLShare3DRelatedClasses;
import com.perfectcorp.perfectlib.core.VenusModel$Assets;
import java.io.File;
import java.io.FilenameFilter;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class k7 implements FilenameFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f71579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f71580b;

    public /* synthetic */ k7(Object obj, int i2) {
        this.f71579a = i2;
        this.f71580b = obj;
    }

    @Override // java.io.FilenameFilter
    public final boolean accept(File file, String str) {
        int i2 = this.f71579a;
        Object obj = this.f71580b;
        switch (i2) {
            case 0:
                return str.equalsIgnoreCase(((CLShare3DRelatedClasses.LiveObject3DMaterialData) obj).texture_image);
            default:
                VenusModel$Assets venusModel$Assets = (VenusModel$Assets) obj;
                return str.startsWith(venusModel$Assets.f40093a) && str.endsWith(venusModel$Assets.f40094b) && !str.equals(venusModel$Assets.f40095c);
        }
    }
}
