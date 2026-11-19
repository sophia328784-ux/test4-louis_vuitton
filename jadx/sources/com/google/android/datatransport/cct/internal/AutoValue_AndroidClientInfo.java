package com.google.android.datatransport.cct.internal;

import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
final class AutoValue_AndroidClientInfo extends AndroidClientInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f27852a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f27853b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f27854c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f27855e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f27856f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f27857h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f27858i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f27859j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f27860k;
    public final String l;

    public static final class Builder extends AndroidClientInfo.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Integer f27861a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f27862b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f27863c;
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f27864e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f27865f;
        public String g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f27866h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f27867i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public String f27868j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public String f27869k;
        public String l;

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo a() {
            return new AutoValue_AndroidClientInfo(this.f27861a, this.f27862b, this.f27863c, this.d, this.f27864e, this.f27865f, this.g, this.f27866h, this.f27867i, this.f27868j, this.f27869k, this.l);
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder b(String str) {
            this.l = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder c(String str) {
            this.f27868j = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder d(String str) {
            this.d = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder e(String str) {
            this.f27866h = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder f(String str) {
            this.f27863c = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder g(String str) {
            this.f27867i = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder h(String str) {
            this.g = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder i(String str) {
            this.f27869k = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder j(String str) {
            this.f27862b = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder k(String str) {
            this.f27865f = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder l(String str) {
            this.f27864e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder m(Integer num) {
            this.f27861a = num;
            return this;
        }
    }

    public AutoValue_AndroidClientInfo(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.f27852a = num;
        this.f27853b = str;
        this.f27854c = str2;
        this.d = str3;
        this.f27855e = str4;
        this.f27856f = str5;
        this.g = str6;
        this.f27857h = str7;
        this.f27858i = str8;
        this.f27859j = str9;
        this.f27860k = str10;
        this.l = str11;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String b() {
        return this.l;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String c() {
        return this.f27859j;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String d() {
        return this.d;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String e() {
        return this.f27857h;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AndroidClientInfo)) {
            return false;
        }
        AndroidClientInfo androidClientInfo = (AndroidClientInfo) obj;
        Integer num = this.f27852a;
        if (num == null) {
            if (androidClientInfo.m() != null) {
                return false;
            }
        } else if (!num.equals(androidClientInfo.m())) {
            return false;
        }
        String str = this.f27853b;
        if (str == null) {
            if (androidClientInfo.j() != null) {
                return false;
            }
        } else if (!str.equals(androidClientInfo.j())) {
            return false;
        }
        String str2 = this.f27854c;
        if (str2 == null) {
            if (androidClientInfo.f() != null) {
                return false;
            }
        } else if (!str2.equals(androidClientInfo.f())) {
            return false;
        }
        String str3 = this.d;
        if (str3 == null) {
            if (androidClientInfo.d() != null) {
                return false;
            }
        } else if (!str3.equals(androidClientInfo.d())) {
            return false;
        }
        String str4 = this.f27855e;
        if (str4 == null) {
            if (androidClientInfo.l() != null) {
                return false;
            }
        } else if (!str4.equals(androidClientInfo.l())) {
            return false;
        }
        String str5 = this.f27856f;
        if (str5 == null) {
            if (androidClientInfo.k() != null) {
                return false;
            }
        } else if (!str5.equals(androidClientInfo.k())) {
            return false;
        }
        String str6 = this.g;
        if (str6 == null) {
            if (androidClientInfo.h() != null) {
                return false;
            }
        } else if (!str6.equals(androidClientInfo.h())) {
            return false;
        }
        String str7 = this.f27857h;
        if (str7 == null) {
            if (androidClientInfo.e() != null) {
                return false;
            }
        } else if (!str7.equals(androidClientInfo.e())) {
            return false;
        }
        String str8 = this.f27858i;
        if (str8 == null) {
            if (androidClientInfo.g() != null) {
                return false;
            }
        } else if (!str8.equals(androidClientInfo.g())) {
            return false;
        }
        String str9 = this.f27859j;
        if (str9 == null) {
            if (androidClientInfo.c() != null) {
                return false;
            }
        } else if (!str9.equals(androidClientInfo.c())) {
            return false;
        }
        String str10 = this.f27860k;
        if (str10 == null) {
            if (androidClientInfo.i() != null) {
                return false;
            }
        } else if (!str10.equals(androidClientInfo.i())) {
            return false;
        }
        String str11 = this.l;
        if (str11 == null) {
            return androidClientInfo.b() == null;
        }
        return str11.equals(androidClientInfo.b());
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String f() {
        return this.f27854c;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String g() {
        return this.f27858i;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String h() {
        return this.g;
    }

    public final int hashCode() {
        Integer num = this.f27852a;
        int iHashCode = ((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003;
        String str = this.f27853b;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f27854c;
        int iHashCode3 = (iHashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f27855e;
        int iHashCode5 = (iHashCode4 ^ (str4 == null ? 0 : str4.hashCode())) * 1000003;
        String str5 = this.f27856f;
        int iHashCode6 = (iHashCode5 ^ (str5 == null ? 0 : str5.hashCode())) * 1000003;
        String str6 = this.g;
        int iHashCode7 = (iHashCode6 ^ (str6 == null ? 0 : str6.hashCode())) * 1000003;
        String str7 = this.f27857h;
        int iHashCode8 = (iHashCode7 ^ (str7 == null ? 0 : str7.hashCode())) * 1000003;
        String str8 = this.f27858i;
        int iHashCode9 = (iHashCode8 ^ (str8 == null ? 0 : str8.hashCode())) * 1000003;
        String str9 = this.f27859j;
        int iHashCode10 = (iHashCode9 ^ (str9 == null ? 0 : str9.hashCode())) * 1000003;
        String str10 = this.f27860k;
        int iHashCode11 = (iHashCode10 ^ (str10 == null ? 0 : str10.hashCode())) * 1000003;
        String str11 = this.l;
        return iHashCode11 ^ (str11 != null ? str11.hashCode() : 0);
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String i() {
        return this.f27860k;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String j() {
        return this.f27853b;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String k() {
        return this.f27856f;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String l() {
        return this.f27855e;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final Integer m() {
        return this.f27852a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AndroidClientInfo{sdkVersion=");
        sb.append(this.f27852a);
        sb.append(", model=");
        sb.append(this.f27853b);
        sb.append(", hardware=");
        sb.append(this.f27854c);
        sb.append(", device=");
        sb.append(this.d);
        sb.append(", product=");
        sb.append(this.f27855e);
        sb.append(", osBuild=");
        sb.append(this.f27856f);
        sb.append(", manufacturer=");
        sb.append(this.g);
        sb.append(", fingerprint=");
        sb.append(this.f27857h);
        sb.append(", locale=");
        sb.append(this.f27858i);
        sb.append(", country=");
        sb.append(this.f27859j);
        sb.append(", mccMnc=");
        sb.append(this.f27860k);
        sb.append(", applicationBuild=");
        return n00.r(this.l, "}", sb);
    }
}
