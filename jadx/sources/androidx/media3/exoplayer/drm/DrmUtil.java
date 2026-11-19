package androidx.media3.exoplayer.drm;

import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceInputStream;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.datasource.StatsDataSource;
import androidx.media3.exoplayer.source.LoadEventInfo;
import com.google.common.io.ByteStreams;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class DrmUtil {

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ErrorSource {
    }

    public static MediaDrmCallback.Response a(DataSource dataSource, String str, byte[] bArr, Map map) throws Throwable {
        DataSpec dataSpec;
        int i2;
        DataSourceInputStream dataSourceInputStream;
        Map map2;
        List list;
        StatsDataSource statsDataSource = new StatsDataSource(dataSource);
        DataSpec.Builder builder = new DataSpec.Builder();
        builder.f14397a = Uri.parse(str);
        builder.f14400e = map;
        builder.f14399c = 2;
        builder.d = bArr;
        builder.f14403i = 1;
        DataSpec dataSpecA = builder.a();
        DataSpec dataSpecA2 = dataSpecA;
        int i3 = 0;
        while (true) {
            try {
                DataSourceInputStream dataSourceInputStream2 = new DataSourceInputStream(statsDataSource, dataSpecA2);
                try {
                    try {
                        byte[] bArrB = ByteStreams.b(dataSourceInputStream2);
                        int i4 = i3;
                        try {
                            dataSpec = dataSpecA;
                            dataSourceInputStream = dataSourceInputStream2;
                            i2 = i4;
                            try {
                                LoadEventInfo loadEventInfo = new LoadEventInfo(-1L, dataSpec, statsDataSource.f14443c, statsDataSource.d, SystemClock.elapsedRealtime(), 0L, bArrB.length);
                                MediaDrmCallback.Response.Builder builder2 = new MediaDrmCallback.Response.Builder(bArrB);
                                builder2.f15103b = loadEventInfo;
                                MediaDrmCallback.Response response = new MediaDrmCallback.Response(builder2);
                                Util.h(dataSourceInputStream);
                                return response;
                            } catch (HttpDataSource.InvalidResponseCodeException e2) {
                                e = e2;
                                try {
                                    int i5 = e.d;
                                    String str2 = null;
                                    if ((i5 == 307 || i5 == 308) && i2 < 5 && (map2 = e.f14430e) != null && (list = (List) map2.get(com.networkbench.agent.impl.performance.coulometry.a.f37790a)) != null && !list.isEmpty()) {
                                        str2 = (String) list.get(0);
                                    }
                                    if (str2 == null) {
                                        throw e;
                                    }
                                    i3 = i2 + 1;
                                    DataSpec.Builder builderA = dataSpecA2.a();
                                    builderA.f14397a = Uri.parse(str2);
                                    dataSpecA2 = builderA.a();
                                    try {
                                        Util.h(dataSourceInputStream);
                                        dataSpecA = dataSpec;
                                    } catch (Exception e3) {
                                        e = e3;
                                        throw new MediaDrmCallbackException(dataSpec, statsDataSource.f14443c, statsDataSource.f14441a.f(), statsDataSource.f14442b, e);
                                    }
                                } catch (Throwable th) {
                                    th = th;
                                    Util.h(dataSourceInputStream);
                                    throw th;
                                }
                            }
                        } catch (HttpDataSource.InvalidResponseCodeException e4) {
                            e = e4;
                            dataSourceInputStream = dataSourceInputStream2;
                            i2 = i4;
                            dataSpec = dataSpecA;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        dataSourceInputStream = dataSourceInputStream2;
                        Util.h(dataSourceInputStream);
                        throw th;
                    }
                } catch (HttpDataSource.InvalidResponseCodeException e5) {
                    e = e5;
                    i2 = i3;
                    dataSpec = dataSpecA;
                    dataSourceInputStream = dataSourceInputStream2;
                }
                dataSpecA = dataSpec;
            } catch (Exception e6) {
                e = e6;
                dataSpec = dataSpecA;
            }
        }
    }

    public static boolean b(Throwable th) {
        return Build.VERSION.SDK_INT == 34 && (th instanceof NoSuchMethodError) && th.getMessage() != null && th.getMessage().contains("Landroid/media/NotProvisionedException;.<init>(");
    }

    public static boolean c(Throwable th) {
        return Build.VERSION.SDK_INT == 34 && (th instanceof NoSuchMethodError) && th.getMessage() != null && th.getMessage().contains("Landroid/media/ResourceBusyException;.<init>(");
    }
}
