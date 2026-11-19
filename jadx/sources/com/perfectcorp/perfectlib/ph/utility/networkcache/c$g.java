package com.perfectcorp.perfectlib.ph.utility.networkcache;

import com.perfectcorp.common.network.RequestTask;
import com.perfectcorp.common.utility.BasicPreferences;
import com.perfectcorp.common.utility.CacheStrategies;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.common.utility.MoreCollections;
import com.perfectcorp.perfectlib.hc.YMKDatabase;
import com.perfectcorp.perfectlib.ph.database.ymk.makeup.b;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager.HttpRequestProviderAppender;
import com.perfectcorp.perfectlib.ymk.kernelctrl.preference.QuickLaunchPreferenceHelper;
import com.perfectcorp.perfectlib.ymk.utility.networkcache.Factory;
import com.perfectcorp.thirdparty.io.reactivex.Single;
import defpackage.v7;
import defpackage.y71;
import defpackage.zw;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class c$g extends Factory.Builder<List<b>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Collection f41769b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f41770c;

    public c$g(Collection<String> collection, boolean z) {
        Objects.requireNonNull(collection);
        this.f41769b = collection;
        this.f41770c = z;
    }

    public final Single c() {
        final Collection collection = this.f41769b;
        final boolean z = this.f41770c;
        return CacheStrategies.a(new CacheStrategies.CacheHandler<List<b>, com.perfectcorp.perfectlib.ph.kernelctrl.networkmanager.task.a>(collection, z) { // from class: com.perfectcorp.perfectlib.ph.utility.networkcache.b$b

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public static final BasicPreferences f41757c = new BasicPreferences("MAKEUPCAMSDK_ANDROID_SETTING");

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Collection f41758a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final boolean f41759b;

            {
                Objects.requireNonNull(collection);
                this.f41758a = collection;
                this.f41759b = z;
            }

            @Override // com.perfectcorp.common.utility.CacheStrategies.CacheHandler
            public final Object a(Object obj) {
                String str;
                com.perfectcorp.perfectlib.ph.kernelctrl.networkmanager.task.a aVar = (com.perfectcorp.perfectlib.ph.kernelctrl.networkmanager.task.a) obj;
                if (aVar != null) {
                    ArrayList<b> arrayList = aVar.d;
                    if (!MoreCollections.a(arrayList)) {
                        for (b bVar : arrayList) {
                            if (bVar == null || bVar.f41231i != 0) {
                                Log.d("DataHandlers1", bVar == null ? "Invalid MakeupItemMetadata. metadata=null" : "Invalid MakeupItemMetadata. Guid=" + bVar.d + ", StatusCode=" + bVar.f41231i);
                            } else if (this.f41759b) {
                                com.perfectcorp.perfectlib.ph.database.ymk.look.e.c(YMKDatabase.c(), bVar.d, bVar.f41225a.toString());
                            } else {
                                com.perfectcorp.perfectlib.ph.database.ymk.makeup.a.b(YMKDatabase.c(), bVar.f41226b, bVar);
                            }
                        }
                        f41757c.o("MAKEUP_TEMPLATE_LANGUAGE", QuickLaunchPreferenceHelper.b());
                        return arrayList;
                    }
                    str = "Makeup item metadata list is empty";
                } else {
                    str = "getMakeupItemListResponse is null";
                }
                v7.h(str);
                return null;
            }

            public final String toString() {
                return "[GetMKItemMetadataHandler, key:" + this.f41758a + "]";
            }
        }, a(new RequestTask.Builder(new HttpRequestProviderAppender(new zw(this, 7)), new y71(2))));
    }

    public c$g(Collection<String> collection) {
        this(collection, false);
    }
}
