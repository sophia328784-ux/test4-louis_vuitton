package androidx.camera.camera2.internal.compat.quirk;

import android.util.Size;
import androidx.camera.core.impl.Quirk;
import java.util.HashMap;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
public class SmallDisplaySizeQuirk implements Quirk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f1755a;

    static {
        HashMap map = new HashMap();
        f1755a = map;
        map.put("REDMI NOTE 8", new Size(Sink.Screenshare.MAX_DIMENSION_LOW, 2340));
        map.put("REDMI NOTE 7", new Size(Sink.Screenshare.MAX_DIMENSION_LOW, 2340));
        map.put("SM-A207M", new Size(Sink.Video.MAX_DIMENSION_LOW, 1560));
        map.put("REDMI NOTE 7S", new Size(Sink.Screenshare.MAX_DIMENSION_LOW, 2340));
        map.put("SM-A127F", new Size(Sink.Video.MAX_DIMENSION_LOW, 1600));
        map.put("SM-A536E", new Size(Sink.Screenshare.MAX_DIMENSION_LOW, 2400));
        map.put("220233L2I", new Size(Sink.Video.MAX_DIMENSION_LOW, 1600));
        map.put("V2149", new Size(Sink.Video.MAX_DIMENSION_LOW, 1600));
        map.put("VIVO 1920", new Size(Sink.Screenshare.MAX_DIMENSION_LOW, 2340));
        map.put("CPH2223", new Size(Sink.Screenshare.MAX_DIMENSION_LOW, 2400));
        map.put("V2029", new Size(Sink.Video.MAX_DIMENSION_LOW, 1600));
        map.put("CPH1901", new Size(Sink.Video.MAX_DIMENSION_LOW, 1520));
        map.put("REDMI Y3", new Size(Sink.Video.MAX_DIMENSION_LOW, 1520));
        map.put("SM-A045M", new Size(Sink.Video.MAX_DIMENSION_LOW, 1600));
        map.put("SM-A146U", new Size(Sink.Screenshare.MAX_DIMENSION_LOW, 2408));
        map.put("CPH1909", new Size(Sink.Video.MAX_DIMENSION_LOW, 1520));
        map.put("NOKIA 4.2", new Size(Sink.Video.MAX_DIMENSION_LOW, 1520));
        map.put("SM-G960U1", new Size(1440, 2960));
        map.put("SM-A137F", new Size(Sink.Screenshare.MAX_DIMENSION_LOW, 2408));
        map.put("VIVO 1816", new Size(Sink.Video.MAX_DIMENSION_LOW, 1520));
        map.put("INFINIX X6817", new Size(Sink.Video.MAX_DIMENSION_LOW, 1612));
        map.put("SM-A037F", new Size(Sink.Video.MAX_DIMENSION_LOW, 1600));
        map.put("NOKIA 2.4", new Size(Sink.Video.MAX_DIMENSION_LOW, 1600));
        map.put("SM-A125M", new Size(Sink.Video.MAX_DIMENSION_LOW, 1600));
        map.put("INFINIX X670", new Size(Sink.Screenshare.MAX_DIMENSION_LOW, 2400));
    }
}
