package defpackage;

import android.util.Pair;
import android.util.Size;
import androidx.compose.foundation.lazy.layout.AndroidPrefetchScheduler;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasuredItem;
import androidx.compose.foundation.lazy.layout.PriorityTask;
import androidx.compose.ui.node.LayoutNode;
import androidx.media3.common.Format;
import androidx.media3.datasource.cache.CacheSpan;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import androidx.media3.extractor.text.webvtt.WebvttCueInfo;
import com.batch.android.e.d0;
import com.batch.android.s.a;
import com.batch.android.t.b;
import com.google.common.collect.Ordering;
import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence;
import com.perfectcorp.perfectlib.ApplyEffectUtility;
import com.perfectcorp.perfectlib.makeupcam.camera.YMKPrimitiveData;
import com.perfectcorp.thirdparty.com.google.common.collect.ImmutableSet;
import java.io.File;
import java.nio.charset.Charset;
import java.util.Comparator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class x5 implements Comparator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81020b;

    public /* synthetic */ x5(int i2) {
        this.f81020b = i2;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f81020b) {
            case 0:
                return AndroidPrefetchScheduler.prefetchRequests$lambda$0((PriorityTask) obj, (PriorityTask) obj2);
            case 1:
                ImmutableSet immutableSet = ApplyEffectUtility.f39471a;
                return ((YMKPrimitiveData.Effect) obj).g.l - ((YMKPrimitiveData.Effect) obj2).g.l;
            case 2:
                return Integer.bitCount(((Integer) obj2).intValue()) - Integer.bitCount(((Integer) obj).intValue());
            case 3:
                return ((Format) obj2).f13762j - ((Format) obj).f13762j;
            case 4:
                return Long.compare(((File) obj2).lastModified(), ((File) obj).lastModified());
            case 5:
                Charset charset = CrashlyticsReportPersistence.f35001e;
                return ((File) obj2).getName().compareTo(((File) obj).getName());
            case 6:
                Charset charset2 = CrashlyticsReportPersistence.f35001e;
                String name = ((File) obj).getName();
                int i2 = CrashlyticsReportPersistence.f35002f;
                return name.substring(0, i2).compareTo(((File) obj2).getName().substring(0, i2));
            case 7:
                Integer num = (Integer) obj;
                Integer num2 = (Integer) obj2;
                Ordering ordering = DefaultTrackSelector.f15687k;
                if (num.intValue() == -1) {
                    return num2.intValue() == -1 ? 0 : -1;
                }
                if (num2.intValue() == -1) {
                    return 1;
                }
                return num.intValue() - num2.intValue();
            case 8:
                return Integer.parseInt(((String) obj).split(":")[0]) - Integer.parseInt(((String) obj2).split(":")[0]);
            case 9:
                return ((HlsMediaPlaylist.ClientDefinedAttribute) obj).f15239a.compareTo(((HlsMediaPlaylist.ClientDefinedAttribute) obj2).f15239a);
            case 10:
                IntRange intRange = (IntRange) obj;
                IntRange intRange2 = (IntRange) obj2;
                return (intRange.f71952c - intRange.f71951b) - (intRange2.f71952c - intRange2.f71951b);
            case 11:
                LayoutNode layoutNode = (LayoutNode) obj;
                LayoutNode layoutNode2 = (LayoutNode) obj2;
                LayoutNode.Companion companion = LayoutNode.T;
                float f2 = layoutNode.I.p.G;
                float f3 = layoutNode2.I.p.G;
                return f2 == f3 ? Intrinsics.d(layoutNode.P(), layoutNode2.P()) : Float.compare(f2, f3);
            case 12:
                return Intrinsics.d(((LazyLayoutMeasuredItem) obj).getIndex(), ((LazyLayoutMeasuredItem) obj2).getIndex());
            case 13:
                CacheSpan cacheSpan = (CacheSpan) obj;
                CacheSpan cacheSpan2 = (CacheSpan) obj2;
                long j2 = cacheSpan.g;
                long j3 = cacheSpan2.g;
                if (j2 - j3 == 0) {
                    return cacheSpan.compareTo(cacheSpan2);
                }
                return j2 < j3 ? -1 : 1;
            case 14:
                Size size = (Size) obj;
                Size size2 = (Size) obj2;
                return Long.signum((((long) size.getWidth()) * ((long) size.getHeight())) - (((long) size2.getWidth()) * ((long) size2.getHeight())));
            case 15:
                return ((CrashlyticsReport.CustomAttribute) obj).b().compareTo(((CrashlyticsReport.CustomAttribute) obj2).b());
            case 16:
                return Long.compare(((WebvttCueInfo) obj).f16907b, ((WebvttCueInfo) obj2).f16907b);
            case 17:
                return a.a((b) obj, (b) obj2);
            case 18:
                return d0.a((File) obj, (File) obj2);
            default:
                return ((Integer) ((Pair) obj).first).intValue() - ((Integer) ((Pair) obj2).first).intValue();
        }
    }
}
