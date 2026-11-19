package androidx.camera.camera2.internal.compat;

import android.hardware.camera2.params.StreamConfigurationMap;
import android.os.Build;
import android.util.Range;
import android.util.Size;
import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.internal.compat.quirk.ExcludedSupportedSizesQuirk;
import androidx.camera.camera2.internal.compat.workaround.ExcludedSupportedSizesContainer;
import androidx.camera.camera2.internal.compat.workaround.OutputSizesCorrector;
import androidx.camera.core.Logger;
import com.linkplay.medialib.ContentTree;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
import net.rtccloud.sdk.DataChannelModule;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes.dex */
public class StreamConfigurationMapCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StreamConfigurationMapCompatApi23Impl f1707a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OutputSizesCorrector f1708b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f1709c = new HashMap();

    public interface StreamConfigurationMapCompatImpl {
    }

    public StreamConfigurationMapCompat(StreamConfigurationMap streamConfigurationMap, OutputSizesCorrector outputSizesCorrector) {
        new HashMap();
        new HashMap();
        this.f1707a = new StreamConfigurationMapCompatApi23Impl(streamConfigurationMap);
        this.f1708b = outputSizesCorrector;
    }

    public final Range[] a(Size size) {
        return this.f1707a.f1710a.getHighSpeedVideoFpsRangesFor(size);
    }

    public final Size[] b() {
        return this.f1707a.f1710a.getHighSpeedVideoSizes();
    }

    public final Size[] c(Range range) {
        return this.f1707a.f1710a.getHighSpeedVideoSizesFor(range);
    }

    public final int[] d() {
        int[] outputFormats;
        StreamConfigurationMapCompatApi23Impl streamConfigurationMapCompatApi23Impl = this.f1707a;
        streamConfigurationMapCompatApi23Impl.getClass();
        try {
            outputFormats = streamConfigurationMapCompatApi23Impl.f1710a.getOutputFormats();
        } catch (IllegalArgumentException | NullPointerException unused) {
            Logger.c(5, "StreamConfigurationMapCompatBaseImpl");
            outputFormats = null;
        }
        if (outputFormats == null) {
            return null;
        }
        return (int[]) outputFormats.clone();
    }

    public final long e(Size size, int i2) {
        try {
            return this.f1707a.f1710a.getOutputMinFrameDuration(i2, size);
        } catch (RuntimeException unused) {
            Objects.toString(size);
            Logger.c(5, "StreamConfigurationMapCompat");
            return 0L;
        }
    }

    public final Size[] f(int i2) {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        ArrayList arrayList4;
        ArrayList arrayList5;
        List arrayList6;
        HashMap map = this.f1709c;
        Size[] outputSizes = null;
        if (map.containsKey(Integer.valueOf(i2))) {
            if (((Size[]) map.get(Integer.valueOf(i2))) == null) {
                return null;
            }
            return (Size[]) ((Size[]) map.get(Integer.valueOf(i2))).clone();
        }
        int i3 = 5;
        try {
            outputSizes = this.f1707a.f1710a.getOutputSizes(i2);
        } catch (Throwable unused) {
            Logger.c(5, "StreamConfigurationMapCompat");
        }
        if (outputSizes == null || outputSizes.length == 0) {
            Logger.c(5, "StreamConfigurationMapCompat");
            return outputSizes;
        }
        OutputSizesCorrector outputSizesCorrector = this.f1708b;
        outputSizesCorrector.getClass();
        ArrayList arrayList7 = new ArrayList(Arrays.asList(outputSizes));
        if (outputSizesCorrector.f1771a != null) {
            Size[] sizeArr = (i2 == 34 && "motorola".equalsIgnoreCase(Build.BRAND) && "moto e5 play".equalsIgnoreCase(Build.MODEL)) ? new Size[]{new Size(1440, Sink.Screenshare.MAX_DIMENSION_LOW), new Size(960, Sink.Video.MAX_DIMENSION_LOW)} : new Size[0];
            if (sizeArr.length > 0) {
                arrayList7.addAll(Arrays.asList(sizeArr));
            }
        }
        ExcludedSupportedSizesContainer excludedSupportedSizesContainer = outputSizesCorrector.f1772b;
        excludedSupportedSizesContainer.getClass();
        if (((ExcludedSupportedSizesQuirk) DeviceQuirks.f1731a.b(ExcludedSupportedSizesQuirk.class)) == null) {
            arrayList6 = new ArrayList();
        } else {
            String str = excludedSupportedSizesContainer.f1764a;
            String str2 = Build.BRAND;
            if ("OnePlus".equalsIgnoreCase(str2) && "OnePlus6".equalsIgnoreCase(Build.DEVICE)) {
                arrayList5 = new ArrayList();
                if (str.equals(ContentTree.ROOT_ID) && i2 == 256) {
                    arrayList5.add(new Size(4160, 3120));
                    arrayList5.add(new Size(4000, HarvestConfiguration.SLOW_START_THRESHOLD));
                }
            } else if ("OnePlus".equalsIgnoreCase(str2) && "OnePlus6T".equalsIgnoreCase(Build.DEVICE)) {
                arrayList5 = new ArrayList();
                if (str.equals(ContentTree.ROOT_ID) && i2 == 256) {
                    arrayList5.add(new Size(4160, 3120));
                    arrayList5.add(new Size(4000, HarvestConfiguration.SLOW_START_THRESHOLD));
                }
            } else {
                if ("HUAWEI".equalsIgnoreCase(str2) && "HWANE".equalsIgnoreCase(Build.DEVICE)) {
                    arrayList3 = new ArrayList();
                    if (str.equals(ContentTree.ROOT_ID) && (i2 == 34 || i2 == 35)) {
                        arrayList3.add(new Size(Sink.Video.MAX_DIMENSION_LOW, Sink.Video.MAX_DIMENSION_LOW));
                        arrayList3.add(new Size(400, 400));
                    }
                } else if ("SAMSUNG".equalsIgnoreCase(str2) && "ON7XELTE".equalsIgnoreCase(Build.DEVICE)) {
                    arrayList3 = new ArrayList();
                    if (str.equals(ContentTree.ROOT_ID)) {
                        if (i2 == 34) {
                            arrayList3.add(new Size(4128, 3096));
                            arrayList3.add(new Size(4128, 2322));
                            arrayList3.add(new Size(3088, 3088));
                            arrayList3.add(new Size(3264, 2448));
                            arrayList3.add(new Size(3264, 1836));
                            arrayList3.add(new Size(2048, DataChannelModule.MAX_SIZE_DATA_CHANNEL));
                            arrayList3.add(new Size(2048, 1152));
                            arrayList3.add(new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, Sink.Screenshare.MAX_DIMENSION_LOW));
                        } else if (i2 == 35) {
                            arrayList3.add(new Size(4128, 2322));
                            arrayList3.add(new Size(3088, 3088));
                            arrayList3.add(new Size(3264, 2448));
                            arrayList3.add(new Size(3264, 1836));
                            arrayList3.add(new Size(2048, DataChannelModule.MAX_SIZE_DATA_CHANNEL));
                            arrayList3.add(new Size(2048, 1152));
                            arrayList3.add(new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, Sink.Screenshare.MAX_DIMENSION_LOW));
                        }
                    } else if (str.equals("1") && (i2 == 34 || i2 == 35)) {
                        arrayList3.add(new Size(3264, 2448));
                        arrayList3.add(new Size(3264, 1836));
                        arrayList3.add(new Size(2448, 2448));
                        arrayList3.add(new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, Sink.Screenshare.MAX_DIMENSION_HIGH));
                        arrayList3.add(new Size(2048, DataChannelModule.MAX_SIZE_DATA_CHANNEL));
                        arrayList3.add(new Size(2048, 1152));
                        arrayList3.add(new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, Sink.Screenshare.MAX_DIMENSION_LOW));
                    }
                } else if ("SAMSUNG".equalsIgnoreCase(str2) && "J7XELTE".equalsIgnoreCase(Build.DEVICE)) {
                    arrayList3 = new ArrayList();
                    if (str.equals(ContentTree.ROOT_ID)) {
                        if (i2 == 34) {
                            arrayList3.add(new Size(4128, 3096));
                            arrayList3.add(new Size(4128, 2322));
                            arrayList3.add(new Size(3088, 3088));
                            arrayList3.add(new Size(3264, 2448));
                            arrayList3.add(new Size(3264, 1836));
                            arrayList3.add(new Size(2048, DataChannelModule.MAX_SIZE_DATA_CHANNEL));
                            arrayList3.add(new Size(2048, 1152));
                            arrayList3.add(new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, Sink.Screenshare.MAX_DIMENSION_LOW));
                        } else if (i2 == 35) {
                            arrayList3.add(new Size(2048, DataChannelModule.MAX_SIZE_DATA_CHANNEL));
                            arrayList3.add(new Size(2048, 1152));
                            arrayList3.add(new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, Sink.Screenshare.MAX_DIMENSION_LOW));
                        }
                    } else if (str.equals("1") && (i2 == 34 || i2 == 35)) {
                        arrayList3.add(new Size(2576, 1932));
                        arrayList3.add(new Size(2560, 1440));
                        arrayList3.add(new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, Sink.Screenshare.MAX_DIMENSION_HIGH));
                        arrayList3.add(new Size(2048, DataChannelModule.MAX_SIZE_DATA_CHANNEL));
                        arrayList3.add(new Size(2048, 1152));
                        arrayList3.add(new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, Sink.Screenshare.MAX_DIMENSION_LOW));
                    }
                } else if ("REDMI".equalsIgnoreCase(str2) && "joyeuse".equalsIgnoreCase(Build.DEVICE)) {
                    arrayList3 = new ArrayList();
                    if (str.equals(ContentTree.ROOT_ID) && i2 == 256) {
                        arrayList3.add(new Size(9280, 6944));
                    }
                } else {
                    if (ExcludedSupportedSizesQuirk.g()) {
                        arrayList2 = new ArrayList();
                        if (i2 == 35) {
                            arrayList4 = arrayList2;
                            arrayList2.add(new Size(3840, 2160));
                            arrayList2.add(new Size(3264, 2448));
                            arrayList2.add(new Size(3200, 2400));
                            arrayList2.add(new Size(2688, 1512));
                            arrayList2.add(new Size(2592, 1944));
                            arrayList2.add(new Size(2592, 1940));
                            arrayList2.add(new Size(Sink.Screenshare.MAX_DIMENSION_HIGH, 1440));
                            arrayList4 = arrayList2;
                        }
                    } else if (ExcludedSupportedSizesQuirk.f()) {
                        arrayList = new ArrayList();
                        if (i2 == 35) {
                            arrayList4 = arrayList;
                            arrayList.add(new Size(4032, 3024));
                            arrayList.add(new Size(4000, HarvestConfiguration.SLOW_START_THRESHOLD));
                            arrayList.add(new Size(3264, 2448));
                            arrayList.add(new Size(3200, 2400));
                            arrayList.add(new Size(3024, 3024));
                            arrayList.add(new Size(2976, 2976));
                            arrayList.add(new Size(2448, 2448));
                            arrayList4 = arrayList;
                        }
                    } else {
                        i3 = 5;
                        Logger.c(5, "ExcludedSupportedSizesQuirk");
                        arrayList6 = Collections.EMPTY_LIST;
                    }
                    arrayList4 = arrayList;
                    arrayList4 = arrayList2;
                    i3 = 5;
                    arrayList6 = arrayList4;
                }
                arrayList4 = arrayList3;
                arrayList4 = arrayList;
                arrayList4 = arrayList2;
                i3 = 5;
                arrayList6 = arrayList4;
            }
            arrayList4 = arrayList5;
            arrayList4 = arrayList;
            arrayList4 = arrayList2;
            i3 = 5;
            arrayList6 = arrayList4;
        }
        if (!arrayList6.isEmpty()) {
            arrayList7.removeAll(arrayList6);
        }
        if (arrayList7.isEmpty()) {
            Logger.c(i3, "OutputSizesCorrector");
        }
        Size[] sizeArr2 = (Size[]) arrayList7.toArray(new Size[0]);
        map.put(Integer.valueOf(i2), sizeArr2);
        return (Size[]) sizeArr2.clone();
    }

    public final StreamConfigurationMap g() {
        return this.f1707a.f1710a;
    }
}
