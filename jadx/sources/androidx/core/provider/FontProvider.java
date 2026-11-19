package androidx.core.provider;

import android.content.ContentProviderClient;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.os.Trace;
import androidx.collection.LruCache;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.graphics.TypefaceCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
abstract class FontProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LruCache f12087a = new LruCache(2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f12088b = new a();

    public interface ContentQueryWrapper {
    }

    public static class ContentQueryWrapperApi24Impl implements ContentQueryWrapper {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ContentProviderClient f12089a;

        public ContentQueryWrapperApi24Impl(Context context, Uri uri) {
            this.f12089a = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }
    }

    public static class ProviderCacheKey {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f12090a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f12091b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public List f12092c;

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProviderCacheKey)) {
                return false;
            }
            ProviderCacheKey providerCacheKey = (ProviderCacheKey) obj;
            return Objects.equals(this.f12090a, providerCacheKey.f12090a) && Objects.equals(this.f12091b, providerCacheKey.f12091b) && Objects.equals(this.f12092c, providerCacheKey.f12092c);
        }

        public final int hashCode() {
            return Objects.hash(this.f12090a, this.f12091b, this.f12092c);
        }
    }

    public static FontsContractCompat.FontFamilyResult a(Context context, List list) {
        String str;
        Typeface typefaceE;
        Trace.beginSection(androidx.tracing.Trace.b("FontProvider.getFontFamilyResult"));
        try {
            ArrayList arrayList = new ArrayList();
            for (int i2 = 0; i2 < list.size(); i2++) {
                FontRequest fontRequest = (FontRequest) list.get(i2);
                if (Build.VERSION.SDK_INT < 31 || (typefaceE = TypefaceCompat.e((str = fontRequest.f12097f))) == null || TypefaceCompat.f(typefaceE) == null) {
                    ProviderInfo providerInfoB = b(context.getPackageManager(), fontRequest, context.getResources());
                    if (providerInfoB == null) {
                        return new FontsContractCompat.FontFamilyResult(1, null);
                    }
                    arrayList.add(c(context, fontRequest, providerInfoB.authority));
                } else {
                    arrayList.add(new FontsContractCompat.FontInfo[]{new FontsContractCompat.FontInfo(str, fontRequest.g)});
                }
            }
            return new FontsContractCompat.FontFamilyResult(arrayList);
        } finally {
            Trace.endSection();
        }
    }

    public static ProviderInfo b(PackageManager packageManager, FontRequest fontRequest, Resources resources) {
        a aVar = f12088b;
        LruCache lruCache = f12087a;
        Trace.beginSection(androidx.tracing.Trace.b("FontProvider.getProvider"));
        try {
            List listB = fontRequest.d;
            String str = fontRequest.f12093a;
            String str2 = fontRequest.f12094b;
            if (listB == null) {
                listB = FontResourcesParserCompat.b(resources, fontRequest.f12096e);
            }
            ProviderCacheKey providerCacheKey = new ProviderCacheKey();
            providerCacheKey.f12090a = str;
            providerCacheKey.f12091b = str2;
            providerCacheKey.f12092c = listB;
            ProviderInfo providerInfo = (ProviderInfo) lruCache.b(providerCacheKey);
            if (providerInfo != null) {
                Trace.endSection();
                return providerInfo;
            }
            ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(str, 0);
            if (providerInfoResolveContentProvider == null) {
                throw new PackageManager.NameNotFoundException("No package found for authority: " + str);
            }
            if (!providerInfoResolveContentProvider.packageName.equals(str2)) {
                throw new PackageManager.NameNotFoundException("Found content provider " + str + ", but package was not " + str2);
            }
            Signature[] signatureArr = packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures;
            ArrayList arrayList = new ArrayList();
            for (Signature signature : signatureArr) {
                arrayList.add(signature.toByteArray());
            }
            Collections.sort(arrayList, aVar);
            for (int i2 = 0; i2 < listB.size(); i2++) {
                ArrayList arrayList2 = new ArrayList((Collection) listB.get(i2));
                Collections.sort(arrayList2, aVar);
                if (arrayList.size() == arrayList2.size()) {
                    int i3 = 0;
                    while (true) {
                        if (i3 >= arrayList.size()) {
                            lruCache.c(providerCacheKey, providerInfoResolveContentProvider);
                            Trace.endSection();
                            return providerInfoResolveContentProvider;
                        }
                        if (!Arrays.equals((byte[]) arrayList.get(i3), (byte[]) arrayList2.get(i3))) {
                            break;
                        }
                        i3++;
                    }
                }
            }
            Trace.endSection();
            return null;
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static FontsContractCompat.FontInfo[] c(Context context, FontRequest fontRequest, String str) {
        ContentProviderClient contentProviderClient;
        ContentProviderClient contentProviderClient2;
        Trace.beginSection(androidx.tracing.Trace.b("FontProvider.query"));
        try {
            ArrayList arrayList = new ArrayList();
            Uri uriBuild = new Uri.Builder().scheme("content").authority(str).build();
            Uri uriBuild2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
            ContentProviderClient contentProviderClient3 = new ContentQueryWrapperApi24Impl(context, uriBuild).f12089a;
            Cursor cursorQuery = null;
            try {
                String[] strArr = {"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"};
                Trace.beginSection(androidx.tracing.Trace.b("ContentQueryWrapper.query"));
                try {
                    try {
                        String[] strArr2 = {fontRequest.f12095c};
                        if (contentProviderClient3 != null) {
                            try {
                                cursorQuery = contentProviderClient3.query(uriBuild, strArr, "query = ?", strArr2, null, null);
                            } catch (RemoteException unused) {
                            }
                        }
                        Trace.endSection();
                        if (cursorQuery == null || cursorQuery.getCount() <= 0) {
                            contentProviderClient2 = contentProviderClient3;
                        } else {
                            int columnIndex = cursorQuery.getColumnIndex("result_code");
                            ArrayList arrayList2 = new ArrayList();
                            int columnIndex2 = cursorQuery.getColumnIndex("_id");
                            int columnIndex3 = cursorQuery.getColumnIndex("file_id");
                            int columnIndex4 = cursorQuery.getColumnIndex("font_ttc_index");
                            int columnIndex5 = cursorQuery.getColumnIndex("font_weight");
                            int columnIndex6 = cursorQuery.getColumnIndex("font_italic");
                            while (cursorQuery.moveToNext()) {
                                int i2 = columnIndex != -1 ? cursorQuery.getInt(columnIndex) : 0;
                                arrayList2.add(new FontsContractCompat.FontInfo(columnIndex3 == -1 ? ContentUris.withAppendedId(uriBuild, cursorQuery.getLong(columnIndex2)) : ContentUris.withAppendedId(uriBuild2, cursorQuery.getLong(columnIndex3)), columnIndex4 != -1 ? cursorQuery.getInt(columnIndex4) : 0, columnIndex5 != -1 ? cursorQuery.getInt(columnIndex5) : 400, columnIndex6 != -1 && cursorQuery.getInt(columnIndex6) == 1, fontRequest.g, i2));
                                contentProviderClient3 = contentProviderClient3;
                            }
                            contentProviderClient2 = contentProviderClient3;
                            arrayList = arrayList2;
                        }
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        if (contentProviderClient2 != null) {
                            contentProviderClient2.close();
                        }
                        FontsContractCompat.FontInfo[] fontInfoArr = (FontsContractCompat.FontInfo[]) arrayList.toArray(new FontsContractCompat.FontInfo[0]);
                        Trace.endSection();
                        return fontInfoArr;
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    contentProviderClient = context;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    if (contentProviderClient != 0) {
                        contentProviderClient.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                contentProviderClient = contentProviderClient3;
            }
        } catch (Throwable th4) {
            Trace.endSection();
            throw th4;
        }
    }
}
