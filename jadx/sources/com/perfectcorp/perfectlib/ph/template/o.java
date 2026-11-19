package com.perfectcorp.perfectlib.ph.template;

import android.text.TextUtils;
import android.util.Pair;
import com.linkplay.network.SecurityConstants;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.ph.database.ymk.sku.Sku;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.common.collect.FluentIterable;
import com.perfectcorp.thirdparty.io.reactivex.functions.Function;
import defpackage.e81;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class o implements Function {

    public final class a {
        public final String attr_item_guid = "";
        public final String attr_color_list = "";

        private a() {
        }
    }

    public final class b {
        public final String attr_item_guid = "";
        public final String attr_name = "";
        public final String attr_path = "";

        private b() {
        }
    }

    public final class c {
        public final String attr_item_guid = "";
        public final String attr_name = "";
        public final String attr_hidden = "";

        private c() {
        }
    }

    public final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final d f41700a = new d();
        public final String attr_version = "";
        public final List<f> skus = Collections.EMPTY_LIST;

        private d() {
        }
    }

    public final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final e f41701a = new e();
        public final String attr_guid = "";
        public final List<Object> button;
        public final List<a> display_color;
        public final List<b> image;
        public final List<c> input;
        public final List<g> text;

        private e() {
            List list = Collections.EMPTY_LIST;
            this.button = list;
            this.image = list;
            this.text = list;
            this.display_color = list;
            this.input = list;
        }

        public final String a(Sku sku, String str) {
            if (TextUtils.isEmpty(str)) {
                return "";
            }
            if (!str.startsWith(SecurityConstants.SECURITY_NONE)) {
                try {
                    return com.perfectcorp.perfectlib.ph.kernelctrl.sku.f.b(sku, com.perfectcorp.perfectlib.ph.kernelctrl.sku.f.a.f41564b).concat(str);
                } catch (Throwable unused) {
                    Log.d("RoomJsonParser", "[fillFolderPathIfNotHttp] failed, skuGuid=" + this.attr_guid);
                }
            }
            return str;
        }

        public final String b(String str) {
            try {
                Optional optionalM = FluentIterable.n(this.image).i(new e81(str, 6)).m();
                return optionalM.d() ? ((b) optionalM.c()).attr_path : "";
            } catch (Throwable th) {
                Log.c("RoomJsonParser", "[getImagePath]", th);
                return "";
            }
        }
    }

    public final class f {
        public final List<e> sku = Collections.EMPTY_LIST;

        private f() {
        }
    }

    public final class g {
        public final String attr_item_guid = "";
        public final String attr_subitem_guid = "";
        public final String attr_name = "";
        public final String attr_path = "";
        public final String attr_value = "";

        private g() {
        }
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Function
    public final Object apply(Object obj) {
        Pair pair = (Pair) obj;
        return new Pair((com.perfectcorp.perfectlib.ph.template.a) ((List) pair.first).get(0), (TemplateUtils.c) pair.second);
    }
}
