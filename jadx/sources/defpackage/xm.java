package defpackage;

import android.graphics.Rect;
import android.media.MediaCodec;
import android.util.Size;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.internal.compat.workaround.SurfaceSorter;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.camera.video.VideoCapture;
import androidx.compose.ui.semantics.SemanticsSortKt;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonGroup;
import java.util.Comparator;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class xm implements Comparator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81154b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81155c;

    public /* synthetic */ xm(Object obj, int i2) {
        this.f81154b = i2;
        this.f81155c = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i2 = this.f81154b;
        int i3 = 0;
        Object obj3 = this.f81155c;
        switch (i2) {
            case 0:
                for (Function1 function1 : (Function1[]) obj3) {
                    int iA = ComparisonsKt.a((Comparable) function1.invoke(obj), (Comparable) function1.invoke(obj2));
                    if (iA != 0) {
                        return iA;
                    }
                }
                return 0;
            case 1:
                MaterialButtonGroup materialButtonGroup = (MaterialButtonGroup) obj3;
                MaterialButton materialButton = (MaterialButton) obj;
                MaterialButton materialButton2 = (MaterialButton) obj2;
                int i4 = MaterialButtonGroup.l;
                int iCompareTo = Boolean.valueOf(materialButton.m).compareTo(Boolean.valueOf(materialButton2.m));
                if (iCompareTo != 0) {
                    return iCompareTo;
                }
                int iCompareTo2 = Boolean.valueOf(materialButton.isPressed()).compareTo(Boolean.valueOf(materialButton2.isPressed()));
                return iCompareTo2 != 0 ? iCompareTo2 : Integer.compare(materialButtonGroup.indexOfChild(materialButton), materialButtonGroup.indexOfChild(materialButton2));
            case 2:
                return ((Number) ((aj0) obj3).invoke(obj, obj2)).intValue();
            case 3:
                Comparator[] comparatorArr = SemanticsSortKt.f10367a;
                return ((Number) ((Function2) obj3).invoke(obj, obj2)).intValue();
            case 4:
                SessionConfig.OutputConfig outputConfig = (SessionConfig.OutputConfig) obj2;
                ((SurfaceSorter) obj3).getClass();
                Class cls = ((SessionConfig.OutputConfig) obj).f().f2294j;
                int i5 = cls == MediaCodec.class ? 2 : (cls == Preview.class || cls == StreamSharing.class) ? 0 : 1;
                Class cls2 = outputConfig.f().f2294j;
                if (cls2 == MediaCodec.class) {
                    i3 = 2;
                } else if (cls2 != Preview.class && cls2 != StreamSharing.class) {
                    i3 = 1;
                }
                return i5 - i3;
            default:
                Rect rect = (Rect) obj3;
                Size size = (Size) obj;
                Size size2 = (Size) obj2;
                VideoCapture.Defaults defaults = VideoCapture.F;
                return (Math.abs(size.getHeight() - rect.height()) + Math.abs(size.getWidth() - rect.width())) - (Math.abs(size2.getHeight() - rect.height()) + Math.abs(size2.getWidth() - rect.width()));
        }
    }
}
