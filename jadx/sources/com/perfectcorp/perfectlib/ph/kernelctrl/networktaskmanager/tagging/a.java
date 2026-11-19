package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.tagging;

import android.text.TextUtils;
import com.perfectcorp.perfectlib.ymk.kernelctrl.networktaskmanager.GsonBaseResponse;
import com.perfectcorp.thirdparty.com.google.common.base.Optional;
import com.perfectcorp.thirdparty.com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class a extends GsonBaseResponse {
    private final C0174a result = new C0174a();

    @SerializedName("messagedigest")
    private final String messageDigest = "";

    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.tagging.a$a, reason: collision with other inner class name */
    public static final class C0174a {
        private final List<b> types = Collections.EMPTY_LIST;
        private final C0175a info = new C0175a();

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.tagging.a$a$a, reason: collision with other inner class name */
        public static final class C0175a {
            private final Map<String, Map<String, String>> items = Collections.EMPTY_MAP;

            public final Optional a(String str) {
                Map<String, String> map;
                Map<String, Map<String, String>> map2 = this.items;
                String str2 = (map2 == null || (map = map2.get(str)) == null) ? null : map.get("subType");
                return Optional.b(TextUtils.isEmpty(str2) ? null : str2);
            }
        }

        /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.tagging.a$a$b */
        public static final class b {
            private final List<String> guid3Ds;
            private final List<C0176a> tagGroups;
            private final String type = "";

            /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.tagging.a$a$b$a, reason: collision with other inner class name */
            public static final class C0176a {
                private final long id = -1;
                private final String name = "";
                private final boolean isFreeTag = false;
                private final List<C0177a> tags = Collections.EMPTY_LIST;

                /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager.tagging.a$a$b$a$a, reason: collision with other inner class name */
                public static final class C0177a {
                    private final long id = -1;
                    private final String name = "";
                    private final List<String> guids = Collections.EMPTY_LIST;
                    private final String imgURL = "";

                    public final long a() {
                        return this.id;
                    }

                    public final String b() {
                        return this.name;
                    }

                    public final List c() {
                        return this.guids;
                    }

                    public final String d() {
                        return this.imgURL;
                    }
                }

                public final long a() {
                    return this.id;
                }

                public final String b() {
                    return this.name;
                }

                public final boolean c() {
                    return this.isFreeTag;
                }

                public final List d() {
                    return this.tags;
                }
            }

            public b() {
                List list = Collections.EMPTY_LIST;
                this.tagGroups = list;
                this.guid3Ds = list;
            }

            public final String a() {
                return this.type;
            }

            public final List b() {
                return this.tagGroups;
            }

            public final List c() {
                return this.guid3Ds;
            }
        }

        public final List a() {
            return this.types;
        }

        public final C0175a b() {
            return this.info;
        }
    }

    public final C0174a a() {
        return this.result;
    }

    public final String b() {
        return this.messageDigest;
    }
}
