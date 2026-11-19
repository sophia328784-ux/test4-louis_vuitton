package defpackage;

import android.database.sqlite.SQLiteDatabase;
import android.os.Trace;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.processing.SurfaceEdge;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessorNode;
import androidx.compose.foundation.text.BasicText_androidKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.perfectcorp.common.gson.GsonHelper;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageDao;
import com.perfectcorp.perfectlib.hc.database.ymk.downloadimage.DownloadImageInfo;
import com.perfectcorp.perfectlib.rh.database.ymk.skincare.a;
import com.perfectcorp.perfectlib.rh.database.ymk.skincare.b;
import com.perfectcorp.perfectlib.rh.database.ymk.skincare.c;
import com.perfectcorp.perfectlib.rh.database.ymk.skincare.d;
import com.perfectcorp.perfectlib.rh.kernelctrl.networktaskmanager.skincare.e;
import com.perfectcorp.thirdparty.com.google.common.collect.Multimap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ed implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68827b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f68828c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f68829e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f68830f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f68831h;

    public /* synthetic */ ed(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, int i2) {
        this.f68827b = i2;
        this.f68828c = obj;
        this.d = obj2;
        this.f68829e = obj3;
        this.f68830f = obj4;
        this.g = obj5;
        this.f68831h = obj6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f68827b) {
            case 0:
                TextStyle textStyle = (TextStyle) this.f68828c;
                LayoutDirection layoutDirection = (LayoutDirection) this.d;
                List list = (List) this.f68829e;
                AnnotatedString annotatedString = (AnnotatedString) this.f68830f;
                Density density = (Density) this.g;
                FontFamily.Resolver resolver = (FontFamily.Resolver) this.f68831h;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = BasicText_androidKt.f5855a;
                Trace.beginSection("BackgroundTextMeasurement");
                try {
                    Snapshot.f8462e.getClass();
                    MutableSnapshot mutableSnapshotG = Snapshot.Companion.g(null, null);
                    try {
                        Snapshot snapshotJ = mutableSnapshotG.j();
                        try {
                            TextStyle textStyleA = TextStyleKt.a(textStyle, layoutDirection);
                            if (list == null) {
                                list = EmptyList.f71768b;
                            }
                            MultiParagraphIntrinsics multiParagraphIntrinsics = new MultiParagraphIntrinsics(annotatedString, textStyleA, (List<AnnotatedString.Range<Placeholder>>) list, density, resolver);
                            multiParagraphIntrinsics.b();
                            multiParagraphIntrinsics.c();
                            Snapshot.q(snapshotJ);
                            mutableSnapshotG.w().a();
                            mutableSnapshotG.c();
                            Trace.endSection();
                            return;
                        } catch (Throwable th) {
                            Snapshot.q(snapshotJ);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        try {
                            throw th2;
                        } catch (Throwable th3) {
                            mutableSnapshotG.c();
                            throw th3;
                        }
                    }
                } catch (Throwable th4) {
                    Trace.endSection();
                    throw th4;
                }
            case 1:
                ((DualSurfaceProcessorNode) this.f68828c).a((CameraInternal) this.d, (CameraInternal) this.f68829e, (SurfaceEdge) this.f68830f, (SurfaceEdge) this.g, (Map.Entry) this.f68831h);
                return;
            default:
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f68828c;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) this.d;
                List<String> list2 = (List) this.f68829e;
                ArrayList arrayList = (ArrayList) this.f68830f;
                Map map = (Map) this.g;
                Multimap multimap = (Multimap) this.f68831h;
                for (e.a aVar : concurrentHashMap.values()) {
                    a aVar2 = a.d;
                    c.a aVar3 = new c.a();
                    aVar3.f41827c = -1L;
                    aVar3.f41825a = aVar.productId;
                    aVar3.f41826b = GsonHelper.f39260a.k(aVar.payload);
                    aVar3.f41827c = aVar.lastModified;
                    aVar2.i(sQLiteDatabase, new c(aVar3));
                }
                synchronized (list2) {
                    try {
                        for (String str : list2) {
                            a.d.d(sQLiteDatabase, "ProductId", str);
                            DownloadImageDao downloadImageDao = DownloadImageDao.d;
                            List<DownloadImageInfo> listE = downloadImageDao.e(sQLiteDatabase, "referenceId", str);
                            downloadImageDao.d(sQLiteDatabase, "referenceId", str);
                            for (DownloadImageInfo downloadImageInfo : listE) {
                                if (DownloadImageDao.d.e(sQLiteDatabase, ConfigurationName.DOWNLOAD_PLUGIN_URL, downloadImageInfo.f40306a).isEmpty()) {
                                    arrayList.add(downloadImageInfo);
                                }
                            }
                        }
                    } catch (Throwable th5) {
                        throw th5;
                    }
                    break;
                }
                b.d.b(sQLiteDatabase);
                for (e.a aVar4 : map.values()) {
                    for (String str2 : aVar4.b()) {
                        b bVar = b.d;
                        d.a aVar5 = new d.a();
                        aVar5.f41830a = aVar4.productId;
                        aVar5.f41831b = str2;
                        bVar.i(sQLiteDatabase, new d(aVar5));
                    }
                }
                synchronized (multimap) {
                    try {
                        for (DownloadImageInfo.Builder builder : multimap.values()) {
                            DownloadImageDao downloadImageDao2 = DownloadImageDao.d;
                            builder.getClass();
                            downloadImageDao2.i(sQLiteDatabase, new DownloadImageInfo(builder));
                        }
                    } catch (Throwable th6) {
                        throw th6;
                    }
                    break;
                }
                return;
        }
    }
}
